var dFilter = {
  urlBase: (window.urlsBase || '') + '/dataservice',
  ajaxObj: { hitsPerPage: 25, startIndex: 0 },
  ajaxObjKeysInitialNo: 2,
  firstAjaxSearch: null,

  onLoad: function() {
    this.attachFormListeners()
    this.listenPagesBox()
  },

  el: {
    form: document.querySelector('.js-search-form'),
    queryTextInput: document.querySelector('.js-query-text'),
    inputsOutOfForm: {
      sort: document.querySelector('.js-search'),
    },
    ulResultsParent: document.querySelector('.js-results-container'),
    aLiFromUlResults: document.querySelector('.js-search-hits li'),
    pagesBoxParent: document.querySelector('.js-results-container'),
    aPageLink: document.querySelector('.js-search-pages a:nth-of-type(2)'),
    checkboxContainer: document.querySelector('.js-checkbox-facet') ? document.querySelector('.js-checkbox-facet input[type=checkbox]').parentNode : null,
    checkboxFacetContainer: document.querySelector('.js-checkbox-facet')
  },

  createDataObj: function(form, otherInputs, justSearch) {
    let dataObj = Object.assign({}, this.ajaxObj)
    if (this.el.queryTextInput) dataObj[this.el.queryTextInput.name] = this.el.queryTextInput.value
    Array.from(form.querySelectorAll('input[type=radio]')).forEach(x => { if (x.checked) dataObj[x.name] = x.value })
    if (justSearch) return dataObj;
    if (otherInputs.sort) dataObj[otherInputs.sort.name] = otherInputs.sort.value
    Array.from(form.querySelectorAll('select')).forEach(x => { dataObj[x.name] = x.value })
    Array.from(form.querySelectorAll('input[type=checkbox]')).forEach(x => {
      if (!x.checked) return;
      if (!dataObj[x.name]) dataObj[x.name] = []
      if (!dataObj[x.name].includes(x.value)) dataObj[x.name].push(x.value)
    })
    return dataObj
  },

  attachFormListeners: function() {
    let self = this;
    function displayLoader() {
      let overlayer = document.getElementById('js-loading-overlayer')
      if (overlayer) overlayer.classList.add('js-display')
      Array.from(document.getElementsByClassName('js-loader')).forEach(x => {
        if (x.parentElement && x.parentElement.clientHeight >= 200) x.classList.add('js-display')
      })
    }
    function hideLoader() {
      Array.from(document.getElementsByClassName('js-display')).forEach(x => x.classList.remove('js-display'))
    }

    if (this.el.form) {
        this.el.form.addEventListener('change', function(e) {
          if (e.target.type == 'text') return;
          self.ajaxObj = self.createDataObj(self.el.form, self.el.inputsOutOfForm, false)
          self.newSearch(self.ajaxObj);
        }.bind(this))

        this.el.form.addEventListener('keyup', function(e) {
          if (e.target.type !== 'text') return;
          if (e.target.value.length >= 3 || e.target.value.length == 0) {
            self.ajaxObj = self.createDataObj(self.el.form, self.el.inputsOutOfForm, false)
            self.newSearch(self.ajaxObj);
          }
        }.bind(this))
        
        this.el.form.addEventListener('submit', function(e) { e.preventDefault(); })
    }

    if (this.el.inputsOutOfForm.sort) {
      this.el.inputsOutOfForm.sort.addEventListener('change', function(e) {
        this.ajaxObj = this.createDataObj(this.el.form, this.el.inputsOutOfForm, false)
        this.newSearch(this.ajaxObj);
      }.bind(this))
    }
  },

  prepareFacets: function(r) {
    let facets = [];
    if (r.vclass && r.vclass.length) {
        facets.push({
            sectionId: 'vclass-facets',
            title: 'Categorías',
            name: 'vclassId',
            type: 'radio',
            options: r.vclass
        });
    }
    return facets;
  },

  refreshResults: function(results, replace) {
    let ulResults = document.querySelector('.js-search-hits')
    if (!ulResults) return;
    
    let container = replace ? ulResults.cloneNode(false) : ulResults;
    if (replace) container.innerHTML = "";

    // HUB-UR v3.8: Escudo de Silueta Premium
    const fallbackSrc = "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23ccc' d='M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z'%3E%3C/path%3E%3C/svg%3E";

    results.forEach((html, index) => {
      let optimizedHtml = html;
      
      // HUB-UR v4.0: Protecci\u00f3n contra im\u00e1genes rotas y placeholders gen\u00e9ricos
      let imgTagMatch = optimizedHtml.match(/<img[^>]+src=["']([^"']+)["'][^>]*>/i);
      let hasImage = imgTagMatch && !imgTagMatch[1].includes('placeholder');
      let isPlaceholder = imgTagMatch && imgTagMatch[1].includes('placeholder');

      if (hasImage) {
          let imgTag = imgTagMatch[0];
          let cleanImg = imgTag.replace(/\s(width|height)=["'][^"']*["']/g, '');
          let imgAttr = (replace && index === 0) ? 'fetchpriority="high" loading="eager"' : 'loading="lazy"';
          cleanImg = cleanImg.replace('<img', `<img ${imgAttr} class="hub-img-fluid" onerror="this.onerror=null; this.src='${fallbackSrc}';"`);
          optimizedHtml = optimizedHtml.replace(imgTag, cleanImg);
      } else {
          let silhouette = `<div class="hub-silhouette-wrapper"><img src="${fallbackSrc}" class="hub-img-fluid" alt="Sin imagen" style="width: 64px; height: 64px; object-fit: contain;"></div>`;
          if (imgTagMatch) optimizedHtml = optimizedHtml.replace(imgTagMatch[0], silhouette);
          else optimizedHtml = optimizedHtml.replace(/<div class="thumb">/i, `<div class="thumb">${silhouette}`);
      }
      
      optimizedHtml = optimizedHtml.replace('class="card"', 'class="card h-100 hub-person-card-v2"');
      
      let liBox = this.el.aLiFromUlResults ? this.el.aLiFromUlResults.cloneNode(false) : document.createElement('li');
      liBox.innerHTML = optimizedHtml;
      liBox.classList.add('hub-person-item');
      if (!replace || index > 0) liBox.classList.add('hub-fadeInUp');
      container.appendChild(liBox);
    })

    if (replace) ulResults.parentNode.replaceChild(container, ulResults);
  },

  listenPagesBox: function() {
    let pagesBox = document.querySelector('.js-search-pages')
    if (!pagesBox) return;
    pagesBox.addEventListener('click', function(e) {
      e.preventDefault();
      if (e.target.tagName !== 'A') return;
      let targetSearch = e.target.search;
      if (!targetSearch) return;
      let startIndexMatch = targetSearch.match(/startIndex=(\d+)/);
      if (startIndexMatch) {
          this.ajaxObj.startIndex = Number(startIndexMatch[1]);
          this.newSearch(this.ajaxObj);
          this.ajaxObj.startIndex = 0;
      }
    }.bind(this))
  },

  foundNoResults: function() {
    let ulResults = document.querySelector('.js-search-hits')
    if (ulResults) ulResults.innerHTML = "<li class='hub-no-results'>No se encontraron resultados para esta selección.</li>"
    let pagesBox = document.querySelector('.js-search-pages');
    if (pagesBox) pagesBox.innerHTML = ""
  },

  newSearch: function(queryObj) {
    let self = this;
    this.urlBase = (window.urlsBase || '') + '/dataservice';
    if (!this.firstAjaxSearch) {
      this.firstAjaxSearch = true;
      if (window.hubUrPreloadPromise) {
          window.hubUrPreloadPromise.then(function(data) {
              if (data) self.processResponse(data);
              else self.executeAjaxSearch(queryObj);
          }).catch(function() { self.executeAjaxSearch(queryObj); });
          return;
      }
    }
    this.executeAjaxSearch(queryObj);
  },

  executeAjaxSearch: function(queryObj) {
    let self = this;
    if (queryObj.classgroup) delete queryObj.classgroup;
    $.ajax({
      url: `${self.urlBase}?getRenderedSearchIndividualsByVClass=1`,
      data: queryObj,
      complete: function(xhr, status) {
        try {
            let r = jQuery.parseJSON(xhr.responseText);
            self.processResponse(r);
        } catch (e) {
            self.foundNoResults();
        }
      }
    });
  },

  processResponse: function(r) {
    let self = this;
    if (r.individuals && r.individuals.length) {
        self.refreshResults(r.individuals, true);
        if (r.pagingLinks && r.pagingLinks.length) {
            self.createPagination(r.pagingLinks);
            self.listenPagesBox();
        } else {
            let searchPagesBox = document.querySelector('.js-search-pages')
            if (searchPagesBox) searchPagesBox.innerHTML = "";
        }
    } else {
        this.foundNoResults();
    }
  },

  createPagination: function(links) {
    let pagesBox = document.querySelector('.js-search-pages')
    if (!pagesBox) return;
    let newBox = pagesBox.cloneNode(false)
    links.forEach(linkData => {
      let pageLink = document.createElement('a');
      pageLink.href = linkData.url || '#';
      pageLink.textContent = linkData.text;
      if (!linkData.url) pageLink.classList.add('js-active-page');
      newBox.appendChild(pageLink);
    })
    pagesBox.parentNode.replaceChild(newBox, pagesBox);
  }
}

$(document).ready(function(){
  $.ajaxSettings.traditional = true;
  dFilter.onLoad();
})

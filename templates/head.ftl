<#-- $This file is distributed under the terms of the license in LICENSE$ -->
<#assign baseURL = "https://research-hub.urosario.edu.co" />
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
  
  <!-- Preload CRÍTICO para LCP - Debe ir antes que cualquier otra red para ganar el primer slot -->
  <#if individual?? && individual.thumbNail??>
    <link rel="preload" href="${urls.base}${individual.thumbNail}" as="image" fetchpriority="high" />
  <#elseif isHomePage??>
    <link rel="preload" href="${urls.base}/themes/wilma/images/servicios/s1.webp" as="image" type="image/webp" fetchpriority="high" />
  </#if>
  <link rel="preload" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" as="style" />

  <!-- DNA Prefetch & Preconnect CRÍTICO -->
  <link rel="dns-prefetch" href="https://www.googletagmanager.com">
  <link rel="dns-prefetch" href="https://cdnjs.cloudflare.com">
  <link rel="dns-prefetch" href="https://cdn.jsdelivr.net" >
  <link rel="dns-prefetch" href="https://fonts.googleapis.com">
  <link rel="dns-prefetch" href="https://fonts.gstatic.com">
  
  <link rel="preconnect" href="https://www.googletagmanager.com" crossorigin />
  <link rel="preconnect" href="https://cdnjs.cloudflare.com" crossorigin />
  <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

  <title>${(title?html)!siteName!} | HUB-UR</title>

  <meta xml:lang="spa" content="HUB-UR, reune en un solo lugar, informacion publica sobre las fortalezas y capacidades de la Universidad del Rosario. Aprovechando los beneficios de la web semantica para mostrar información estructurada y vinculada, proporcionando resultados enriquecidos por asociaciones y relaciones categorizadas. Aqui, investigadores, estudiantes, empresas, agencias de financiamiento, tomadores de decisiones y el publico en general pueden identificar o descubrir nuestras actividades y logros" name="DC.description">
  <meta xml:lang="eng" content="Hub-UR: Services and experts finder gathers, in one place, public information about the strengths and capabilities of the Universidad del Rosario, this hub uses the semantic Web to show structured and linked information, providing results enriched by associations and categorized relationships. Here, researchers, students, companies, funding agencies, decision makers and the general public can identify or discover our activities and achievements" name="DC.description">

  <meta name="description" content="Portal de fortalezas de la univesidad del Rosario - Perfil en VIVO. Información académica, publicaciones, proyectos y afiliaciones." />
  <meta name="keywords" content="Universidad del Rosario, investigadores, vivo, centro, expertos, research HUB, Perfiles, facultades, escuelas, investigacion, servicios académicos, proyectos investigación, publicaciones científicas, laboratorios, CRAI, colaboración científica, capacidades institucionales" />
  <meta name="generator" content="VIVO ${version.label}" />
  <meta name="author" content="CRAI - Universidad del Rosario" />
  <meta name="copyright" content="© 2025 Universidad del Rosario - CRAI" />
  <meta name="publisher" content="Centro de Recursos para el Aprendizaje y la Investigación - Universidad del Rosario" />
  <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />

  <!-- Open Graph -->
  <meta property="og:title" content="HUB-UR: Expertos y Servicios | Universidad del Rosario" />
  <meta property="og:description" content="Descubre expertos, laboratorios, proyectos y capacidades de investigación de la Universidad del Rosario en una sola plataforma." />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://research-hub.urosario.edu.co/" />
  <meta property="og:site_name" content="HUB-UR - Universidad del Rosario" />
  <meta property="og:image" content="https://research-hub.urosario.edu.co/assets/images/hubur-share.jpg" />
  <meta property="og:image:secure_url" content="https://research-hub.urosario.edu.co/assets/images/hubur-share.jpg" />
  <meta property="og:image:type" content="image/jpeg" />
  <meta property="og:image:width" content="1200" />
  <meta property="og:image:height" content="630" />
  <meta property="og:image:alt" content="HUB-UR - Portal de Fortalezas Institucionales Universidad del Rosario" />
  <meta property="og:locale" content="es_CO" />
  <meta property="og:locale:alternate" content="en_US" />

  <meta name="google-site-verification" content="7f_pCsseUDacpj018ecJM1mEysQbi82CEphBs6Zd4sA" />

  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:site" content="@urosario" />
  <meta name="twitter:creator" content="@urosario" />
  <meta name="twitter:title" content="HUB-UR: Expertos y Servicios | Universidad del Rosario" />
  <meta name="twitter:description" content="Descubre expertos, laboratorios, proyectos y capacidades de investigación de la Universidad del Rosario." />
  <meta name="twitter:image" content="https://research-hub.urosario.edu.co/assets/images/hubur-share.jpg" />
  <meta name="twitter:image:alt" content="HUB-UR - Portal de Fortalezas Institucionales" />
  <meta name="theme-color" content="rgba(218, 9, 33, 1)" />
  <meta name="msapplication-TileColor" content="rgba(218, 9, 33, 1)"  />
  


  <!-- Google Fonts CSS (Non-blocking) -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" media="print" onload="this.media='all'" />

  <#if individual??>
    <link rel="canonical" href="${baseURL}/display/${individual.localName}"/>
  <#else> 
    <link rel="canonical" href="${baseURL}"/>
  </#if>

  <#include "SEOschema.ftl">
  <#include "stylesheets.ftl">
  <#include "banner.ftl">
  
  <link rel="stylesheet" href="${urls.theme}/css/screen.css" media="print" onload="this.media='all'" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  
  <#include "headScripts.ftl">

  <!-- HUB-UR Design System - MUST load AFTER Bootstrap -->
  <link rel="stylesheet" href="${urls.theme}/css/hub-design-system.css" />

  <#if metaTags??>
      ${metaTags.list()}
  </#if>

  ${headContent!}

  <link rel="shortcut icon" type="image/x-icon" href="${urls.base}/favicon.ico">
  ${scripts.add('<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" defer></script>')}

  <!-- HUB-UR Turbo-Boost v3.9: Smart Pre-load & Atomic LCP Injection -->
  <script type="text/javascript">
      (function() {
          var dataServiceUrl = '${urls.base}/dataservice?getRenderedSearchIndividualsByVClass=1&vclassId=';
          var vclassId = 'http://vivoweb.org/ontology/core#FacultyMember'; // Default
          var hash = window.location.hash.substring(1);
          if (hash && hash.indexOf('http') === 0) vclassId = hash;
          
          var finalUrl = dataServiceUrl + encodeURIComponent(vclassId);
          console.log('HUB-UR: Smart Pre-load iniciando para: ' + vclassId);

          window.hubUrPreloadPromise = fetch(finalUrl, { fetchPriority: 'high' }).then(function(r) { 
              return r.ok ? r.json() : null; 
          }).catch(function() { return null; });
      })();
  </script>

  <!-- HUB-UR v25: Sticky header scroll effect -->
  <script>
  document.addEventListener('DOMContentLoaded', function() {
      var header = document.getElementById('branding');
      if (header) {
          window.addEventListener('scroll', function() {
              header.classList.toggle('hub-scrolled', window.scrollY > 20);
          }, { passive: true });
      }
  });
  </script>


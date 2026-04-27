
<#--  <div class="card" id="home_services" role="listitem" role="navigation">  -->

<div class="services-panel">

	<div class="container">
		<div class="titleServices">
			<h1>${i18n().titleServices}</h1>
			<p class="services-subtitle">Conectamos el talento investigativo de la Universidad del Rosario</p>
		</div>

		<div class="services-grid">

			<#--  Primer servicio TUTOR  -->
			<div class="service-item">
				<div class="service-icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>
				</div>
				<h3 class="service-name">${i18n().find_supervisor}</h3>
				<form class="service-form" action="${urls.base}/find-a-supervisor" method="GET">
					<div class="service-search-wrap">
						<input type="text" autocomplete="off" name="querytext" class="service-input" placeholder="${i18n().service_search}">
						<button type="submit" class="service-btn" aria-label="Buscar">
							<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
						</button>
					</div>
					<input type="hidden" name="classgroup" value="http://vivoweb.org/ontology#vitroClassGrouppeople">
				</form>
			</div>

			<#--  Segundo servicio Experto  -->
			<div class="service-item">
				<div class="service-icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"/><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"/></svg>
				</div>
				<h3 class="service-name">${i18n().find_partner}</h3>
				<form class="service-form" action="${urls.base}/find-a-partner" method="GET">
					<div class="service-search-wrap">
						<input type="text" autocomplete="off" name="querytext" class="service-input" placeholder="${i18n().service_search}">
						<button type="submit" class="service-btn" aria-label="Buscar">
							<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
						</button>
					</div>
					<input type="hidden" name="classgroup" value="http://vivoweb.org/ontology#vitroClassGrouppeople">
				</form>
			</div>

			<#--  Tercer servicio Laboratorios  -->
			<div class="service-item">
				<div class="service-icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M9 3v11"/><path d="M15 3v11"/><path d="M6 14l3 7h6l3-7"/><path d="M9 3h6"/></svg>
				</div>
				<h3 class="service-name">${i18n().find_lab}</h3>
				<form class="service-form" action="${urls.base}/find-a-lab" method="GET">
					<div class="service-search-wrap">
						<input type="text" autocomplete="off" name="querytext" class="service-input" placeholder="${i18n().service_search}">
						<button type="submit" class="service-btn" aria-label="Buscar">
							<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
						</button>
					</div>
					<input type="hidden" name="classgroup" value="http://vivoweb.org/ontology#vitroClassGrouporganizations">
				</form>
			</div>

			<#--  Cuarto servicio Programas  -->
			<div class="service-item">
				<div class="service-icon">
					<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M22 10v6M2 10l10-5 10 5-10 5z"/><path d="M6 12v5c0 2 4 3 6 3s6-1 6-3v-5"/></svg>
				</div>
				<h3 class="service-name">${i18n().find_degree}</h3>
				<form class="service-form" action="${urls.base}/find-a-program" method="POST">
					<div class="service-search-wrap">
						<input type="text" autocomplete="off" name="querytext" id="search-bar-service-degree" class="service-input" placeholder="${i18n().service_search}">
						<button type="submit" class="service-btn" aria-label="Buscar">
							<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
						</button>
					</div>
					<input type="hidden" name="classgroup" value="http://vivoweb.org/ontology#vitroClassGrouporganizations">
				</form>
			</div>

		</div>
	</div>
</div>

${scripts.add('<script defer type="text/javascript" src="${urls.base}/themes/wilma/js/autocomplete.js"></script>')}
<script>
var baseUrl = "${urls.base}"
</script>
<script>
document.addEventListener("DOMContentLoaded", function() {
	var input = document.getElementById("search-bar-service-degree");
	if (input) {
		input.addEventListener("keyup", function(event) {
			if (event.keyCode === 13) {
				event.preventDefault();
				toService3();
			}
		});
	}

	function toService3() {
		var degreeNameRadio = document.getElementById('degree-radio-name');
		if (degreeNameRadio && degreeNameRadio.checked) {
			var rate_value = degreeNameRadio.value;
			console.log(rate_value);
			window.location.href = '${urls.base}'+"/find-a-program?querytext=acNameStemmed:\"" + document.getElementById("search-bar-service-degree").value + "\"";
		} else {
             window.location.href = '${urls.base}'+"/find-a-program?querytext=" + document.getElementById("search-bar-service-degree").value;
        }
	}
});
</script>

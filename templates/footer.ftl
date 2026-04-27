<#-- $This file is distributed under the terms of the license in LICENSE$ -->

</div> <!-- #wrapper-content -->

<footer class="footer" role="contentinfo" id="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h4 class="footer-title">Portales Institucionales</h4>
            <div class="footer-logos">
                <a href="https://cienciaabierta.urosario.edu.co" target="_blank" title="Ciencia Abierta">
                    <img src="${urls.theme}/images/footer/ciencia-abierta.webp" alt="Ciencia Abierta" class="footer-image">
                </a>
                <a href="https://revistas.urosario.edu.co" target="_blank" title="Portal de Revistas">
                    <img src="${urls.theme}/images/footer/revistas.webp" alt="Portal de revistas" class="footer-image">
                </a>
                <a href="https://pure.urosario.edu.co/" target="_blank" title="PURE">
                   <img src="${urls.theme}/images/footer/pure.webp" alt="PURE" class="footer-image">
                </a>
                <a href="https://repository.urosario.edu.co/" target="_blank">
                  <img src="${urls.theme}/images/footer/edocur.webp" alt="EdocUR" class="footer-image">
                </a>
            </div>
        </div>
        
        <div class="footer-section">
            <h4 class="footer-title">Gestionado por:</h4>
            <div class="footer-logos">
                <a href="https://crai.urosario.edu.co/" target="_blank">
                    <img src="${urls.theme}/images/footer/crai.webp" alt="CRAI" class="footer-image">
                </a>
            </div>
        </div>
    </div>

    <!-- Enlaces Directos -->
    <div class="footer-line-1">
        <div class="wrap-inner-footer">
            <div class="footer-column">
                <h3 class="footer-title">Enlaces directos</h3>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="https://urosario.edu.co/Aspirantes/" class="nav-link">Aspirantes</a></li>
                    <li class="nav-item"><a href="https://urosario.edu.co/Estudiantes/Inicio" class="nav-link">Estudiantes</a></li>
                    <li class="nav-item"><a href="https://urosario.edu.co/Profesores/Inicio/" class="nav-link">Profesores</a></li>
                    <li class="nav-item"><a href="https://urosario.edu.co/Egresados/Inicio/" class="nav-link">Egresados</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3 class="footer-title">Nuestros programas</h3>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="https://urosario.edu.co/Oferta-Academica/programas-pregrado/" class="nav-link">Pregrado</a></li>
                    <li class="nav-item"><a href="https://urosario.edu.co/Oferta-Academica/" class="nav-link">Posgrado</a></li>
                    <li class="nav-item"><a href="https://educacioncontinua.urosario.edu.co" class="nav-link">Educaci&oacute;n Continua</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3 class="footer-title">Protecci&oacute;n de datos</h3>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="https://urosario.edu.co/aviso-de-privacidad/" class="nav-link">Aviso de privacidad</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Contacto -->
    <div class="footer-line-2">
        <div class="container-fluid">
            <a href="https://www.urosario.edu.co" class="logo-footer">
                <img src="https://urosario.edu.co/PortalUrosario/media/UR-V4/Home/img/footer/Universidad-del-Rosario-logo-white.svg" alt="Universidad del Rosario">
            </a>
            <div class="contact-info">
                Bogot&aacute;: 422 5321 &bull; Resto del pa&iacute;s: 018000 511 888 <br>
                Calle 12C N&ordm; 6-25 - Bogot&aacute; D.C. Colombia. <br>
                <a href="https://urosario.edu.co/Home/Sedes-y-horarios">Sedes</a> - <a href="https://urosario.edu.co/terminos-y-condiciones">T&eacute;rminos de uso</a>
            </div>
        </div>
    </div>

    <div class="footer-line-3 text-center">
        <div class="container-fluid">
            <p>&copy;${copyright.year?c} ${copyright.text} | Powered by <a href="http://vivoweb.org" target="_blank"><strong>VIVO</strong></a></p>
            <p class="footer-legal-text">
                Instituci&oacute;n de educaci&oacute;n superior sujeta a la inspecci&oacute;n y vigilancia del Mineducaci&oacute;n | 
                Resoluci&oacute;n 58 del 16 de septiembre de 1895 expedida por el Ministerio de Gobierno.
            </p>
        </div>
    </div>
</footer>

<#include "scripts.ftl">

<!-- Google Analytics -->
<script defer src="https://www.googletagmanager.com/gtag/js?id=G-95Q4D64MCY"></script>
<script>
    window.addEventListener('load', function() {
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'G-95Q4D64MCY');
    });
</script>

<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<header id="branding" role="banner">
    <#include "developer.ftl">
    <div class="header-container">
        <div class="header-brand">
            <h1 class="logo-ur">
                <a title="${i18n().identity_title}" href="https://urosario.edu.co/" target="_blank">
                    <img class="header-icon" src="${urls.base}/themes/wilma/images/header/logoUR.webp" alt="Universidad del Rosario">
                </a>
                <hr class="lineaVertical">
                <a title="${i18n().identity_title}" href="${urls.base}/">
                    <img class="header-icon-HUB" src="${urls.base}/themes/wilma/images/header/logoHUB.webp" alt="HUB-UR">
                </a>
            </h1>
        </div>

        <nav class="header-nav" id="main-navigation" role="navigation">
            <ul class="navbar-nav d-flex flex-row align-items-center gap-3">
                <#list menu.items as item>
                    <li class="nav-item">
                        <a href="${item.url}" class="nav-link">${item.linkText}</a>
                    </li>
                </#list>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown">
                        Mapas
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="/vis/capabilitymap">Mapa de capacidades</a></li>
                        <li><a class="dropdown-item" href="/coauthorNetwork">Mapa de coautorías</a></li>
                    </ul>
                </li>
                <#if user.loggedIn>
                    <li class="nav-item ms-3">
                        <div class="user-menu-wrap">
                            <#include "userMenu.ftl">
                        </div>
                    </li>
                </#if>
            </ul>
        </nav>
    </div>
</header>

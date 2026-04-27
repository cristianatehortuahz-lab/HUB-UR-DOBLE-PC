<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<ul class="user-menu-list navbar-nav">
    <#if user.hasSiteAdminAccess>
        <li class="nav-item">
            <a class="nav-link" href="${urls.siteAdmin}" title="${i18n().identity_admin}">${i18n().identity_admin}</a>
        </li>
        <li class="nav-item">
            <#include "languageSelector.ftl">
        </li>
    </#if>

    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ${user.loginName}
        </a>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
            <#if user.hasProfile>
                <li>
                    <a class="dropdown-item" href="${user.profileUrl}" title="${i18n().identity_myprofile}"> ${i18n().identity_myprofile}</a>
                </li>
            </#if>
            <#if urls.myAccount??>
                <li>
                    <a class="dropdown-item" href="${urls.myAccount}" title="${i18n().identity_myaccount}">${i18n().identity_myaccount}</a>
                </li>
            </#if>
            <li><hr class="dropdown-divider"></li>
            <li>
                <a class="dropdown-item" href="${urls.logout}" title="${i18n().menu_logout}"> ${i18n().menu_logout}</a>
            </li>
        </ul>
    </li>
</ul>

${scripts.add('<script type="text/javascript" src="${urls.base}/js/userMenu/userMenuUtils.js"></script>')}

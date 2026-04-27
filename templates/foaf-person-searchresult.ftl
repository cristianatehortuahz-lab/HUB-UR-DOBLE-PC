<#-- Premium Person Card — shortView-foaf-Person.ftl -->
<#import "lib-properties.ftl" as p>

<#if individual??>
<a href="${individual.profileUrl}" class="hub-person-card" title="${individual.name}" data-vclass="${individual.vclassUri!}">

    <div class="hub-sv-card-main">
        <#-- Foto de perfil con Escudo Anti-Imgenes Rotas -->
        <#assign silhouette = "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='%23ccc' d='M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z'%3E%3C/path%3E%3C/svg%3E">
        <div class="hub-sv-photo-wrap">
            <#if individual.thumbUrl?has_content && !individual.thumbUrl?contains("placeholder")>
                <img class="hub-sv-photo hub-img-fluid"
                     src="${individual.thumbUrl}"
                     alt="${individual.name}"
                     width="68"
                     height="68"
                     loading="lazy"
                     onerror="this.onerror=null;this.src='${silhouette}';" />
            <#else>
                <div class="hub-silhouette-placeholder">
                    <img class="hub-sv-photo" src="${silhouette}" alt="Avatar Genrico" width="68" height="68" />
                </div>
            </#if>
        </div>

        <#-- Info del investigador -->
        <div class="hub-sv-info">
            <div class="hub-sv-header">
                <#-- v20.4: Uso de variables compatibles con el Motor de Búsqueda (details/depart) -->
                <#assign roleLabel = "">
                <#if (details[0].job)??><#assign roleLabel = details[0].job></#if>
                <#assign deptLabel = "">
                <#if (depart[0].div)??><#assign deptLabel = depart[0].div><#elseif (depart[0].org)??><#assign deptLabel = depart[0].org></#if>
                
                <#assign cleanName = individual.name>
                <#if roleLabel?has_content><#assign cleanName = cleanName?replace(roleLabel, "")></#if>
                <#if deptLabel?has_content><#assign cleanName = cleanName?replace(deptLabel, "")></#if>
                <#assign cleanName = cleanName?replace(">", "")?trim>

                <span class="hub-sv-name">${cleanName}</span>
            </div>

            <#-- Cargo/Rol -->
            <#if roleLabel?has_content>
                <span class="hub-sv-role">${roleLabel}</span>
            <#else>
                <span class="hub-sv-role">Investigador Universidad del Rosario</span>
            </#if>

            <#-- Badge de Facultad -->
            <#if deptLabel?has_content>
                <span class="hub-sv-dept-tag">${deptLabel}</span>
            <#elseif individual.mostSpecificTypeNames?? && individual.mostSpecificTypeNames?has_content>
                <#if individual.mostSpecificTypeNames[0] != "Persona" && individual.mostSpecificTypeNames[0] != "Person">
                    <span class="hub-sv-dept-tag">${individual.mostSpecificTypeNames[0]}</span>
                </#if>
            </#if>

            <#-- Snippet / Breve descripci\u00F3n if available -->
            <#if individual.snippet?has_content>
                <p class="hub-sv-snippet">${individual.snippet}</p>
            </#if>
        </div>
    </div>

    <#-- Footer con acci\u00F3n — Minimalista (s\u00F3lo flecha) -->
    <div class="hub-sv-footer-minimal">
        <span class="hub-sv-arrow-new">&#8250;</span>
    </div>
</a>
</#if>
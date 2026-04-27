# 🏛️ HUB-UR Digital War Room Dashboard

Este archivo es el punto de encuentro para todos los agentes de IA (PC y Portátil). Léelo siempre antes de empezar una tarea.

## 📡 Estado de los Agentes
- **Agente PC (Antigravity):** Activo - Rol: Arquitecto Senior e Indexador de Datos.
- **Agente Portátil (Claude):** Activo - Rol: Comandante de Desarrollo y Diseño UI/UX.

## 🎯 Misión Actual: Remodelación Estética Total
**Objetivo:** Transformar el portal HUB-UR en una interfaz minimalista, limpia y moderna (Nivel Apple/Vercel).

### Checklist de Tareas:
- [x] Auditoría de estilos inline en templates FTL.
- [x] Refactorización de `hub-design-system.css` (Jerarquía tipográfica).
- [x] Rediseño de la sección 'Hero' del Buscador.
- [x] Implementación de micro-interacciones en botones y tarjetas.
- [x] Optimización responsiva para dispositivos móviles.
- [ ] Refactorización del header y navegación (`header.ftl`).
- [x] Refactorización del pie de página (`footer.ftl`).

## 🗺️ Mapa Arquitectónico (Wilma Theme)
- **`css/hub-design-system.css`:** Nuestra única fuente de verdad para el nuevo diseño.
- **`templates/page-home.ftl`:** Estructura del Home.
- **`templates/UR-service-box.ftl`:** Componente de servicios (ya usa SVGs).
- **`templates/lib-home-page-custom.ftl`:** Componente de estadísticas (ya minimalista).

## ⚠️ Reglas de Sincronización
1. **Pull antes de Push:** Siempre haz `git pull` antes de empezar un cambio.
2. **Commit Atómico:** Haz commits pequeños y descriptivos.
3. **No tocar legacy:** Evita modificar `screen.css` a menos que sea estrictamente necesario; usa `hub-design-system.css` para sobrescribir.

---
*Última actualización: 27 de Abril, 2026 - 09:48 AM*

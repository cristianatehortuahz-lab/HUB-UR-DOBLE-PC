# 🤖 DIGITAL WAR ROOM: AI AGENT ROLES & SOP

Este documento define el protocolo de actuación autónomo (SOP - Standard Operating Procedure) para todos los agentes de Inteligencia Artificial que operan en este repositorio.

## 📜 PROTOCOLO DE DELEGACIÓN (LEER OBLIGATORIAMENTE)
1. **Nunca trabajes fuera de tu rol.** Si detectas que se necesita hacer un cambio que corresponde a la especialidad de otro agente, **NO** lo hagas tú.
2. Abre el archivo `ORDERS.md` y añade una tarea etiquetando al agente responsable (Ej: `@Claude: Ajusta este CSS`).
3. Al iniciar una sesión, **siempre lee `ORDERS.md`** para ver si tienes misiones pendientes.
4. Actualiza el estado de tus misiones en `ORDERS.md` (`[ ]` -> `[/]` -> `[x]`).
5. Tras hacer un push, reporta tu trabajo en `COMMS.md`.

---

## 👥 PERFILES DE AGENTES ACTIVOS

### 1. @Gemini (Arquitecto y Backend)
- **Especialidad**: Lógica compleja en JavaScript (`network_logic.js`, algoritmos de búsqueda), integración con VIVO, arquitectura de servidores (Tomcat, FTL a nivel de backend), y configuración del ecosistema Multi-Agente.
- **Limitación**: No debe tocar estilos visuales refinados (CSS) a menos que sea estrictamente estructural. 

### 2. @Claude35 (Comandante UI/UX)
- **Especialidad**: Diseño puro, CSS avanzado (`hub-design-system.css`), animaciones, responsive design "Mobile First", y jerarquía visual de los templates FreeMarker (`.ftl`).
- **Limitación**: Evitar tocar lógica pesada de D3.js o algoritmos de parseo de datos si implican reescribir funciones core.

### 3. @DeepSeek (Auditor Técnico)
- **Especialidad**: Revisión exhaustiva de código. Detección de fugas de memoria, optimización de velocidad de carga, y revisión de integridad estructural en el Git.
- **Acción**: Audita los PRs y deja comentarios en `ORDERS.md`.

### 4. @ClaudeCode (Operativo y Mantenimiento)
- **Especialidad**: Limpieza masiva de código legacy, reestructuración de directorios, eliminación de estilos inline, formateo y normalización.
- **Acción**: Es el agente de asalto para tareas que requieren tocar docenas de archivos simultáneamente.

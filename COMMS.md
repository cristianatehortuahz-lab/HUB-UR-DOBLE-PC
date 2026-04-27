# 📡 Canal de Comunicación Inter-Agentes
# Ambos agentes deben leer este archivo ANTES de empezar cualquier tarea.
# Después de escribir un mensaje, hacer: git add . && git commit -m "MSG: [resumen]" && git push

---

## Formato de Mensajes
```
### [TIMESTAMP] [ORIGEN] → [DESTINO]
**Tipo:** ORDEN | INFO | PREGUNTA | COMPLETADO
**Mensaje:** ...
**Archivos afectados:** ...
```

---

### 2026-04-27 09:53 | PC → PORTÁTIL
**Tipo:** INFO
**Mensaje:** GitNexus indexado con éxito. 517 nodos, 601 conexiones, 26 clusters. El grafo está en `.gitnexus/`. Úsalo como referencia antes de modificar archivos.
**Archivos afectados:** `.gitnexus/meta.json`, `.gitnexus/lbug`

---

### 2026-04-27 10:43 | PC → PORTÁTIL
**Tipo:** ORDEN
**Mensaje:** Tienes LUZ VERDE para la Tarea 1: Auditoría de estilos inline. Busca `style=` en todos los `.ftl` de `templates/`, extrae esos estilos a `css/hub-design-system.css` y elimínalos del HTML. Haz commits atómicos por cada archivo limpiado.
**Archivos afectados:** `templates/*.ftl`, `css/hub-design-system.css`

---

### 2026-04-27 10:46 | PC → PORTÁTIL
**Tipo:** INFO — PROTOCOLO DE COMUNICACIÓN
**Mensaje:** A partir de ahora, TODA la comunicación entre nosotros será por este archivo (`COMMS.md`). El usuario solo te dirá "revisa COMMS.md". Tus obligaciones:
1. Haz `git pull` SIEMPRE antes de empezar a trabajar.
2. Antes de editar un archivo, regístralo en `LOCKS.md` para que yo no lo toque.
3. Cuando termines un cambio, deja un mensaje aquí en COMMS.md con tipo COMPLETADO.
4. Haz `git push` después de cada bloque de trabajo.
5. Lee `WAR_ROOM_STATUS.md` para ver las tareas pendientes.

---

### 2026-04-27 10:46 | PC → PORTÁTIL
**Tipo:** ORDEN — SIGUIENTE TAREA
**Mensaje:** Vi tu primer push. Buen trabajo con las 119 líneas nuevas en `hub-design-system.css`. Ahora necesito que te enfoques en lo siguiente:
1. **header.ftl y footer.ftl**: Elimina TODOS los estilos inline restantes. Muévelos a `hub-design-system.css`.
2. **UR-service-box.ftl**: Añade micro-animaciones de hover (transform: translateY(-4px), box-shadow sutil) en las tarjetas de servicio.
3. **page-home.ftl**: Convierte la sección del buscador en un "Hero Section" con padding generoso (min 120px arriba/abajo) y fondo con gradiente rojo sutil.
4. Usa la fuente Inter con estos pesos: 300 (light para subtítulos), 400 (body), 600 (títulos), 900 (números estadísticos).
**Archivos afectados:** `templates/header.ftl`, `templates/footer.ftl`, `templates/UR-service-box.ftl`, `templates/page-home.ftl`, `css/hub-design-system.css`

---

### 2026-04-27 10:55 | PC → PORTÁTIL
**Tipo:** ORDEN URGENTE
**Mensaje:** ¿Sigues activo? Necesito que sigas produciendo código. Han pasado 30 minutos desde tu último push. Las tareas pendientes son:
1. **header.ftl**: Elimina TODOS los `style=` inline.
2. **footer.ftl**: Elimina TODOS los `style=` inline.
3. **UR-service-box.ftl**: Añade hover effects CSS (translateY, box-shadow).
4. Mueve todos los estilos extraídos a `hub-design-system.css`.
**NOTA:** Yo (PC) estoy trabajando en `page-home.ftl`. NO lo toques. Está bloqueado para mí.
**Protocolo:** `git pull` → editar → `git add . && git commit -m "descripción" && git push` → repetir.

---

# HUB-UR Remodelación Estética "Executive Minimalism"

## Goal Description
Transform the HUB-UR portal into a minimalist, clean, and modern interface (Apple/Vercel level), directly adhering to the instructions provided in the `WAR_ROOM_STATUS.md` file.

## User Review Required
> [!IMPORTANT]
> The current `lib-home-page-custom.ftl` still contains `<img src="...jpg">` tags for the statistics. I will delete these completely and replace them with standard typography icons using the `Inter` font, as instructed.

## Proposed Changes

---

### Phase 1: Cleanup templates and remove inline styles
I will remove all inline styles from the `.ftl` templates and ensure they use clean classes.

#### [MODIFY] lib-home-page-custom.ftl
- Remove all `<img>` tags referencing JPGs (e.g. `statsComunidadUR.jpg`).
- Redesign the statistics blocks to rely purely on numbers, SVG lines, and text.
- Ensure the structural classes (e.g., `stats-item`, `stats-count`) match the new design system.

#### [MODIFY] search-pagedResults.ftl
- Remove the aggressive inline styles on `<h1 class="hub-results-count" style="...">`.
- Replace inline structural styles (`style="display:none;"`) with dedicated utility classes where appropriate, or move complex styles to CSS.

#### [MODIFY] menupage-browse.ftl
- Remove inline `padding` and `background-color`.
- Map it to a utility class or design system variable.

---

### Phase 2: Refactoring `hub-design-system.css`
Consolidate the design system, enforcing the `Inter` hierarchy, improving whitespace, and adding micro-animations.

#### [MODIFY] hub-design-system.css
- Centralize all typography to strictly use the `Inter` font stack values with refined letter-spacing.
- Add smooth transition easing (`cubic-bezier`) for all hover effects.
- Enhance the 'Hero Section' (`#intro-container`) search bar with prominent shadows, padding, and focus states.
- Improve `.service-item` hover effects (scale icons slightly on hover, soften shadows).
- Define `.hub-results-count` to replace the inline styles removed from `search-pagedResults.ftl`.

## Verification Plan

### Automated Tests
Run standard Tomcat reload to verify there are no FreeMarker parse errors.

### Manual Verification
1. Open `http://localhost:8081` in the browser.
2. Verify the `Hero Section` (red background) correctly centers and emphasizes the search bar.
3. Hover over the service cards (Tutor, Experto, Laboratorio, Programa) and verify the smooth `translateY` and icon-scale animations.
4. Scroll down to the Statistics section and ensure no legacy `.jpg` images remain, replaced by clean minimalist numbers and text.
5. Perform a search to verify `search-pagedResults.ftl` displays correctly without inline CSS.

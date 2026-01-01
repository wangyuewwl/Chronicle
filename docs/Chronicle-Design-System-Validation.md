# Chronicle Design System Validation Checklist

**Ensuring IDENTICAL visual output every time**

## Pre-Generation Checklist

Before generating any Chronicle HTML, verify:

- [ ] `chronicle-design-system-template.html` exists in workspace
- [ ] `chronicle-design-system-components.md` exists in workspace
- [ ] Using `chronicle-v2.1-locked.kiro.hook` (not older versions)

## Template Compliance Checklist

### ✅ REQUIRED: Exact Template Usage
- [ ] Used `chronicle-design-system-template.html` as base (no modifications)
- [ ] Replaced ONLY template variables `{{VARIABLE_NAME}}`
- [ ] No custom HTML added outside of template variables
- [ ] No CSS modifications or additions
- [ ] No JavaScript modifications
- [ ] No font changes (must be Inter)

### ✅ REQUIRED: Visual Elements Unchanged
- [ ] Header section identical (title, subtitle, stats grid)
- [ ] Project details section identical (overview, challenges, requirements)
- [ ] Timeline section identical (filters, sorting buttons)
- [ ] Footer identical
- [ ] Color theme selector identical
- [ ] All padding and margins unchanged
- [ ] All border radius values unchanged (rounded-12, etc.)

### ✅ REQUIRED: Interactive Features Preserved
- [ ] Filter buttons work (All, Design, System, Problem solving)
- [ ] Sort buttons work (Latest, Oldest)
- [ ] Theme selector works (Theme 1, Theme 2)
- [ ] Timeline items have correct data attributes
- [ ] All JavaScript functionality intact

### ✅ REQUIRED: Component Templates Used
- [ ] Challenge cards use exact template format
- [ ] Requirement cards use exact template format
- [ ] Timeline events use exact template format
- [ ] Creator blocks use exact blue styling
- [ ] Kiro blocks use exact green styling
- [ ] Category tags use exact colors

### ✅ REQUIRED: Color Compliance
- [ ] Design category: `#5549B720` bg, `#5549B7` text, `#5549B740` border
- [ ] System category: `#EC774420` bg, `#EC7744` text, `#EC774440` border
- [ ] Problem solving: `#ED232320` bg, `#ED2323` text, `#ED232340` border
- [ ] Creator blocks: `bg-blue-500/10`, `border-blue-500/20`, `text-blue-300`
- [ ] Kiro blocks: `bg-green-500/10`, `border-green-500/20`, `text-green-300`

### ✅ REQUIRED: Typography Unchanged
- [ ] Font family: Inter (from Google Fonts)
- [ ] Font weights: 400, 500, 600, 700 only
- [ ] Text sizes unchanged (text-4xl, text-2xl, text-lg, text-sm, etc.)
- [ ] Text colors unchanged (text-foreground, text-muted-foreground, etc.)

### ✅ REQUIRED: Layout Unchanged
- [ ] Container max-width: 960px
- [ ] Grid layouts unchanged (grid-cols-2, md:grid-cols-4, etc.)
- [ ] Spacing unchanged (p-8, mb-8, space-y-8, etc.)
- [ ] Timeline positioning unchanged (pl-12, py-6, etc.)

## Content Validation

### ✅ Template Variables Replaced
- [ ] `{{PROJECT_TITLE}}` → Actual project name
- [ ] `{{PROJECT_SUBTITLE}}` → Project description
- [ ] `{{SESSION_DATE}}` → Formatted date (MMM DD, YYYY)
- [ ] `{{TIME_SPENT}}` → Duration (X Hours)
- [ ] `{{PROJECT_TYPE}}` → Work type
- [ ] `{{COMPLEXITY}}` → Low/Medium/High
- [ ] `{{PROJECT_OVERVIEW}}` → Description paragraph
- [ ] `{{KEY_CHALLENGES}}` → Challenge cards HTML
- [ ] `{{REQUIREMENTS_GOALS}}` → Requirement cards HTML
- [ ] `{{TIMELINE_EVENTS}}` → Timeline events HTML
- [ ] `{{VERSION}}` → v2.1
- [ ] `{{GENERATION_DATE}}` → Current date

### ✅ Content Formatting
- [ ] Dates formatted correctly (MM/DD, YYYY • H:MM AM/PM)
- [ ] ISO timestamps in data attributes (YYYY-MM-DDTHH:MM:SS)
- [ ] Category values: "design", "system", "problem-solving", or ""
- [ ] Proper HTML escaping for content

## Final Validation

### ✅ Visual Comparison
- [ ] Generated HTML looks IDENTICAL to reference design
- [ ] Same fonts, colors, spacing, and layout
- [ ] All interactive features work
- [ ] No visual differences except content

### ✅ File Output
- [ ] HTML file named: `chronicle-[project-name]-master.html`
- [ ] Markdown backup: `chronicle-[project-name]-session-[N]-[timestamp].md`
- [ ] Files saved to current workspace

## Common Violations to Avoid

### ❌ FORBIDDEN: Style Modifications
- Adding custom CSS styles
- Changing font families or sizes
- Modifying colors outside predefined categories
- Altering padding, margins, or spacing
- Adding new CSS classes

### ❌ FORBIDDEN: Structure Changes
- Adding new sections or containers
- Modifying the header or footer
- Changing the grid layouts
- Altering the timeline structure
- Adding custom HTML elements

### ❌ FORBIDDEN: Feature Modifications
- Changing JavaScript functionality
- Modifying filter or sort behavior
- Altering theme switching
- Adding new interactive elements
- Removing existing features

## Success Criteria

**The generated Chronicle HTML is successful if:**

1. **Visual Identity**: Looks exactly like the reference design
2. **Functionality**: All interactive features work perfectly
3. **Consistency**: Same fonts, colors, spacing, and layout
4. **Content Only**: Only the actual content is different
5. **Professional**: Maintains the same high-quality appearance

**If any visual element looks different from the reference design, the generation has failed and must be corrected.**

---

**Use this checklist every time you generate Chronicle HTML to ensure absolute consistency.**
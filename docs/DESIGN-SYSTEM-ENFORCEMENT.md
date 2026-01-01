# 🔒 CHRONICLE DESIGN SYSTEM ENFORCEMENT

## ABSOLUTE RULE: CONTENT-ONLY CHANGES

**The Chronicle Design System is LOCKED. Only content changes are allowed.**

### What This Means

✅ **ALLOWED (Content Changes):**
- Replace template variables with actual content
- Use different project names, dates, descriptions
- Add different timeline events and interactions
- Change challenge and requirement descriptions
- Update session-specific information

❌ **FORBIDDEN (Everything Else):**
- Modify CSS styles, colors, fonts, or spacing
- Change HTML structure or layout
- Add new sections or remove existing ones
- Alter JavaScript functionality
- Modify padding, margins, or visual elements
- Change the header, footer, or navigation
- Add custom styling or classes

### Visual Guarantee

**Every Chronicle HTML must be visually IDENTICAL to the reference design.**

The only differences should be:
- Project names and descriptions
- Timeline event content
- Challenge and requirement text
- Dates and session information

Everything else - fonts, colors, layout, spacing, interactive features - must be exactly the same.

### Template Process

1. **Read** `chronicle-design-system-template.html` (DO NOT MODIFY)
2. **Replace** template variables `{{VARIABLE_NAME}}` with content
3. **Use** exact component templates from components guide
4. **Preserve** all styling, JavaScript, and visual elements
5. **Generate** HTML that looks identical to reference

### Enforcement Mechanism

The `chronicle-v2.1-locked.kiro.hook` contains strict instructions that:
- Require reading the template files
- Forbid any modifications to styling or structure
- Mandate use of exact component templates
- Enforce visual consistency requirements

### Quality Standard

**Success = Visual Indistinguishability**

If someone sees two Chronicle reports side by side, they should not be able to tell which workspace they came from based on visual appearance. Only the content should be different.

---

**This ensures that Chronicle maintains professional, consistent branding across all workspaces and use cases.**
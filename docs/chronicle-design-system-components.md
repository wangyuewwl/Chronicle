# Chronicle Design System Components

This document defines the standardized components and patterns for Chronicle HTML generation.

## Template Variables

The main template uses these variables that must be replaced:

- `{{PROJECT_TITLE}}` - Main project title
- `{{PROJECT_SUBTITLE}}` - Subtitle/description
- `{{SESSION_DATE}}` - Formatted session date
- `{{TIME_SPENT}}` - Duration of session
- `{{PROJECT_TYPE}}` - Type of work (Development, Design, etc.)
- `{{COMPLEXITY}}` - Low, Medium, High
- `{{PROJECT_OVERVIEW}}` - Main project description
- `{{KEY_CHALLENGES}}` - Grid of challenge cards
- `{{REQUIREMENTS_GOALS}}` - Grid of requirement cards
- `{{TIMELINE_EVENTS}}` - All timeline events
- `{{VERSION}}` - Chronicle version
- `{{GENERATION_DATE}}` - When report was generated

## Component Templates

### Challenge/Requirement Card
```html
<div class="bg-muted rounded-12 p-4">
    <h4 class="font-medium mb-3 text-foreground">[TITLE]</h4>
    <p class="text-sm text-muted-foreground">[DESCRIPTION]</p>
</div>
```

### Timeline Event
```html
<div class="timeline-item relative pl-12 py-6" data-category="[CATEGORY]" data-timestamp="[ISO_TIMESTAMP]">
    <div class="timeline-dot"></div>
    <div class="timeline-line"></div>
    <div class="bg-muted rounded-12 pt-4 pr-4 pb-4 pl-6">
        <div class="flex flex-col md:flex-row md:items-center md:justify-between mb-4">
            <div class="text-sm text-muted-foreground mb-2 md:mb-0">[FORMATTED_DATE]</div>
            [OPTIONAL_CATEGORY_TAG]
        </div>
        <h3 class="text-lg font-semibold mb-1 text-foreground">[EVENT_TITLE]</h3>
        <p class="text-muted-foreground mb-6">[EVENT_DESCRIPTION]</p>
        
        <div class="space-y-6">
            [INTERACTION_BLOCKS]
        </div>
    </div>
</div>
```

### Category Tag (Optional)
```html
<div class="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium" style="background-color: [BG_COLOR]; color: [TEXT_COLOR]; border: 1px solid [BORDER_COLOR];">
    [CATEGORY_NAME]
</div>
```

### Creator Interaction Block
```html
<div>
    <div class="bg-blue-500/10 border border-blue-500/20 rounded-lg p-4">
        <h4 class="font-medium text-sm mb-3 text-blue-300">Creator</h4>
        <p class="text-sm text-blue-300">[CREATOR_MESSAGE]</p>
    </div>
</div>
```

### Kiro Interaction Block
```html
<div>
    <div class="bg-green-500/10 border border-green-500/20 rounded-lg p-4">
        <h4 class="font-medium text-sm mb-3 text-green-300">Kiro</h4>
        <ul class="text-sm text-green-300 space-y-2">
            [KIRO_ACTIONS_LIST]
        </ul>
    </div>
</div>
```

### Kiro Action List Item
```html
<li>• [ACTION_DESCRIPTION]</li>
```

## Category Colors

### Design Category
- Background: `#5549B720`
- Text: `#5549B7`
- Border: `#5549B740`

### System Category
- Background: `#EC774420`
- Text: `#EC7744`
- Border: `#EC774440`

### Problem Solving Category
- Background: `#ED232320`
- Text: `#ED2323`
- Border: `#ED232340`

## Standard Categories

- `design` - UI/UX design work
- `system` - Technical implementation, configuration
- `problem-solving` - Debugging, troubleshooting
- `` (empty) - General work, no specific category

## Date Formatting

- Timeline events: `MM/DD, YYYY • H:MM AM/PM`
- Header date: `MMM DD, YYYY`
- ISO timestamps: `YYYY-MM-DDTHH:MM:SS`

## Usage Guidelines

1. Always use the main template as the base
2. Replace all template variables with actual content
3. Use standardized component templates for consistency
4. Follow the established color scheme and typography
5. Maintain the interactive functionality (filters, sorting, themes)
6. Include proper data attributes for JavaScript functionality
#!/bin/bash

# Chronicle Design System Setup Script
# Copies the design system files to a target workspace

echo "🎨 Chronicle Design System Setup"
echo "================================="

# Check if target directory is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <target-workspace-path>"
    echo "Example: $0 /path/to/your/workspace"
    exit 1
fi

TARGET_DIR="$1"

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ Error: Target directory '$TARGET_DIR' does not exist"
    exit 1
fi

echo "📁 Target workspace: $TARGET_DIR"
echo ""

# Files to copy
FILES=(
    "chronicle-design-system-template.html"
    "chronicle-design-system-components.md"
    "chronicle-v2.1-locked.kiro.hook"
    "Chronicle-Design-System-Validation.md"
    "DESIGN-SYSTEM-ENFORCEMENT.md"
)

# Copy files
echo "📋 Copying design system files..."
for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        cp "$file" "$TARGET_DIR/"
        echo "✅ Copied: $file"
    else
        echo "❌ Missing: $file (not found in current directory)"
    fi
done

echo ""
echo "🔧 Setup Instructions:"
echo "1. Navigate to your target workspace: cd '$TARGET_DIR'"
echo "2. Rename chronicle-v2.1-locked.kiro.hook to chronicle.kiro.hook"
echo "3. Trigger Chronicle hook to test the LOCKED design system"
echo "4. Verify output matches reference design exactly"
echo ""
echo "📖 For detailed instructions, see Chronicle-Design-System-Guide.md"
echo "🔒 For enforcement rules, see DESIGN-SYSTEM-ENFORCEMENT.md"
echo "✅ For validation checklist, see Chronicle-Design-System-Validation.md"
echo ""
echo "✨ Chronicle v2.1 LOCKED Design System setup complete!"
echo "🎯 All future HTML will have IDENTICAL styling - only content will change!"
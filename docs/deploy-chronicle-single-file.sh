#!/bin/bash

# Chronicle Single-File Deployment Script
# Copies just the embedded hook file to any workspace

echo "🚀 Chronicle Single-File Deployment"
echo "===================================="

# Check if target directory is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <target-workspace-path>"
    echo "Example: $0 /path/to/your/workspace"
    echo ""
    echo "This will copy ONLY the chronicle-embedded.kiro.hook file"
    echo "No other files needed - everything is embedded!"
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

# Check if embedded hook exists
if [ ! -f "chronicle-embedded.kiro.hook" ]; then
    echo "❌ Error: chronicle-embedded.kiro.hook not found in current directory"
    exit 1
fi

# Copy the single file
cp "chronicle-embedded.kiro.hook" "$TARGET_DIR/"
echo "✅ Copied: chronicle-embedded.kiro.hook"

echo ""
echo "🔧 Setup Instructions:"
echo "1. Navigate to your target workspace: cd '$TARGET_DIR'"
echo "2. Rename chronicle-embedded.kiro.hook to chronicle.kiro.hook"
echo "3. Trigger Chronicle hook - it will generate identical HTML every time!"
echo ""
echo "✨ Benefits of Single-File Solution:"
echo "   • No external dependencies"
echo "   • Just copy one file to any workspace"
echo "   • Embedded design system ensures consistency"
echo "   • Identical visual output guaranteed"
echo ""
echo "🎯 Chronicle Single-File deployment complete!"
echo "📝 Only the content will change - all styling is locked and embedded!"
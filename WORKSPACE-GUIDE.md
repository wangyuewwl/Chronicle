# Chronicle Workspace Guide 📁

## Folder Structure

### 📂 Root Files (Ready to Use)
- **`chronicle-embedded.kiro.hook`** - Main production hook (copy this to your workspace)
- **`Chronicle-latest-preview.html`** - Live preview of latest features
- **`Chronicle-README.md`** - Complete documentation

### 📂 docs/ - Advanced Documentation
- Design system guides and templates
- Setup scripts for advanced configurations
- Deployment options and validation tools

### 📂 releases/ - Version History
- Complete snapshots of each version
- Local-only storage (not pushed to GitHub)
- Full package archives for each release

### 📂 experimental/ - Prototype Features
- **`chronicle-embedded-v2.2-experimental.kiro.hook`** - Future features testing
- Experimental themes and functionality
- Not recommended for production use

### 📂 archive/ - Reference Materials
- Reference images and design inspiration
- Legacy files and deprecated features
- Historical development materials

## Quick Actions

### For New Users:
```bash
# Copy main hook to your workspace
cp chronicle-embedded.kiro.hook /path/to/your/workspace/chronicle.kiro.hook
```

### For Developers:
```bash
# View latest features
open Chronicle-latest-preview.html

# Read advanced setup
open docs/Chronicle-Design-System-Guide.md
```

### For Experimenters:
```bash
# Try experimental features
cp experimental/chronicle-embedded-v2.2-experimental.kiro.hook /path/to/test/workspace/
```

## File Naming Convention

- **Production files**: `chronicle-embedded.kiro.hook`
- **Experimental files**: `chronicle-embedded-v[X.X]-experimental.kiro.hook`
- **Version locked files**: `chronicle-v[X.X]-locked.kiro.hook`
- **Preview files**: `Chronicle-latest-preview.html`

## Maintenance

- **Main hook**: Always production-ready
- **Preview file**: Updated with every feature change
- **Experimental**: May contain unstable features
- **Archive**: Reference materials only

---

*Keep your workspace clean and organized! 🧹*
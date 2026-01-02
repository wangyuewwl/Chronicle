# Chronicle Workspace Guide 📁

## Folder Structure

### 📂 Root Files (Ready to Use)
- **`chronicle-embedded.kiro.hook`** - Main production hook (copy this to your workspace)
- **`Chronicle-latest-preview.html`** - Live preview of latest features
- **`Chronicle-README.md`** - Complete documentation
- **`WORKSPACE-GUIDE.md`** - This navigation guide

### 📂 docs/ - Advanced Documentation
- Design system guides and templates
- Setup scripts for advanced configurations
- Deployment options and validation tools

### 📂 releases/ - Version History
- Complete snapshots of each version
- Local-only storage (not pushed to GitHub)
- Full package archives for each release

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

## File Naming Convention

- **Production files**: `chronicle-embedded.kiro.hook`
- **Version locked files**: `chronicle-v[X.X]-locked.kiro.hook`
- **Preview files**: `Chronicle-latest-preview.html`

## Maintenance

- **Main hook**: Always production-ready
- **Preview file**: Updated with every feature change
- **Documentation**: Keep README and guides current

---

*Keep your workspace clean and organized! 🧹*
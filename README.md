Personal configuration files for the tools I use daily. These files are meant to be symlinked into your home directory so updates here flow directly to your machine.

## Layout
- `aerospace/aerospace.toml` — tiling window manager setup for macOS, with sensible gaps and workspace assignments.
- `vscode/settings.json` & `vscode/keybindings.json` — minimal VS Code setup with vim-style navigation and R-friendly bindings.
- `zsh/.zshrc` — Zsh + Oh My Zsh with Powerlevel10k, vi mode, zoxide, and a handful of aliases.
- `obsidian/` — placeholder folders for plugins and themes to keep a consistent vault layout.

## How to use
Clone the repo, then symlink the config you want:

```bash
# Aerospace (macOS)
ln -sf "$(pwd)/aerospace/aerospace.toml" "$HOME/.config/aerospace/aerospace.toml"

# VS Code
ln -sf "$(pwd)/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
ln -sf "$(pwd)/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"

# Zsh
ln -sf "$(pwd)/zsh/.zshrc" "$HOME/.zshrc"
```

Restart the relevant app (or reload the config) after linking.

## Notes on each tool
- **Aerospace**: Uses `alt`+number for workspaces and assigns common apps (Arc, VS Code, Obsidian, Slack/Zoom, Office, Calendar) to dedicated spaces. Gaps are tuned for a MacBook + external monitor. Normalization and mouse focus helpers are enabled.
- **VS Code**: Expects the MesloLGS NF font (for terminal) and Fira Code (editor). The Vim extension (see `vscode/settings.json`) is configured for shortcuts, and `vscode/keybindings.json` adds R-friendly snippets like pipe insertion. Activity bar moves to the top and the sidebar to the right to maximize vertical space.
- **Zsh**: Requires Oh My Zsh, Powerlevel10k, `zsh-syntax-highlighting`, `zsh-autosuggestions`, and `zoxide`. vi-mode is on by default; Tab accepts autosuggestions before falling back to completion. The tracked `zsh/.zshrc` includes the HPC and R aliases I use regularly.
- **Obsidian**: Keep plugins in `obsidian/plugins` and themes in `obsidian/themes` to mirror your vault setup if you want to version them later.
- **Ghostty**: My current terminal emulator of choice; settings live in the app, but fonts/themes in Zsh and VSCode complement it.

Keep gitleaks handy (`pre-commit install`) to avoid committing secrets.

Personal configuration files for the tools I use daily (MacOS Specific):

## Layout
- `aerospace/aerospace.toml` — tiling window manager setup for macOS.
- `vscode/settings.json` & `vscode/keybindings.json` — minimal VS Code setup with vim-style navigation and sp,e R-friendly bindings.
- `zsh/.zshrc` — Zsh + Oh My Zsh with Powerlevel10k, vi mode, zoxide, and useful aliases.
- `obsidian/` — placeholder folders for plugins and themes to keep a consistent vault layout.

## Notes on each tool
- **[Aerospace](https://nikitabobko.github.io/AeroSpace/guide)**: Uses `alt`+number for workspaces and assigns common apps (Arc, VS Code, Obsidian, Slack/Zoom, Office, Calendar) to dedicated spaces. Gaps are tuned for a MacBook + external monitor.
- **[VS Code](https://code.visualstudio.com/)**: Expects the MesloLGS NF font (for terminal) and Fira Code (editor). The Vim extension (see `vscode/settings.json`) is configured for shortcuts, and `vscode/keybindings.json` adds R-friendly snippets like pipe insertion. Activity bar moves to the top and the sidebar to the right to maximize vertical space.
- **[Zsh](https://ohmyz.sh/)**: Requires Oh My Zsh, Powerlevel10k, `zsh-syntax-highlighting`, `zsh-autosuggestions`, and `zoxide`. vi-mode is on by default
- **[Obsidian](https://obsidian.md/)**: Keep plugins in `obsidian/plugins` and themes in `obsidian/themes` to mirror your vault setup if you want to version them later.
- **[Ghostty](https://ghostty.org/)**: My current terminal emulator of choice; settings live in the app, but fonts/themes in Zsh and VSCode complement it.

Keep gitleaks handy (`pre-commit install`) to avoid committing secrets.

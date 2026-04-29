# Neovim config

LazyVim based Neovim config shared between macOS and Ubuntu.

## Requirements

- Neovim 0.10+
- Git
- A Nerd Font, for example JetBrainsMono Nerd Font
- ripgrep
- fd
- Node.js/npm for some language tools
- C toolchain dependencies:
  - clangd
  - norminette
  - c_formatter_42

Ubuntu clipboard support also needs one of these:

- Wayland: `wl-clipboard`
- X11: `xclip`

## Ubuntu Setup

Install common packages:

```sh
sudo apt update
sudo apt install -y git neovim ripgrep fd-find nodejs npm clangd wl-clipboard xclip
```

Install 42 tools if needed:

```sh
python3 -m pip install --user norminette c-formatter-42
```

Clone this config:

```sh
mkdir -p ~/.config
git clone <repo-url> ~/.config/nvim
nvim
```

Lazy.nvim will bootstrap itself on the first launch.

## macOS Setup

```sh
brew install neovim ripgrep fd node llvm
python3 -m pip install --user norminette c-formatter-42
```

Then clone this repository to `~/.config/nvim`.

## Syncing

Commit changes from whichever machine you edit on:

```sh
cd ~/.config/nvim
git status
git add .
git commit -m "Update nvim config"
git push
```

On the other machine:

```sh
cd ~/.config/nvim
git pull
nvim --headless "+Lazy! sync" +qa
```

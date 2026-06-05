# Neovim 設定

LazyVim ベースの Neovim 設定
macOS と Ubuntu で同じ設定を使うために、`.config/nvim` をこのリポジトリで管理する

## 必要なもの

- Neovim 0.10 以上
- Git
- Nerd Font。例: JetBrainsMono Nerd Font
- ripgrep
- fd
- 一部の language tool 用の Node.js/npm
- C 関連の依存ツール
  - clangd
  - norminette
  - c_formatter_42

Ubuntu でシステムクリップボードを使うには、環境に応じて次のどちらかも必要

- Wayland: `wl-clipboard`
- X11: `xclip`

## Ubuntu セットアップ

共通パッケージを入れる

```sh
sudo apt update
sudo apt install -y git neovim ripgrep fd-find nodejs npm clangd wl-clipboard xclip
```

42 関連ツールが必要な場合は入れる

```sh
python3 -m pip install --user norminette c-formatter-42
```

リポジトリを clone して、`~/.config/nvim` に symlink を張る

```sh
git clone git@github.com:bassaaaa/nvimconf ~/.dotfiles
mkdir -p ~/.config
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
nvim
```

初回起動時に lazy.nvim が自動で bootstrap される

すでに `~/.config/nvim` がある場合は、先に退避してから symlink を張る

```sh
mv ~/.config/nvim ~/.config/nvim.bak
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
```

## macOS セットアップ

必要なツールを入れる

```sh
brew install neovim ripgrep fd node llvm
python3 -m pip install --user norminette c-formatter-42
```

このリポジトリを clone して、`~/.config/nvim` に symlink を張る

```sh
git clone git@github.com:bassaaaa/nvimconf ~/.dotfiles
mkdir -p ~/.config
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
```

## 同期

設定を変更したマシンで commit して push する

```sh
cd ~/.dotfiles
git status
git add .
git commit -m "Update nvim config"
git push
```

別のマシンでは pull して plugin を同期する

```sh
cd ~/.dotfiles
git pull
nvim --headless "+Lazy! sync" +qa
```

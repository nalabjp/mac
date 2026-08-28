# mac アセット

このリポジトリは `$HOME` 管理外の macOS アセット置き場です。
dotfiles の管理とパッケージ導入は [nalabjp/dotfiles](https://github.com/nalabjp/dotfiles)
の chezmoi で行います。

## 初回セットアップ

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install chezmoi
chezmoi init --apply nalabjp/dotfiles
```

## アセットの復元

- **Alfred**: Alfred の設定画面から `alfred/Alfred.alfredpreferences` を読み込む
- **ErgoDox EZ**: `ergodox/ergodox_ez_nalabjp.hex` を firmware として書き込む
- **Keychron Q11**: `keychron/q11_ansi_knob.layout.json` を VIA にアップロードする
- **iTerm2**: `iterm2/com.googlecode.iterm2.plist` を iTerm2 の設定として手動で読み込む。
  Dynamic Profile（`~/Library/Application Support/iTerm2/DynamicProfiles/Default.json`）は
  dotfiles リポジトリ側で chezmoi が管理する
- **フォント**: `iterm2/Ricty Diminished Regular Nerd Font Complete.ttf` を
  `~/Library/Fonts` にコピーする

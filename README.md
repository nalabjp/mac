# mac アセット

このリポジトリは `$HOME` 管理外の macOS アセット置き場です。
dotfiles の管理とパッケージ導入は [nalabjp/dotfiles](https://github.com/nalabjp/dotfiles)
の chezmoi で行います。

## アセットの復元

- **ErgoDox EZ**: `ergodox/ergodox_ez_nalabjp.hex` を firmware として書き込む
- **Keychron Q11**: `keychron/q11_ansi_knob.layout.json` を VIA にアップロードする
- **iTerm2**: `iterm2/com.googlecode.iterm2.plist` を iTerm2 の設定として手動で読み込む。
  Dynamic Profile（`~/Library/Application Support/iTerm2/DynamicProfiles/Default.json`）は
  dotfiles リポジトリ側で chezmoi が管理する

cd ~/.local/bin
# パス
export PATH=$PATH:/home/matsushita/.local/bin:/home/matsushita/.local/bin/nvim-linux64/bin:/home/matsushita/.local/bin/ripgrep-14.0.3-x86_64-unknown-linux-musl:/home/matsushita/.local/bin/fd-v10.0.0-x86_64-unknown-linux-gnu:/home/matsushita/.nodebrew/current/bin/
# neovim
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar zxvf nvim-linux64.tar.gz
# rg
wget https://github.com/BurntSushi/ripgrep/releases/download/14.0.3/ripgrep-14.0.3-x86_64-unknown-linux-musl.tar.gz
tar zxvf ripgrep-14.0.3-x86_64-unknown-linux-musl.tar.gz
# fd
wget https://github.com/sharkdp/fd/releases/download/v10.0.0/fd-v10.0.0-x86_64-unknown-linux-gnu.tar.gz
tar zxvf fd-v10.0.0-x86_64-unknown-linux-gnu.tar.gz
# tree-sitter
wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.22.6/tree-sitter-linux-x64.gz
gunzip tree-sitter-linux-x64.gz
chmod +x tree-sitter-linux-x64
mv tree-sitter-linux-x64  tree-sitter
# python関連のライブラリ
pip3 install --user  jedi-language-server flake8 black neovim
# nodejsのインストール
curl -L git.io/nodebrew | perl - setup
nodebrew install-binary v22.1.0
nodebrew use v22.1.0
npm install -g yarn
# 設定ファイル
git clone https://github.com/Akira106/kickstart.nvim.git ~/.config/nvim
# neovimでの作業
:CocInstall coc-jedi
:CocInstall coc-diagnostic
:CocInstall coc-pairs

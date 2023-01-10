git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir .config
mkdir .config/kitty

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

brew install git
brew install ripgrep

brew tap homebrew/cask-fonts
brew install --cask font-iosevka

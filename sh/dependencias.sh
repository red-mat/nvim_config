source ./sh/dependencias_base.sh

insall:base(){
  git:verify || git:install
  curl:verify || curl:install
  neovim:verify || neovim:install
  vim-plug:verify || vim-plug:install
}
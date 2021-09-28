source ./sh/shared.sh

# git
git:verify(){ checkProgram git && true || false }
git:install(){ sudo apt install -y git }

# curl
curl:verify(){ checkProgram curl && true || false }
curl:install(){ sudo apt install -y curl }

# neovim
neovim:verify(){ checkProgram nvim && true||false }
neovim:install(){ sudo apt install -y neovim }

# vim-plug
vim-plug:verify(){ 
    local file=$HOME/.local/share/nvim/site/autoload/plug.vim 
    checkFile $file && true || false
}
vim-plug:install(){
  local path_file=${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim
  local file_origin=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  sh -c 'curl -fLo "$path_file" --create-dirs "$file_origin"'
}

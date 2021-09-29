source ./sh/shared.sh


checkGit(){ 
  checkProgram git && true || false 
}

installGit(){
  sudo apt install -y git
}

# curl
checkCurl(){
  checkProgram curl && true || false
}
installCurl(){
  sudo apt install -y curl
}

# neovim
checkNeovim(){ 
  checkProgram nvim && true || false
}
installNeovim(){
  sudo apt install -y neovim
}

# vim-plug
checkVimplug(){ 
  local file=$HOME/.local/share/nvim/site/autoload/plug.vim 
  checkFile $file && true || false
}
installVimplug(){
  local path_file=${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim
  local file_origin=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  sh -c 'curl -fLo "$path_file" --create-dirs "$file_origin"'
}
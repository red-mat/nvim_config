source ./source/shared.sh


checkNeovim(){ 
  checkProgram nvim && true || false
}
installNeovim(){
  installProgram neovim
}

source ./source/shared.sh


checkGit(){ 
  checkProgram git && true || false 
}

installGit(){
  installProgram git
}

uninstallGit(){
  sudo apt-get remove --purge git -y >/dev/null
}
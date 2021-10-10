source ./source/shared.sh


checkCurl(){
  checkProgram curl && true || false
}
installCurl(){
  installProgram curl
}

source ./sh/dependencias_base.sh

insallBase(){
  checkGit || installGit
  checkCurl || installCurl
  checkNeovim || installNeovim
  checkVimplug || installVimplug
}

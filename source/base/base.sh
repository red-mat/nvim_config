source ./source/base/git.sh
source ./source/base/curl.sh
source ./source/base/nvim.sh
source ./source/base/vimPlug.sh


insallBase(){
  checkGit || installGit
  checkCurl || installCurl
  checkNeovim || installNeovim
  checkVimplug || installVimplug
}
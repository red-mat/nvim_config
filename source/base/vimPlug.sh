source ./source/shared.sh


checkVimplug(){ 
  local file=$HOME/.local/share/nvim/site/autoload/plug.vim 
  checkFile $file && true || false
}

installVimplug(){
  echo "* Instalando vim-plug"

  if (sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > /dev/null) >/dev/null
  then
    okMessage " vim-plug instalado correctamente"
  else
    errorMessage " No se pudo instalar vim-plug correctamente"
  fi
}
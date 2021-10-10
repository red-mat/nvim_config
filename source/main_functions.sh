source ./source/shared.sh

messageHelp(){
  echo --install instala las dependencias y configuraciones del neovim
  echo --update actualiza el init.vim instalando las dependencias y configuraciones faltante
  echo
  echo --help Muestra las opciones del script
}

errorInvalidInput(){
  errorMessage "[opcion no valida]:consulte nvim_config --help"
  echo
  messageHelp
}

installNvimrc(){
  echo "[ Instalando NvimRc ]"
  checkDirectory ~/.config || mkdir ~/.config
  
  if ln -s $(pwd)/nvim ~/.config/nvim >/dev/null
  then
    okMessage "* nvimrc instalado correctamente"
  else
    errorMessage "* no se pudo instalar el nvimrc"
  fi
}
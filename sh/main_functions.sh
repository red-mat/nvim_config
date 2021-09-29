messageHelp(){
  echo --install instala las dependencias y configuraciones del neovim
  echo --update actualiza el init.vim instalando las dependencias y configuraciones faltante
  echo
  echo --help Muestra las opciones del script
}

errorInvalidInput(){
  echo  [opcion no valida]:consulte nvim_config --help>&2
  echo
  messageHelp
}

installNvimConfig(){
  local path_nvim=$HOME/.config/nvim

  [ -d $path_nvim ] && rm -dr $path_nvim > /dev/null

  ln -s $(pwd)/nvim $path_nvim
  sudo ln -s $(pwd)/nvim_config.sh /usr/local/bin/nvim_config
}
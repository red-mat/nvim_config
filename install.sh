#!/bin/bash


instalacion_basica(){
    echo instalando git && [ $(which git) ] || sudo apt-get install git >/dev/null && echo git instalado
    echo instalando curl && [ $(which curl) ] || sudo apt-get install curl >/dev/null && echo curl instalando
    echo instalando neovim && [ $(which neovim) ] || sudo apt-get install neovim >/dev/null && echo neovim instalado
}

instalar_vimPlug(){
  echo instalando vim-plug
  
  if sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > /dev/null
  then
    echo vim-plug instalado correctamente
  else
    echo vim-plug no se pudo instalar
  fi
}

instalar_configuracion(){
  echo "[ Instalando configuracion. ]"
  [ -d ~/.config ] || mkdir ~/.config
  
  if ln -s $(pwd)/nvim ~/.config/nvim >/dev/null
  then
    echo no se pudo crear el enlace virtual de nvim a ~/.config/nvim
  else
    echo se creo el enlace virtual correctamente
  fi
}

main(){
  local option=$1

  case $option in
    --install)
      instalacion_basica
      instalar_vimPlug
      instalar_configuracion
    ;;
    *)
      echo ingrese la opcion --install por favor
    ;;  
  esac
}

main $1

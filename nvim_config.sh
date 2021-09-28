#!/bin/bash

source ./sh/dependencias.sh
source ./sh/main_functions.sh


main(){
  local option=$1

  case $option in
    --install)
      insall:base
      nvim_config:install
    ;;
    *)
      error:invalidInput
    ;;  
  esac
}

main $1

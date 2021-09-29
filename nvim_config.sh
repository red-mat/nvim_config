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
      errorInvalidInput
    ;;  
  esac
}

main $1

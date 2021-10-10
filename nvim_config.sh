#!/bin/bash

source ./source/base/base.sh
source ./source/main_functions.sh

main(){
  local option=$1

  case $option in
    --install)
      insallBase
      installNvimrc
    ;;
    *)
      errorInvalidInput
    ;;  
  esac
}

main $1

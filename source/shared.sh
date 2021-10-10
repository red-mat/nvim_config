errorMessage(){
  local message=$1
  echo "$message" >&2 
}

okMessage(){
  local message=$1
  echo "$message" >&1
}

checkProgram(){
  local command_name=$1
  which $command_name>/dev/null && true || false
}

checkDirectory(){
  local path_folder=$1
  [ -d $path_folder ] && true || false
}

checkFile(){
  local path_file=$1
  [ -f $path_file ] && true || false
}

installProgram(){
  local programName=$1

  echo "[ instalando $programName ]"

  if sudo apt-get install -y $programName>/dev/null
  then
    okMessage "* $programName instalado correctamente"
  else
    errorMessage "* No se pudo instalo $programName correctamente"
  fi
}
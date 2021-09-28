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
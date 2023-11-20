for FILE in $(ls -Q -R *.*)
do
  filename= './($FILE)'
  #cat $filename
  echo $filename
  echo Press Enter
  read
 done
 
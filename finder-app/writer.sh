if [ $# -eq 0 ] 
then
 echo "writefile not specified"
 exit 1
fi

if [ $# -eq 1 ]
then
  echo "writestr not specified"
  exit 1
fi

basedir=$(dirname "$1")

if [ ! -d basedir ]
then 
  mkdir $basedir
fi

echo "$2" > $1

if [ $? -ne 0 ]
then
  echo "file could not be created"
  exit 1
fi
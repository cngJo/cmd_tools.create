echo "delete old executable"

cd "bin"
del "create.exe"
cd ".."
rmdir "bin"

echo "build source code"

v -o create src

mkdir "bin"
copy "./create.exe" "./bin/create.exe"
del "./create.exe"
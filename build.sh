echo "-- compiling create --"

echo "[ INFO ] deleting old version"

# delete bin and everything inside
rm -rf bin

echo "[ INFO ] start building"

# compile the v source code into create binary in root directory of the project
v -o create src

echo "[ INFO ] finished compiling ... move binary into bin directory"

mkdir bin
mv create bin/

echo "[ INFO ] create symlink: $PWD/bin/create to /usr/local/bin/create"

ln -sf "$PWD/bin/create" /usr/local/bin/create

echo "[ INFO ] finished building create"
#/bin/sh

file=$1
dir=${file::-1}

if [ $1 = "pwd" ]; then
    file="$(basename $PWD)/"
    dir=${file::-1}
    cd ..
fi

cd $file

mv .vscode README.md .git  $dir.jar .. 2> /dev/null

files=$(shopt -s nullglob dotglob; echo $PWD/lib/*)
if (( ${#files} ))
#if lib contains files
then
	cp ~/dev/school/add/lib/.classpath .
	sed -i "s/path=\"lib\"/path=\"lib\/$(basename $PWD/lib/*)\"/g" .classpath
else
	cp ~/dev/school/add/.classpath .
	mv lib .. 2> /dev/null
fi

cp ~/dev/school/add/.project .
cp -r ~/dev/school/add/.settings .
sed -i "s/Project/$dir/g" .project

cd ..
tar -czf $dir.tgz $file
echo $dir.tgz Created!

if [ $1 = "pwd" ]; then
#    mv $dir.tgz $file
    echo "Clean Java Language Server Workspace [\` + F2]"
fi

mv .vscode README.md .git lib $dir.jar $file 2> /dev/null

cd $file
rm .project .classpath 
rm -rf .settings

if (( ${#files} ))
#if lib contains files
then
#files=$(cp lib/* ../../../src/lib/)
#mv -i $files ..
#ln -s "$files" "lib/"
echo "make a function to move these to src/lib and symlink new locale here"
fi

cd ..
git add .
git commit -m "Created $file"
ln -f -s $PWD/$file/src/*.java ../code/
#Manually add all before week 7

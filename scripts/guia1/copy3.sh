if [ -e a/a.txt ] && [ -e a/b/b.txt ] && [ -e a/b/c/d.doc ] && [ -e a/b/c.mp3 ]
then

mkdir -p files
cp a/a.txt files
cp a/b/b.txt files
cp a/b/c/d.doc files
cp a/b/c.mp3 files

else
echo "falta al menos un archivo para copiar"

fi

Lazarus folder:
cd folder_of_this_readme
git -C your_lazarus_binaries_git pull
git -C your_lazarus_fixes_git pull
rm -rf Lazarus
mkdir Lazarus
cp -a your_lazarus_fixes_git/.git Lazarus/
git -C Lazarus restore .
rm -rf Lazarus/.git*

cd Lazarus

replace " -g " with " -gw " in Makefile.compiled :
find . -name Makefile.compiled -exec sed -e 's# -g # -gw #' -i bak {} \;
find . -name '*compiledbak' -delete

../resources/build.sh

cp your_lazarus_binaries_git/docs/chm/* docs/chm/

Open in "Packages" the LazarusIDE.pkgproj

Build / Build and Debug


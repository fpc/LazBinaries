Lazarus folder:
cd path/git/binaries
git -C your_lazaurs_binaries_git pull
git -C your_lazaurs_fixes_git pull
rm -rf Lazarus
mkdir Lazarus
cp -a path/git/lazarus_fixes/.git Lazarus/
git -C Lazarus restore .
rm -rf Lazarus/.git*

cd Lazarus

replace " -g " with " -gw " in Makefile.compiled :
find . -name Makefile.compiled -exec sed -e 's# -g # -gw #' -i bak {} \;
find . -name '*compiledbak' -delete

../resources/build.sh

cp lazarus_binaries_git/docs/chm/* docs/chm/

Open in "Packages" the LazarusIDE.pkgproj

Build / Build and Debug


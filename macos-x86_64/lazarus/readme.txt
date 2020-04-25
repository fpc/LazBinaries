Lazarus folder:
svn up path/svn/binaries
svn export releasetag Lazarus
cd Lazarus

replace " -g " with " -gw " in Makefile.compiled :
find . -name Makefile.compiled -exec sed -e 's# -g # -gw #' -i bak {} \;
find . -name '*compiledbak' -delete

../resources/build.sh

cp path/svn/binaries/docs/chm/* docs/chm/

Open in "Packages" the LazarusIDE.pkgproj

Build / Build and Debug

Packge file is created in
LazarusIDE/build/LazarusIDE.pkg

sudo installer -pkg LazarusIDE/build/LazarusIDE.pkg -verbose -target /
less /var/log/install.log

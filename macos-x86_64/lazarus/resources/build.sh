
make bigide LCL_PLATFORM=cocoa CPU_TARGET=x86_64

# clean up
strip lazarus
strip startlazarus
strip lazbuild
strip tools/lazres
strip tools/updatepofiles
strip tools/lrstolfm
strip tools/svn2revisioninc
if [ -f components/chmhelp/lhelp/lhelp ]; then
  strip components/chmhelp/lhelp/lhelp
fi

find . -name '.svn' -exec rm -rf {} \; || true
find . -name '.DS_Store' -exec rm -rf {} \; || true



CHM helpfiles.
=============

CHM support based on the great work of Andrew is now also available in the 
textmode IDE.  This archive also contains the .xct and .kwd files that are
needed for crosslinking this archive with other CHM files. These files are
not required for viewing (but are only about 1% of the total size)

This CHM snapshot was build on 2012-08-01 by using fpdoc from trunk to
compile the docs for fixes2_6 and the lazarusrc1 tag.

How to install the CHMs in Lazarus
------------------------------------

- Install the chmhelp package
- Copy the chms to docs/html in the Lazarus directory.

Note that Lazarus does not load ref.* at this moment, so (CHM) help
on keywords does not work yet.

How to install the CHMs into the textmode IDE.
-------------------------------------

1. extract the archive somewhere, the archive already has an "help/" path
    built in. (on windows/dos: c:\fpc, under unix e.g. /usr/share/fpc/help)
2. add the files to the textmode IDE using the "help->files->new" button.
	Add toc.chm first, then add the other files in random order.
3. it is safe to restart the IDE before testing. (in case something goes
   wrong at least your help config will be saved)

The helpconfiguration is stored, with paths in fp.ini, and might look like
this:

[Help]
Files="/fpc/fpcdocs/toc.chm;/fpc/fpcdocs/fcl.chm;/fpc/fpcdocs/ref.chm;/fpc/fpcdocs/rtl.chm;/fpc/fpcdocs/prog.chm;/fpc/fpcdocs/user.chm"

Troubleshooting
--------------

If you use Windows XPsp2 or later, and an helpfile won't view, go into the
file explorer, and bring up the properties of the CHM file. Then click
"unblock" there. Apparantly, in some cases Windows thinks the helpfiles are
downloaded content, and prevents access.

To do this programatically, FPC 2.4.3+ has this functionality built into the
chmls utility (chmls unblock <chmfile>)

What is CHM? 
------------

CHM is an archive format specially made for HTML based help by Microsoft. It
is also known as HTMLHELP, but note that HTMLHELP2 (and in the future 3) are
not related.  HTMLHELP2 and 3 were only distributed with Visual Studio, not
with client OSes.  Vista does have an own helpfile system (Help for
Applications I believe, possibly HTMLHELP2 derived), but it is not used a
lot yet.

Besides being an archive format optimized to quickly extract a
single file, there is also a TOC, an Index and fulltext search dictionaries
in each CHM. 

The html in a CHM is basically unmodified except for links from one chm file
to the other, these use a ms-its://file.chm/path/to/htmlfile.html like URL
syntax.

The format is sometimes related to security problems, but as far as I have
been able to verify, this is more an Internet Explorer viewer application
problem, not a problem of the format itself

What OSes support CHM natively?
----------------------

Windows versions after windows 98 can open CHMs. Due to new security
measures in XPsp2 and later, sometimes unlocking the CHMs is necessary (see
troubleshooting paragraph).

On Linux (and mostly *nix in general) there are at least four packages
to process CHMs in addition to FPC/Lazarus' own:

- the xCHM viewer
- the KCHMViewer viewer
- the GNOCHM viewer
- the chmlib packages (sometimes called extract_chmlib) that allows to unpack
     chm files.

Older kchmviewers (<=4.0) are known to have a problem with the indexes of
the larger chm files (rtl.chm, and lcl.chm from Lazarus), and only show the
first couple of hundred entries.  The author has been notified and can't
reproduce it with his latest builds anymore.

kchmviewer versions (even as new as in Fedora 13) seem to have problems with
links that don't have a leading / either ( ? ). I reported it to kchmviewer,
but the maintainer said it was a problem of QT (and indeed, switching
khtmlpart resolves it). In Fedora 17, kchmviewer can't seem to load external
links.

Gnochm is extremely slow with the larger files, and development seems to
have stalled. In my Fedora 17 it is no longer available.

xCHM in the recent version seems to work fine and reasonably fast. (lcl.chm
in a few secs).  However its TOC system is not a tree, and some versions
won't load some nodes (same problem as kchmviewer ?). The most recent
version seems to have fixed it.

Of course the lazarus and FPC textmode IDE now also support CHM.

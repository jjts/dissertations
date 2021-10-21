TO COMPILE THE DOCUMENTS YOU WILL NEED:

1. A LaTeX Distribution. Recommended options:
1.1 MikTeX (windows)
1.2 TexLive (Linux)
1.3 MacTeX (MacOS) (?)

2. Use the following commands.
----------------------------------------------
2.1 Compile the main document

--> latex main.tex

2.2 Compile your bibliography

The previous command will generate some auxiliary 
files, including a file named main.aux that includes 
the references found. To enable your references you 
need to compile your bibliografy library and generate 
a .bbl file. This is achieved with the command

--> bibtex main.aux

2.3 Re-compile the main document

Now you need to recompile your document in order
to insert the bibliography documents. Sometimes changes 
to your document require you to recompile the document 
twice, before it becomes

--> latex main.tex

=============================================================
TO EDIT THE DOCUMENTS YOU WILL NEED:

A good LaTeX editor is recommended. While there are several options
from comercial to open-source, I recommend the following (I never tried them all):

 - Windows:
    * TeXnicCenter (free)
    * WinEdt (shareware)
 - Linux
    * Kile
    * Emacs + AuxTex
 - MacOS
    * TexShop

Furthermore, an image editor/converter is also recommended. The following options are recommended:

 - Windows:
    * MS Visio + WMF2EPS/Generic PS driver from Adobe
    * Inkscape
 - Linux
    * Inkscape

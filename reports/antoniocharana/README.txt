%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% README %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                      %
%  ---------- Master of Science Dissertation template ----------       %
%                                                                      %
%  Template for the Master Thesis according to the regulations         %
%  published by the Academic Board (Direcção Académica) at IST.        %
%                                                                      %
%  For up-to-date guide, please refer to the offical website           %
%  http://da.tecnico.ulisboa.pt/dissertacao-de-mestrado/               %
%                                                                      %
%       Andre C. Marta                                                 %
%       Area Cientifica de Mecanica Aplicada e Aeroespacial            %
%       Departamento de Engenharia Mecanica                            %
%       Instituto Superior Tecnico                                     %
%       Av. Rovisco Pais                                               %
%       1049-001 Lisboa                                                %
%       Portugal                                                       %
%       Tel: +351 21 841 9469                                          %
%                        3469 (extension)                              %
%       Email: andre.marta@ist.utl.pt                                  %
%                                                                      %
%  Created:       Jan 20, 2011                                         %
%  Last Modified: Mar 30, 2016                                         %
%                                                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Contents                                                            %
%  1 - Package contents                                                %
%  2 - Running on Linux                                                %
%  3 - Running on Windows                                              %
%  4 - Running on Mac                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PACKAGE CONTENTS                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

This set of files provide a template for using LaTeX to write a Master
or PhD thesis according to the IST regulations.

The main file is 'Thesis.tex' and it includes all the other .tex files
in the ZIP package:

	Thesis.TeX
done?		Thesis_Preamble.tex
done?		Thesis_FrontCover.tex
X		Thesis_Dedication.tex
X		Thesis_Acknowledgements.tex
X		Thesis_Resumo.tex
		Thesis_Abstract.tex
X		Thesis_Nomenclature.tex
X		Thesis_Glossary.tex
		Thesis_Introduction.tex
		Thesis_Implementation.tex
		Thesis_<new chapters>.tex
		Thesis_Results.tex
		Thesis_Conclusions.tex
		Thesis_Appendix_A.tex
		Thesis_Appendix_B.tex
		Thesis_bib_DB.bib
		abbrvunsrtnat.bst
		glossary.sty
		IST_A_CMYK_POS.pdf		
		Makefile

It is not required that you are familiar with LaTeX since the files
should be quite self explanatory.
Please be sure you understand the structure before you start editing.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RUNNING ON LINUX                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Just use the make file 'Makefile' to process the LaTeX code and output
the PDF file.
Under Linux, this means typing 'make' at the terminal prompt.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RUNNING ON WINDOWS                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

To run LaTeX on Windows, it is required to install additional software,
if it has not been done before.

The instructions below are just three possible solutions, but they proved
robust during tests.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a) Software download

i) compiler:
MiKTeX 2.9 (or later)
Download from http://miktex.org/2.9/setup

This version appears to be quite stable. Search for more recent releases
if available.

ii) text editor:

Choose one of the suggested three editors below. See http://en.wikipedia.org/wiki/Comparison_of_TeX_editors for helping you choose.

Option 1: Texmaker 4.4.1 (or later)
Download from http://www.xm1math.net/texmaker/download.html

This editor is nice because it allows two windows,
showing both the source code and the compiled pdf, simultaneously.
It also automatically installs and updates any necessary LaTeX package.

Option 2: TeXstudio 2.9.4 (or later)
Download from http://texstudio.sourceforge.net/

this editor also provides modern writing support, such as interactive spell checking, code folding, and syntax highlighting.
It is an extended version of the previous one with additional features while keeping its look and feel.

Option 3: TeXworks 0.4.6 (or later)
Download from https://www.tug.org/texworks/

This editor already comes included in the MiKTeX installation.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b) Installation notes

i) Compiler
------------------------
>>> MiKTeX
First install this compiler. Just follow the on screen instructions.

Accept the default directory paths so that Texmaker can automatically
find the required executables for compilation (pdflatex, makeindex,
bibtex, etc).

ii) text editor:
------------------------

After the compiler is installed, the TeX editor can then be installed.
Follow the on screen instructions.

After installation, it is necessary to configure the compilation
commands and, optionally, define shortcuts.

>>> a) Texmaker

Texmaker -> Options (menu bar) -> Configure Texmaker ->
Compile (left menu) -> User

Add the following commands without line breaks (this replicates the makefile used in Linux):

pdflatex %.tex | 
makeindex %.glo -s %.ist -t %.glg -o %.gls | 
makeindex %.nlo -s nomencl.ist -o %.nls | 
bibtex %.aux | 
pdflatex -synctex=1 -interaction=nonstopmode %.tex | 
pdflatex -synctex=1 -interaction=nonstopmode %.tex

The last command is optional and depends on the version of Acrobat
Reader installed.
If it is not installed, download it from http://get.adobe.com/reader/

>>> b) TeXstudio

TeXstudio -> Options (menu bar) -> Configure TeXstudio ->
Build (left menu) -> User Commands

Press "+Add"
Rename command from "user0:" to "THESIS"
Add the following commands without line breaks (this replicates the makefile used in Linux):

pdflatex.exe -synctex=1 -interaction=nonstopmode %.tex | 
makeindex %.glo -s %.ist -t %.glg -o %.gls | 
makeindex %.nlo -s nomencl.ist -o %.nls | 
bibtex.exe % | 
pdflatex.exe -synctex=1 -interaction=nonstopmode %.tex | 
pdflatex.exe -synctex=1 -interaction=nonstopmode %.tex

>>> c) TeXworks

Create a script in a plain text file, e.g. "TeXworks_compile.bat", with the following lines

pdflatex Thesis
makeindex Thesis.glo -s Thesis.ist -t Thesis.glg -o Thesis.gls
makeindex Thesis.nlo -s nomencl.ist -o Thesis.nls
bibtex Thesis
pdflatex Thesis
pdflatex Thesis

note: edit included file "TeXworks_compile.bat" as desired

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c) Compile LaTeX source

>>> a) Texmaker

Open the main file "Thesis.tex" in Texmaker, go to "Options" and select "Define Current Document as Master Document" (one time only).

To compile, just click on the blue arrow next to "Compile" (making sure the main TeX source is open).

To compile from any open file, the compilation commands have to be edited, replacing % by the main file name.

>>> b) TeXstudio

To compile, just select Tools (menu bar) -> User -> THESIS:, making sure the main TeX source is open.

>>> c) TeXworks

To compile, execute the previously created batch script.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d) Define shortcuts (optional)

It is possible to program shortcuts.
It is advisable to assign the function keys Fx to the "compile", "clean" and "see pdf" functions.

>>> a) Texmaker

>>> b) TeXstudio

TeXstudio -> Options (menu bar) -> Configure TeXstudio ->
Shortcuts (left menu)

Menu -> Tools -> User
1:THESIS
edit Current Shortcut F5

Now to compile the entire document, just press F5

>>> c) TeXworks


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RUNNING ON MAC                                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

To run LaTeX on Mac, it is required to install additional software,
if it has not been done before.

The instructions below is just one possible solution, but it proved
robust during tests.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a) Software download

i) compiler:

MacTex 
Download from https://tug.org/mactex/downloading.html

This version appears to be quite stable. Search for more recent releases
if available.

ii) text editor:

Texpad
Download from https://www.texpadapp.com/osx

This editor is nice because it allows two windows,
showing both the source code and the compiled pdf, simultaneously.
It also automatically installs and updates any necessary LaTeX package.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b) Installation notes

i) Compiler
------------------------
>>> MacTex
First install this compiler. Just follow the on screen instructions.

Accept the default directory paths so that Texpad can automatically
find the required executables for compilation (pdflatex, makeindex,
bibtex, etc).

ii) text editor:
------------------------

After the compiler is installed, the TeX editor can then be installed.
Follow the on screen instructions.

After installation, it is necessary to configure the compilation
commands and, optionally, define shortcuts.

>>> a) Texpad

Click on the arrow next to “pdfLaTeX | BibTeX | Makeindex” -> Toggle “Typeset Configuration” to “Manual”

Check “Nomenclature” and “Glossaries”

Restart Texpad


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c) Compile LaTeX source

>>> a) Texpad

To compile, just click on “Typeset” on the superior left corner

Optionally, it is possible to activate “Auto-Typeset” clicking on the arrow mentioned in b)->ii)->a). Now every change made to the code is automatically compiled

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


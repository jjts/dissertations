%%
%% This is file `IEEEconf.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% IEEEconf.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2004 by Scott Pakin <scott+ltx@pakin.org>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%%
%%
%%
%% MODIFIED BY JCA@22-Oct-2004 for A4 paper
%%
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{IEEEconfA4}
    [2004/01/14 v1.0 IEEE A4 conference proceedings]
\PassOptionsToClass{a4paper,twocolumn,10pt}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\let\ieee@old@maketitle=\maketitle
\renewcommand{\maketitle}{%
  \ieee@old@maketitle
  \thispagestyle{empty}%
}
\pagestyle{empty}
\setlength{\parindent}{1pc}
\RequirePackage[%
  noheadfoot,
  textwidth=6.875in,
  textheight=9.8125in,
  tmargin=1in
]{geometry}
\setlength{\columnsep}{0.375in}
\RequirePackage{mathptmx}
\RequirePackage{helvet}
\RequirePackage{courier}
\newcommand{\ieee@times@xiv@bold}{%
  \rmfamily\bfseries\upshape\fontsize{14}{16}\selectfont}
\newcommand{\ieee@times@xii@bold}{%
  \rmfamily\bfseries\upshape\fontsize{12}{14}\selectfont}
\newcommand{\ieee@times@xi@bold}{%
  \rmfamily\bfseries\upshape\fontsize{11}{13}\selectfont}
\newcommand{\ieee@times@x@bold}{%
  \rmfamily\bfseries\upshape\fontsize{10}{12}\selectfont}
\newcommand{\ieee@times@xii@roman}{%
  \rmfamily\mdseries\upshape\fontsize{12}{14}\selectfont}
\newcommand{\ieee@times@xii@italic}{%
  \rmfamily\mdseries\itshape\fontsize{12}{14}\selectfont}
\newcommand{\ieee@times@ix@roman}{%
  \rmfamily\mdseries\upshape\fontsize{9}{11}\selectfont}
\newcommand{\ieee@helv@x@roman}{%
  \sffamily\mdseries\upshape\fontsize{10}{12}\selectfont}
\def\@maketitle{%
  \newpage
  \null
  \vskip 0.375in%
  \begin{center}%
    \let\footnote=\thanks
    {\ieee@times@xiv@bold \@title}%
    \vskip 2\baselineskip
    \ieee@times@xii@roman
    \begin{tabular}[t]{c}%
      \@author
    \end{tabular}%
  \end{center}%
  \vskip 10pt%
}

\newenvironment{affiliation}{%
  \ieee@times@xii@italic
  \begin{tabular}[t]{c}%
}{%
  \end{tabular}%
}
\newcommand*{\email}[1]{%
  {\ieee@times@xii@italic#1}}
\if@titlepage
  \renewenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \renewenvironment{abstract}{%
      \if@twocolumn
        \begin{center}%
          \ieee@times@xii@bold \abstractname
        \end{center}
        \itshape
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn
         \vspace*{\baselineskip}%
       \else
         \endquotation
       \fi}
\fi
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\ieee@helv@x@roman #1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    \ieee@helv@x@roman #1. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\RequirePackage{titlesec}
\titleformat{\section}{%
  \ieee@times@xii@bold}{\thesection.}{0.5em}{}{}
\titlespacing{\section}{0pt}{12pt}{12pt}
\titleformat{\subsection}{%
  \ieee@times@xi@bold}{\thesubsection.}{0.5em}{}{}
\titlespacing{\subsection}{0pt}{11pt}{11pt}
\titleformat{\subsubsection}{%
  \ieee@times@x@bold}{\thesubsubsection.}{0.5em}{}{}
\titlespacing{\subsubsection}{0pt}{10pt}{10pt}
\renewenvironment{thebibliography}[1]{%
  \section*{\refname}%
  \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
  \begin{ieee@thebibitemlist}{#1}%
}{%
  \end{ieee@thebibitemlist}%
}
\newenvironment{ieee@thebibitemlist}[1]
     {\list{\@biblabel{\@arabic\c@enumiv}}%
           {\ieee@times@ix@roman
            \setlength{\itemsep}{0pt}%
            \setlength{\parsep}{0pt}%
            \settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\AtBeginDocument{%
  \@ifpackageloaded{tocbibind}{%
    \let\thebibitemlist=\ieee@thebibitemlist
    \let\endthebibitemlist=\endieee@thebibitemlist
  }%
  {}%
}
\endinput
%%
%% End of file `IEEEconf.cls'.

%%
%% This is file `njubachelor.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% njubachelor.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013-2016 by Zachary Cao <caozengle@163.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008/05/04 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{njubachelor}
    [2016/06/06 v3.0 Nanjing University Bachelor's Degree Thesis Template]
\newif\ifNJU@thesis
\DeclareOption{thesis}{\NJU@thesistrue}
\DeclareOption{design}{\NJU@thesisfalse}
\newif\ifNJU@oneside
\DeclareOption{oneside}{\NJU@onesidetrue%
  \PassOptionsToClass{oneside}{book}\PassOptionsToClass{oneside}{article}}
\DeclareOption{twoside}{\NJU@onesidefalse%
  \PassOptionsToClass{twoside}{book}\PassOptionsToClass{twoside}{article}}
\newif\ifNJU@pageheader
\DeclareOption{pageheader}{\NJU@pageheadertrue}
\DeclareOption{nopageheader}{\NJU@pageheaderfalse}
\newif\ifNJU@chapter
\DeclareOption{chapter}{\NJU@chaptertrue}
\DeclareOption{nochapter}{\NJU@chapterfalse}
\newif\ifNJU@longtitle\NJU@longtitlefalse
\newif\ifNJU@shorttitle\NJU@shorttitlefalse
\newif\ifNJU@manualtitle\NJU@manualtitlefalse
\DeclareOption{longtitle}{\NJU@longtitletrue}
\DeclareOption{shorttitle}{\NJU@shorttitletrue\NJU@longtitlefalse}
\DeclareOption{manualtitle}{\NJU@manualtitletrue\NJU@longtitlefalse}
\newif\ifNJU@shortdepspe
\DeclareOption{shortdepspe}{\NJU@shortdepspetrue}
\DeclareOption{longdepspe}{\NJU@shortdepspefalse}
\newif\ifNJU@notdefaultmath
\DeclareOption{defaultmath}{\NJU@notdefaultmathfalse}
\DeclareOption{mathptm}{\NJU@notdefaultmathtrue\def\NJU@mathpackage{mathptmx}}
\DeclareOption{mathtxf}{\NJU@notdefaultmathtrue\def\NJU@mathpackage{txfonts}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{book}
  \PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions%
  {thesis,oneside,nopageheader,nochapter,longtitle,shortdepspe,defaultmath}
\ProcessOptions\relax
\ifNJU@chapter
  \LoadClass[a4paper,12pt]{book}
\else
  \LoadClass[a4paper,12pt]{article}
\fi
\RequirePackage[no-math]{fontspec}
\RequirePackage[UTF8,fontset=none,zihao=-4,heading=true]{ctex}
\RequirePackage{amsmath,amsfonts,amssymb,bm}
\RequirePackage{stmaryrd}
\ifNJU@notdefaultmath \RequirePackage{\NJU@mathpackage} \fi
\RequirePackage{graphicx}
\RequirePackage{picinpar}
\RequirePackage{wrapfig}
\RequirePackage{subfigure}
\RequirePackage[table]{xcolor}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{mhchem}
\RequirePackage{chemfig}
\RequirePackage{titletoc}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{enumerate}
\RequirePackage[format=hang,font=small,%
  justification=centering,labelfont=sf]{caption}
\RequirePackage[colorlinks,citecolor=black,linkcolor=black]{hyperref}
\RequirePackage{calc}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{hypernat}
\AtBeginDocument{
  \hypersetup{
    pdftitle={\NJU@ctitle (\NJU@etitle)},
    pdfauthor={\NJU@cauthor (\NJU@eauthor)},
    pdfsubject={\NJU@subject},
    pdfkeywords={\NJU@ckeywords (\NJU@ekeywords)}
  }
  \setlength{\baselineskip}{1.26\baselineskip}
}
\RequirePackage[left=3.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{fancyhdr}
\ifNJU@pageheader
  \pagestyle{fancy}
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \ifNJU@oneside
    \fancyhead[L]{\fangsong \NJU@subject}
    \fancyhead[R]{\fangsong \leftmark}
  \else
    \fancyhead[EC]{\fangsong \NJU@subject}
    \fancyhead[OC]{\fangsong \leftmark}
  \fi
\else \pagestyle{plain}
\fi
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}
\xeCJKsetup{AutoFakeSlant={true}}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}
\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhkai}{KaiTi}
\setCJKfamilyfont{zhfs}{FangSong}
\setCJKfamilyfont{zhbfsong}{STSong}
\setCJKfamilyfont{zhbfkai}{STKaiti}
\providecommand*{\songti}{\CJKfamily{zhsong}}
\providecommand*{\heiti}{\CJKfamily{zhhei}}
\providecommand*{\kaishu}{\CJKfamily{zhkai}}
\providecommand*{\fangsong}{\CJKfamily{zhfs}}
\providecommand*{\bfsong}{\bf\CJKfamily{zhbfsong}}
\providecommand*{\bfkai}{\bf\CJKfamily{zhbfkai}}
\newenvironment{Description}[1]{\begin{list}{}{%
  \renewcommand{\makelabel}[1]{##1}\settowidth\labelwidth{\makelabel{#1}}%
  \itemsep=0.5em\setlength{\leftmargin}{\labelwidth+\labelsep}}}{\end{list}}
\let\NJU@cleardoublepage\cleardoublepage
\newcommand{\NJU@clearemptydoublepage}{%
  \clearpage{\pagestyle{empty}\NJU@cleardoublepage}}
\let\cleardoublepage\NJU@clearemptydoublepage
\ifNJU@chapter
  \newcommand{\NJU@pdftopmark}{0}
\else
  \newcommand{\NJU@pdftopmark}{1}
\fi
\newcommand{\NJU@ctitle@format}[1]{%
  \begin{center}
    \zihao{3}\bfsong #1
  \end{center}}
\ifNJU@chapter
  \ctexset{
    chapter = {
      number = \arabic{chapter},
      format = \centering\zihao{3}\bfsong,
      nameformat = {},
      titleformat = {},
      beforeskip = 1.2em,
      afterskip = 1.8em
    },
    section/format = \sf\zihao{4}
  }
\else
  \ctexset{ section/format = \centering\sf\zihao{4} }
\fi
\ctexset{
  subsection/format = \sf\zihao{-4},
  subsubsection/format = \sf\zihao{-4}
}
\ifNJU@chapter
  \titlecontents{chapter}[4em/12*14]{\vspace{1.6em}\sf\zihao{4}}%
    {\contentslabel{4em}}{\hspace{-4em}}{\hfill\bf\contentspage}
  \titlecontents{section}[4em/12*14]{}{\contentslabel{2.5em}}
    {\hspace{-2.5em}}{~\titlerule*[1pc]{$\cdot$}\contentspage}
  \titlecontents{subsection}[4em/12*14+3.2em]{}{\contentslabel{3.2em}}
    {\hspace{-3.2em}}{~\titlerule*[1pc]{$\cdot$}\contentspage}
\else
  \titlecontents{section}[1.5em]{\vspace{1.6em}\sf\zihao{4}}%
    {\contentslabel{1.5em}}{\hspace{-1.5em}}{\hfill\bf\contentspage}
\fi
\ifNJU@chapter
  \ctexset{ contentsname = \NJU@contentsname }
\else
  \ctexset{ contentsname = {\zihao{3}\bfsong\NJU@contentsname} }
\fi
\def\NJU@grade{}
\newcommand{\grade}[1]{\def\NJU@grade{#1}}
\def\NJU@sid{}
\newcommand{\sid}[1]{\def\NJU@sid{#1}}
\def\NJU@cauthor{}
\newcommand{\cauthor}[1]{\def\NJU@cauthor{#1}}
\def\NJU@eauthor{}
\newcommand{\eauthor}[1]{\def\NJU@eauthor{#1}}
\def\NJU@ctitle{}
\newcommand{\ctitle}[1]{\def\NJU@ctitle{#1}}
\def\NJU@etitle{}
\newcommand{\etitle}[1]{\def\NJU@etitle{#1}}
\def\NJU@mtitle{}
\newcommand{\mtitle}[1]{\def\NJU@mtitle{#1}}
\def\NJU@cmentor{}
\newcommand{\cmentor}[2]{\def\NJU@cmentor{#1}\def\NJU@cmentortitle{#2}}
\def\NJU@ementor{}
\newcommand{\ementor}[2]{\def\NJU@ementor{#1}\def\NJU@ementortitle{#2}}
\def\NJU@cdepartment{}
\newcommand{\cdepartment}[1]{\def\NJU@cdepartment{#1}}
\def\NJU@edepartment{}
\newcommand{\edepartment}[1]{\def\NJU@edepartment{#1}}
\def\NJU@cspecialization{}
\newcommand{\cspecialization}[1]{\def\NJU@cspecialization{#1}}
\def\NJU@especialization{}
\newcommand{\especialization}[1]{\def\NJU@especialization{#1}}
\def\NJU@cdate{}
\newcommand{\cdate}[1]{\def\NJU@cdate{#1}}
\def\NJU@edate{}
\newcommand{\edate}[1]{\def\NJU@edate{#1}}
\def\NJU@ckeywords{}
\newcommand{\ckeywords}[1]{\def\NJU@ckeywords{#1}}
\def\NJU@ekeywords{}
\newcommand{\ekeywords}[1]{\def\NJU@ekeywords{#1}}
\newcommand{\makectitlepage}{
  \cleardoublepage\thispagestyle{empty}
  \pdfbookmark[\NJU@pdftopmark]{\NJU@ctitlepage@pdftitle}{cover}
  \begin{titlepage}\vspace{3em}
    \includegraphics[width=0.14\textwidth]{njulogos/njulogo.pdf}\vspace{2.6em}
    \begin{center}
      \includegraphics[width=0.5\textwidth]{njulogos/njuname.pdf}\\[2.8em]
      \zihao{1}\bfsong
      \ifNJU@thesis \NJU@ctitlepage@thesis
      \else         \NJU@ctitlepage@design
      \fi
      \vfill
      \begin{minipage}{0.8\textwidth}
        \zihao{3}\rm\kaishu
        \begin{Description}{\NJU@ctitlepage@author}
          \item[\bfkai \NJU@ctitlepage@department]
            \uline{\hfill\NJU@cdepartment\hfill} \par
          \item[\bfkai \NJU@ctitlepage@specialization]
            \uline{\hfill\NJU@cspecialization\hfill} \par
          \item[\bfkai \NJU@ctitlepage@thesistitle]
            \ifNJU@longtitle \uline{\NJU@ctitle\hfill}
            \else
              \ifNJU@shorttitle \uline{\hfill\NJU@ctitle\hfill}
              \else
                \ifNJU@manualtitle
                  \@for \NJU@mtitlen:=\NJU@mtitle \do
                    {\uline{\hfill\NJU@mtitlen\hfill}\par}
                \fi
              \fi
            \fi \par
          \item[\bfkai \NJU@ctitlepage@grad]
                 \uline{\makebox[6em][c]{\NJU@grade}}
               {\bfkai \NJU@ctitlepage@sid}
                 \uline{\hfill\NJU@sid\hfill} \par
          \item[\bfkai \NJU@ctitlepage@author]
            \uline{\hfill\NJU@cauthor\hfill} \par
          \item[\bfkai \NJU@ctitlepage@mentor]
                 \uline{\makebox[6em][c]{\NJU@cmentor}}
               {\bfkai \NJU@ctitlepage@mentortitle}
                 \uline{\hfill\NJU@cmentortitle\hfill} \par
          \item[\bfkai \NJU@ctitlepage@date]
                 \uline{\hfill\NJU@cdate\hfill} \par
        \end{Description}
      \end{minipage}
      \vfill
    \end{center}
  \end{titlepage}}
\newcommand{\makeckeywords}{\zihao{-4}
  \begin{Description}{\NJU@ckeywords@title}
    \item[\NJU@ckeywords@title] \NJU@ckeywords
  \end{Description}}
\newcommand{\makeekeywords}{\zihao{-4}
  \begin{Description}{KEY WORDS:}
    \item[KEY WORDS:] \NJU@ekeywords
  \end{Description}}
\newenvironment{cabstract}{
  \cleardoublepage\pagestyle{empty}
  \pdfbookmark[\NJU@pdftopmark]{\NJU@cabstract@pdftitle}{cabstract}
  \begin{center}
    \bfkai\zihao{-2}\uuline{\NJU@cabstract@longtitle}
  \end{center}
  \vspace{0.5em}\kaishu\zihao{4}\noindent
  \begin{Description}{\NJU@cabstract@thesistitle}
    \item[\NJU@cabstract@thesistitle]
      \ifNJU@longtitle \uline{\NJU@ctitle\hfill}
      \else
        \ifNJU@shorttitle \uline{\hfill\NJU@ctitle\hfill}
        \else
          \ifNJU@manualtitle
            \@for \NJU@mtitlen:=\NJU@mtitle \do
              {\uline{\hfill\NJU@mtitlen\hfill}\par}
          \fi
        \fi
      \fi
  \end{Description}
  \ifNJU@shortdepspe
    \makebox[18em]{%
      \uline{\hfill\NJU@cdepartment\hfill}
        \NJU@cabstract@department
      \uline{\hfill\NJU@cspecialization\hfill}
        \NJU@cabstract@specialization}
      \uline{\makebox[1.8em][c]{\NJU@grade}}
        \NJU@cabstract@grad \NJU@cabstract@author
      \uline{\hfill{\NJU@cauthor}\hfill}\\[0.6em]
  \else
    \uline{\hfill\NJU@cdepartment\hfill}
      \NJU@cabstract@department
    \uline{\hfill\NJU@cspecialization\hfill}
      \NJU@cabstract@specialization\\[0.6em]
    \uline{\makebox[1.8em][c]{\NJU@grade}}
      \NJU@cabstract@grad \NJU@cabstract@author
    \uline{\hfill{\NJU@cauthor}\hfill}
  \fi
  \NJU@cabstract@mentor
  \uline{\hfill{\NJU@cmentor\ \NJU@cmentortitle}\hfill}\\[0.6em]
  \NJU@cabstract@shorttitle
  \par \vspace{1em}\zihao{-4}\setlength{\baselineskip}{1.12\baselineskip}}
  {\kaishu\makeckeywords\clearpage}
\newenvironment{eabstract}{
  \cleardoublepage\pagestyle{empty}
  \pdfbookmark[\NJU@pdftopmark]{ABSTRACT}{eabstract}
  \begin{center}
    \bfkai\zihao{-2}\uuline{\NJU@eabstract@longtitle}
  \end{center}
  \vspace{0.5em}\zihao{4}\noindent
  \begin{Description}{THESIS:}
    \item[THESIS:] \NJU@etitle
    \item[DEPARTMENT:] \NJU@edepartment
    \item[SPECIALIZATION:] \NJU@especialization
    \item[UNDERGRADUATE:] \NJU@eauthor
    \item[MENTOR:] \NJU@ementortitle\ \NJU@ementor
    \item[ABSTRACT:]
  \end{Description}
  \par \vspace{0.2em}\zihao{-4}}
  {\makeekeywords\clearpage}
\newcommand{\maketoc}{\pdfbookmark[0]{%
  \NJU@toc@pdftitle}{contents}\tableofcontents}
\ifNJU@chapter
  \newcommand{\makectitle}{}
\else
  \newcommand{\makectitle}
    {\NJU@ctitle@format{\vspace*{1.6em}\NJU@ctitle\\[2.6em]}}
\fi
\ifNJU@chapter
  \newcommand{\ack}{\cleardoublepage
    \chapter*{\NJU@ack@longtitle}
    \addcontentsline{toc}{chapter}{\NJU@ack@shorttitle}
    \markboth{\NJU@ack@shorttitle}{\NJU@ack@shorttitle}}
\else
  \newcommand{\ack}{\cleardoublepage
    \section*{\NJU@ack@longtitle}
    \addcontentsline{toc}{section}{\NJU@ack@shorttitle}
    \markboth{\NJU@ack@shorttitle}{\NJU@ack@shorttitle}}
\fi
\newcommand{\diff}{\mathrm{d}}
\newcommand{\scite}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\unit}[1]{\ensuremath{\,\mathrm{#1}}}
\AtEndOfClass{\input{NJUbachelor.cfg}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `njubachelor.cls'.

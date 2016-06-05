%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             该宏包用于提供南京大学本科毕业设计模板
%                   基于 scart 宏包改进
%              基于 ctex 宏包 和 xelatex 编译器
%                 设计量量满足跨平台之需要
%         暂时只能提供少量自定义的符合本科毕设要求的排版效果
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NJUbachelor}[2013/06/06 V2.3 NJUbachelor Style for NJUers Created by Zlcao]

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

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ExecuteOptions{thesis,oneside,nopageheader,nochapter,longtitle,shortdepspe,defaultmath}
\ProcessOptions\relax

% 载入文类
\ifNJU@chapter
  \LoadClass[a4paper,12pt]{book}
\else
  \LoadClass[a4paper,12pt]{article}
\fi

\RequirePackage[no-math]{fontspec} %xelatex支持
\RequirePackage[UTF8,nofonts,fntef,fancyhdr]{ctexcap} %中文支持
% 字号对应
  \renewcommand\normalsize{% 12bp
    \@setfontsize\normalsize{\CTEX@fs@sfour}{\CTEX@fs@sfourskip}%
    \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
    \belowdisplayskip \abovedisplayskip
    \let\@listi\@listI}
  \normalsize
  \renewcommand\small{% 10.5bp
    \@setfontsize\small{\CTEX@fs@five}{\CTEX@fs@fiveskip}%
    \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
    \def\@listi{\leftmargin\leftmargini
                \topsep 9\p@ \@plus3\p@ \@minus5\p@
                \parsep 4.5\p@ \@plus2\p@ \@minus\p@
                \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip}
  \renewcommand\footnotesize{% 9bp
    \@setfontsize\footnotesize{\CTEX@fs@sfive}{\CTEX@fs@sfiveskip}%
    \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
    \def\@listi{\leftmargin\leftmargini
                \topsep 6\p@ \@plus2\p@ \@minus2\p@
                \parsep 3\p@ \@plus2\p@ \@minus\p@
                \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip}
  \renewcommand\scriptsize{% 7.5bp
    \@setfontsize\scriptsize{\CTEX@fs@six}{\CTEX@fs@sixskip}}
  \renewcommand\tiny{% 6.5bp
    \@setfontsize\tiny{\CTEX@fs@ssix}{\CTEX@fs@ssixskip}}
  \renewcommand\large{% 15bp
    \@setfontsize\large{\CTEX@fs@sthree}{\CTEX@fs@sthreeskip}}
  \renewcommand\Large{% 18bp
    \@setfontsize\Large{\CTEX@fs@stwo}{\CTEX@fs@stwoskip}}
  \renewcommand\LARGE{% 22bp
    \@setfontsize\LARGE{\CTEX@fs@two}{\CTEX@fs@twoskip}}
  \renewcommand\huge{% 24bp
    \@setfontsize\huge{\CTEX@fs@sone}{\CTEX@fs@soneskip}}
  \renewcommand\Huge{% 26bp
    \@setfontsize\Huge{\CTEX@fs@one}{\CTEX@fs@oneskip}}

\RequirePackage[left=3.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}   %页面设置

% 设置页眉页脚
\ifNJU@pageheader
  \pagestyle{fancy}
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \ifNJU@oneside
    \fancyhead[L]{\fangsong 南京大学本科毕业论文（设计）}
    \fancyhead[R]{\fangsong \leftmark}
  \else
    \fancyhead[EC]{\fangsong 南京大学本科毕业论文（设计）}
    \fancyhead[OC]{\fangsong \leftmark}
  \fi
\else \pagestyle{plain}
\fi

% pdf相关属性设置 设置行距
\AtBeginDocument{
\hypersetup{pdftitle={\NJU@ctitle/\NJU@etitle},
            pdfauthor={\NJU@cauthor/\NJU@eauthor},
            pdfsubject={南京大学本科毕业论文（设计）},
            pdfkeywords={\NJU@ckeywords/\NJU@ekeywords}}
\setlength{\baselineskip}{1.26\baselineskip}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                    载入相关宏包
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsfonts,amssymb,bm} %数学相关宏包支持
\RequirePackage{stmaryrd} %数学字体宏包
\ifNJU@notdefaultmath \RequirePackage{\NJU@mathpackage} \fi

\RequirePackage{graphicx} %提供图形支持
\RequirePackage{picinpar} %图文混排
\RequirePackage{wrapfig} %图文混排 推荐使用
\RequirePackage{subfigure} %子图宏包

\RequirePackage{titletoc} %目录设置宏包
\RequirePackage[nottoc]{tocbibind} %加入目录条目 默认已加入参考文献 但不包含目录本身

\RequirePackage[table]{xcolor} %彩色支持

\RequirePackage{enumerate} %自定义排序标签

\RequirePackage{longtable} %长表格宏包
\RequirePackage{booktabs} %三线表格宏包
\RequirePackage{tabularx} %定宽度表格宏包
\RequirePackage{multirow} %跨行表格宏包

\RequirePackage{mhchem} %化学式宏包
\RequirePackage{chemfig} %化学式宏包

\RequirePackage[format=hang,font=small,justification=centering,labelfont=sf]{caption} %caption格式定制

\RequirePackage[colorlinks,citecolor=black,linkcolor=black]{hyperref} %PDF标签支持
\RequirePackage{calc}

\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{hypernat}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                    本宏包中用到的一些命令
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 设置列表环境
\newenvironment{Description}[1]{\begin{list}{}{%
  \renewcommand{\makelabel}[1]{##1}\settowidth\labelwidth{\makelabel{#1}}%
  \itemsep=0.5em\setlength{\leftmargin}{\labelwidth+\labelsep}}}{\end{list}}

% 清除双页
\let\NJU@cleardoublepage\cleardoublepage
\newcommand{\NJU@clearemptydoublepage}{%
  \clearpage{\pagestyle{empty}\NJU@cleardoublepage}}
\let\cleardoublepage\NJU@clearemptydoublepage

% 一种样式
\newcommand{\makesomething}[1]{%
  \begin{center}
    \zihao{3}\songti\bf #1
  \end{center}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                          字体设置
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ctex-xecjk-winfonts.def: Windows 的 xeCJK 字体设置，默认为六种中易字体
% vim:ft=tex

\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\xeCJKsetup{AutoFakeSlant={true}} %开启斜体
%\xeCJKsetup{CheckSingle=true} %避免单字独占一行 导致抄录环境行尾字符向左靠

\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}

\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhkai}{KaiTi}
\setCJKfamilyfont{zhfs}{FangSong}
\setCJKfamilyfont{zhli}{LiSu}
\setCJKfamilyfont{zhyou}{YouYuan}
\setCJKfamilyfont{zhwei}{STXinwei}
\setCJKfamilyfont{zhxing}{STXingkai}
\setCJKfamilyfont{zhshu}{FZShuTi}
\setCJKfamilyfont{zhhu}{STHupo}
\setCJKfamilyfont{zhcai}{STCaiyun}

\providecommand*{\songti}{\CJKfamily{zhsong}} % 宋体
\providecommand*{\heiti}{\CJKfamily{zhhei}}   % 黑体
\providecommand*{\kaishu}{\CJKfamily{zhkai}}  % 楷书
\providecommand*{\fangsong}{\CJKfamily{zhfs}} % 仿宋
\providecommand*{\lishu}{\CJKfamily{zhli}}    % 隶书
\providecommand*{\youyuan}{\CJKfamily{zhyou}} % 幼圆
\providecommand*{\xinwei}{\CJKfamily{zhwei}}  % 新魏
\providecommand*{\xingkai}{\CJKfamily{zhxing}}% 行楷
\providecommand*{\shuti}{\CJKfamily{zhshu}}   % 舒体
\providecommand*{\hupo}{\CJKfamily{zhhu}}     % 琥珀
\providecommand*{\caiyun}{\CJKfamily{zhcai}}  % 彩云

%% 图表标题字体声明
%\DeclareCaptionFont{hei}{\heiti}
%\DeclareCaptionFont{fang}{\fangsong}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                    ctex中文格式
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\CTEXoptions[
%  contentsname={目录},listfigurename={插图},
%  listtablename={表格},figurename={图},
%  tablename={表},abstractname={},
%  indexname={索引},bibname={参考文献}]
\ifNJU@chapter
  \CTEXoptions[contentsname={目~~~录},indexname={索~~~引}]
\else
  \CTEXoptions[contentsname={\zihao{3}\songti\bf 目~~~录}]
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                     标题格式/目录标题格式
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\CTEXsetup[number=\arabic{chapter},titleformat={\zihao{3}\bf},%
           nameformat={\zihao{3}\bf},beforeskip={1.2em},afterskip={1.8em}]{chapter}
\ifNJU@chapter
  \CTEXsetup[format={\sf\zihao{4}}]{section}
\else
  \CTEXsetup[format+={\sf\zihao{4}}]{section}
\fi
\CTEXsetup[format={\sf\zihao{-4}}]{subsection}
\CTEXsetup[format={\sf\zihao{-4}}]{subsubsection}

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                     中英文作者、标题等
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 年级
\def\NJU@grade{}
\newcommand{\grade}[1]{\def\NJU@grade{#1}}
% 学号
\def\NJU@sid{}
\newcommand{\sid}[1]{\def\NJU@sid{#1}}
% 姓名
\def\NJU@cauthor{}
\newcommand{\cauthor}[1]{\def\NJU@cauthor{#1}}
\def\NJU@eauthor{}
\newcommand{\eauthor}[1]{\def\NJU@eauthor{#1}}
% 标题
\def\NJU@ctitle{}
\newcommand{\ctitle}[1]{\def\NJU@ctitle{#1}}
\def\NJU@etitle{}
\newcommand{\etitle}[1]{\def\NJU@etitle{#1}}
\def\NJU@mtitle{}
\newcommand{\mtitle}[1]{\def\NJU@mtitle{#1}}
% 导师
\def\NJU@cmentor{}
\newcommand{\cmentor}[2]{\def\NJU@cmentor{#1}\def\NJU@cmentortitle{#2}}
\def\NJU@ementor{}
\newcommand{\ementor}[2]{\def\NJU@ementor{#1}\def\NJU@ementortitle{#2}}
% 院系
\def\NJU@cdepartment{}
\newcommand{\cdepartment}[1]{\def\NJU@cdepartment{#1}}
\def\NJU@edepartment{}
\newcommand{\edepartment}[1]{\def\NJU@edepartment{#1}}
% 专业
\def\NJU@cspecialization{}
\newcommand{\cspecialization}[1]{\def\NJU@cspecialization{#1}}
\def\NJU@especialization{}
\newcommand{\especialization}[1]{\def\NJU@especialization{#1}}
% 日期
\def\NJU@cdate{}
\newcommand{\cdate}[1]{\def\NJU@cdate{#1}}
\def\NJU@edate{}
\newcommand{\edate}[1]{\def\NJU@edate{#1}}
% 关键词
\def\NJU@ckeywords{}
\newcommand{\ckeywords}[1]{\def\NJU@ckeywords{#1}}
\def\NJU@ekeywords{}
\newcommand{\ekeywords}[1]{\def\NJU@ekeywords{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                       摘要环境设置
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifNJU@chapter
  \newcommand{\pdftopmark}{0}
\else
  \newcommand{\pdftopmark}{1}
\fi

\newcommand{\makeckeywords}{\zihao{-4}%
  \begin{Description}{关键词:}
    \item[关键词:] \zihao{-4}\NJU@ckeywords
  \end{Description}}

\newcommand{\makeekeywords}{\zihao{-4}%
  \begin{Description}{KEY WORDS:}
    \item[KEY WORDS:] \zihao{-4}\NJU@ekeywords
  \end{Description}}

\newenvironment{cabstract}
  {\newpage\thispagestyle{empty}\pdfbookmark[\pdftopmark]{摘要}{cabstract}%
  \begin{center}
    \bf\kaishu\zihao{-2}\uuline{南京大学本科生毕业论文（设计）中文摘要}
  \end{center}
  \vspace{0.5em}\kaishu\zihao{4}\noindent
  \begin{Description}{毕业论文题目:}
    \item[毕业论文题目:]
      \ifNJU@longtitle \uline{\NJU@ctitle\hfill\mbox{}}
      \else
        \ifNJU@shorttitle \uline{\hfill\NJU@ctitle\hfill\mbox{}}
        \else
          \ifNJU@manualtitle
            \@for \NJU@mtitlen:=\NJU@mtitle \do
              {\uline{\hfill\NJU@mtitlen\hfill\mbox{}}\par}
          \fi
        \fi
      \fi
  \end{Description}
  \ifNJU@shortdepspe
    \makebox[18em]{%
      \uline{\hfill\NJU@cdepartment\hfill} 院系
      \uline{\hfill\NJU@cspecialization\hfill} 专业}
      \uline{\makebox[1.8em][c]{\NJU@grade}} 级
	  本科生姓名: \uline{\hfill{\NJU@cauthor}\hfill\mbox{}}\\[0.6em]
  \else
    \uline{\hfill\NJU@cdepartment\hfill} 院系
    \uline{\hfill\NJU@cspecialization\hfill\mbox{}} 专业\\[0.6em]
    \uline{\makebox[1.8em][c]{\NJU@grade}} 级
    本科生姓名: \uline{\hfill{\NJU@cauthor}\hfill}
  \fi
  指导教师（姓名、职称）:
  \uline{\hfill{\NJU@cmentor\ \NJU@cmentortitle}\hfill\mbox{}}\\[0.6em]
  摘要:

  \vspace{1em}\zihao{-4}\setlength{\baselineskip}{1.12\baselineskip}}
  {\kaishu\makeckeywords\newpage\cleardoublepage}

\newenvironment{eabstract}
  {\newpage\thispagestyle{empty}\pdfbookmark[\pdftopmark]{ABSTRACT}{eabstract}%
  \begin{center}
    \bf\kaishu\zihao{-2}\uuline{南京大学本科生毕业论文（设计）英文摘要}
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

  \vspace{0.2em}\zihao{-4}}
  {\makeekeywords\newpage\cleardoublepage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                         标题页及标题
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Englishtitlepage % 这是以前课程论文的英文 titlepage
%\newcommand{\makeetitlepage}{\begin{titlepage}\begin{center}
%  \parbox[c][100mm][c]{\textwidth}{\huge \centering \NJU@etitle}\\[-36mm]
%  \Large A thesis presented by\\ \smallskip \NJU@eauthor \\
%  \bigskip	to\\	\bigskip \NJU@edepartment \\
%  in partial fulfillment of the requirements of the course\\ \textit{\NJU@ecourse}
%  \vfill \parbox[c][36mm][c]{\textwidth}{\centering \NJU@eschool \\ \NJU@edate}
%\end{center}\end{titlepage}}
%    Chinesetitlepage
\newcommand{\makectitlepage}
  {\thispagestyle{empty}\pdfbookmark[\pdftopmark]{封面}{cover}%
  \begin{titlepage}\vspace{3em}
    \includegraphics[width=0.14\textwidth]{njulogos/njulogo.pdf}\vspace{2.6em}
    \begin{center}
      \includegraphics[width=0.5\textwidth]{njulogos/njuname.pdf}\\[2.8em]
      \zihao{1}\bf
      \ifNJU@thesis 本~~科~~毕~~业~~论~~文
      \else         本~~科~~毕~~业~~设~~计
      \fi
      \vfill
      \begin{minipage}{0.8\textwidth}
        \zihao{3}\rm\kaishu
        \begin{Description}{学生姓名}
          \item[\bf\kaishu 院~~~~~~~~系] \uline{\hfill\NJU@cdepartment\hfill\mbox{}}
          \item[\bf\kaishu 专~~~~~~~~业] \uline{\hfill\NJU@cspecialization\hfill\mbox{}}
          \item[\bf\kaishu 题~~~~~~~~目]
            \ifNJU@longtitle \uline{\NJU@ctitle\hfill\mbox{}}
            \else
              \ifNJU@shorttitle \uline{\hfill\NJU@ctitle\hfill\mbox{}}
              \else
                \ifNJU@manualtitle
                  \@for \NJU@mtitlen:=\NJU@mtitle \do
                    {\uline{\hfill\NJU@mtitlen\hfill\mbox{}}\par}
                \fi
              \fi
            \fi
          \item[\bf\kaishu 年~~~~~~~~级] \uline{\makebox[6em][c]{\NJU@grade}}
               {\bf\kaishu 学  ~~~   号} \uline{\hfill\NJU@sid\hfill\mbox{}}
          \item[\bf\kaishu 学生姓名]      \uline{\hfill\NJU@cauthor\hfill\mbox{}}
          \item[\bf\kaishu 指导老师]      \uline{\makebox[6em][c]{\NJU@cmentor}}
               {\bf\kaishu 职  ~~~   称}  \uline{\hfill\NJU@cmentortitle\hfill\mbox{}}
          \item[\bf\kaishu 提交日期]      \uline{\hfill\NJU@cdate\hfill\mbox{}}
        \end{Description}
      \end{minipage}
      \vfill
    \end{center}
  \end{titlepage}\cleardoublepage}

%    Chinesetitle
\ifNJU@chapter \newcommand{\makectitle}{}
\else
  \newcommand{\makectitle}
    {\makesomething{\vspace*{1.6em}\NJU@ctitle\\[2.6em]}}
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                              致谢
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifNJU@chapter
  \newcommand{\ack}{\newpage
    \chapter*{致~~~谢}
    \addcontentsline{toc}{chapter}{致谢}
    \markboth{致谢}{致谢}}
\else
  \newcommand{\ack}{\newpage
    \section*{致~~~谢}
    \addcontentsline{toc}{section}{致谢}
    \markboth{致谢}{致谢}}
\fi



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                           常用命令
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\diff}{\mathrm{d}} %微分号
%\newcommand{\scite}[1]{\ensuremath{^{\text{\cite{#1}}}}} %文献引用 右上角
\newcommand{\scite}[1]{\textsuperscript{\cite{#1}}} %文献引用 右上角
\newcommand{\unit}[1]{\ensuremath{\,\mathrm{#1}}} %单位格式





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                         Change Log
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.3
% 修改了中文摘要的行间距
% 修正了英文摘要的与ABSTRACT字样的行间距
% 撤销了之前的修改……中文正文仍不支持拷出
%
% 2.2
% 修复了上次更新遗留的一些字体没有加粗的错误
%
% 2.1
% 修复了windows下无法复制出正文文本的错误
% (楷体的文本依旧无法复制)
%
% 2.0
% ！ 修正了公式字体中数字不是新罗马体的错误
% ！ 修改了中英文关键词的位置
% 重定义\small 图标标题修改为五号
% 一级目录缩进调整
%
% 1.9
% 修正了 nochapter 下输出 pdf 书签级别错误
%
% 1.8
% 修改了导师及职称的获取命令
% 增加了致谢
% 修改 nochapter 下的 section 标题格式为居中
% 修正了 nochapter 下无法编译带页眉效果的问题
% 修正了 nochapter 选项下参考文献目录条目的对齐问题
% 修复了某些平台上封面页所填内容左对齐的错误
%
% 1.7
% 在 Linux 平台进行了测试并修复了一些兼容性问题
%
% 1.6
% 修复了引用连续参考文献的连字符问题
% 国家标准的参考文献排版风格
%
% 1.5
% 修复了 nochapter 时无法双面打印的问题
%
% 1.4
% 优化了部分代码
%
% 1.3
% 新增了可以手动控制换行的标题排版方案
% 修正了正文中的一些错误
%
% 1.2
% ！ 封面毕业设计和毕业论文
% 可以选择是否是否支持 \chapter
% 页眉可随单双面打印自动调整样式
%
% 1.1
% 利用延迟命令将 pdf 属性设置移入宏包内
% 利用延迟命令将行距设置移入宏包内
% 更新了图表标题字体
% 开启中文斜体
% 可选择数学字体 默认 mathptmx txfonts
% 设置等宽字体 Courier New
% 增加页眉选项
%
% 更新了宏包 1.0 的发布日期

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                         Todo List
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%

% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
\ProvidesClass{elegantpaper}[2022/04/09 v0.10 ElegantLaTeX Paper class]
\NeedsTeXFormat{LaTeX2e} 

%%%
\RequirePackage{kvoptions}
\RequirePackage{etoolbox}
\RequirePackage{calc}

\SetupKeyvalOptions{family=ELEGANT, prefix=ELEGANT@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{ELEGANT}{#1}}

\DeclareStringOption[en]{lang}
\DeclareVoidOption{cn}{\ekv{lang=cn}}
\DeclareVoidOption{en}{\ekv{lang=en}}

\DeclareStringOption[cm]{math}

\DeclareStringOption[numeric-comp]{citestyle}
\DeclareStringOption[numeric]{bibstyle}

\DeclareStringOption[biber]{bibend}
\DeclareVoidOption{biber}{\ekv{bibend=biber}}
\DeclareVoidOption{bibtex}{\ekv{bibend=bibtex}}


\DeclareStringOption[ctexfont]{chinesefont}
\DeclareVoidOption{ctexfont}{\ekv{chinesefont=ctexfont}}
\DeclareVoidOption{founder}{\ekv{chinesefont=founder}}
\DeclareVoidOption{nofont}{\ekv{chinesefont=nofont}}

\DeclareVoidOption{newtx}{\ekv{math=newtx}}
\DeclareVoidOption{mtpro2}{\ekv{math=mtpro2}}
\DeclareVoidOption{cm}{\ekv{math=cm}}

\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessKeyvalOptions*\relax
\LoadClass{extarticle}

\RequirePackage{hyperref}
\hypersetup{
  pdfborder={0 0 0},
  colorlinks=true,
  linkcolor={winered},
  urlcolor={winered},
  filecolor={winered},
  citecolor={winered},
  linktoc=all,
}
% settings for the hyperref and geometry
%\RequirePackage[
%  paperheight=145mm,   % uncomment for Kindle
%  paperwidth=115mm,
%  left=0.25in,
%  right=0.25in,
%  top=0.4in,
%  bottom=0.3in,
%  headheight=40pt,
%  headsep=10pt]{geometry}
%\setlength{\headsep}{3pt}

\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{indentfirst}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{multirow}
% \RequirePackage{linegoal}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fancyvrb}
%\RequirePackage{abstract}
\RequirePackage{hologo}

\linespread{1.35}
\graphicspath{{image/}{figure/}{fig/}{img/}}

% caption settings 
\RequirePackage[labelfont={bf}]{caption}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=3pt}

% list/itemize/enumerate setting
\RequirePackage[shortlabels,inline]{enumitem}
\setlist{nolistsep}


% define the hyperref color 
\RequirePackage{xcolor}
\definecolor{winered}{rgb}{0.5,0,0}

\definecolor{lightgrey}{rgb}{0.95,0.95,0.95}
\definecolor{commentcolor}{RGB}{0,100,0}
\definecolor{frenchplum}{RGB}{190,20,83}

%%%%%%%%%% Enoche
\renewenvironment{quote}{\CTEXindent
	\@beginparpenalty\@m\relax
	\list{}{%
		\labelwidth\z@
		\labelsep\z@
		\leftmargin\parindent
		\parsep\parskip
		\itemsep\z@
		\topsep\z@
		\partopsep\parskip
		\listparindent\parindent
		\itemindent\listparindent
		\advance\itemindent\labelsep}%
	\item\relax\itshape}
{\endlist\ignorespacesafterend}

\renewrobustcmd*{\[}{\begin{quote}\obeylines}
	\renewrobustcmd*{\]}{\end{quote}}

\newcommand\named[1]{%
	\unskip\nobreak\hfill\allowbreak\null\nobreak\hfill\quad\hbox{\normalfont ??????\,#1}}

\def\textuni#1{\char"#1}

\def\textJinXia {\makebox[\ccwd]{\scalebox{.85}[.9]{???}\kern-.55em\scalebox{.65}[1]{???}}}
\def\textShiJie {\makebox[\ccwd]{\scalebox{.9}[1]{???}\kern-.5em\scalebox{.6}[1]{???}}}
\def\textShiHe  {\makebox[\ccwd]{\scalebox{.9}[1]{???}\kern-.47em\scalebox{.58}[1]{???}}}
\def\textSiTang {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textShiDian{\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}
\def\textShiFou {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}
\def\textHuoKua {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}
\def\textHuoChuan {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}
\def\textShan {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textSiLuo {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textShouLuan {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textYiXuan {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textMaoBi{\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.9]{\raisebox{0.1 em}{???}}}}}
%\def\textMaoJiji{\makebox[\ccwd]{???\kern-.54em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.93]{\raisebox{0.12 em}{???}}}}}
%\def\textMaoBaba{\makebox[\ccwd]{???\kern-.54em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.93]{\raisebox{0.12 em}{???}}}}}
\def\textShuiChu {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textShouWai {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textKouBian {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textJiaoJing {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textMaoBa {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.93]{\raisebox{0.12 em}{???}}}}}
\def\textMaoJi {\makebox[\ccwd]{???\kern-.62em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.93]{\raisebox{0.12 em}{???}}}}}
\def\textMaoWu {\makebox[\ccwd]{???\kern-.62em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.93]{\raisebox{0.12 em}{???}}}}}
\def\textMaoPi {\makebox[\ccwd]{???\kern-.62em\fboxsep\z@\colorbox{white} {\kern-.1em\scalebox{.6}[0.8]{\raisebox{0.12 em}{???}}}}}
\def\textShouZhai {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textXiaoQin {\hbox{\lower-0.7ex\hbox{\scalebox{1}[0.6]{???}}\lower-.0ex\hbox{\kern-0.94em \scalebox{0.95}[0.7]{\fboxsep\z@\colorbox{white}{???}}}}}
%\def\textXiaoQin {\makebox[\ccwd]{???\lower-1.0ex\fboxsep\z@\colorbox{white}{\lower-1.0ex\scalebox{.7}[1]{???}}}}
%\def\textXiaoQin  {\makebox[\ccwd]{\makebox[lc]{\scalebox{1}[.7]{\raisebox{0.4 em}{???}} {H}} {\kern-1.3em\scalebox{1}[0.95]{\raisebox{0. em}{???}}}}}}
\def\textHuoShan {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}

\def\textShouZao {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textYueChou {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}}
\def\textSiCan {\hbox{\lower-0.8ex\hbox{\scalebox{1}[0.45]{???}}\lower.2ex\hbox{\kern-0.94em \scalebox{0.95}[0.5]{???}}}}
\def\textMenZuo {\hbox{\lower-0.1ex\hbox{\scalebox{1}[1]{???}}\lower-.1ex\hbox{\kern-0.98em \scalebox{0.8}[0.5]{???}}}}
\def\textMaLou {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.2em\scalebox{.7}[1]{???}}}
\def\textShiBi {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}
\def\textShiDai {\makebox[\ccwd]{???\kern-.6em\fboxsep\z@\colorbox{white}{\kern-.1em\scalebox{.7}[1]{???}}}}
\def\textHuoGuLi {{\makebox[\ccwd]{\scalebox{.3}[1]{???}\kern-.1em\scalebox{.4}[1]{???}\kern-.1em\scalebox{.3}[1]{???}}}{\footnotesize (h\'{u})}}
\def\textShouShou {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}} {\footnotesize (d\v{a}o)}}
\def\textYueNang {\makebox[\ccwd]{\scalebox{.5}[1]{???}\kern-.2em\scalebox{.7}[1]{???}} {\footnotesize (n\'{a}ng)}}
\def\textShouQiang {\makebox[\ccwd]{\scalebox{.5}[1]{???}\kern-.2em\scalebox{.7}[1]{???}} {\footnotesize (qi$\grave{{\text{a}}}$ng)}}
\def\textSiDi {\hbox{\lower-0.8ex\hbox{\scalebox{1}[0.5]{???}}\lower.1ex\hbox{\kern-0.9em \scalebox{0.95}[0.5]{???}}}}
\def\textShouLuan {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.3em\scalebox{.7}[1]{???}}{\footnotesize (lu\'{a}n)}}
\def\textZongYe {\makebox[\ccwd]{\scalebox{.6}[1]{???}\kern-.2em\scalebox{.7}[1]{???}}{\footnotesize (x$\grave{{\text{\i}}}$n)}}
\def\textCaoRiYuTa {\hbox{\lower-0.8ex\hbox{\scalebox{1}[0.6]{???}}\lower-0.7ex\hbox{\kern-0.95em \scalebox{1}[0.3]{???}}\lower.0ex\hbox{\kern-0.95em \scalebox{1}[0.45]{???}}}}
% \={a}?????????
%\'{a}??????
%\v{a}
%\.{a} 


\RequirePackage[pagestyles,clearempty]{titlesec}
\RequirePackage[titles]{tocloft}
\addtolength{\cftsecnumwidth}{45pt}

\renewcommand{\cfttoctitlefont}{\hspace*{\fill}}
\renewcommand{\cftaftertoctitle}{\hspace*{\fill}}
%\renewcommand\cftsecfont{\normalsize}

%%%%%%%%%% End Enoche


% add the email cmd 
\newcommand\email[1]{\href{mailto:#1}{\nolinkurl{#1}}}

% font settings


\PassOptionsToPackage{no-math}{fontspec}
\PassOptionsToPackage{quiet}{fontspec}
\RequirePackage{iftex}

\ifXeTeX
  \RequirePackage[no-math]{fontspec}
  \setmainfont{texgyretermes}[
    UprightFont = *-regular ,
    BoldFont = *-bold ,
    ItalicFont = *-italic ,
    BoldItalicFont = *-bolditalic ,
    Extension = .otf ,
    Scale = 1.0]
    
  \setsansfont{texgyreheros}[
    UprightFont = *-regular ,
    BoldFont = *-bold ,
    ItalicFont = *-italic ,
    BoldItalicFont = *-bolditalic ,
    Extension = .otf ,
    Scale = 0.9]
\else
  \RequirePackage{newtxtext}
  \RequirePackage[scaled=.90]{helvet}
\fi

\ifdefstring{\ELEGANT@lang}{cn}{
  \ifdefstring{\ELEGANT@chinesefont}{founder}{
    \RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}
    \setCJKmainfont[BoldFont={FZHei-B01},ItalicFont={FZKai-Z03}]{FZShuSong-Z01}
    \setCJKsansfont[BoldFont={FZHei-B01}]{FZKai-Z03}
    \setCJKmonofont[BoldFont={FZHei-B01}]{FZFangSong-Z02}
    \setCJKfamilyfont{zhsong}{FZShuSong-Z01}
    \setCJKfamilyfont{zhhei}{FZHei-B01}
    \setCJKfamilyfont{zhkai}[BoldFont={FZHei-B01}]{FZKai-Z03}
    \setCJKfamilyfont{zhfs}[BoldFont={FZHei-B01}]{FZFangSong-Z02}
    \newcommand*{\songti}{\CJKfamily{zhsong}}
    \newcommand*{\heiti}{\CJKfamily{zhhei}}
    \newcommand*{\kaishu}{\CJKfamily{zhkai}}
    \newcommand*{\fangsong}{\CJKfamily{zhfs}}}{\relax}
%	\newcommand*{\liukai}{\CJKfamily{fzliukai}}

  
  \ifdefstring{\ELEGANT@chinesefont}{nofont}{
    \RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}}{\relax}

  \ifdefstring{\ELEGANT@chinesefont}{ctexfont}{
    \RequirePackage[UTF8,scheme=plain]{ctex}}{\relax}
  
  \AfterEndPreamble{
    \setlength\parindent{2\ccwd}}
}{\relax}


\ifcsname kaishu\endcsname
  \newcommand{\citshape}{\kaishu}
\else
  \newcommand{\citshape}{\itshape}
\fi
\ifcsname kaishu\endcsname
  \newcommand{\cnormal}{\kaishu}
\else
  \newcommand{\cnormal}{\normalfont}
\fi

\ifcsname fangsong\endcsname
  \newcommand{\cfs}{\fangsong}
\else
  \newcommand{\cfs}{\normalfont}
\fi

\ifdefstring{\ELEGANT@math}{newtx}{
  \RequirePackage{newtxmath}
  \let\Bbbk\relax
  \RequirePackage{esint}
  %%% use yhmath pkg, uncomment following code
  % \let\oldwidering\widering
  % \let\widering\undefined
  % \RequirePackage{yhmath}
  % \let\widering\oldwidering

  %%% use esvect pkg, uncomment following code
  % \RequirePackage{esvect}

  \DeclareSymbolFont{CMlargesymbols}{OMX}{cmex}{m}{n}
  \let\sumop\relax\let\prodop\relax
  \DeclareMathSymbol{\sumop}{\mathop}{CMlargesymbols}{"50}
  \DeclareMathSymbol{\prodop}{\mathop}{CMlargesymbols}{"51}
}{\relax}


\RequirePackage[
  backend=\ELEGANT@bibend,
  citestyle=\ELEGANT@citestyle,
  bibstyle=\ELEGANT@bibstyle]{biblatex}

\RequirePackage{appendix}

\ifdefstring{\ELEGANT@lang}{cn}{
  \theoremstyle{plain}% default
  \newtheorem{theorem}{??????}[section] %
  \newtheorem{lemma}[theorem]{??????} %
  \newtheorem{proposition}[theorem]{??????} %
  \newtheorem*{corollary}{??????} %
  \theoremstyle{definition} %
  \newtheorem{definition}{??????}[section] %
  \newtheorem{conjecture}{??????}[section] %
  \newtheorem{example}{???}[section] %
  \theoremstyle{remark} %
  \newtheorem*{remark}{\normalfont\bfseries ??????} %
  \newtheorem*{note}{\normalfont\bfseries ???} %
  \newtheorem{case}{\normalfont\bfseries ??????} %
  \renewcommand*{\proofname}{\normalfont\bfseries ??????} %
  \renewcommand\contentsname{\hfill\bfseries\Large ??????\hfill}
  \renewcommand\refname{????????????} %
  \renewcommand\figurename{???} %
  \renewcommand\tablename{???}%
  \newcommand\versiontext{?????????}%
  \newcommand\updatetext{?????????}%
  \newcommand{\ebibname}{????????????}
%  \renewcommand\abstractname{???\hspace{2em}???}
  \setlength\parindent{2\ccwd}
%  \renewcommand{\abstracttextfont}{\small\citshape\ignorespaces}
  % ???????????????
  \newcommand{\keywords}[1]{\vskip2ex\par\noindent\normalfont{\bfseries ?????????: } #1}
  \newcommand\figref[1]{{\bfseries ???~\ref{#1}}}
  \newcommand\tabref[1]{{\bfseries ???~\ref{#1}}}
  \renewcommand{\appendixtocname}{??????}
  \renewcommand{\appendixpagename}{??????}}{\relax}

\ifdefstring{\ELEGANT@lang}{en}{
  \theoremstyle{plain}% default
  \newtheorem{theorem}{Theorem}[section] %
  \newtheorem{lemma}[theorem]{Lemma} %
  \newtheorem{proposition}[theorem]{Proposition} %
  \newtheorem*{corollary}{Corollary} %
  \theoremstyle{definition} %
  \newtheorem{definition}{Definition}[section] %
  \newtheorem{conjecture}{Conjecture}[section] %
  \newtheorem{example}{Example}[section] %
  \theoremstyle{remark} %
  \newtheorem*{remark}{Remark} %
  \newtheorem*{note}{Note} %
  \newtheorem{case}{Case} %
  \renewcommand*{\proofname}{\normalfont\bfseries Proof}%
  \newcommand\versiontext{\itshape Version: }%
  \newcommand\updatetext{\itshape Date: }%
  \setlength\parindent{2em}
  %\renewcommand{\abstracttextfont}{\sffamily\small\noindent\ignorespaces}
  % newcommands defined in this template.
  \newcommand{\keywords}[1]{\vskip 2ex\par\noindent\normalfont{\bfseries Keywords: } #1}
  \newcommand\figref[1]{{\bfseries Figure~\ref{#1}}}
  \newcommand\tabref[1]{{\bfseries Table~\ref{#1}}}
  \newcommand{\ebibname}{Bibliography}}{\relax}


\def\bibfont{\footnotesize}

\AtBeginEnvironment{verbatim}{\microtypesetup{activate=false}}
\BeforeBeginEnvironment{tabular}{\small}
\AfterEndEnvironment{tabular}{}

\AtBeginDocument{
  \setlength{\abovedisplayskip}{3pt}
  \setlength{\belowdisplayskip}{3pt}
  \RequirePackage[flushmargin]{footmisc}
  \setlength{\footnotesep}{12pt}}

\def\IfEmpty#1{%
  \edef\1{\the#1}
  \ifx\1\empty
}
\newtoks\version
\newtoks\institute

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@0.1em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@ELEGANT@version\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \global\let\ELEGANT@version\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 10em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE\bfseries \@title \par}%
    \vskip 4.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author\\[1ex]
      \end{tabular}\par}
      \the\institute%
\vskip 0.5ex%
\IfEmpty\version
\else 
{\small\normalfont\citshape\versiontext\the\version}
\fi
\ifx\@date\empty
\else
\vskip 0.1em%
 {\small\normalfont\citshape\updatetext\@date}%
\fi
  \end{center}%
  \par
}
  

\RequirePackage{listings}
\renewcommand{\ttdefault}{cmtt}

\lstdefinestyle{estyle}{
  basicstyle=%
    \ttfamily
    \lst@ifdisplaystyle\footnotesize\fi
}
\lstset{basicstyle=\scriptsize\ttfamily,style=estyle}

\lstset{language=[LaTeX]TeX,
	texcsstyle=*\color{winered},
	numbers=none,
	breaklines=true,
	keywordstyle=\color{winered},
	frame=tlbr,framesep=4pt,framerule=0pt,
	commentstyle=\color{commentcolor},
	emph={elegantpaper,fontenc,fontspec,xeCJK,FiraMono,xunicode,newtxmath,figure,fig,image,img,table,itemize,enumerate,newtxtext,newtxtt,ctex,microtype,description,times,newtx,booktabs,tabular,PDFLaTeX,XeLaTeX,type1cm,BibTeX,cite,gbt7714,lang},
	emphstyle={\color{frenchplum}},
	morekeywords={DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule,institute,version,includegraphics,setmainfont,setsansfont,setmonofont ,setCJKmainfont,setCJKsansfont,setCJKmonofont,RequirePackage,figref,tabref,email,maketitle,keywords,zhdate,zhtoday},
	tabsize=2,
	backgroundcolor=\color{lightgrey}
}

\addbibresource[location=local]{reference.bib}

% restore the tt default family to lmodern tt family
\renewcommand\ttdefault{lmtt}

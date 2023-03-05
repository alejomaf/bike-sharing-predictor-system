%%----------------------------------------------------------
%% wsdcr.cls
%% v1.0
%% 2022/10/28
%% by XIE Yuhao, e-mail: yuhaox@akane.waseda.jp
%%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wsdcr}[2022/10/28 Análisis Inteligente de Datos - Práctica Final]

%%---------------------------------------------------------- 
%% theme colors
%%----------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{wsdred}{HTML}{0e288c}
\definecolor{wsdgrey}{HTML}{75787B}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twocolumn]{article}

%%----------------------------------------------------------
%% useful packages
%%----------------------------------------------------------
\RequirePackage{authblk}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath,amsfonts,amssymb,esint}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}
\setlength{\intextsep}{.5em}
\RequirePackage{lipsum}
\RequirePackage[title]{appendix}

\RequirePackage{libertine}
\RequirePackage{libertinust1math}
\RequirePackage[T1]{fontenc}

%%----------------------------------------------------------
%% margins
%%----------------------------------------------------------
\RequirePackage[left=.7in,%
                right=.7in,%
                top=1.5in,%
                bottom=.7in,%
                headheight=1in,
                letterpaper]{geometry}%

%%----------------------------------------------------------
%% main color
%%----------------------------------------------------------
\renewcommand{\normalcolor}{\color{wsdred}}

%%----------------------------------------------------------
%% title and headings
%%----------------------------------------------------------
\renewcommand{\maketitle}{% title format
    \twocolumn[%
        \fontsize{20}{24}\fontfamily{libertine}\fontseries{b}% title font
        \fontshape{n}\selectfont\normalcolor
        \@title
        
        \vspace{9pt}
        
        \fontsize{9}{10}\fontseries{m}% author font
        \fontshape{n}\selectfont\color{black}
        \@author
        
        \vspace{9pt}
        
        \fontshape{n}\selectfont% date font
        \@date
        
        \vspace{9pt}
        ]%
}

\renewcommand{\section}{% section headings format
    \@startsection
    {section}% name
    {1}% level
    {0pt}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{10}{12}\fontfamily{libertine}\fontshape{sc}\selectfont\normalcolor}% style
}

\renewcommand{\subsection}{% section headings format
    \@startsection
    {subsection}% name
    {2}% level
    {0pt}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{9}{10}\fontfamily{libertine}\fontshape{n}\selectfont\normalcolor}% style
}

\renewcommand{\subsubsection}{% section headings format
    \@startsection
    {subsubsection}% name
    {3}% level
    {.42cm}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{9}{10}\fontfamily{libertine}\fontshape{sl}\selectfont\normalcolor}% style
}

%%----------------------------------------------------------
%% main text
%%----------------------------------------------------------
\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}

%% drop caps
\RequirePackage{lettrine}
\renewcommand{\LettrineFontHook}{\fontfamily{libertine}\fontshape{n}\fontseries{b}\selectfont\normalcolor}
\setlength{\DefaultNindent}{0pt}
\setlength{\DefaultFindent}{.3em}

%%----------------------------------------------------------
%% numbering
%%----------------------------------------------------------
\setcounter{secnumdepth}{3} % set it to 0 to disable section numbering
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\Alph{subsubsection}}

%%----------------------------------------------------------
%% headers and footers
%%----------------------------------------------------------
\RequirePackage{fancyhdr}  % Needed to define custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
\pagestyle{fancy}          % Enables the custom headers/footers
% Headers
\lhead{\includegraphics[width=3in]{logo_gips_unit.png}}%
\chead{}%
\rhead{\small\sffamily\bfseries\@title--- \thepage/\pageref{LastPage}}
% Footers
\lfoot{}%
\cfoot{}%
\rfoot{}%
\renewcommand{\headrulewidth}{1pt}% % header rule
\renewcommand{\footrulewidth}{1pt}% % footer rule

%%----------------------------------------------------------
%% figure and table captions
%%----------------------------------------------------------
\RequirePackage[font={sf,footnotesize,color=wsdgrey},%
                labelsep=period,%
                justification=raggedright]{caption}
\setlength{\abovecaptionskip}{8pt}
\setlength{\belowcaptionskip}{8pt}
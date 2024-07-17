\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{htpbookce}[customized edition]

\newif\ifhtpce@minion
\newif\ifhtpce@newcm

\htpce@miniontrue

\DeclareOption{newcm}{\htpce@minionfalse\htpce@newcmtrue}
\ExecuteOptions{}
\ProcessOptions\relax

\LoadClass{book}

\RequirePackage{babel}
\RequirePackage{csquotes}

\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}

\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{derivative}
\RequirePackage{siunitx}
\RequirePackage{tikz}
\RequirePackage{chemmacros}
\RequirePackage{chemfig}
\RequirePackage{modiagram}

\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}

\RequirePackage{authblk}
\RequirePackage{titling}
\RequirePackage{biblatex}
\RequirePackage{imakeidx}

\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{cleveref}

\babelprovide[import,main]{english}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}

\defaultfontfeatures{Extension=.otf}

\ifhtpce@minion
\babelfont{rm}[
    UprightFont     = *-Regular,
    BoldFont        = *-Bold,
    ItalicFont      = *-Italic,
    BoldItalicFont  = *-BoldItalic
]{MinionPro}
\babelfont{sf}[
    UprightFont     = *-Regular,
    BoldFont        = *-Bold,
    ItalicFont      = *-Italic,
    BoldItalicFont  = *-BoldItalic
]{MyriadPro}
\babelfont{tt}[
    UprightFont     = *-Regular,
    BoldFont        = *-Bold,
    ItalicFont      = *-Oblique,
    BoldItalicFont  = *-BoldOblique
]{CourierStd}
\fi
\ifhtpce@newcm
\babelfont{rm}[
    UprightFont     = *-Book,
    BoldFont        = *-Bold,
    ItalicFont      = *-BookItalic,
    BoldItalicFont  = *-BoldItalic
]{NewCM10}
\babelfont{sf}[
    UprightFont     = *-Book,
    BoldFont        = *-Bold,
    ItalicFont      = *-BookOblique,
    BoldItalicFont  = *-BoldOblique
]{NewCMSans10}
\babelfont{tt}[
    UprightFont     = *-Book,
    BoldFont        = *-Bold,
    ItalicFont      = *-BookItalic,
    BoldItalicFont  = *-BoldOblique
]{NewCMMono10}
\fi

\setlocalecaption{english}{theorem}{Theorem}
\setlocalecaption{english}{lemma}{Lemma}
\setlocalecaption{english}{corollary}{Corollary}
\setlocalecaption{english}{proposition}{Proposition}
\setlocalecaption{english}{conjecture}{Conjecture}
\setlocalecaption{english}{criterion}{Criterion}
\setlocalecaption{english}{assertion}{Assertion}
\setlocalecaption{english}{definition}{Definition}
\setlocalecaption{english}{condition}{Condition}
\setlocalecaption{english}{problem}{Problem}
\setlocalecaption{english}{example}{Example}
\setlocalecaption{english}{exercise}{Exercise}
\setlocalecaption{english}{algorithm}{Algorithm}
\setlocalecaption{english}{question}{Question}
\setlocalecaption{english}{axiom}{Axiom}
\setlocalecaption{english}{property}{Property}
\setlocalecaption{english}{assumption}{Assumption}
\setlocalecaption{english}{hypothesis}{Hypothesis}
\setlocalecaption{english}{remark}{Remark}
\setlocalecaption{english}{note}{Note}
\setlocalecaption{english}{notation}{Notation}
\setlocalecaption{english}{claim}{Claim}
\setlocalecaption{english}{summary}{Summary}
\setlocalecaption{english}{acknowledgment}{Acknowledgment}
\setlocalecaption{english}{case}{Case}
\setlocalecaption{english}{conclusion}{Conclusion}
\setlocalecaption{english}{solution}{Solution}

\geometry{papersize={6.5in,9.25in}}

\setlength{\columnseprule}{0.4pt}

\pagestyle{fancy}

\allowdisplaybreaks

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\spn}{span}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\tr}{tr}

\DeclarePairedDelimiterX{\oldabs}[1]{\lvert}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\abs}{sO{}}{\IfBooleanTF{#1}{\oldabs{#2}}{\oldabs*{#2}}}
\DeclarePairedDelimiterX{\oldbra}[1]{\langle}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\bra}{sO{}}{\IfBooleanTF{#1}{\oldbra{#2}}{\oldbra*{#2}}}
\DeclarePairedDelimiterX{\oldbraket}[2]{\langle}{\rangle}{\ifblank{#2}{\,\cdot\,\middle\vert\,\cdot\,}{#1\middle\vert#2}}
\NewDocumentCommand{\braket}{sO{}O{}}{\IfBooleanTF{#1}{\oldbraket{#2}{#3}}{\oldbraket*{#2}{#3}}}
\DeclarePairedDelimiterX{\oldceil}[1]{\lceil}{\rceil}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\ceil}{sO{}}{\IfBooleanTF{#1}{\oldceil{#2}}{\oldceil*{#2}}}
\DeclarePairedDelimiterX{\oldfloor}[1]{\lfloor}{\rfloor}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\floor}{sO{}}{\IfBooleanTF{#1}{\oldfloor{#2}}{\oldfloor*{#2}}}
\DeclarePairedDelimiterX{\oldket}[1]{\lvert}{\rangle}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\ket}{sO{}}{\IfBooleanTF{#1}{\oldket{#2}}{\oldket*{#2}}}
\DeclarePairedDelimiterX{\oldketbra}[2]{\lvert}{\rvert}{\ifblank{#2}{\,\cdot\,\middle\rangle\middle\langle\,\cdot\,}{#1\middle\rangle\middle\langle#2}}
\NewDocumentCommand{\ketbra}{sO{}O{}}{\IfBooleanTF{#1}{\oldketbra{#2}{#3}}{\oldketbra*{#2}{#3}}}
\DeclarePairedDelimiterX{\oldnorm}[1]{\lVert}{\rVert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\norm}{sO{}}{\IfBooleanTF{#1}{\oldnorm{#2}}{\oldnorm*{#2}}}
\DeclarePairedDelimiterX{\oldset}[2]{\lbrace}{\rbrace}{\ifblank{#2}{#1}{\,#1\,\middle\vert\,#2\,}}
\NewDocumentCommand{\set}{smO{}}{\IfBooleanTF{#1}{\oldset{#2}{#3}}{\oldset*{#2}{#3}}}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}
}

\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket},partial=upright}

\ifhtpce@minion
\setmathfont[
    SizeFeatures = {
        {Size = -6, Font = MinionMath-Tiny, Style = MathScriptScript},
        {Size = 6-8.4, Font = MinionMath-Capt, Style = MathScript},
        {Size = 8.4-13, Font = MinionMath-Regular},
        {Size = 13-19.9, Font = MinionMath-Subh},
        {Size = 19.9-, Font = MinionMath-Disp}
    }
]{MinionMath-Regular}
\setmathfont[
    range = {bfup->up, bfit->it, bfcal->cal, bfscr->scr, bffrak->frak},
    SizeFeatures = {
        {Size = -6, Font = MinionMath-BoldTiny, Style = MathScriptScript},
        {Size = 6-8.4, Font = MinionMath-BoldCapt, Style = MathScript},
        {Size = 8.4-13, Font = MinionMath-Bold},
        {Size = 13-19.9, Font = MinionMath-BoldSubh},
        {Size = 19.9-, Font = MinionMath-BoldDisp}
    }
]{MinionMath-Bold}
\fi
\ifhtpce@newcm
\setmathfont[StylisticSet=2]{NewCMMath-Book}
\setmathfont[range={scr,bfscr},StylisticSet=1]{NewCMMath-Book}
\setmathfont[range={bb,bbit},StylisticSet=3]{NewCMMath-Book}
\fi

\providecommand*{\eu}{\ensuremath{\symup{e}}}
\providecommand*{\iu}{\ensuremath{\symup{i}}}
\providecommand*{\gammau}{\ensuremath{\symup{\gamma}}}
\providecommand*{\piu}{\ensuremath{\symup{\pi}}}

\theoremstyle{plain}
\newtheorem{theorem}{\theoremname}
\newtheorem{lemma}{\lemmaname}
\newtheorem{corollary}{\corollaryname}
\newtheorem{proposition}{\propositionname}
\newtheorem{conjecture}{\conjecturename}
\newtheorem{criterion}{\criterionname}
\newtheorem{assertion}{\assertionname}

\theoremstyle{definition}
\newtheorem{definition}{\definitionname}
\newtheorem{condition}{\conditionname}
\newtheorem{problem}{\problemname}
\newtheorem{example}{\examplename}
\newtheorem{exercise}{\exercisename}
\newtheorem{algorithm}{\algorithmname}
\newtheorem{question}{\questionname}
\newtheorem{axiom}{\axiomname}
\newtheorem{property}{\propertyname}
\newtheorem{assumption}{\assumptionname}
\newtheorem{hypothesis}{\hypothesisname}

\theoremstyle{remark}
\newtheorem*{remark}{\remarkname}
\newtheorem*{note}{\notename}
\newtheorem*{notation}{\notationname}
\newtheorem*{claim}{\claimname}
\newtheorem*{summary}{\summaryname}
\newtheorem*{acknowledgment}{\acknowledgmentname}
\newtheorem*{case}{\casename}
\newtheorem*{conclusion}{\conclusionname}

\newenvironment{solution}[1][\solutionname]{%
    \par
    \normalfont \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep
                \itshape
        #1\@addpunct{.}]\ignorespaces
}{\endtrivlist\@endpefalse}

\sisetup{parse-numbers=false}

\usetikzlibrary{scopes,calc,intersections}
\usetikzlibrary{3d}
\usetikzlibrary{cd}

\tikzset{every picture/.style={line cap=round,line join=round,smooth}}

\renewcommand{\tabularxcolumn}[1]{m{#1}}

\ExecuteBibliographyOptions{autolang=other}
\addbibresource{refs.bib}
\DeclarePrintbibliographyDefaults{heading=bibintoc}
\nocite{*}

\makeindex[intoc,columns=2,columnseprule]

\hypersetup{colorlinks}
\bookmarksetup{numbered}

\endinput

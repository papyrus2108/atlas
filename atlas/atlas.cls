\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atlas}

\LoadClass{book}

\RequirePackage{babel}

\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{transparent}
\RequirePackage{ragged2e}
\RequirePackage{multicol}
\RequirePackage{marginnote}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{lineno}
\RequirePackage{csquotes}

\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{accents}
\RequirePackage{cancel}
\RequirePackage{derivative}
\RequirePackage{siunitx}
\RequirePackage{tikz}
\RequirePackage{pgfopts}
\RequirePackage{chemmacros}
\RequirePackage{chemfig}
\RequirePackage{modiagram}

\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}

\RequirePackage{biblatex}
\RequirePackage{imakeidx}

\RequirePackage{hyperref}
\RequirePackage{bookmark}
\RequirePackage{cleveref}

\babelprovide[import]{english}
\babelprovide[import,main]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}

\defaultfontfeatures{Extension=.otf}

\babelfont{rm}[
    NFSSFamily=atlasrm,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-It,
    BoldItalicFont=*-BoldIt
]{MinionPro}
\babelfont{sf}[
    NFSSFamily=atlassf,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-It,
    BoldItalicFont=*-BoldIt
]{MyriadPro}
\babelfont{tt}[
    NFSSFamily=atlastt,
    UprightFont=*,
    BoldFont=*-Bold,
    ItalicFont=*-Oblique,
    BoldItalicFont=*-BoldOblique
]{CourierStd}

\setlocalecaption{french}{theorem}{Théorème}
\setlocalecaption{french}{lemma}{Lemme}
\setlocalecaption{french}{corollary}{Corollaire}
\setlocalecaption{french}{proposition}{Proposition}
\setlocalecaption{french}{conjecture}{Conjecture}
\setlocalecaption{french}{criterion}{Critère}
\setlocalecaption{french}{assertion}{Assertion}
\setlocalecaption{french}{definition}{Définition}
\setlocalecaption{french}{condition}{Condition}
\setlocalecaption{french}{problem}{Problème}
\setlocalecaption{french}{example}{Exemple}
\setlocalecaption{french}{exercise}{Exercice}
\setlocalecaption{french}{algorithm}{Algorithme}
\setlocalecaption{french}{question}{Question}
\setlocalecaption{french}{axiom}{Axiome}
\setlocalecaption{french}{property}{Propriété}
\setlocalecaption{french}{assumption}{Présupposition}
\setlocalecaption{french}{hypothesis}{Hypothèse}
\setlocalecaption{french}{remark}{Remarque}
\setlocalecaption{french}{note}{Note}
\setlocalecaption{french}{notation}{Notation}
\setlocalecaption{french}{claim}{Affirmation}
\setlocalecaption{french}{summary}{Résumé}
\setlocalecaption{french}{acknowledgment}{Remerciement}
\setlocalecaption{french}{case}{Cas}
\setlocalecaption{french}{conclusion}{Conclusion}
\setlocalecaption{french}{solution}{Solution}

\geometry{papersize={6.5in,9.25in},heightrounded,marginparwidth=70pt}

\setlength{\columnseprule}{0.4pt}

\renewcommand*{\raggedleftmarginnote}{\RaggedLeft}
\renewcommand*{\raggedrightmarginnote}{\RaggedRight}

\pagestyle{fancy}

\linenumbers

\pagewiselinenumbers
\switchlinenumbers*
\linenumberdisplaymath

\patchcmd{\mmeasure@}{\measuring@true}{
    \measuring@true
    \ifnum-\linenopenaltypar>\interdisplaylinepenalty
    \advance\interdisplaylinepenalty-\linenopenalty
    \fi
}{}{}

\allowdisplaybreaks

\let\Im\relax
\let\Re\relax

\DeclareMathOperator{\adj}{adj}
\DeclareMathOperator{\ann}{ann}
\DeclareMathOperator{\Ann}{Ann}
\DeclareMathOperator{\Ass}{Ass}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\coker}{coker}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Ext}{Ext}
\DeclareMathOperator{\Fr}{Fr}
\DeclareMathOperator{\Frac}{Frac}
\DeclareMathOperator{\Gal}{Gal}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Id}{Id}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\Im}{Im}
\DeclareMathOperator{\Ind}{Ind}
\DeclareMathOperator{\Inn}{Inn}
\DeclareMathOperator{\irr}{irr}
\DeclareMathOperator{\Jac}{Jac}
\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\LM}{LM}
\DeclareMathOperator{\LT}{LT}
\DeclareMathOperator{\Mat}{Mat}
\DeclareMathOperator{\nil}{nil}
\DeclareMathOperator{\obj}{obj}
\DeclareMathOperator{\PSL}{PSL}
\DeclareMathOperator{\rad}{rad}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\Re}{Re}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\SL}{SL}
\DeclareMathOperator{\SO}{SO}
\DeclareMathOperator{\Sp}{Sp}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\spn}{span}
\DeclareMathOperator{\Stab}{Stab}
\DeclareMathOperator{\supp}{supp}
\DeclareMathOperator{\Syl}{Syl}
\DeclareMathOperator{\Tor}{Tor}
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\trdeg}{trdeg}
\DeclareMathOperator{\Var}{Var}

\newcommand*{\eu}{\symup{e}}
\newcommand*{\iu}{\symup{i}}
\newcommand*{\gammau}{\symup{\gamma}}
\newcommand*{\piu}{\symup{\pi}}

\newcommand{\coloniff}{\DOTSB\;\vcentcolon\Longleftrightarrow\;}
\newcommand{\iffcolon}{\DOTSB\;\Longleftrightarrow\vcentcolon\;}

\DeclarePairedDelimiterX\oldabs[1]\lvert\rvert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldnorm[1]\lVert\rVert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldfloor[1]\lfloor\rfloor{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldceil[1]\lceil\rceil{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldnint[1]\lfloor\rceil{\ifblank{#1}{\:\cdot\:}{#1}}

\DeclarePairedDelimiter\oldbra\langle\rvert
\DeclarePairedDelimiter\oldket\lvert\rangle
\DeclarePairedDelimiterX\oldbraket[3]\langle\rangle{\ifblank{#2}{#1\delimsize\vert\mathopen{}#3}{#1\delimsize\vert\mathopen{}#2\delimsize\vert\mathopen{}#3}}
\DeclarePairedDelimiterX\oldketbra[2]\lvert\rvert{#1\delimsize\rangle\delimsize\langle\mathopen{}#2}
\DeclarePairedDelimiterX\oldset[2]\lbrace\rbrace{\ifblank{#2}{#1}{#1\:\delimsize\vert\:\mathopen{}#2}}

\DeclarePairedDelimiterXPP\oldeval[3]{}.\rvert{\ifblank{#2}{}{_{#2}}\ifblank{#3}{}{^{#3}}}{#1}

\NewDocumentCommand\abs{O{}o}{\IfNoValueTF{#2}{\oldabs*{#1}}{\oldabs[#1]{#2}}}
\NewDocumentCommand\norm{O{}o}{\IfNoValueTF{#2}{\oldnorm*{#1}}{\oldnorm[#1]{#2}}}
\NewDocumentCommand\floor{O{}o}{\IfNoValueTF{#2}{\oldfloor*{#1}}{\oldfloor[#1]{#2}}}
\NewDocumentCommand\ceil{O{}o}{\IfNoValueTF{#2}{\oldceil*{#1}}{\oldceil[#1]{#2}}}
\NewDocumentCommand\nint{O{}o}{\IfNoValueTF{#2}{\oldnint*{#1}}{\oldnint[#1]{#2}}}

\NewDocumentCommand\bra{om}{\IfNoValueTF{#1}{\oldbra*{#2}}{\oldbra[#1]{#2}}}
\NewDocumentCommand\ket{om}{\IfNoValueTF{#1}{\oldket*{#2}}{\oldket[#1]{#2}}}
\NewDocumentCommand\braket{omO{}m}{\IfNoValueTF{#1}{\oldbraket*{#2}{#3}{#4}}{\oldbraket[#1]{#2}{#3}{#4}}}
\NewDocumentCommand\ketbra{omm}{\IfNoValueTF{#1}{\oldketbra*{#2}{#3}}{\oldketbra[#1]{#2}{#3}}}
\NewDocumentCommand\set{omO{}}{\IfNoValueTF{#1}{\oldset*{#2}{#3}}{\oldset[#1]{#2}{#3}}}

\NewDocumentCommand\eval{omO{}O{}}{\IfNoValueTF{#1}{\oldeval*{#2}{#3}{#4}}{\oldeval[#1]{#2}{#3}{#4}}}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}}

\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket},math-style=ISO,bold-style=ISO,partial=upright}

% \setmathfont{MinionMath-Regular}[
%     SizeFeatures={
%             {Size=-6,Font=MinionMath-Tiny,Style=MathScriptScript},
%             {Size=6-8.4,Font=MinionMath-Capt,Style=MathScript},
%             {Size=8.4-13,Font=MinionMath-Regular},
%             {Size=13-19.9,Font=MinionMath-Subh},
%             {Size=19.9-,Font=MinionMath-Disp}
%         }
% ]
% \setmathfont{MinionMath-Bold}[
%     range={bfup->up,bfit->it,bfcal->cal,bfscr->scr,bffrak->frak},
%     SizeFeatures={
%             {Size=-6,Font=MinionMath-BoldTiny,Style=MathScriptScript},
%             {Size=6-8.4,Font=MinionMath-BoldCapt,Style=MathScript},
%             {Size=8.4-13,Font=MinionMath-Bold},
%             {Size=13-19.9,Font=MinionMath-BoldSubh},
%             {Size=19.9-,Font=MinionMath-BoldDisp}
%         }
% ]

\setmathfont{NewCMMath-Book}[StylisticSet=2]
\setmathfont{MinionMath-Regular}[
    range={up,it,bb,bbit,"00000-"FFFFD},
    SizeFeatures={
            {Size=-6,Font=MinionMath-Tiny,Style=MathScriptScript},
            {Size=6-8.4,Font=MinionMath-Capt,Style=MathScript},
            {Size=8.4-13,Font=MinionMath-Regular},
            {Size=13-19.9,Font=MinionMath-Subh},
            {Size=19.9-,Font=MinionMath-Disp}
        }
]
\setmathfont{MinionMath-Bold}[
    range={bfup->up,bfit->it},
    SizeFeatures={
            {Size=-6,Font=MinionMath-BoldTiny,Style=MathScriptScript},
            {Size=6-8.4,Font=MinionMath-BoldCapt,Style=MathScript},
            {Size=8.4-13,Font=MinionMath-Bold},
            {Size=13-19.9,Font=MinionMath-BoldSubh},
            {Size=19.9-,Font=MinionMath-BoldDisp}
        }
]
\setmathfont{NewCMMath-Book}[range={cal,bfcal,frak,bffrak,"0028-"0029,"005B,"005D,"007B-"007D,"0302-"0304,"0307-"0308,"030A,"2016,"221A,"2308-"230B,"27E8-"27E9}]
\setmathfont{NewCMMath-Book}[range={scr,bfscr},StylisticSet=1]

\AtBeginDocument{
    \let\mathsfup\relax
    \let\mathsfit\relax
    \let\mathbfsfup\relax
    \let\mathbfsfit\relax
    \DeclareMathAlphabet\mathrmup{TU}{atlasrm}{m}{n}
    \DeclareMathAlphabet\mathrmit{TU}{atlasrm}{m}{it}
    \DeclareMathAlphabet\mathbfrmup{TU}{atlasrm}{bx}{n}
    \DeclareMathAlphabet\mathbfrmit{TU}{atlasrm}{bx}{it}
    \SetMathAlphabet\mathrmup{bold}{TU}{atlasrm}{bx}{n}
    \SetMathAlphabet\mathrmit{bold}{TU}{atlasrm}{bx}{it}
    \DeclareMathAlphabet\mathsfup{TU}{atlassf}{m}{n}
    \DeclareMathAlphabet\mathsfit{TU}{atlassf}{m}{it}
    \DeclareMathAlphabet\mathbfsfup{TU}{atlassf}{bx}{n}
    \DeclareMathAlphabet\mathbfsfit{TU}{atlassf}{bx}{it}
    \SetMathAlphabet\mathsfup{bold}{TU}{atlassf}{bx}{n}
    \SetMathAlphabet\mathsfit{bold}{TU}{atlassf}{bx}{it}
    \DeclareMathAlphabet\mathttup{TU}{atlastt}{m}{n}
    \DeclareMathAlphabet\mathttit{TU}{atlastt}{m}{it}
    \DeclareMathAlphabet\mathbfttup{TU}{atlastt}{bx}{n}
    \DeclareMathAlphabet\mathbfttit{TU}{atlastt}{bx}{it}
    \SetMathAlphabet\mathttup{bold}{TU}{atlastt}{bx}{n}
    \SetMathAlphabet\mathttit{bold}{TU}{atlastt}{bx}{it}
}

\theoremstyle{plain}
\newtheorem{theorem}{\theoremname}[chapter]
\newtheorem{lemma}{\lemmaname}[chapter]
\newtheorem{corollary}{\corollaryname}[chapter]
\newtheorem{proposition}{\propositionname}[chapter]
\newtheorem{conjecture}{\conjecturename}[chapter]
\newtheorem{criterion}{\criterionname}[chapter]
\newtheorem{assertion}{\assertionname}[chapter]

\theoremstyle{definition}
\newtheorem{definition}{\definitionname}[chapter]
\newtheorem{condition}{\conditionname}[chapter]
\newtheorem{problem}{\problemname}[chapter]
\newtheorem{example}{\examplename}[chapter]
\newtheorem{exercise}{\exercisename}[chapter]
\newtheorem{algorithm}{\algorithmname}[chapter]
\newtheorem{question}{\questionname}[chapter]
\newtheorem{axiom}{\axiomname}[chapter]
\newtheorem{property}{\propertyname}[chapter]
\newtheorem{assumption}{\assumptionname}[chapter]
\newtheorem{hypothesis}{\hypothesisname}[chapter]

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

\usetikzlibrary{scopes}
\usetikzlibrary{intersections}
\usetikzlibrary{calc}
\usetikzlibrary{positioning}
\usetikzlibrary{graphs}
\usetikzlibrary{animations}

\usetikzlibrary{external}

\usetikzlibrary{3d}
\usetikzlibrary{cd}
\usetikzlibrary{circuits}
\usetikzlibrary{feynman}
\usetikzlibrary{hobby}

\tikzset{every picture/.style={line cap=round,line join=round,smooth}}

\tikzexternalize[prefix=figures/]

\let\tikzfeynman@compat\relax

\renewcommand{\tabularxcolumn}[1]{m{#1}}

\ExecuteBibliographyOptions{autolang=other}
\DeclarePrintbibliographyDefaults{heading=bibintoc}

\addbibresource{refs.bib}
\nocite{*}

\makeindex[intoc,columns=2,columnseprule]

\hypersetup{colorlinks}
\bookmarksetup{numbered}

\Crefname{theorem}{\theoremname}{\theoremname s}
\Crefname{lemma}{\lemmaname}{\lemmaname s}
\Crefname{corollary}{\corollaryname}{\corollaryname s}
\Crefname{proposition}{\propositionname}{\propositionname s}
\Crefname{conjecture}{\conjecturename}{\conjecturename s}
\Crefname{criterion}{\criterionname}{\criterionname s}
\Crefname{assertion}{\assertionname}{\assertionname s}
\Crefname{definition}{\definitionname}{\definitionname s}
\Crefname{condition}{\conditionname}{\conditionname s}
\Crefname{problem}{\problemname}{\problemname s}
\Crefname{example}{\examplename}{\examplename s}
\Crefname{exercise}{\exercisename}{\exercisename s}
\Crefname{algorithm}{\algorithmname}{\algorithmname s}
\Crefname{question}{\questionname}{\questionname s}
\Crefname{axiom}{\axiomname}{\axiomname s}
\Crefname{property}{\propertyname}{\propertyname s}
\Crefname{assumption}{\assumptionname}{\assumptionname s}
\Crefname{hypothesis}{\hypothesisname}{\hypothesisname s}
\Crefname{remark}{\remarkname}{\remarkname s}
\Crefname{note}{\notename}{\notename s}
\Crefname{notation}{\notationname}{\notationname s}
\Crefname{claim}{\claimname}{\claimname s}
\Crefname{summary}{\summaryname}{\summaryname s}
\Crefname{acknowledgment}{\acknowledgmentname}{\acknowledgmentname s}
\Crefname{case}{\casename}{\casename s}
\Crefname{conclusion}{\conclusionname}{\conclusionname s}
\Crefname{solution}{\solutionname}{\solutionname s}

\endinput

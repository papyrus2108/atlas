\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atlasnova}

\LoadClass{book}

\RequirePackage{atlaslang}
\RequirePackage{atlasmath}
\RequirePackage{atlasthrm}
\RequirePackage{atlascapt}
\RequirePackage{atlasbidx}
\RequirePackage{atlastikz}
\RequirePackage{atlasfont}
\RequirePackage{atlashypr}

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

\endinput

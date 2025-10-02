\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RadboudReport}[2023/10/06 Radboud Report class]

% -----------------------------------------------------------------------------
%                                     COLOR
% -----------------------------------------------------------------------------
% Defines Radboud style colors. The names and color codes correspond to those
% used in other official Radboud branding. For more information, see
%    www.ru.nl/huisstijl
% This class defines all the red hues in the official style guide, as well
% as the colours used in tables. Although the colors are, by default,
% defined through their hex code, they can be redefined using their CMYK code
% through the document options. Doing so will result in a beter color
% representation if the documented is intended to be printed.
\RequirePackage{xcolor} % Used to define colors and use them throughout the document
\definecolor{redimpact}{HTML}{E3000B}
\definecolor{poppy}{HTML}{FF424B}
\definecolor{ladybug}{HTML}{BE311E}
\definecolor{berry}{HTML}{00AFDC}
\definecolor{maroon}{HTML}{730E04}
\definecolor{mahogany}{HTML}{006991}
\newcommand{\UseCMYKColors}{
    \definecolor{redimpact}{cmyk}{0.00, 1.00, 1.00, 0.00}
    \definecolor{poppy}{cmyk}{0.00, 0.80, 0.60, 0.00}
    \definecolor{ladybug}{cmyk}{0.00, 0.92, 0.90, 0.27}
    \definecolor{berry}{cmyk}{0.15, 0.92, 0.90, 0.40}
    \definecolor{maroon}{cmyk}{0.20, 1.00, 0.80, 0.50}
    \definecolor{mahogany}{cmyk}{0.45, 1.00, 0.75, 0.70}
}
\definecolor{tableheader}{HTML}{006991}
\definecolor{tablerowodd}{HTML}{FFFFFF}
\definecolor{tableroweven}{HTML}{E3E3E7}

% -----------------------------------------------------------------------------
%                                     FONTS
% -----------------------------------------------------------------------------
% Changes the default font in the document to Open Sans. Also change the
% distance between default lines of text.
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\renewcommand{\normalsize}{\fontsize{9}{12}\selectfont}
\RequirePackage[defaultsans, default]{opensans}
\RequirePackage[letterspace=-30]{microtype}

% Make sure that the most used text formatting commands use the Open Sans font
% as well.
\DeclareRobustCommand\ebseries{\fontseries{eb}\selectfont}
\DeclareRobustCommand\sbseries{\fontseries{sb}\selectfont}
\DeclareRobustCommand\ltseries{\fontseries{l}\selectfont}
\DeclareRobustCommand\clseries{\fontseries{cl}\selectfont}
\DeclareRobustCommand\scseries{\fontseries{sc}\selectfont}
\DeclareTextFontCommand{\texteb}{\ebseries}
\DeclareTextFontCommand{\textsb}{\sbseries}
\DeclareTextFontCommand{\textlt}{\ltseries}
\DeclareTextFontCommand{\textcl}{\clseries}
\DeclareTextFontCommand{\textsc}{\scseries}

% -----------------------------------------------------------------------------
%                          DOCUMENT CLASS AND OPTIONS
% -----------------------------------------------------------------------------
% Sets the base class for the RadboudReport type to report (shocker, I know).
% In order to follow style guidelines, the twocolumn option is disabled,
% whereas the option `print` is added. The `print` option changes the 
% color definitions from hex to cmyk, which will result in the correct
% color representation when the document is intended for print.
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{print}{\UseCMYKColors}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[onecolumn, b5paper]{report}

% -----------------------------------------------------------------------------
%                               TABLE OF CONTENTS
% -----------------------------------------------------------------------------
% Styles the table of contents
\RequirePackage{tocloft}
\renewcommand{\cfttoctitlefont}{\fontsize{20}{20}\selectfont \color{berry} \ebseries}
\renewcommand{\cftchapfont}{\ebseries \color{berry}}% Chapter colour
\renewcommand{\cftsecfont}{\ltseries \color{mahogany}}% Chapter colour
\renewcommand{\cftdot}{\color{lightgray} .}

% -----------------------------------------------------------------------------
%                                   HEADINGS
% -----------------------------------------------------------------------------
\RequirePackage{titling}
\RequirePackage[raggedright]{titlesec}
\RequirePackage{ragged2e}

\titleformat{\part} % command
    [block] % shape: hang, block, display, runin, leftmargin, rightmargin, drop, wrap and frame.
    {\ebseries \color{berry} \singlespacing \raggedleft} % format
    {{\ltseries \fontsize{30}{30}\selectfont \color{mahogany} PART ~\thepart}\\[0.1cm]} % label
    {0ex} % sep
    {\fontsize{25}{25}\selectfont \lsstyle \raggedleft} % before-code
    [] % after-code
    
\titleformat{\chapter} % command
    [block] % shape: hang, block, display, runin, leftmargin, rightmargin, drop, wrap and frame.
    {\ebseries \color{berry} \singlespacing} % format
    {{\ltseries \fontsize{12}{12}\selectfont \color{mahogany} \chaptertitlename ~\thechapter}\\[0.1cm]} % label
    {0ex} % sep
    {\fontsize{20}{20}\selectfont \lsstyle \raggedright} % before-code
    [] % after-code

\titleformat{\section} % command
    [hang] % shape
    {\ebseries \color{berry} \singlespacing} % format
    {\fontsize{14}{18.66}\selectfont \thesection \hspace{0.1cm} {\ltseries |}\hspace{0.1cm}} % label
    {0ex} % sep
    {\fontsize{14}{18.66}\selectfont \lsstyle \raggedright} % before-code
    [] % after-code
    
\titleformat{\subsection} % command
    [hang] % shape
    {\fontsize{12}{18.66}\selectfont \color{berry} \singlespacing} % format
    {\thesubsection \hspace{0.1cm} {\ltseries |}\hspace{0.1cm}} % label
    {0ex} % sep
    {\fontsize{12}{18.66}\selectfont} % before-code
    [] % after-code

\titleformat{\subsubsection} % command
    [hang] % shape
    {\normalsize \color{berry} \singlespacing} % format
    {\thesubsubsection \hspace{1cm}} % label
    {0ex} % sep
    {} % before-code
    [] % after-code

\titleformat{\paragraph} % command
    [runin] % shape
    {\ebseries \color{mahogany} \singlespacing} % format
    {\theparagraph \hspace{1cm}} % label
    {0ex} % sep
    {} % before-code
    [] % after-code

\titleformat{\subparagraph} % command
    [runin] % shape
    {\ebseries \itshape \color{mahogany} \singlespacing} % format
    {\thesubparagraph \hspace{1cm}} % label
    {0ex} % sep
    {} % before-code
    [] % after-code
    
% -----------------------------------------------------------------------------
%                                   TABLES
% -----------------------------------------------------------------------------
% Allows for coloring of table cells and rows. Also includes code to increase
% the padding in cells.
\RequirePackage{colortbl}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{makecell, cellspace, caption}
\setlength\cellspacetoplimit{3pt}
\setlength\cellspacebottomlimit{3pt}
\renewcommand{\arraystretch}{1.3}
% Defines commands to color table cells. Example usage can be found in the 
% example.tex document.
\newcommand\headerrow{\rowcolor{tableheader}}
\newcommand\headercell[1]{\bfseries \color{white} #1}
\newcommand\oddrow{\rowcolor{tablerowodd}}
\newcommand\evenrow{\rowcolor{tableroweven}}
\newcommand\footercell[1]{\bfseries #1}

% -----------------------------------------------------------------------------
%                                    MISC
% -----------------------------------------------------------------------------
\RequirePackage{setspace}
\RequirePackage[font={color=tableheader}, labelfont={it}, labelsep=quad]{caption}
\RequirePackage{graphicx}

% -----------------------------------------------------------------------------
%                           ITEMIZE AND ENUMERATE
% -----------------------------------------------------------------------------
% Colors the bullet points and numbers in lists
\renewcommand{\labelenumi}{\color{berry} \arabic{enumi}.}
\renewcommand{\labelenumii}{\color{berry} \arabic{enumi}.\arabic{enumii}.}
\renewcommand{\labelenumiii}{\color{berry} \arabic{enumi}.\arabic{enumii}.\arabic{enumiii}.}
\renewcommand{\labelenumiv}{\color{berry} \arabic{enumi}.\arabic{enumii}.\arabic{enumiii}.\arabic{enumiv}.}
\renewcommand*\labelitemi{\color{berry}\textbullet}
\renewcommand*\labelitemii{\color{berry}--}
\renewcommand*\labelitemiii{\color{berry}$\diamond$}
\renewcommand*\labelitemiv{\color{berry}\textperiodcentered}

% -----------------------------------------------------------------------------
%                        DOCUMENT-SPECIFIC COMMANDS
% -----------------------------------------------------------------------------
% Defines commands to add information to the cover page. These commands are:
%  - \supertitle{ ... }: Adds a text above the document title
%  - \subtitle{ ... }{ ... }: Adds a subtitle below the document title
%  - \addnameleft{ ... }: Adds a name and "subtitle" to the left column
%  - \addnameright{ ... }: Adds a name and "subtitle" to the right column
%  - \coverabstract{ ... }: Adds the provided text as asbtract to the cover
\newcommand{\authortag}[2]{{\fontseries{eb}\selectfont #1}\ltseries\endgraf{\color{mahogany} #2}}%\\
\newcommand\thenamesleft{}
\newcommand{\addnameleft}[2]{%
    \g@addto@macro\thenamesleft{{\authortag{#1}{#2}\\[0.4cm]}}%
}
\newcommand\thenamesright{}
\newcommand{\addnameright}[2]{%
    \g@addto@macro\thenamesright{{\authortag{#1}{#2}\\[0.4cm]}}%
}
\newcommand\thesupertitle{}
\newcommand\supertitle[1]{
    \renewcommand{\thesupertitle}{#1}
}
\newcommand\thesubtitle{}
\newcommand\subtitle[1]{
    \renewcommand{\thesubtitle}{#1}
}
\newcommand\thecoverabstract{}
\newcommand\coverabstract[1]{
    \renewcommand{\thecoverabstract}{#1}
}
\newcommand\thepromotor{}
\newcommand\promotor[1]{
    \renewcommand{\thepromotor}{#1}
}
\newcommand\thecopromotor{}
\newcommand\copromotor[1]{
    \renewcommand{\thecopromotor}{#1}
}
\newcommand\thecommittee{}
\newcommand\committee[1]{
    \renewcommand{\thecommittee}{#1}
}
\newcommand\thedefendingdate{}
\newcommand\defendingdate[1]{
    \renewcommand{\thedefendingdate}{#1}
}
\newcommand\thedefendingtime{}
\newcommand\defendingtime[1]{
    \renewcommand{\thedefendingtime}{#1}
}
\newcommand\theborndate{}
\newcommand\borndate[1]{
    \renewcommand{\theborndate}{#1}
}
\newcommand\thebornplace{}
\newcommand\bornplace[1]{
    \renewcommand{\thebornplace}{#1}
}
\newcommand\theisbnnumber{}
\newcommand\isbnnumber[1]{
    \renewcommand{\theisbnnumber}{#1}
}
\newcommand\thecopyright{}
\newcommand\copyrightname[1]{
    \renewcommand{\thecopyright}{#1}
}
\newcommand\thecoverdetails{}
\newcommand\coverdetails[1]{
    \renewcommand{\thecoverdetails}{#1}
}
\newcommand\theproductiondetails{}
\newcommand\productiondetails[1]{
    \renewcommand{\theproductiondetails}{#1}
}

% -----------------------------------------------------------------------------
%                                   ABSTRACT
% -----------------------------------------------------------------------------
% Styles the abstract environment so that it fits (stylewise) on the cover
% page defined in the section below.
%\renewenvironment{abstract}
%    {\begin{minipage}{\textwidth}\noindent\ltseries\fontsize{10}{12.5}}
%    {\end{minipage}\hfill}

% -----------------------------------------------------------------------------
%                                   TITLEPAGE
% -----------------------------------------------------------------------------
% Defines the \maketitle command, that creates a cover page containing all
% information provided through \date, \title and the document specific
% commands defined above.
\RequirePackage{tikz}
\newcommand{\headerpage}{%
    \begin{titlepage}
        \thispagestyle{empty}
        \begin{center}
            \vspace*{\stretch{1}}
            
            \begin{spacing}{2.5}
            {\fontsize{20pt}{20pt} \ebseries \color{berry} \lsstyle  \thetitle}
            \end{spacing}
            
            \vspace{\stretch{0.5}}
            
            {\ltseries \fontsize{12}{12}\selectfont \color{mahogany} \MakeUppercase{\theauthor}}
            
            \vspace{\stretch{1}}
            
        \end{center}
    \end{titlepage}
    \clearpage
}

\newcommand{\infopage}{%
    ~
    \vfill
    \thispagestyle{empty}
    {\ebseries \fontsize{12}{12}\selectfont \color{berry} \lsstyle Colofon} \\
    ~ \\
    \textbf{\thetitle} \\
    ~ \\
    The work presented in this thesis was carried out within the Radboud University Medical Center and the Netherland Cancer Institute
    \\~\\
    \textit{Design/Lay-out} \\
    \thecoverdetails \\ 
    ~ \\
    \textit{Production} \\
    \theproductiondetails \\
    ~ \\
    ISBN~~\theisbnnumber \\
    ~ \\
    \textcopyright~\thecopyright
    \clearpage
}

\newcommand{\thesistitlepage}{
    \begin{titlepage}
        \thispagestyle{empty}
        \begin{center}
            \vspace*{\stretch{1}}
            
            \begin{spacing}{1.5}
            {\fontsize{16pt}{16pt} \ebseries \color{berry} \lsstyle  \thetitle}
            \end{spacing}
            
            \vspace{\stretch{0.5}}
            \textbf{Dissertation}
            \vspace{\stretch{0.5}}
            
            To obtain the degree of Doctor \\
            at Radboud University Nijmegen \\
            on the authority of the rector magnificus Prof. Dr. J.H.J.M van Krieken, \\
            to be defended in public on \\
            on \thedefendingdate \\
            at \thedefendingtime
            
            \vspace{\stretch{0.5}}
            by
            \vspace{\stretch{0.5}}
            
            \textbf{\theauthor} \\
            born on \theborndate \\
            in \thebornplace
            
            \vspace{\stretch{1}}
        \end{center}
    \end{titlepage}
    \clearpage
}

\newcommand{\promotorpage}{
    \thispagestyle{empty}
    \begin{flushleft}
        \authortag{Promotor}{\thepromotor}\\[1cm]

        \authortag{Copromotor}{\thecopromotor}\\[1cm]

        \authortag{Manuscript Committee}{\thecommittee}
    \end{flushleft}
    \clearpage
}
% -----------------------------------------------------------------------------
%                                 PAGE NUMBERS
% -----------------------------------------------------------------------------
% Styles the page numbers, allowing for both twosided and onesided documents
% 使用 geometry 包设置页面布局
\RequirePackage[includefoot, b5paper, paperheight=24cm, paperwidth=17cm, margin=2cm, top=2.5cm, bottom=1.3cm, headsep=20pt, footskip=30pt, bindingoffset=5mm]{geometry}

% 设置段落间距
\usepackage{parskip}
%\setlength{\parskip}{\baselineskip}
\setlength{\parindent}{0pt}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[O]{\vspace{-10pt}\hfill \color{berry} \hspace{0.3cm} \leftmark }
\fancyhead[E]{\vspace{-10pt}\color{berry} Chapter~\thechapter\hspace{0.3cm}\hfill}
\fancyfoot[O]{\hfill \color{berry} {\ltseries |}\hspace{0.3cm}\thepage }
\fancyfoot[E]{\color{berry} \thepage\hspace{0.3cm}{\ltseries |}\hfill }
\renewcommand{\headrule}{\hbox to \headwidth{\color{berry}\leaders\hrule height \headrulewidth\hfill}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{empty}{%
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{nohead}{%
    \fancyhf{}
    \fancyfoot[O]{\hfill \color{berry} {\ltseries |}\hspace{0.3cm}\thepage }
    \fancyfoot[E]{\color{berry} \thepage\hspace{0.3cm}{\ltseries |}\hfill }
    \renewcommand{\headrule}{\hbox to \headwidth{\color{berry}\leaders\hrule height \headrulewidth\hfill}}
    \renewcommand{\headrulewidth}{0.5pt}
    \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{plain}{%
    \fancyhf{}
    \fancyhead[O]{\vspace{-10pt}\hfill \color{berry} \hspace{0.3cm} \leftmark }
    \fancyhead[E]{\vspace{-10pt}\color{berry} Chapter~\thechapter\hspace{0.3cm}\hfill}
    \fancyfoot[O]{\hfill \color{berry} {\ltseries |}\hspace{0.3cm}\thepage }
    \fancyfoot[E]{\color{berry} \thepage\hspace{0.3cm}{\ltseries |}\hfill }
    \renewcommand{\headrule}{\hbox to \headwidth{\color{berry}\leaders\hrule height \headrulewidth\hfill}}
    \renewcommand{\headrulewidth}{0.5pt}
    \renewcommand{\footrulewidth}{0pt}
}

\pretocmd{\chapter}{%
    \fancypagestyle{plain}{%
        \fancyhf{}
        \renewcommand{\headrulewidth}{0pt}
        \renewcommand{\footrulewidth}{0pt}
    }
}{}{}

\pretocmd{\part}{%
    \fancypagestyle{plain}{%
        \fancyhf{}
        \renewcommand{\headrulewidth}{0pt}
        \renewcommand{\footrulewidth}{0pt}
    }
}{}{}


        
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

% -----------------------------------------------------------------------------
%                                 LINE SPACING
% -----------------------------------------------------------------------------
% Defines default line spacing (i.e. for bread text)
\renewcommand*\baselinestretch{1.333}\selectfont




# LaTeX Template for Doctoral Thesis in Radboudumc
- Thesis Structure
  - Info page
  - Table of Contents
  - Chapter 1: General introduction
  - Chapter 2-5: Publications
  - Chapter 6: General discussion
  - Chapter 7: Summary
  - Chapter 8: Dutch summary (Nederlandse samenvatting)
  - Addenda
    - Publications
    - PhD portfolio
    - Research data management
    - Acknowledgments
    - Curriculum Vitae

## Getting started
Upload this repository to Overleaf first.

### Edit info page
Edit the info page information in `main.tex`
```Tex
\title{Thesis Title}
\author{Author Name}

\isbnnumber{xxx-xx-xxxx-xxx-x}
\copyrightname{xxx, 2025}
\coverdetails{xxx}
\productiondetails{xxx Printing, xxx}

\defendingdate{xxxxday xx xxxx 20xx}
\defendingtime{xx.xx am}
\borndate{xxx}
\bornplace{xxx}

\promotor{
xxx \\
xxx
}
\copromotor{
xxx \\
xxx}

\committee{
xxx \\
xxx
}
```

### Add new part or chapters
Edit thesis structure in `main.tex`
```Tex
% Add new part
\part{Part Name}
% Make sure the part page has enough blank pages
\cleardoublepage

% Add new chapter
\include{chapters/chapter6/chapter}
```

### Edit each chapter
Each chapter (`chapters/chapter2/chapter.tex`) can be edited independently and has its own references (`chapters/chapter2/refs.bib`).
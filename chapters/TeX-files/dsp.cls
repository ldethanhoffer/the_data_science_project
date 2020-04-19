%identitification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dsp}

\PassOptionsToClass{11pt,12pt}{article}
\LoadClassWithOptions{article}


\usepackage{amsmath,amsthm,amsfonts,amssymb,tikz,scalerel}
% load calligraphic font
\usepackage{mathrsfs}
\usepackage{marvosym,titlesec}

%for diagrams
\usepackage[all]{xy}

\usepackage{fancyhdr}
%\usepackage{blkarray}
\usepackage{calrsfs}



%for referencing accross documents
\usepackage{xr-hyper}




%change the default font to bodoni
\usepackage[default]{gfsbodoni}
\usepackage[T1]{fontenc}

% Declare calligraphic font:
%\DeclareMathAlphabet{\pr}{OMS}{zplm}{m}{n}


%start at section 0 for the overview: 
\setcounter{section}{-1}


%environments
%
\theoremstyle{plain}
\newtheorem{corollary}{Corollary}[section]
\newtheorem{convention}[corollary]{Convention}
\newtheorem{example}[corollary]{Example}
\newtheorem*{theorem*}{theorem}
\newtheorem{theorem}[corollary]{Theorem}
\newtheorem{lemma}[corollary]{Lemma}
\newtheorem*{lemma*}{Lemma}
\newtheorem{maintheorem}{Theorem}
%reset maintheorem counter to use the corresponding letter
\renewcommand{\themaintheorem}{\Alph{maintheorem}}
\newtheorem{remark}[corollary]{Remark}
\newtheorem{proposition}[corollary]{Proposition}


\theoremstyle{definition}
\newtheorem{definition}[corollary]{Definition}
\newtheorem{definition*}{Definition}
\newtheorem{notation}{Notation}

%macros
%
\newcommand{\A}{\mathcal{A}}
\DeclareMathOperator{\avg}{avg}
\newcommand{\abs}[1]{\vert #1 \vert }
\DeclareMathOperator{\ad}{ad}
\DeclareMathOperator{\Aff}{aff}
\DeclareMathOperator{\arginf}{arginf}
\DeclareMathOperator{\argmin}{argmin}
\DeclareMathOperator{\argsup}{argsup}
\DeclareMathOperator{\argmax}{argmax}
\DeclareMathOperator{\Aut}{Aut}
\renewcommand{\b}{\bullet}
\newcommand{\bl}[2]{\left\langle #1\,,#2\, \right\rangle}
\newcommand{\bp}{\mathbf{\Pi}}
\def\BVm{\operatorname{BV}_-}
\DeclareMathOperator{\BiMod}{BiMod}
\DeclareMathOperator{\bimod}{bimod}
\DeclareMathOperator{\card}{card}
\newcommand{\C}{{\mathcal{C}}}
\DeclareMathOperator{\CC}{CC}
\def\cd{\operatorname {cd}}
\DeclareMathOperator{\ch}{ch}
\DeclareMathOperator{\CH}{CH}
\DeclareMathOperator{\Conv}{Conv}
\DeclareMathOperator{\co}{co}
\DeclareMathOperator{\coh}{coh}
\DeclareMathOperator{\cone}{cone}
\DeclareMathOperator{\coker}{coker}
\renewcommand{\d}[1]{\mathbb{#1}}
\newcommand{\D}{{\mathscr{D}}}
\DeclareMathOperator{\der}{R}
\DeclareMathOperator{\Def}{Def}
\DeclareMathOperator{\Dir}{Dir}
\newcommand{\define}{\stackrel{\operatorname{def}}{=}}
\let\div\relax %unassign \div
\DeclareMathOperator{\div}{div}
\DeclareMathOperator{\divu}{div}
\newcommand{\draw}[1]{\widetilde{\textrm{S}} #1}
\newcommand{\ds}{\oplus}
\newcommand{\DS}{\bigoplus}
\newcommand{\epi}{\xymatrix{{}\ar@{->>}[r]&{}}}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Entropy}{Entropy}
\DeclareMathOperator{\Ext}{Ext}
\newcommand{\f}[1]{\mathfrak{#1}}
\DeclareMathOperator{\fd}{fd}
\newcommand{\fC}{\f{C}}
\newcommand{\fD}{\f{D}}
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\fun}{\mapsto}
\newcommand{\norm}[1]{\vert \vert #1 \vert \vert}
\DeclareMathOperator{\FRel}{FRel}
\newcommand{\dgg}{{\f{g}^\bullet}}
\newcommand{\g}{\f{g}}
\DeclareMathOperator{\Gd}{Gd}
\DeclareMathOperator{\ev}{ev}
\DeclareMathOperator{\gldim}{gl.dim}
\let\H\relax %unassign \H
\DeclareMathOperator{\H}{H}
\DeclareMathOperator{\HH}{HH}
\DeclareMathOperator{\HC}{HC}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Id}{Id}
\DeclareMathOperator{\ID3}{ID_3}
\DeclareMathOperator{\im}{im}
\newcommand{\iso}{\stackrel{\sim}{\longrightarrow}}
\DeclareMathOperator{\Jac}{Jac}
\renewcommand{\k}{\Bbbk}
\DeclareMathOperator{\kNN}{kNN}
\newcommand{\K}{\mathbb{K}}
\DeclareMathOperator{\length}{length}
\DeclareMathOperator{\lrk}{\l.rk}
\newcommand{\leftperp}[1]{\leftidx{^\perp}{#1}}
\DeclareMathOperator{\LS}{LS}
\newcommand{\m}{\f{m}}
\DeclareMathOperator{\Mat}{Mat}
\DeclareMathOperator{\MCM}{MCM}
\DeclareMathOperator{\MC}{MC}
\DeclareMathOperator{\MCcal}{\mathcal{MC}}
\DeclareMathOperator{\MLE}{MLE}
\DeclareMathOperator{\Mod}{Mod}
\DeclareMathOperator{\Mor}{Mor}
\def\mod{\operatorname{mod}}
\newcommand{\mor}{\longrightarrow}
\newcommand{\T}{\mathscr{T}}
\renewcommand{\O}{\mathcal{O}}
\DeclareMathOperator{\NS}{NS}
\DeclareMathOperator{\Num}{Num}
\newcommand{\p}{\mathfrak{p}}
\DeclareMathOperator{\per}{per}
\DeclareMathOperator{\Ob}{Ob}
\DeclareMathOperator{\Perf}{Perf}
\DeclareMathOperator{\Pic}{Pic}
\DeclareMathOperator{\Proj}{Proj}
\DeclareMathOperator{\poly}{poly}
\DeclareMathOperator{\pred}{pred}
\DeclareMathOperator{\Qcoh}{Qcoh}
\DeclareMathOperator{\QGr}{QGr}
\DeclareMathOperator{\Rel}{Rel}
\DeclareMathOperator{\RHom}{RHom}
\renewcommand{\r}[1]{\mathcal{#1}}
\DeclareMathOperator{\rk}{rk}
\DeclareMathOperator{\rrk}{r.rk}
\DeclareMathOperator{\rsample}{RS}
\def\locExt{\mathscr{E}\mathit{xt}}
\newcommand{\sample}[1]{\textrm{S} #1}
\DeclareMathOperator{\SL}{SL}
\DeclareMathOperator{\RS}{RS}
\DeclareMathOperator{\SPS}{SPS}
\DeclareMathOperator{\sing}{sing}
\DeclareMathOperator{\sep}{sep}
\DeclareMathOperator{\Test}{Test}
\DeclareMathOperator{\test}{test}
\DeclareMathOperator{\Train}{Train}
\DeclareMathOperator{\train}{train}
\DeclareMathOperator{\true}{true}
\DeclareMathOperator{\vectorspan}{span}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\Supp}{Supp}
\DeclareMathOperator{\SVM}{SVM}
\DeclareMathOperator{\SupVec}{SupVec}
\DeclareMathOperator{\Sym}{Sym}
\def\locHom{\operatorname {\mathscr{H}\mathit{om}}}
\DeclareMathOperator{\Tails}{Tails}
\def\ltr{\overset{L}{\tr}}
\renewcommand{\c}[1]{\mathcal{#1}}
\newcommand{\mono}{\xymatrix{{}\ar@{^{(}->}[r]&{}}}\DeclareMathOperator{\num}{num}
\DeclareMathOperator{\rad}{rad}
\DeclareMathOperator{\Tr}{Tr}
\DeclareMathOperator{\Tor}{Tor}
\DeclareMathOperator{\Tors}{Tors}
\newcommand{\tr}{\otimes}
\newcommand{\trps}[1]{ \leftidx{^{\operatorname{tr}}}{#1}}
\def\uRHom{\operatorname {R\mathcal{H}\mathit{om}}}
\DeclareMathOperator{\Var}{Var}
\newcommand{\w}{{\tt{w}}}
\newcommand{\Q}{\mathbb{Q}}
\DeclareMathOperator{\qis}{qis}
\DeclareMathOperator{\Qvr}{\mathcal{Q}}
\newcommand{\Z}{\mathbb{Z}}


%add dots between section and page in toc
\usepackage{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}


%imake interline a little larger
\linespread{1.28}

%change the dimensions of the margin
\usepackage{geometry}
 \geometry{
 a4paper,
 total={210mm,297mm},
 left=23mm,
 right=23mm,
 top=20mm,
 bottom=20mm,
 }
 
%changeqedsymbol
\renewcommand{\qedsymbol}{\CrossedBox}

%make the (sub)subsections run into the text, the 0.25 is the distance between the numbering and title
\titleformat{\subsection}[runin]{\normalfont\Large\bfseries}{\thesubsection.}{0.25em}{}
\titleformat{\subsubsection}[runin]{\normalfont\normalsize\bfseries}{\thesubsubsection.}{0.25em}{}

% remove indentation:
\setlength\parindent{0pt}

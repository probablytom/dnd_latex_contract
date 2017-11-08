\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{contract}[2017/11/08 Contracts for PhDnD]

\LoadClass[a4paper,landscape]{article}  %% For landscape goodness
\usepackage[dvipsnames]{xcolor}
\usepackage{cancel}  %% For when contract items are Donezel Washington
\usepackage{wallpaper}  %% For the background image

\pagenumbering{gobble}  %% To get rid of page numbering

%% Settinng up the background image
\CenterWallPaper{1}{contract_background.jpg}

% ===========================
% The flavourtext environment
% colours the text, and draws
% a nice box around it.
% 
% It's centered.
% ===========================
\newenvironment{flavourtext}
{
  \noindent\color{RoyalBlue}\begin{center}\begin{tabular}{|p{1.0\textwidth}|}\hline\\
}   
    %% LaTeX code inside the environment goes here
{
  \\\\\hline\end{tabular}\end{center}\color{black}
} % end environment!

\usepackage{enumitem,amssymb}
\newlist{todolist}{itemize}{1}
\setlist[todolist]{label=$\square$}
\usepackage{pifont}
\newcommand{\cmark}{\ding{51}}%
\newcommand{\xmark}{\ding{55}}%
\newcommand{\completed}{\rlap{$\square$}{\raisebox{2pt}{\large\hspace{1pt}\cmark}}%
\hspace{-2.5pt}}
\newcommand{\failed}{\rlap{$\square$}{\large\hspace{1pt}\xmark}}

%% When some task on the contract is completed, we cross it off, coloured red.
\newcommand{\done}[1]{ \textcolor{BrickRed}{ \xcancel{{#1}} } } 

\newenvironment{tasks}{\begin{center}\begin{itemize}\item\begin{todolist}}{\end{todolist}\end{itemize}\end{center}}
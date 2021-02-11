\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{mcv}

\LoadClass[a4paper,10pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=25mm]{geometry}

\RequirePackage{hyperref}

\RequirePackage{titling}
\RequirePackage{titlesec}

% Set default font to Fira Sans Light using sfdefault option 
\RequirePackage[sfdefault,light]{FiraSans}

% \RequirePackage[defaultsans]{opensans}
% \renewcommand{\familydefault}{\sfdefault}

% Add Font Awesome
\RequirePackage{fontawesome}

% Info commands
\newcommand*{\email}[1] {
  \def\@email{{\small\faEnvelope}~#1}
}

\newcommand*{\homepage}[1] {
  \def\@homepage{{\small\faGlobe}~#1}
}

\newcommand*{\github}[1] {
  \def\@github{{\small\faGithub}~#1}
}

\newcommand*{\makecvtitle} {
  \begin{flushleft}
    \huge\bfseries
    \theauthor \hfill CV
    \normalsize\mdseries
  \end{flushleft} 
}

\newcommand{\cvedu}[6] {

}

\newcommand{\cvitem}[2] {

}

\newcommand{\cvjob}[6] {

}

\newcommand{\cvproject}[3] {
#3
}

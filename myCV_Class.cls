\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{myCV_Class}

\LoadClass[a4paper,10pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=2.5cm]{geometry}

\RequirePackage{titlesec}

% Set default font to Fira Sans Light using sfdefault option 
\RequirePackage[sfdefault,light]{FiraSans}

% Add Font Awesome
\RequirePackage{fontawesome}

\newcommand*{\email}[1] {
  \def\@email{{\small\faEnvelope}~#1}
}

\newcommand*{\homepage}[1] {
  \def\@homepage{{\small\faGlobe}~#1}
}

\newcommand*{\github}[1] {
  \def\@github{{\small\faGithub}~#1}
}

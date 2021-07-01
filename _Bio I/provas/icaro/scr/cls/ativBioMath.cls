%==============================================================================
% Identificação Internas do LaTeX
%==============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ativBioMath}[2020/10/25 v1.6
 'Modelo de Atividade Avaliativa para Biomatematica']
\DeclareOption*{\PassOptionsToCLass{\CurrentOptions}{exam}}
 \ProcessOptions\relax
 \LoadClass[a4paper, 12pt, twoside]{exam}
%==============================================================================

%==============================================================================
% Pacotes da Classe
%==============================================================================
\RequirePackage{eulervm}
\RequirePackage{fontspec}
 \setmainfont
  [
		 Path        = fonts/agaramondpro/,
   Extension   = .otf,
		 Ligatures   = TeX,
   UprightFont = *-Regular,
   BoldFont    = *-Semibold,
   ItalicFont  = *-Italic,
  ]{AGaramondPro}
 \newfontfamily{\intimacy}
	 [
		 Path = fonts/intimacy/
		]{intimacy}
\RequirePackage{polyglossia}
	\setdefaultlanguage[variant = brazilian]{portuguese}
	\setotherlanguages{english}
\RequirePackage
 [
  a4paper,
  top    = 1cm,
	 bottom = 1.5cm,
	 outer  = 1.5cm,
	 inner  = 1.5cm
 ]{geometry}
\RequirePackage{graphicx}
 \graphicspath{{./figs/}}
\RequirePackage{amsmath, amsthm, amssymb, amscd}
\RequirePackage{mathtools}
\RequirePackage{systeme} % Conflito com LuaLaTeX
\RequirePackage{esint}
\RequirePackage{array}
 \setcounter{MaxMatrixCols}{20}
\RequirePackage{esvect}
\RequirePackage{booktabs}
\RequirePackage{enumerate}
\RequirePackage{fancybox}
\RequirePackage{xcolor}
\RequirePackage{ulem}
\RequirePackage{lipsum}
\RequirePackage{framed}
	\definecolor{shadecolor}{rgb}{0.8,0.8,0.8}
\RequirePackage
 [
	 labelfont = bf, 
  font      = small
	]{caption}
\RequirePackage{units}
\RequirePackage{hyperref}
 \hypersetup
	 {%
	  colorlinks  = true,
	  linkcolor   = blue,
	  citecolor   = blue,
	  filecolor   = blue,
	  urlcolor    = blue,
	  pdfproducer = {pdfTeX},
	  pdfcreator  = {LaTeX},
	  pdfauthor   = {Ícaro Vidal Freire (autor da classe eadmatUFRB.cls)},
	  pdfsubject  = {Template para Atividades Avaliativas de Biomatemática I}, 
	  pdfkeywords = {Atividade Avaliativa, LaTeX, Biomatemática, Matemática,
				              Bioligia, Física, Química, Unicamp, UFRB}
	 }

%==============================================================================

%==============================================================================
% Definições Internas
%==============================================================================
\def\TituloDaLista#1{\gdef\@TituloDaLista{#1}}
\def\NumeroDaLista#1{\gdef\@NumeroDaLista{#1}}
\def\Aluno#1{\gdef\@Aluno{#1}}
\def\DataDia#1{\gdef\@DataDia{#1}}
\def\DataMes#1{\gdef\@DataMes{#1}}
%==============================================================================

%==============================================================================
% Cabeçalho
%==============================================================================
\newcommand{\titulo}{\noindent
	\begin{minipage}[t][2.5cm]{1\textwidth}%
		\begin{minipage}{0.25\linewidth}%
			\centering{\includegraphics[width=3.9cm]{biomath}}
		\end{minipage}
		\hfill
		\begin{minipage}{0.74\linewidth}%
			\ovalbox{%
				\begin{minipage}{0.99\linewidth}%
					$\blacktriangleright$\hspace{\stretch{1}}\textbf{\@TituloDaLista}\hspace{\stretch{1}}$\blacktriangleleft$
				\end{minipage}
			}\\
			\par\vspace{-0.2cm}
			\ovalbox{%
				\begin{minipage}{0.99\linewidth}%
					\textbf{Professor:} Wilson Castro Ferreira Júnior \hfill \textbf{Disciplina:} \textsc{biomatematica i}\, 
				\end{minipage}
			}
			\par\vspace{0.1cm}
			\ovalbox{%
				\begin{minipage}{0.99\linewidth}%
					\rule{0pt}{9pt} \textbf{Nível:} {Pós-Graduação} \hfill MT624 turma A \,
				\end{minipage}
			}
		\end{minipage}
		\vfill
		\ovalbox{%
			\begin{minipage}{0.995\linewidth}%
				\textbf{Aluno (a):} \@Aluno \hfill \textbf{Data: }\@DataDia/\@DataMes/2020 \,
			\end{minipage}
		}
	\end{minipage}
	\par
	\vspace{0.8cm}
	\begin{center}
		\begin{minipage}{\textwidth}%
			\centering
				\rule[2ex]{8cm}{0.8pt}\\
				 {\LARGE \intimacy Atividade Avaliativa \@NumeroDaLista}\\
				\rule{8cm}{2pt}\\
				\vspace{-0.35cm}
				\rule{8cm}{0.8pt}
		\end{minipage}
	\end{center}
	\par
}
%==============================================================================

%==============================================================================
% Operadores
%==============================================================================
\DeclareMathOperator{\sen}{sen}
\DeclareMathOperator{\tg}{tg}
\DeclareMathOperator{\cossec}{cossec}
\DeclareMathOperator{\cotg}{cotg}
\DeclareMathOperator{\arcsen}{arcsen}
\DeclareMathOperator{\arctg}{arctg}
\DeclareMathOperator{\arcsec}{arcsec}
\DeclareMathOperator{\Ln}{Ln}
\DeclareMathOperator{\Arg}{Arg}
\DeclareMathOperator{\cis}{cis}
%==============================================================================

%==============================================================================
% Simbolos e Atalhos Úteis
%==============================================================================
\newcommand{\vazio}{\varnothing}%-----------------------------------------------> Símbolo do Vazio
\newcommand{\dd}{\,\mathrm{d}}%-------------------------------------------------> texto romano para o ``d'' das derivadas 
\newcommand{\DD}{\,\mathrm{D}}%-------------------------------------------------> texto romano para o ``d'' das derivadas 
\newcommand{\intc}{\varointctrclockwise}%-----------------------------> Integral para curva fechada do sentido anti-horário
\newcommand{\versor}[1]{\cdot\vec{\textbf{#1}}}%--------------------------------> vetor em negrito
\newcommand{\Cis}[1]{\cos{#1} + i\,\sen{#1}}%-----------------------------------> fómula de Euler: uma outra notação
%==============================================================================

%==============================================================================
% Modificando a Classe Exam
%==============================================================================
\pointpoints{\,ponto}{\,pontos}%------------------------------------------------> muda o nome dos pontos: singular e 
%                                                                                 plural, respectivamente
%\pointformat{{\bfseries\boldmath(\thepoints)}}%---------------------------------> formatação do nome ``pontos''
\qformat{\ovalbox{\bfseries Questão \thequestion}\; \hfill}%-----> o hfill ``quebra'' a linha
\renewcommand{\solutiontitle}{\noindent\textbf{Solução:}\enspace}%--------------> Nome solução em ``soluções''
\SolutionEmphasis{\footnotesize}%----------------------------------------------> Texto pequeno e em itálico na solução: \itshape
\shadedsolutions%---------------------------------------------------------------> Mostra sombra na solução
\definecolor{SolutionColor}{rgb}{.95,.95,.95}%----------------------------------> Cor do ``fundo'' em soluções
% Para Configurar Anotações na Margem__________________________________________
\pagestyle{headandfoot}
\runningfootrule
\firstpagefooter{}{\thepage}{}
\runningfooter{}{\thepage}{}
%______________________________________________________________________________
%==============================================================================

%==============================================================================
% Histórico da Classe
%------------------------------------------------------------------------------
% 2020-10-25 ---> * Iniciei a Classe;
%                 * Quero colocar a fonte `AGaramondPro` na pasta `fonts`
%
%
%
%==============================================================================
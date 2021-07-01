%========================================================================
% Identificação
%========================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{conf}[]

%========================================================================
% Declaração de opções
%========================================================================
%	tcc: 	    Formata documento para o TCC
% -----------------------------------------------------------------------

\DeclareOption{tcc}{
	\def\@tipotrabalho{Qualifica\c{c}\~ao de Bacharel}
\def\@worktype{Graduated qualification}
\def\@nivelPos{Bacharel Graduado}
\def\@niveltrabalho{Trabalho de conclus\~ao de curso}
}

\ProcessOptions\relax

%=========================================================================
% Herança da classe `abntex2' e inclusão de pacotes e arquivos necessários
%=========================================================================
\LoadClass[% -- opções da classe memoir --
	12pt,				% tamanho da fonte
	openright,			% capítulos começam em pág ímpar (insere página vazia caso preciso)
	oneside,			% twoside para impressão em recto e verso. Oposto a oneside
	a4paper,			% tamanho do papel. 
	% -- opções da classe abntex2 --
	%chapter=TITLE,		% títulos de capítulos convertidos em letras maiúsculas
	%section=TITLE,		% títulos de seções convertidos em letras maiúsculas
	%subsection=TITLE,	% títulos de subseções convertidos em letras maiúsculas
	%subsubsection=TITLE,% títulos de subsubseções convertidos em letras maiúsculas
	% -- opções do pacote babel --
	english,			% idioma adicional para hifenização
	brazil				% o último idioma é o principal do documento
	]{abntex2}

%=========================================================================
% Herança da classe `abntex2' e inclusão de pacotes e arquivos necessários
%=========================================================================

\RequirePackage{lmodern}			% Usa a fonte Latin Modern			
\RequirePackage[T1]{fontenc}		% Selecao de codigos de fonte.
\RequirePackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)
\RequirePackage{lastpage}			% Usado pela Ficha catalográfica
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclusão de gráficos
\RequirePackage{microtype} 			% para melhorias de justificação
% ---
\RequirePackage{ae}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{pifont}
\RequirePackage{lastpage}
\RequirePackage{pdfpages}
\RequirePackage{calc,graphicx}
\RequirePackage{etoolbox}
\RequirePackage{algorithm,algorithmic}
\RequirePackage{nomencl}
	
% ---
% Pacotes adicionais, usados apenas no âmbito do Modelo Canônico do abnteX2
% ---
\RequirePackage{lipsum}				% para geração de dummy text
\RequirePackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
\RequirePackage{array}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{amscd}
\RequirePackage{amsfonts}
\RequirePackage{amsgen}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsthm}
\RequirePackage{multido}
\RequirePackage{sansmath}
\RequirePackage{comment}
%\RequirePackage{yhmath}
\RequirePackage{rotating}
\RequirePackage{longtable}
\RequirePackage{multirow}
%\RequirePackage{lscape}
%\RequirePackage{listings}
%\RequirePackage{clock}
\RequirePackage{fancybox}
%\RequirePackage{latexsym}
\RequirePackage{epsfig}
%\RequirePackage{dsfont}
%\RequirePackage{xparse}
%\RequirePackage{wasysym}
\RequirePackage{tikz}
\RequirePackage{fancyhdr}
%\RequirePackage[printonlyused]{acronym}
%\RequirePackage[table]{xcolor}
\RequirePackage{pstricks}
\RequirePackage{pst-all}
\RequirePackage{pst-func}
\RequirePackage{pst-solides3d}
\RequirePackage{lineno}
\RequirePackage{pst-node}
\RequirePackage{multido}
\RequirePackage{pst-xkey}
\RequirePackage{pst-circ}
\RequirePackage{mathtools}
%\RequirePackage{rotating}
%latexsym, amsfonts or amssymb
\RequirePackage{float}
%\RequirePackage{har2nat}
%\RequirePackage{filecontents}

%\usepackage[round]{natbib}
% ---

\counterwithout{equation}{chapter}
\setsecnumdepth{subsubsection}
\settocdepth{subsection}

\newsubfloat{figure}


% ---
% Pacotes de citações
% ---
\usepackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl

% Citações padrão ABNT
\usepackage[alf]{abntex2cite}	% Citações padrão ABNT
%alf, %alfabetica
%abnt-emphasize = bf, %negrito
%abnt-etal-list = 3, %et al para mais de 3 autores
%abnt-etal-text = it, %et al em italico
%abnt-last-names = abnt,
%abnt-repeated-author-omit = yes % autores com + de uma entrada recebem '____.'


% ---
% Configurações de aparência do PDF final
% alterando o aspecto da cor azul
%\definecolor{blue}{RGB}{41,5,195}

% informações do PDF
\RequirePackage{hyperref}  % Controla a formação do índice
\hypersetup{
     	%backref=true,
     	%pagebackref=true,
		%bookmarks=true,         		% show bookmarks bar?
		pdftitle={\@title}, 
		pdfauthor={\@author},
    	pdfsubject={\imprimirpreambulo},
		pdfkeywords={PALAVRAS}{CHAVES}{abnt}{abntex}{abntex2},
	    %pdfproducer={LaTeX with abnTeX2}, 	% producer of the document
	    pdfcreator={\@author},
    	colorlinks=true,       		% false: boxed links; true: colored links
    	linkcolor=black,          	% color of internal links
    	citecolor=blue,        	    % color of links to bibliography
    	filecolor=magenta,      	% color of file links
		urlcolor=blue,
		bookmarksdepth=4
}
% ---
\newcommand{\rev}[1]{\textcolor{red}{[#1]}}
\renewcommand{\labelitemi}{\ding{111}}


%%%%%% Sem Serifa (Sans Serif)
% HELVÉTICA font
\newcommand\helveticafamily{\fontfamily{phv} \selectfont}
\DeclareTextFontCommand{\texthelvetica}{\helveticafamily}




% Comandos de dados - título do documento em português e inglês
\providecommand{\imprimirtitulo}{}
\newcommand{\@engtitle}{}
\renewcommand{\titulo}[2]{\title{#1}\renewcommand{\imprimirtitulo}{#1} \renewcommand{\@engtitle}{#2}}

% Comandos de dados - autor e autorbib
\newcommand{\@authorbib}{}
\providecommand{\imprimirautor}{}
\renewcommand{\autor}[2]{\author{#1}\renewcommand{\imprimirautor}{#1} \renewcommand{\@authorbib}{#2}}

% --------------------------------
% Definição Geral

\newcommand{\arquivofichacatalografica}{}
\newcommand{\inserirfichacatalografica}[1]{\renewcommand{\arquivofichacatalografica}{#1}}

\newcommand{\arquivofolhaaprovacao}{}
\newcommand{\inserirfolhaaprovacao}[1]{\renewcommand{\arquivofolhaaprovacao}{#1}}

\renewcommand{\maketitle}{%
	% Capa
	\imprimircapa

	% Ficha catalográfica
	\ifthenelse{\not\equal{\arquivofichacatalografica}{}}
	{
		\imprimirfolhaderosto*{} 
		\begin{fichacatalografica}
		\includepdf[pages={1}]{\arquivofichacatalografica}
		\end{fichacatalografica}
	}
	{
		\imprimirfolhaderosto{}
	}
	
	% Folha de aprovação
	\ifthenelse{\not\equal{\arquivofolhaaprovacao}{}}
	{
		\begin{folhadeaprovacao}
		 	\includepdf[pages={1}]{\arquivofolhaaprovacao}
		\end{folhadeaprovacao}
	}
	{
	}
}

%========================================================================
% Definição da capa, folha de rosto e folha de aprovação.
%========================================================================
% --- Definições de comprimento
\newlength{\titlepagewinwidth}\setlength{\titlepagewinwidth}{120mm}
\newlength{\titlepagewinheight}\setlength{\titlepagewinheight}{64mm}
\newlength{\titlepagewinvoffset}\setlength{\titlepagewinvoffset}{120mm}

%\instituicao
%{%
%\parbox[c][0em][c]{\textwidth}{
%	\center
%   % \includegraphics[width=2in]{figs/logo.png}
	%\par
%	UFRB - Universidade Federal do Recôncavo da Bahia
%   \par
%	CETEC - Centro de Ciências Exatas e Tecnológicas 
%   \par
%	Bacharelado de Ciências Exatas e Tecnológicas
%}
%}

\instituicao
{%\parbox[position][height][inner-pos]{width}{text}
\parbox[c][0.5cm][c]{0.18\textwidth}{
\epsfig{figure=figs/ri-ufrb.eps,width=2.5cm,height=1.7cm}
}
\parbox[c][0.5cm][c]{0.62\textwidth}{\centering
\resizebox{!}{0.3cm}{Universidade Estadual de Campinas}
\par
\resizebox{!}{0.3cm}{Centro de Ciências Exatas e Tecnológicas}
\par
\resizebox{!}{0.3cm}{Bacharelado em Ciências Exatas e Tecnológicas}
}
\parbox[c][0.5cm][c]{0.18\textwidth}{
\epsfig{figure=figs/ri-cetec.eps,width=2.5cm,height=1.7cm}
}
}


\preambulo{
	
	\@niveltrabalho~apresentado à Universidade Federal do Recôncavo da Bahia como parte dos requisitos para a obtenção do título de \@nivelPos~em Ciências Exatas e Tecnológicas.
}

% ---
% Impressão da Capa
\renewcommand{\imprimircapa}{%
	\thispagestyle{empty}
	\noindent
  	\begin{capa}%
    	\center
    	\parbox[b]{\textwidth}
	{
		\centering
		%\vbox to \titlepagewinvoffset
		{
            \scshape\imprimirinstituicao
		
		}
	}

	\begin{center}
			\vspace{60pt}
			\par
            \@formatatitulocapa
            \vspace{60pt}
			\@formataautorcapa

    \end{center}
	
	\vfill
  	\centerline{\MakeUppercase{\imprimirlocal}}
	\centerline{\MakeUppercase{\@date}}
    
  	\end{capa}
}

\def\@formataautorcapa{%

	\parbox[b]{\titlepagewinwidth}
	{%
		\centering\vbox to \titlepagewinheight
		{%
			\vspace*{\fill}
				{\large\textbf{\MakeUppercase{\imprimirautor}}}
      		\vspace*{\fill}
    		}
   	}

}

\def\@formatatitulocapa{%

	\parbox[b]{1.2\titlepagewinwidth}
	{%
    	\centering
		\vbox to \titlepagewinheight
		{%
			\vspace*{\fill}
      			{\LARGE{\textbf{\MakeUppercase{\imprimirtitulo}}\par}}
			\vspace*{\fill}
   		}
   	}

}
% ---

% ---
% Conteúdo padrão da Folha de Rosto

% Comandos de dados - Área de concentração
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\title{#1}\renewcommand{\imprimirareaconcentracao}{Área de concentração: #1}}

\makeatletter

\renewcommand{\folhaderostocontent}{
\newlength{\tampar}
\setlength{\tampar}{0.5\textwidth}
\newlength{\tamconcetracao}
\settowidth{\tamconcetracao}{\imprimirareaconcentracao}
\newlength{\tamorientador}
\settowidth{\tamorientador}{\imprimirorientadorRotulo~\imprimirorientador}
\newlength{\tamcoorientador}
\settowidth{\tamcoorientador}{\imprimircoorientadorRotulo~\imprimircoorientador}

\ifthenelse{\lengthtest{\tamconcetracao > \tampar}}{\setlength{\tampar}{\the\tamconcetracao}}{}
\ifthenelse{\lengthtest{\tamorientador>\tampar}}{\setlength{\tampar}{\the\tamorientador}}{}
\ifthenelse{\lengthtest{\tamcoorientador>\tampar}}{\setlength{\tampar}{\the\tamcoorientador}}{}


 \begin{center}
    \@formataautorcapa
    \@formatatitulocapa
       	\vspace{1.5cm}
    \abntex@ifnotempty{\imprimirpreambulo}
    {%
  		\hspace*{\fill}
  		\makebox[\tampar][l]
  		{%
    			\parbox[b]{\tampar}
    			{
    				\imprimirpreambulo\\
    				%\par\imprimirareaconcentracao\\

    {\imprimirorientadorRotulo~\imprimirorientador\par}
    \abntex@ifnotempty{\imprimircoorientador}{%
       {\imprimircoorientadorRotulo~\imprimircoorientador}%
    }%
    			}
    		}
    		\vfill
    }%

  	\centerline{\imprimirlocal}
	\centerline{\@date}
	% Folha de aprovação
	\ifthenelse{\not\equal{\arquivofolhaaprovacao}{}}
	{
%		\scriptsize\textbf{Trata-se da versão corrigida da \@niveltrabalho. A versão %original se encontra disponível na FACOM/UFU que aloja o Programa de Pós-Graduação em %Ciência da Computação.}
	}
	{
	}
  \end{center}
}
% ---



% ---
% Dedicatória
% ---
\newcommand{\imprimirdedicatoria}[1]{
	\begin{dedicatoria}
   		\vspace*{\fill}
   		\centering
   		\noindent
   		\textit{#1}
   		\vspace*{\fill}
	\end{dedicatoria}
}
% ---

% ---
% Agradecimentos
% ---
\newcommand{\imprimiragradecimentos}[1]{
	\begin{agradecimentos}
		#1
	\end{agradecimentos}
}
% ---



% ---
% Epígrafe
% ---
\newcommand{\imprimirepigrafe}[1]{
\begin{epigrafe}
    \vspace*{\fill}
	\begin{flushright}
		\textit{#1}
	\end{flushright}
\end{epigrafe}
}
% ---


%========================================================================
% Listas e Sumário
%========================================================================

% ---
% Lista de ilustrações
% ---
\newcommand{\listailustracoes}{
	\pdfbookmark[0]{\listfigurename}{lof}
	\listoffigures*
	\cleardoublepage
}
% ---

% ---
% Lista de tabelas
% ---
\newcommand{\listatabelas}{
	\pdfbookmark[0]{\listtablename}{lot}
	\listoftables*
	\cleardoublepage
}
% ---

% ---
% Lista de abreviaturas
% ---
\newcommand{\listasiglas}[1]{
	\thispagestyle{empty}
	\pagestyle{empty}
	\pdfbookmark[0]{Lista de siglas}{Lista de siglas} 
	\chapter*{Lista de siglas}
	\input{#1}
	\cleardoublepage
}

\floatname{algorithm}{Algoritmo}
\renewcommand{\listalgorithmname}{Lista de algoritmos}
\newcommand{\cftalgorithmname}{\algorithmname\space} 
\newcommand{\listaalgoritmos}{
	\pdfbookmark[0]{\listalgorithmname}{loa}
	\thispagestyle{empty}
	\pagestyle{empty}
	\listofalgorithms
	\cleardoublepage
}

\renewcommand{\nompreamble}{\thispagestyle{empty}}
\renewcommand\nomname{Lista de símbolos}
\newcommand{\listasimbolos}{
	\thispagestyle{empty}
	\pagestyle{empty}
	\makenomenclature
	\pdfbookmark[0]{\nomname}{los}
	\printnomenclature
	\cleardoublepage
}
% ---

% ---
% Sumário
% ---
\newcommand{\sumario}{%
	\chapter*{\contentsname}
	\pdfbookmark[0]{\contentsname}{toc}
	\thispagestyle{empty}
	\pagestyle{empty}
	\@starttoc{toc}
	\cleardoublepage}
% ---

%========================================================================
% Resumo e Abstract
%========================================================================

% ---
% Resumo
% ---
\renewenvironment{resumo}[1]
{%
	\gdef\@abstractkw{#1}
	\chapter*{Resumo}\par%
	\pdfbookmark[0]{Resumo}{Resumo} 
	
}%	
{
   	\par\vspace{2ex}
   	\vspace{0.5cm}
   	\noindent\textbf{Palavras-chave:} \@abstractkw.
	\thispagestyle{empty}
	\cleardoublepage
}

% ---

% ---
% Abstract
% ---
\renewenvironment{abstract}[1]
{%
	\gdef\@abstractkw{#1}
	\chapter*{Abstract}\par%
	\pdfbookmark[0]{Abstract}{Abstract} 
%	\@authorbib~ \textbf{\@engtitle}. \pageref{LastPage}~p.~\@worktype~ -- ~Faculty of %Computing, Federal University of Uberlândia, \thedate.\par\vspace{6ex}
}%	
{
   	\par\vspace{2ex}
   	\vspace{0.5cm}
   	\noindent\textbf{Keywords:} \@abstractkw.
	\thispagestyle{empty}
	\cleardoublepage
}
% ---

%=======================================================================
% Ajuste do cabeçalho e rodapé
%=======================================================================

% ---

%=========================================================================
% Nomes Constantes
%=========================================================================
%\renewcommand{\chaptername}{Capítulo}
%\renewcommand{\partname}{Parte}

%=========================================================================
% Configurações
%=========================================================================
% --- 
\chapterstyle{ell}

% --- 
\renewcommand*{\figureautorefname}{Figura}
\renewcommand*\footnoteautorefname{Nota de Rodapé}%
\renewcommand*\itemautorefname{Item}%
\renewcommand*\tableautorefname{Tabela}%
\renewcommand*\partautorefname{Parte}%
\renewcommand*\appendixautorefname{Apêndice}%
\renewcommand*\chapterautorefname{Capítulo}%
\renewcommand*\sectionautorefname{Seção}%
\renewcommand*\subsectionautorefname{Subseção}%
\renewcommand*\subsubsectionautorefname{Subseção}%
\renewcommand*\paragraphautorefname{Parágrafo}%
\renewcommand*\subparagraphautorefname{Subparágrafo}%
\renewcommand*\FancyVerbLineautorefname{Linha}%
\renewcommand*\theoremautorefname{Teorema}%
\renewcommand*\pageautorefname{Página}%
% --- 


% ---
% Fonte padrão section, subsection e subsubsection
\renewcommand{\ABNTEXchapterfont}{\huge\bfseries}


% Tipo de trabalho para classe abntex2 (ficha catalográfica)
% ---
\tipotrabalho{\@tipotrabalho}

% --- 
% Espaçamentos entre linhas e parágrafos 
% --- 

%%% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.3cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % tente também \onelineskip


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\theoremstyle{definition}
\newtheorem{exemplo}{\bf Exemplo}[chapter]
%\newtheorem{questao}{\hspace{-0.1in}}[part]
\newtheorem{etapa}{Etapa}
\newtheorem{q}{}[chapter]
%\newtheorem{algoritmo}{\color{Gray}{\sf Algoritmo}}[chapter]
\newtheorem{axioma}{Axioma}
\newtheorem{problema}{Problema}
%\newtheorem{nota}{Nota}{\normalfont \em}
%\setcounter{nota}{0}%
%\renewcommand\thenota{\arabic{nota}}
\newtheorem{art}{Art}{\normalfont \em}
\setcounter{art}{0}%
\renewcommand\theart{\arabic{art}
\newtheorem{definicao}{Definição}%[chapter]
\newtheorem{teorema}[definicao]{Teorema}
\newtheorem{corolario}[definicao]{Corolário}%\theoremstyle{break}
\newtheorem{lema}[definicao]{Lema}
\newtheorem{proposicao}[definicao]{Proposição}
\newtheorem{observacao}[definicao]{Observação}
}

\newtheorem{theorem}{Teorema}[chapter]
\newtheorem{definition}{Definição}[chapter]
\newtheorem{proposition}{Proposi\c{c}\~{a}o}[chapter]
\newtheorem{corollary}{Corolário}[chapter]
\newtheorem{lemma}{Lema}[chapter]
\newtheorem{example}{Exemplo}[chapter]
\newtheorem{exercise}{Exercício}[chapter]



%       NOVAS DEFINIÇÕES

\def\bibname{Referências}% Bibliográficas}
\def\appendixname{Apêndice}
\def\indexname{Índice Remissivo}
%\renewcommand\contentsname{Índice}

\def\A{{\mathcal{A}}}
\def\B{{\mathcal{B}}}
\def\I{{\mathcal{I}}}
\def\O{{\mathcal{O}}}
\def\L{{\mathcal{L}}}
\def\F{{\mathcal{F}}}
%\def\M{{\mathcal{M}}}
\def\U{{\mathcal{U}}}
\def\V{{\mathcal{V}}}
\def\mP{{\mathcal{P}}}

%\def\I{{\mathbb{I}}}
\def\J{{\mathbb{J}}}
\def\K{{\mathbb{K}}}
\def\M{{\mathbb{M}}}
\def\X{{\mathbb{X}}}
\def\Y{{\mathbb{Y}}}

\def\K{\mathbb{K}}
\def\gap{\mathbb{L}}
\def\N{\mathbb{N}}
\def\Z{{\mathbb{Z}}}
\def\Q{\mathbb{Q}}
\def\R{\mathbb{R}}
\def\C{{\mathbb{C}}}

\def\a{{\alpha}}
\def\b{{\beta}}
\def\ss{{\beta}}
\def\g{{\gamma}}
\def\G{{\Gamma}}
\def\t{{\theta}}
\def\lb{{\lambda}}
\def\n{\mathrm{n}}
\def\particao{\mathrm{Part}}
\def\partes{\mathcal{P}}
\def\mdc{\mathrm{mdc}}
\def\ep{\varepsilon}
\def\vf{\varphi}
\def\w{\omega}
\def\bacia{\mbox{\it {\large \ss}}}
\def\Mm{\R^{m \times m}}
\def\M2{\R^{2 \times 2}}

\newcommand{\dsum}{\displaystyle \sum}
\newcommand{\dprod}{\displaystyle \prod}
\newcommand{\dlim}{\displaystyle \lim}
\newcommand{\dliminf}{\displaystyle \liminf}
\newcommand{\dlimsup}{\displaystyle \limsup}
\newcommand{\dint}{\displaystyle \int}
\newcommand{\diint}{\displaystyle \iint\limits}
\newcommand{\diiint}{\displaystyle \iiint\limits}
\newcommand{\doint}{\displaystyle \oint}
\newcommand{\doiint}{\displaystyle \oiint}
\newcommand{\dcup}{\displaystyle \cup}
\newcommand{\dcap}{\displaystyle \cap}
\newcommand{\dbigcup}{\displaystyle \bigcup}
\newcommand{\dbigcap}{\displaystyle \bigcap}
\newcommand{\rad}{\mbox{rad}}
\newcommand{\dist}{\mathrm dist}
\newcommand{\gr}{\operatorname{gr}}
\newcommand{\graf}{\operatorname{Graf}}
\newcommand{\rot}{\operatorname{rot}}
\newcommand{\grad}{\operatorname{grad}}
\newcommand{\divergente}{\operatorname{div}}
\newcommand{\df}{\operatorname{d}\!f}
\newcommand{\dF}{\operatorname{d}\!F}
\newcommand{\dg}{\operatorname{d}\!g}
\renewcommand{\dh}{\operatorname{d}\!h}
\newcommand{\dx}{\operatorname{d}\!x}
\newcommand{\dy}{\operatorname{d}\!y}
\newcommand{\dz}{\operatorname{d}\!z}
\newcommand{\dt}{\operatorname{d}\!t}
\newcommand{\ds}{\operatorname{d}\!s}
\newcommand{\dS}{\operatorname{d}\!S}
\newcommand{\du}{\operatorname{d}\!u}
\newcommand{\dw}{\operatorname{d}\!w}
\newcommand{\dv}{\operatorname{d}\!v}
\newcommand{\dA}{\operatorname{d}\!A}
\newcommand{\dr}{\operatorname{d}\!r}
\newcommand{\dV}{\operatorname{d}\!V}
\newcommand{\dtheta}{\operatorname{d}\!\theta}
\newcommand{\dphi}{\operatorname{d}\!\phi}
\newcommand{\drho}{\operatorname{d}\!\rho}
\newcommand{\interior}{\operatorname{int}}
\newcommand{\sgn}{\operatorname{sgn}}
\renewcommand{\sin}{\operatorname{sen}}
\renewcommand{\cos}{\operatorname{cos}}
\renewcommand{\tan}{\operatorname{tan}}
\renewcommand{\cot}{\operatorname{cot}}
\renewcommand{\sec}{\operatorname{sec}}
\renewcommand{\csc}{\operatorname{csc}}
\renewcommand{\arcsin}{\operatorname{asen}}
\renewcommand{\arccos}{\operatorname{acos}}
\renewcommand{\arctan}{\operatorname{atan}}
\newcommand{\arccot}{\operatorname{acot}}
\newcommand{\arcsec}{\operatorname{asec}}
\newcommand{\arccsc}{\operatorname{acsc}}
\renewcommand{\sinh}{\operatorname{senh}}
\renewcommand{\cosh}{\operatorname{cosh}}
\renewcommand{\tanh}{\operatorname{tanh}}
\newcommand{\cotanh}{\operatorname{coth}}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\csch}{\operatorname{csch}}
\renewcommand{\ln}{\operatorname{ln}}
\newcommand{\Ln}{\operatorname{Ln}}
\newcommand{\vet}{\overrightarrow}
\newcommand{\ivet}{\overrightarrow{\imath}}
\renewcommand{\vec}{\overrightarrow}
\newcommand{\jvet}{\overrightarrow{\jmath}}
\newcommand{\kvet}{\overrightarrow{\kappa}}
\def\proof{\normalfont \textbf{Prova:} \:}
\newcommand{\solve}{\normalfont \textbf{Solução:} \:}
\newcommand{\caixa}{\normalfont \hfill $\Box$}
\newcommand{\Caixa}{\rightline{\shadowbox{$\blacksquare$}}}
\def\qed{\vbox{\hbox to \textwidth{\hbox{} \rightline{\slshape q.e.d.} \hfil}}}
\newcommand{\im}{\normalfont{\mathrm{Im}}}
\newcommand{\dom}{\normalfont{\mathrm{Dom}}}
\newcommand{\cd}{\normalfont{\mathrm{CD}}}
\newcommand{\quest}{\noindent\textbf{EP}}

\def\addt{
\addtocounter{part}{1}
\addtocounter{chapter}{1}
\setcounter{section}{0}
\setcounter{subsection}{0}
\setcounter{questao}{0}
\setcounter{q}{0}
\setcounter{definicao}{0}
\setcounter{exemplo}{0}
\thispagestyle{fancy}
}



%----------------------------------------------------------------------------------------
%REMARK ENVIRONMENT
%----------------------------------------------------------------------------------------

\newenvironment{remark}{\par\vspace{10pt}\small % Vertical white space above the remark and smaller font size
\begin{list}{}{
\leftmargin=35pt % Indentation on the left
\rightmargin=25pt}\item\ignorespaces % Indentation on the right
\makebox[-2.5pt]{\begin{tikzpicture}[overlay]
\node[draw=blue!60,line width=1pt,circle,fill=blue!25,font=\sffamily\bfseries,inner sep=2pt,outer sep=0pt] at (-15pt,0pt){\textcolor{blue}{R}};\end{tikzpicture}} % Orange R in a circle
\advance\baselineskip -1pt}{\end{list}\vskip5pt} % Tighter line spacing and white space after remark

%----------------------------------------------------------------------------------------
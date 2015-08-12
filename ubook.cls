%% Class ubook : Urdu book
%% Author: Abdul Rahim Nizamani

\LoadClass{book}

\RequirePackage{setspace}
\RequirePackage{makeidx}
\RequirePackage{geometry}
\geometry{papersize={5.5in,8.5in},inner=0.75in,outer=0.75in,top=0.9in,bottom=0.9in}
\RequirePackage{fontspec}
\RequirePackage{alphalph}
\RequirePackage{titling}
\RequirePackage[compact]{titlesec}
\titlespacing*{\chapter}{0pt}{0pt}{40pt}
\RequirePackage{framed}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage[indentfirst=false,rightmargin=10pt,leftmargin=30pt]{quoting}
\RequirePackage{bidi}

\RequirePackage{mdwlist}


\newfontfamily{\urdufont}[Script=Arabic,Scale=1.4]{Nastaleeq.ttf}
\newfontfamily{\sindhifont}[Script=Arabic,Scale=1.3]{MBLateefi.ttf}
\newfontfamily{\urdusmall}[Script=Arabic,Scale=1.1]{Nastaleeq.ttf}
\newfontfamily{\arabicfont}[Script=Arabic,Language=Urdu,Scale=1.5]{Scheherazade.ttf}
\newfontfamily{\latinfont}[Script=Latin,Language=English]{Computer Modern}
\newfontfamily{\urduweb}[Script=Arabic,Scale=1]{NafeesWeb.ttf}
\newfontfamily{\urdunafees}[Script=Arabic,Scale=1]{NafeesNastaleeq.ttf}
\newfontfamily{\farsifont}[Script=Arabic,Language=Persian,Scale=1.2]{Zarreen.ttf}
\newfontfamily{\quranfont}[Script=Arabic,Language=Urdu,Scale=1.8]{Scheherazade.ttf}

\AtEndDocument{\cleardoublepage}
\makeindex

\titleformat{\chapter}[hang]{\Huge\bfseries}{\hsp\textcolor{gray75}{\thechapter}\hsp}{0pt}{\Huge\bfseries}

\newenvironment{rightbar}{
  \def\FrameCommand{\vrule width 0.5pt \hspace{10pt}}
  \MakeFramed {\advance\hsize-\width \FrameRestore}}
 {\endMakeFramed}

\makeatletter
\newcommand*{\alifba}[1]{
    \ifcase#1
       \or ا
       \or ب
       \or ت
       \or ث
       \or ج
       \or ح
       \or خ
       \or د
       \or ذ
       \or ر
       \or ز
       \or س
       \or ش
       \or ص
       \or ض
       \or ط
       \or ظ
       \or ع
       \or غ
       \or ف
       \or ق
       \or ک
       \or ل
       \or م
       \or ن
       \or و
       \or ھ
       \or ی
       \else
          \@ctrerr
      \fi
}

\newcommand*{\urdun}[1]{
    \ifcase#1
       \or ۱
       \or ۲
       \or ۳
       \or ۴
       \or ۵
       \or ۶
       \or ۷
       \or ۸
       \or ۹
       \else
          \@ctrerr
      \fi
}
\makeatother
\newalphalph{\alifbata}[alph]{\alifba}{}
\newalphalph{\urdunum}[alph]{\urdun}{}

\newcommand{\سندھی} [1] { \RL{\sindhifont #1} }
\newcommand{\اردو}  [1] {\RL{\urdufont#1}}
\newcommand{\urs}   [1] {\RL{\urdusmall#1}}
\newcommand{\عربی}  [1] {\RL{\arabicfont#1}}
\newcommand{\قرآن}  [1] {”~\RL{\quranfont#1}~“}
\newcommand{\فارسی} [1] {\RL{\farsifont#1}}
\newcommand{\نسخ} [1] {\RL{\farsifont#1}}

\renewcommand{\contentsname} {فہرست}
\renewcommand{\partname}     {حصہ}
\renewcommand{\figurename}   {تصویر}
\renewcommand{\indexname}    {اشاریہ}
\renewcommand{\chaptername}  {باب}

\newcommand{\انڈیکس}[1]{\index{#1}}
\newcommand{\حصہ}[1]{\part*{#1}}
\newcommand{\باب}[1]{\chapter*{#1}}
\newcommand{\فصل}[1]{\section*{#1}}
\newcommand{\ذیلفصل}[1]{\subsection*{#1}}
\newcommand{\ذیلذیلفصل}[1]{\subsubsection*{#1}}
\newcommand
	{\فٹنوٹ}
	[1]
	{\footnote{#1}}
\newcommand
	{\فٹنوٹمارک}
	{\footnotemark}
\newcommand
	{\فٹنوٹمتن}
	[1]
	{\footnotetext{#1}}

\newcommand{\لائن}[1]{\item #1}
\newcommand{\درمیان}[1]{\begin{center}#1\end{center}}
\newcommand{\فہرست}[2]{\addcontentsline{toc}{#1}{#2}}
\newcommand{\اونچا}[1]{\textsuperscript{#1}}

\newcommand{\بسم}{\عربی{بِسۡمِ اللّٰهِ الرَّحۡمٰنِ الرَّحِيۡمِ}}
\newcommand{\سرہ}{\عربی{قُدِّسَ سِرُّهٗ}}
\newcommand{\سرہم}{\RL{\arabicfont قُدِّسَ سِرُّهُمۡ}}
\newcommand{\عفی}{\RL{{\arabicfont عُفِيَ عَنۡهُ}}}
\newcommand{\رعلیہ}{\RL{{\arabicfont رَحۡمَةُ اللّٰهِ عَلَيۡهِ}}}
\newcommand{\رعلیہا}{\RL{{\arabicfont رَحۡمَةُ اللّٰهِ عَلَيۡهَا}}}
\newcommand{\رعلیہم}{\RL{{\arabicfont رَحۡمَةُ اللّٰهِ عَلَيۡهِمۡ}}}
\newcommand{\رعلیہما}{\RL{{\arabicfont رَحۡمَةُ اللّٰهِ عَلَيۡهِمَا}}}
\newcommand{\عنہ}{\RL{{\arabicfont رَضِيَ اللّٰهُ عَنۡهُ}}}
\newcommand{\تعنہ}{\RL{{\arabicfont رَضِيَ اللّٰهُ تَعَالىٰ عَنۡهُ}}}
\newcommand{\عنہا}{\RL{\عربی{رَضِيَ اللّٰهُ عَنۡهَا}}}
\newcommand{\عنہما}{\RL{{\arabicfont رَضِيَ اللّٰهُ عَنۡهُمَا}}}
\newcommand{\عنہم}{\RL{{\arabicfont رَضِيَ اللّٰهُ عَنۡهُمۡ}}}
\newcommand{\تعنہم}{\RL{{\arabicfont رَضِيَ اللّٰهُ تَعَالىٰ عَنۡهُمۡ}}}
\newcommand{\عنہن}{\RL{{\arabicfont رَضِيَ اللّٰهُ عَنۡهُنَّ}}}
\newcommand{\سبحانہ}{\RL{سبحانہ}}
\newcommand{\صلعم}{\RL{\عربی{صَلَّى اللّٰهُ عَلَيۡهِ وَسَلَّمَ}}}
\newcommand{\صلعام}{\RL{{\arabicfont صَلَّى اللّٰهُ عَلَيۡهِ وَ اٰلِهٖ وَسَلَّمَ}}}
\newcommand{\علیہ}{\RL{\عربی{عَلَيۡهِ السَّلَامُ}}}
\newcommand{\علیہم}{\RL{\arabicfont عَلَيۡهِمُ السَّلَامُ}}
\newcommand{\علیہما}{\RL{\arabicfont عَلَيۡهِمَا السَّلَامُ}}
\newcommand{\علیہا}{\RL{\arabicfont عَلَيۡهَا السَّلَامُ}}
\newcommand{\علینبینا}{\RL{\arabicfont عَلىٰ نَبِيِّنَا وَ عَلَيۡهِ الصَّلوٰةُ وَالسَّلَامُ}}
\newcommand{\شروع}[1]{\begin{#1}}
\newcommand{\ختم}[1]{\end{#1}}
\newcommand{\شعر}[1]{\begin{center}#1\end{center}}
\newcommand{\ہجری}[1]{؁#1ھ}

%% New environments
\newenvironment{شمار}
    { \begin{enumerate} }
    { \end{enumerate} }
\newcommand{\اقتباس}[1]{\begin{quoting}#1\end{quoting}}


\newcommand{\ترجمہ}[1]{
    \begin{rightbar}
    \noindent
        (ترجمہ) 
        #1
    \end{rightbar}
  }

%% Default settings for the document
\setmainfont[Script=Arabic,Scale=1.4]{Nastaleeq.ttf}
\setstretch{1.7}

\setRTL
\setfootnoteRL
\RTLdblcol
\autofootnoterule

\renewcommand{\footnoterule}{%
  \kern -3pt
  \hrule width \textwidth
  \kern 2.6pt
}

\version "2.8.8"

\paper {
 indent = 0\mm
}

trackAchannelA = \relative c {
  
%  \tempo 4 = 80

  \key d \major

  fis'8.\noBeam fis16\noBeam g8.\noBeam g16\noBeam a8.\noBeam d16\noBeam d8.\noBeam d16\noBeam |
  \break
  % 2
  d8\noBeam b\noBeam cis\noBeam a\noBeam a16\noBeam d8.\noBeam a16\noBeam d8.\noBeam |
  \break
  % 3
  d8\noBeam b\noBeam cis\noBeam a\noBeam a\noBeam fis'\fermata\noBeam d16\noBeam b8.\fermata\noBeam |
  \break
  % 4
  a8\noBeam fis\noBeam e\noBeam a\noBeam fis16\noBeam d8.\noBeam r4 \bar "||"
}

\addlyrics { "\"Men" may come and men may go, but
            I go on 'for -- ev -- oor' 'ev -- oor'
 	     I go on 'for -- ev -- o-o-r' 'e-v -- o-o-r'
 	     I go on 'for -- ev -- "oor.'\""
}

trackA = <<
  \context Voice = channelA \trackAchannelA
>>


\score {
  <<
    \context Staff=trackA \trackA
  >>
\midi { \tempo 4 = 80  }
\layout {
 \context {
  \Score \remove "Bar_number_engraver"
}
\context {
   \Staff \remove "Time_signature_engraver"
  }
 }
 
}

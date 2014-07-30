\version "2.8.8"

\paper {
 indent = 0\mm
}

trackAchannelA = \relative c {

  \key c \major
  
  \stemUp

  d''4 d b8 c d4 |
  % 2
  e8 d c4 a8 a a4 |
  % 3
  a b c2 |
  \break
  % 4
  a4 b c2 |
  % 5
  d4 c b2 |
  % 6
  g4 g g2 |
  \break
  % 7
  f4 g a2 |
  % 8
  a4 a a2 |
  % 9
  b4 g f g |
  % 10
  a8\noBeam g\noBeam f\noBeam e\noBeam d2 |
  \break
  % 11
  f4 g a2 |
  % 12
  a4 b c8 d e4 |
  % 13
  d c b2 |
  % 14
  g4 g g2 \bar "||"
  
}

\addlyrics { Sol sol, mi fa sol, la sol fa, re re re, re mi fa
             Re mi fa, sol fa mi, do do do --
	     Si do re, re re re, mi do si do, re do si la sol,
	     Si do re, re mi fa sol la, sol fa mi, do do "do.\""
}

trackA = <<
  \context Voice = channelA \trackAchannelA
>>


\score {
  <<
    \context Staff=trackA \trackA
  >>
\midi { \tempo 4 = 120  }
\layout {
 \context {
  \Score \remove "Bar_number_engraver"
}
\context {
   \Staff \remove "Time_signature_engraver"
  }
 }
}

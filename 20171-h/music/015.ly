\version "2.8.8"

\paper {
 indent = 0\mm
}

trackAchannelA = \relative c {
 
  \time 3/4 

  \partial 4
  e'8 f8 |
  % 2
  g2\glissando e'4 |
  % 3
  f,2\glissando d'4 |
  % 4
  e,2 c'8 c |
  % 5
  c4( \stemDown g) \stemNeutral e |
\break
  % 6
  d( f) a |
  % 7
  a( g) g |
  % 8
  f e d |
  % 9
  e2 e8 f |
\break
  % 10
  g2\glissando e'4 |
  % 11
  f,2\glissando d'4 |
  % 12
  e,2 c'8 c |
  % 13
  c4( \stemDown g) \stemNeutral e |
\break
  % 14
  d e f |
  % 15
  \stemUp b( \stemNeutral a8) g4. |
  % 16
  f e4 d8 |
  % 17
  c2

}
\addlyrics { With my la -- e, lo -- e, hush -- a -- bye ba -- by,
             Danc-ing the ba -- by ev -- er so high;
             with my La -- e, lo -- e, hush -- a -- bye ba -- by,
             Mam -- ma will come4. to you bye and bye. }

trackA = <<
  \context Voice = channelA \trackAchannelA
>>


\score {
  <<
    \context Staff=trackA \trackA
  >>
\midi { \tempo 4 = 140  }
\layout {
 \context {
  \Score \remove "Bar_number_engraver"
}
\context {
   \Staff \remove "Time_signature_engraver"
  }
 }

}

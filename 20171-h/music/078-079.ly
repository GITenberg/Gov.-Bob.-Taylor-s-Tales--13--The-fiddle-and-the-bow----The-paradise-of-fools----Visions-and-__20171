\version "2.8.8"

\paper {
 indent = 0\mm
}

trackAchannelA = \relative c {
  
%  \tempo 4 = 140 

  \key bes \major

  \partial 8
  f'8 |
  % 2
  g4 a ees' ees |
  % 3
  ees8[ d] \acciaccatura d c[ bes] \stemUp bes4. \stemUp a8 |
\break
  % 4
  g4 bes \stemNeutral a c |
  % 5
  \stemUp bes2 \stemNeutral r4 f |
\break
  % 6
  g a ees' ees |
  % 7
  ees8[( d)] \acciaccatura d c[ bes] \stemUp bes4. \stemNeutral a8 |
\break
  % 8
  g4.. g16 d'4.. c16 |
  % 9
  f,2 r4 f |
\break
  % 10
  d' \stemUp c8. \melisma a16 \melismaEnd \stemNeutral f4 f |
  % 11
  \times 2/3 { f8( g a) } \times 2/3 { bes8( c cis) } d4 d |
\break
  % 12
  d a bes( \acciaccatura { c16[ \stemUp bes] \stemNeutral } a8) g |
  % 13
  a2\fermata r4 f |
\break
  % 14
  g a ees' ees |
  % 15
  ees8. d16 \melisma \acciaccatura d8 c8. \melismaEnd bes16 \melisma \stemUp bes4. \melismaEnd \stemNeutral a8 |
\break
  % 16
  g4 \stemUp bes \stemNeutral a \acciaccatura { c16[ bes] } g8 \melisma f \melismaEnd |
  % 17
  f'2( f8) ees d c |
\break
  % 18
  bes[ f] e[ f] d'4.\fermata c8 |
  % 19
  bes4 r4 r2 \bar "||"
}

\addlyrics {
    "\"When" eth -- aer-r-r leeps and eth -- aer -- r -- r hairts. Their-r-r
    tales auf luff sholl tell, In
    long -- widge whose ex -- cess im -- pair -- r-r-ts The
    power-r-r-r they feel so well, There-r-r-e
    may per -- haps in-a such a s-c-e-n-e Some
    r-r-re -- co -- lec -- tion be, Auf
    days thot haive as hop -- py bean __ Then
    you'll-a r-r-r-re -- mem -- b-a-e-r-r-r me-e-e, Then you'll-a r-re-
    mem -- b-a-e-r-r, You'll-a r-re -- mem -- ber "a-mee-e-e!!\""
}

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

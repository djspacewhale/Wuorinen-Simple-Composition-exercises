\version "2.22.0"

\header {
  title = "1.a"
  subtitle = "Simple Compsition"
  instrument = "Violin"
  composer = "Garrett Figueroa"
}

global = {
  \numericTimeSignature
  \time 5/8
  \tempo "Allegro"
}

violin = \relative c'' {
  \global
  % Music follows here.
  \set Timing.beatStructure = 2,3
  cis8\f-. g,-. aes-_ f'( ees)
  \set Timing.beatStructure = 3,2
  e-_ d'( c) b-. fis'-.
  a-.\ff bes-. des-. g,-. aes-. 
  \time 3/8
  f!4.--->
  \tuplet 4/3 {dis,8(^\markup {sul pont.} e\p d c)}
  b4(^\markup {ord.} fis'8-.)
  a,4( bes8-.) 
  \time 5/16
  \set Timing.beatStructure = 2,3
  des16\<(^\markup {sul pont. to ord.} g) aes( f ees)\!
  \time 7/8 
  \set Timing.beatStructure = 4,3
  e8\fermata-.\f d'-. c-. b-. fis'-_ a-_ bes-_->
}

\score {
  \new Staff \with {
    instrumentName = "Violin"
    midiInstrument = "violin"
    \accidentalStyle dodecaphonic
  } \violin
  \layout { }
  \midi {
    \tempo 4=100
  }
}

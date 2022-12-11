\version "2.22.0"

\header {
  title = "1.b"
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

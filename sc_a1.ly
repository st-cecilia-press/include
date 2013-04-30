\score {
  <<
    \context ChoirStaff 
    <<

      \context ChordNames = chordcontext { 
        \set chordNameExceptions = #chExceptions
        \set ChordNames.midiInstrument = #"harpsichord"
        << 
          \global \transpose c' c \scChordLine 
        >>
      }

      \new Staff \with { \consists "Volta_engraver" }
      \context Voice = scvOne {
        \set Score.markFormatter = #format-mark-box-letters
        << \set Staff.midiInstrument = #"oboe"
        \global \scMusicOne 	 >> 
      }
    >>

  >>

  \include "../include/sc_layout.ly"
}

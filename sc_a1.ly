\score {
  <<
    \context ChoirStaff 
    <<

      \context ChordNames = chordcontext { 
        \set chordNameExceptions = #chExceptions
        \set ChordNames.midiInstrument = #"harpsichord"
        << 
          \global \transpose c' c \ppChordLine 
        >>
      }

      \new Staff \with { \consists "Volta_engraver" }
      \context Voice = ppvOne {
        \set Score.markFormatter = #format-mark-box-letters
        << \set Staff.midiInstrument = #"oboe"
        \global \ppMusicOne 	 >> 
      }
    >>

  >>

  \include "../include/pp_layout.ly"
}

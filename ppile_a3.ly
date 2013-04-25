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
      \context Voice = ppvTwo { 
        << \set Staff.midiInstrument = #"oboe"
        \global \ppMusicTwo >> 
      }

      \context Voice = ppvThree { 
        << \set Staff.midiInstrument = #"oboe"
        \global \ppMusicThree >> 
      }

    >>

  >>

  \include "../include/pp_layout.ly"
}

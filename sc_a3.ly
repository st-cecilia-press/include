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
      \context Voice = scvTwo { 
        << \set Staff.midiInstrument = #"oboe"
        \global \scMusicTwo >> 
      }

      \context Voice = scvThree { 
        << \set Staff.midiInstrument = #"oboe"
        \global \scMusicThree >> 
      }

    >>

  >>

  \include "../include/sc_layout.ly"
}

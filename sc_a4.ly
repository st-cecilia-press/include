\book {
   \bookOutputSuffix "orig_clef"
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
           \global \scMusicOneClefOrig \ppMusicOne 	 >> 
         }
         \context Voice = ppvTwo { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicTwoClefOrig \ppMusicTwo >> 
         }
   
         \context Voice = ppvThree { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicThreeClefOrig \ppMusicThree >> 
         }
   
         \context Voice = ppvFour { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicFourClefOrig \ppMusicFour >> 
         }
   
       >>
   
     >>
   
     \include "../include/pp_layout.ly"
     \include "../include/sc_midi.ly"
   }
}
\book {
   \bookOutputSuffix "modern_clef"
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
           \global \scMusicOneClefModern \ppMusicOne 	 >> 
         }
         \context Voice = ppvTwo { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicTwoClefModern \ppMusicTwo >> 
         }
   
         \context Voice = ppvThree { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicThreeClefModern \ppMusicThree >> 
         }
   
         \context Voice = ppvFour { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicFourClefModern \ppMusicFour >> 
         }
   
       >>
   
     >>
   
     \include "../include/pp_layout.ly"
   }
}

\book {
   \bookOutputSuffix "orig_clef"
   \header{                                                                
     title = \scTitle
     subtitle = \scSubtitle
     meter = \scMeter
     poet = \scPoet
     composer = \scComposer
     copyright = \scCopyright
     tagline = \scTagline
   }
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
           \global \scMusicOneClefOrig \scMusicOne 	 >> 
         }
         \context Voice = scvTwo { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicTwoClefOrig \scMusicTwo >> 
         }
   
         \context Voice = scvThree { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicThreeClefOrig \scMusicThree >> 
         }
   
         \context Voice = scvFour { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicFourClefOrig \scMusicFour >> 
         }
   
       >>
   
     >>
   
     \include "../include/sc_layout.ly"
     \include "../include/sc_midi.ly"
   }
}

\book {
   \bookOutputSuffix "modern_clef"
   \header{                                                                
     title = \scTitle
     subtitle = \scSubtitle
     meter = \scMeter
     poet = \scPoet
     composer = \scComposer
     copyright = \scCopyright
     tagline = \scTagline
   }
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
           \global \scMusicOneClefModern \scMusicOne 	 >> 
         }
         \context Voice = scvTwo { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicTwoClefModern \scMusicTwo >> 
         }
   
         \context Voice = scvThree { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicThreeClefModern \scMusicThree >> 
         }
   
         \context Voice = scvFour { 
           << \set Staff.midiInstrument = #"oboe"
           \global \scMusicFourClefModern \scMusicFour >> 
         }
   
       >>
   
     >>
   
     \include "../include/sc_layout.ly"
   }
}

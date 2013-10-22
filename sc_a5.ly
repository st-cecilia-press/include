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
             \scGlobal \transpose c' c \scChordLine 
           >>
         }
   
         \new Staff \with { \consists "Volta_engraver" }
         \context Voice = scvOne {
           \set Score.markFormatter = #format-mark-box-letters
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicOneClefOrig \scMusicOne 	 >> 
         }
         \context Voice = scvTwo { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicTwoClefOrig \scMusicTwo >> 
         }
   
         \context Voice = scvThree { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicThreeClefOrig \scMusicThree >> 
         }
   
         \context Voice = scvFour { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicFourClefOrig \scMusicFour >> 
         }

         \context Voice = scvFive { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicFiveClefOrig \scMusicFive >> 
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
             \scGlobal \transpose c' c \scChordLine 
           >>
         }
   
         \new Staff \with { \consists "Volta_engraver" }
         \context Voice = scvOne {
           \set Score.markFormatter = #format-mark-box-letters
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicOneClefModern \scMusicOne 	 >> 
         }
         \context Voice = scvTwo { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicTwoClefModern \scMusicTwo >> 
         }
   
         \context Voice = scvThree { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicThreeClefModern \scMusicThree >> 
         }
   
         \context Voice = scvFour { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicFourClefModern \scMusicFour >> 
         }
   
         \context Voice = scvFive { 
           << \set Staff.midiInstrument = #"oboe"
           \scGlobal \scMusicFiveClefModern \scMusicFive >> 
         }
       >>
   
     >>
   
     \include "../include/sc_layout.ly"
   }
}

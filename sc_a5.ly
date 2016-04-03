\book {
  \bookOutputName #(string-append filename "_orig_clef")
  \include "../include/sc_paper.ly"
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
     \new ChoirStaff <<
       \new Staff = "cantus" << 
         \new Voice {
           \scGlobal \scMusicOneClefOrig \scMusicOne
         }
       >>  
       \new Staff  = "altus" <<
         \new Voice  {
           \scGlobal \scMusicTwoClefOrig \scMusicTwo
         }
       >>  
       \new Staff = "tenor"  <<
         \new Voice  {
           \scGlobal \scMusicThreeClefOrig \scMusicThree
         }
       >> 
       \new Staff = "bassus" <<
         \new Voice  {
           \scGlobal \scMusicFourClefOrig \scMusicFour
         }
       >>  
       \new Staff = "quintus" <<
         \new Voice  {
           \scGlobal \scMusicFiveClefOrig \scMusicFive
         }
       >>  
     >>      
  
    \include "../include/sc_layout.ly"
  }
}
\book {
  #(ly:set-option 'midi-extension "mid")
  \bookOutputName #(string-append filename "_modern_clef")
  \include "../include/sc_paper.ly"
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
     \new ChoirStaff <<
       \new Staff = "cantus" << 
         \new Voice {
           \scGlobal \scMusicOneClefModern \scMusicOne
         }
       >>  
       \new Staff  = "altus" <<
         \new Voice  {
           \scGlobal \scMusicTwoClefModern \scMusicTwo
         }
       >>  
       \new Staff = "tenor"  <<
         \new Voice  {
           \scGlobal \scMusicThreeClefModern \scMusicThree
         }
       >> 
       \new Staff = "bassus" <<
         \new Voice  {
           \scGlobal \scMusicFourClefModern \scMusicFour
         }
       >>  
       \new Staff = "quintus" <<
         \new Voice  {
           \scGlobal \scMusicFiveClefOrig \scMusicFive
         }
       >>  
     >>      
  
    \include "../include/sc_layout.ly"
  }
}
\book {
  \bookOutputName \filename
  \score {
     \new ChoirStaff <<
       \new Staff = "cantus" << 
         \set Staff.midiInstrument = #"oboe"
         \new Voice {
           \scGlobal \scMusicOneClefModern \unfoldRepeats{ \scMusicOne }
         }
       >>  
       \new Staff  = "altus" <<
         \set Staff.midiInstrument = #"oboe"
         \new Voice  {
           \scGlobal \scMusicTwoClefModern \unfoldRepeats{ \scMusicTwo }
         }
       >>  
       \new Staff = "tenor"  <<
         \set Staff.midiInstrument = #"oboe"
         \new Voice  {
           \scGlobal \scMusicThreeClefModern \unfoldRepeats{ \scMusicThree} 
         }
       >> 
       \new Staff = "bassus" <<
         \set Staff.midiInstrument = #"oboe"
         \new Voice  {
           \scGlobal \scMusicFourClefModern \unfoldRepeats{ \scMusicFour }
         }
       >>  
       \new Staff = "quintus" <<
         \set Staff.midiInstrument = #"oboe"
         \new Voice  {
           \scGlobal \scMusicFiveClefOrig \unfoldRepeats{ \scMusicFive }
         }
       >>  
     >>      
     \midi{
       \context {
         \Score
           tempoWholesPerMinute = \scTempo
       }
    }
  }
}

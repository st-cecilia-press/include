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
         
          \new Staff = \scMusicOneName <<
            
            \new Voice {
              \scGlobal \scMusicOneClefOrig 
              
                \scMusicOne
              
            }
          >>
         
        >>
        \include "../include/sc_layout.ly"
      }
    }
  \book {
      
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
         
          \new Staff = \scMusicOneName <<
            
            \new Voice {
              \scGlobal \scMusicOneClefModern 
              
                \scMusicOne
              
            }
          >>
         
        >>
        \include "../include/sc_layout.ly"
      }
    }
  \book {
      
      #(ly:set-option 'midi-extension "mid")
      
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
         
          \new Staff = \scMusicOneName <<
            
            \set Staff.midiInstrument = #"oboe"
            
            \new Voice {
              \scGlobal \scMusicOneClefModern 
              
                \unfoldRepeats{ \scMusicOne }
              
            }
          >>
         
        >>
        \include "../include/sc_midi.ly"
      }
    }
  
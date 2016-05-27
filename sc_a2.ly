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
         
          \new Staff = \scMusicTwoName <<
            
            \new Voice {
              \scGlobal \scMusicTwoClefOrig 
              
                \scMusicTwo
              
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
         
          \new Staff = \scMusicTwoName <<
            
            \new Voice {
              \scGlobal \scMusicTwoClefModern 
              
                \scMusicTwo
              
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
         
          \new Staff = \scMusicTwoName <<
            
            \set Staff.midiInstrument = #"oboe"
            
            \new Voice {
              \scGlobal \scMusicTwoClefModern 
              
                \unfoldRepeats{ \scMusicTwo }
              
            }
          >>
         
        >>
        \include "../include/sc_midi.ly"
      }
    }
  
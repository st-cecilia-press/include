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
         
          \new Staff = \scMusicThreeName <<
            
            \new Voice {
              \scGlobal \scMusicThreeClefOrig 
              
                \scMusicThree
              
            }
          >>
         
          \new Staff = \scMusicFourName <<
            
            \new Voice {
              \scGlobal \scMusicFourClefOrig 
              
                \scMusicFour
              
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
         
          \new Staff = \scMusicThreeName <<
            
            \new Voice {
              \scGlobal \scMusicThreeClefModern 
              
                \scMusicThree
              
            }
          >>
         
          \new Staff = \scMusicFourName <<
            
            \new Voice {
              \scGlobal \scMusicFourClefModern 
              
                \scMusicFour
              
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
         
          \new Staff = \scMusicThreeName <<
            
            \set Staff.midiInstrument = #"oboe"
            
            \new Voice {
              \scGlobal \scMusicThreeClefModern 
              
                \unfoldRepeats{ \scMusicThree }
              
            }
          >>
         
          \new Staff = \scMusicFourName <<
            
            \set Staff.midiInstrument = #"oboe"
            
            \new Voice {
              \scGlobal \scMusicFourClefModern 
              
                \unfoldRepeats{ \scMusicFour }
              
            }
          >>
         
        >>
        \include "../include/sc_midi.ly"
      }
    }
  
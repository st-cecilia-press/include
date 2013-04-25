\layout {
  between-system-space = 5\mm
  indent = 0\mm
  \context {
    \Staff
    \consists "Ambitus_engraver"
  }
  \context {
    \Score
    \remove "Volta_engraver"
  }
  \context { \ChordNames 
     \override ChordName #'font-size = #-1 
     \override ChordName #'font-series = #'bold 
  } 
  ragged-bottom=##t
  ragged-last-bottom=##t
}

\midi {
  \context {
    \Score
    tempoWholesPerMinute = \ppTempo
  }
}


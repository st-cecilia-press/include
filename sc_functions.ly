\paper {
  print-page-number = ##f
  print-first-page-number = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t

}
chExceptionMusic = {
  <c g>1-\markup { \super "5" }
}


% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
( sequential-music-to-chord-exceptions chExceptionMusic #t)
ignatzekExceptions)

ppMark = { \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark \default }
ppMarkA = \markup{ \bold \override #'(box-padding . 0.5) \box \large "A" }
ppMarkB = \markup{ \bold \override #'(box-padding . 0.5) \box \large "B" }
ppMarkC = \markup{ \bold \override #'(box-padding . 0.5) \box \large "C" }
ppMarkD = \markup{ \bold \override #'(box-padding . 0.5) \box \large "D" }
ppMarkE = \markup{ \bold \override #'(box-padding . 0.5) \box \large "E" }
ppMarkF = \markup{ \bold \override #'(box-padding . 0.5) \box \large "F" }
ppMarkG = \markup{ \bold \override #'(box-padding . 0.5) \box \large "G" }
ppMarkH = \markup{ \bold \override #'(box-padding . 0.5) \box \large "H" }
ppMarkI = \markup{ \bold \override #'(box-padding . 0.5) \box \large "I" }
ppMarkJ = \markup{ \bold \override #'(box-padding . 0.5) \box \large "J" }
ppMarkK = \markup{ \bold \override #'(box-padding . 0.5) \box \large "K" }

ficta = { \once \set suggestAccidentals = ##t }

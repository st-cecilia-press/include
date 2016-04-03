chExceptionMusic = {
  <c g>1-\markup { \super "5" }
}

filename = #(ly:parser-output-name parser)

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
( sequential-music-to-chord-exceptions chExceptionMusic #t)
ignatzekExceptions)

scMark = { \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark \default }
scMarkA = \markup{ \bold \override #'(box-padding . 0.5) \box \large "A" }
scMarkB = \markup{ \bold \override #'(box-padding . 0.5) \box \large "B" }
scMarkC = \markup{ \bold \override #'(box-padding . 0.5) \box \large "C" }
scMarkD = \markup{ \bold \override #'(box-padding . 0.5) \box \large "D" }
scMarkE = \markup{ \bold \override #'(box-padding . 0.5) \box \large "E" }
scMarkF = \markup{ \bold \override #'(box-padding . 0.5) \box \large "F" }
scMarkG = \markup{ \bold \override #'(box-padding . 0.5) \box \large "G" }
scMarkH = \markup{ \bold \override #'(box-padding . 0.5) \box \large "H" }
scMarkI = \markup{ \bold \override #'(box-padding . 0.5) \box \large "I" }
scMarkJ = \markup{ \bold \override #'(box-padding . 0.5) \box \large "J" }
scMarkK = \markup{ \bold \override #'(box-padding . 0.5) \box \large "K" }

ficta = { \once \set suggestAccidentals = ##t }

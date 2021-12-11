% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Lạy Chiên Thiên Chúa" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c' {
  \autoBeamOff
  d8 f [e] f [g] a4 c8 c b [a] g a4
  g8 g a [g] f [e] d4 \bar "||"
  d8 f [e] f [g] a4 c8 c b [a] g a4
  f8 f e [f] g4 e8 f [e] d4 \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  xin thương xót chúng
  \tweak self-alignment-X #LEFT
  \tweak extra-offset #'(-0.5 . 0)
  \markup { "con." \italic \smaller "(2 lần)" }
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  xin ban bình an cho chúng con.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  %system-system-spacing = #'((basic-distance . 0.1) (padding . 1))
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    %\set Score.barAlways = ##t
    ragged-last = ##f
    indent = #10
  } 
}

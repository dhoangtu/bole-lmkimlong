% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = \markup \fill-line {
    \center-column {
      \box \pad-markup #2 "Bộ Lễ CA LÊN ĐI 1"
      \null \null \null
    }
  }
  subtitle = \markup { \huge \bold "Kinh Thương Xót" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c' {
  \autoBeamOff
  d8 [c d e] f4 g8 b [g] f [e] d4 \bar "||" \break
  a'8 c b [a g] a4 g8 a [g] f [e] d4 \bar "||" \break
  d8 [c d e] f4 g8 a [g] f [e] d4 \bar "||" \break
  d8 [c d e] f4 f8 [e f g] a4 g8 a [g] f [e] d4 \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Xin Chúa thương xót chúng
  \tweak self-alignment-X #LEFT
  \tweak extra-offset #'(-0.5 . 0)
  \markup { "con." \italic \smaller "(2 lần)" }
  Xin Chúa Ki -- tô thương xót chúng
  \tweak self-alignment-X #LEFT
  \tweak extra-offset #'(-0.5 . 0)
  \markup { "con." \italic \smaller "(2 lần)" }
  Xin Chúa thương xót chúng con.
  Xin Chúa, Xin Chúa thương xót chúng con.
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
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    %\set Score.barAlways = ##t
    ragged-last = ##f
    indent = #10
  } 
}

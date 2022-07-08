% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Thánh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopThanh = \relative c'' {
  \autoBeamOff
  a4 (g8 [a]) \once \stemUp bf4 (a8 [bf]) c4 d8 g, a c [b!] a g a4 \bar "||"
  d,8 f e [f] g g a4 \bar "||"
  a8 a bf [a] g a f [e] d4 \bar "||"
  f8 d g f bf [a] g g a4 \bar "||"
  a8 a bf [a] g a f [e] d4 \bar "||"
}

% Lời phiên khúc
loiPhienKhucSopThanh = \lyrics {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh.
  Trời đất đầy vinh quang Chúa.
  Hoan hô Chúa trên các tầng trời.
  Chúc tụng Đấng ngự đến nhân danh Chúa.
  Hoan hô Chúa trên các tầng trời.
}

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
  \tweak extra-offset #'(-1 . 0)
  \markup { "con." \italic \smaller "(2 lần)" }
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  xin ban bình an cho chúng con.
}


% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 3\mm
  bottom-margin = 3\mm
  left-margin = 3\mm
  right-margin = 3\mm
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver" } <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSopThanh
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopThanh
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    ragged-last = ##f
    %indent = #10
  } 
}

\markup {
  \vspace #3
  \fill-line {
    \column {
      \line { \fontsize #4 \bold "Lạy Chiên Thiên Chúa" }
    }
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver" } <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    ragged-last = ##f
    %indent = #10
  } 
}

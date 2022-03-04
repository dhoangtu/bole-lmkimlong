% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Lạy Chiên Thiên Chúa" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucChuTe = \relative c' {
  \partial 4 d8 (e) |
  g4 g8 (e16 g) |
  a4 a8 a |
  f (e) d4 |
  g g8 g |
  a8. ([g16 a8]) c |
  g2 ~ |
  g4 r |
  R2*6
  r4 e8 (g) |
  a4 a8 (g16 a) |
  c2 ~ |
  c4 b8 (c) |
  d4 d8 (c16 d) |
  e2 ~ |
  e ~ |
  e4 r |
  R2*5
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 3/4
  R2.
  r4 d8 c d4 ~ |
  d8 d e4 (d) |
  c2. ~ |
  c4 r r \bar "|."
}

nhacDiepKhucSop = \relative c'' {
  r4 |
  R2*6
  r4 a8 (c) |
  d4 d8 (c16 d) |
  e4 e8 e |
  c (b) a4 |
  <<
    {
      d4 d8 d |
      e4 d |
      c2 ~ |
      c4
    }
    {
      g4 a8 a |
      a4 gs |
      a2 ~ |
      a4
    }
  >>
  r4 |
  R2
  r4 c,8 (d) |
  e2 |
  d8 (e) g4 ~ |
  g g8 (e16 g) |
  a4 c8 c |
  a (g) a (c) |
  d2 |
  c8 c a (g) |
  a2 |
  b8 b g (e) |
  a2 ~ |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 3/4
  a8 [g]
  \oneVoice
  <<
    {
      a8 [a] a (c) |
      g2. |
      a8 a c4 (a) |
      g2. ~ |
      g4
    }
    {
      f8 f f4 |
      d2. |
      f8 f e4 (f) |
      e2. ~ |
      e4
    }
  >>
  \oneVoice
  r4 r
}

nhacDiepKhucBas = \relative c' {
  
}

% Lời điệp khúc
loiDiepKhucChuTe = \lyricmode {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  xin thương xót chúng con
  Lạy Chiên Thiên Chúa, lạy Chiên thiên Chúa
  Ban bình an cho chúng con.
}

loiDiepKhucSop = \lyricmode {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian
  xin thương xót chúng con.
  Lạy Chiên, lạy Chiên Thiên Chúa,
  Đấng xóa tội trần gian,
  Xin ban bình an, xin ban bình an,
  bình an cho chúng con,
  ban cho chúng con.
}

loiDiepKhucBas = \lyricmode {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  xin thương xót chúng con.
  Lạy Chiên, lạy Chiên Thiên Chúa,
  Đấng xóa tội trần gian,
  xin ban bình an, xin ban bình an cho chúng con,
  ban cho
  <<
  { chúng }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  đoàn
	}
  >>
  con.
}

% Dàn trang
%A5

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
}


%A4
%{
\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  systems-per-page = 3
}
%}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = chuTe {
          \TongNhip \nhacDiepKhucChuTe
        }
        \new Lyrics \lyricsto chuTe \loiDiepKhucChuTe
    >>
    \new ChoirStaff <<
      \new Staff <<
          \clef treble
          \new Voice = beSop {
            \TongNhip \nhacDiepKhucSop
          }
          \new Lyrics \lyricsto beSop \loiDiepKhucSop
      >>
      \new Staff <<
          \clef bass
          \new Voice = beBas {
            \TongNhip \nhacDiepKhucBas
          }
          \new Lyrics \lyricsto beBas \loiDiepKhucBas
      >>
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

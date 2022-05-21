% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  r4 r8 e e4 |
  e2 r8 e |
  a, b c4 b8 g |
  a2 c,4 |
  e4. d8 e f |
  g2 r4 |
  r2 e'8 e |
  f4. d8 e16 _(d) c8 |
  c2 r4 |
  r2 d8 (e16 d) |
  c4. f8 d4 |
  e2 r4 |
  r2 e8 e |
  f4. d8 e16 _(d) c8 |
  c2. ~ |
  c4 r2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4 r8 <c g> <c g>4 |
  <c g>2 r8 g |
  f g g4 g8 d |
  c2 c4 |
  e4. d8 c c |
  b2 r4 |
  r2 g'8 g |
  a4. a8 g [e] |
  e2 r4 |
  r2 g8 (f) |
  e4. c'8 b4 |
  c2 r4 |
  r2 g8 g |
  a4. a8 g [e] |
  e2. ~ |
  e4 r2
}

nhacDiepKhucBas = \relative c' {
  c2 c8 c |
  c2 r8 e, |
  f f e4 e8 e |
  a2. ~ |
  a4 r a |
  g4. g8 a b |
  c2. ~ |
  c4 f,8 fs g g |
  c,2 g'8 (a16 g) |
  e4. c'8 g4 |
  a2 r8 g |
  c, e d a' g g |
  c2. ~ |
  c4 f,8 fs g g |
  <g c,>2. ~ |
  <g c,>4 r2
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh,
  Trời đất đầy vinh quang Chúa.
  Hoan hô Chúa trên các tầng trời.
  Chúc tụng Đấng ngự đến.
  Hoan hô Chúa trên các tầng trời.
}

loiDiepKhucBas = \lyricmode {
  Thánh, Thánh, Thánh, Thánh,
  Ngài là Thiên Chúa các đạo binh,
  Đất trời đầy vinh quang Chúa
  Hoan hô Chúa trên trời.
  Chúc tụng Đấng ngự đến,
  Chúc tụng Đấng ngự đến nhân danh Chúa.
  Hoan hô Chúa trên trời.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 3\mm
  bottom-margin = 3\mm
  left-margin = 3\mm
  right-margin = 3\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  page-count = 1
}

TongNhip = {
  \key c \major \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    <<
      \clef treble
    \new Voice \TongNhip \partCombine 
      \nhacDiepKhucSop
      \nhacDiepKhucAlto
    \new NullVoice = beSop \nhacDiepKhucSop
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
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

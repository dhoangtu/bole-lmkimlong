% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucChuTe = \relative c'' {
  c2 c4 |
  c2 r8 c |
  g a c a16 (g) e8 (d) |
  g2. ~ |
  g4 r r |
  R2.*2
  r2 c8 c |
  d4 c8 d c (a) |
  g2. |
  R2.
  r2 a8 a |
  c4 a8 c a (g) |
  e2. |
  r4 d'8 (e d4) |
  c2. \bar "||"
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 4/4
  R1*4
  
  \time 3/4
  r2 c8 c |
  d4 c8 [d] c ([a]) |
  g2. |
  R2.
  r2 a8 a |
  c4 a8 [c] a ([g]) |
  e2. |
  r4 d'8 (e d4) |
  c2. ~ |
  c4 r r \bar "|."
}

nhacDiepKhucSop = \relative c'' {
  c2 c4 |
  c2 r8 c |
  g a c a16 (g) e8 (d) |
  g2. ~ |
  g4 r r |
  c,8 e d (e) g g |
  a4 g8 (a) c c |
  d2. |
  R2.
  r4 d4. d8 |
  e4 d8 e d4 |
  c2. ~ |
  c4 r r |
  r4 g4. g8 |
  a4 a8 c a4 |
  g2. |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 4/4
  \once \stemUp c4 (b8 a) g2 ~ |
  g4 d'8 (c) b2 |
  c4. (d8) a4 (\once \stemUp d) |
  c2 c4 c |
  
  d2. ~ |
  d4 r r |
  r4 d4. d8 |
  e4 d8 e d4 |
  c2. ~ |
  c4 r r |
  r4 g4. g8 |
  a4 a8 c a4 |
  g2. ~ |
  g4 r r
}

nhacDiepKhucAlto = \relative c'' {
  c2 c4 |
  c2 r8 c |
  g a c a16 (g) e8 (d) |
  g2. ~ |
  g4 r r |
  c,8 e d (e) g g |
  a4 g8 (a) g g |
  fs2. |
  R2.
  r4 g4. a8 |
  a4 g8 g g4 |
  a2. ~ |
  a4 r r |
  r e4. e8 |
  f4 f8 e f4 |
  e2. |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 4/4
  R1
  r2 f4 (e8 d) |
  c2 ~ c4 g'8 (f) |
  e4 (f) g a8 (g) |
  
  \time 3/4
  fs2. ~ |
  fs!4 r r |
  r g4. a8 |
  a4 gs8 gs gs4 |
  a2. ~ |
  a4 r r |
  r e4. e8 |
  f4 f8 e f4 |
  e2. ~ |
  e4 r r
}

nhacDiepKhucTenor = \relative c' {
  c2 c4 |
  c2 r8 c |
  g a c a16 (g) e8 (d) |
  g2. |
  c,8 e d (e) g g |
  a2 g4 |
  f c' c8 a |
  a2. |
  R2.
  r4 b4. b8 |
  c4 b8 b b4 |
  a2. ~ |
  a4 r r |
  r c4. c8 |
  c4 c8 c b4 |
  c2. |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 4/4
  r2 g4 (f8 e) |
  d2 ~ d4 g8 (f) |
  e2 f4 (e8 d) |
  c4 (d) e4. ef8 |
  
  \time 3/4
  d2. ~ |
  d4 r r |
  r b'4. b8 |
  c4 b8 b b4 |
  a2. ~ |
  a4 r r |
  r c4. c8 |
  c4 c8 c b4 |
  c2. ~ |
  c4 r r
}

nhacDiepKhucBas = \relative c' {
  c2 c4 |
  c2 r8 c |
  g a c a16 (g) e8 (d) |
  g2. |
  c,8 e d (e) g g |
  a2 g4 |
  f e e8 e |
  d2. |
  R2.
  r4 g4. f8 |
  e4 e8 e e4 |
  f2. ~ |
  f4 r r |
  r c4. c8 |
  f4 a8 g g4 |
  c,2. |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \numericTimeSignature
  \time 4/4
  r2 g'4 (f8 e) |
  d2 ~ d4 g8 (f) |
  e2 f4 (e8 d) |
  c4 (\once \stemUp d) e4. ef8 |
  
  \time 3/4
  d2. ~ |
  d4 r r |
  r g4. f8 |
  e4 e8 e e4 |
  f2. ~ |
  f4 r r |
  r c4. c8 |
  f4 a8 g g4 |
  <g c,>2. ~ |
  <g c,>4 r r
}

% Lời điệp khúc
loiDiepKhucChuTe = \lyricmode {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh
  Hoan hô Chúa trên các tầng trời.
  Hoan hô Chúa trên các tầng trời
  trên trời
  Hoan hô Chúa trên các tầng trời.
  Hoan hô Chúa trên các tầng trời.
  trên trời.
}

loiDiepKhucSop = \lyricmode {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh
  Trời đất đầy vinh quang Chúa,
  đầy vinh quang Chúa
  Hoan hô Chúa trên các tầng trời
  Hoan hô Chúa trên các tầng trời
  Chúc tụng chúc tụng Đấng ngự đến nhân danh Chúa.
  Hoan hô Chúa trên các tầng trời.
  Hoan hô Chúa trên các tầng trời.
}

loiDiepKhucAlto = \lyricmode {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh
  Trời đất đầy vinh quang Chúa,
  đầy vinh quang Chúa
  Hoan hô Chúa trên các tầng trời
  Hoan hô Chúa trên các tầng trời
  Chúc tụng Đấng ngự nhân danh Chúa
  Hoan hô Chúa trên các tầng trời.
  Hoan hô Chúa trên các tầng trời.
}

loiDiepKhucTenor = \lyricmode {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh
  Trời đất đầy vinh quang Chúa
  vinh quang đầy vinh quang Chúa.
  Hoan hô Chúa trên các tầng trời
  Hoan hô Chúa trên các tầng trời.
  Chúc tụng, chúc tụng Đấng ngự nhân danh Ngài.
  Hoan hô Chúa trên các tầng trời.
  Hoan hô Chúa trên các tầng trời.
}

loiDiepKhucBas = \lyricmode {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh
  Trời đất đầy vinh quang Chúa
  vinh quang đầy vinh quang Ngài.
  Hoan hô Chúa trên các tầng trời
  Hoan hô Chúa trên các tầng trời.
  Chúc tụng, chúc tụng Đấng ngự nhân danh Ngài.
  Hoan hô Chúa trên các tầng trời.
  Hoan hô Chúa trên các tầng trời.
}

% Dàn trang
%A5

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
  systems-per-page = 2
  page-count = 4
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
  \key c \major \time 3/4
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
          \clef treble
          \new Voice = beAlto {
            \TongNhip \nhacDiepKhucAlto
          }
          \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
      >>
      \new Staff <<
          \clef "violin_8"
          \new Voice = beTenor {
            \TongNhip \nhacDiepKhucTenor
          }
          \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
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

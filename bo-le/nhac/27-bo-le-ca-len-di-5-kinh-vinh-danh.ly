% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Vinh Danh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucXuong = \relative c' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  \partial 4. e8 e e f (e) d e d (c) c4
  \override Score.BarLine.break-visibility = ##(#t #t #t)
  \bar "||"
}

nhacDiepKhucChuTe = \relative c' {
  R2*14
  r4 c' |
  a8 (g) f d |
  g4 e8 g |
  a4. a8 |
  g4 (a8 b) |
  c2 ~ |
  c4 r |
  R2*10
  r4 e,8 (g) |
  \time 3/4
  a4. g8 a ([b]) |
  c4. a8 b [c] |
  \time 2/4
  d4 r8 g, |
  b c c (b) |
  a2 ~ |
  a4 r |
  r g8 g |
  a8. _([g16 a8]) c |
  g4 r |
  R2*4
  r4 r8 c |
  g (a) c (d) |
  \slashedGrace { d16 ( } e8) e e (d16 c) |
  d4. d8 |
  e4 d |
  c2 ~ |
  c4 g8 g |
  d' c a a |
  g2 ~ |
  g ~ |
  g4 r |
  R2*5
  g8 c a g |
  d (f) g g |
  g (a) c a |
  g4 d' ~ ( |
  d8 e d4) |
  c2 ~ |
  c4 r \bar "|."
}

nhacDiepKhucSop = \relative c' {
  c8 c e g |
  \slashedGrace { a16 ( } c4.) a16 (g) |
  e4 d |
  g2 ~ |
  g4 r |
  r e' |
  d8 (c) a (c) |
  g4 (a8 b) |
  c2 ~ |
  c4 r |
  r b8 b |
  c2 ~ |
  c4 d8 d |
  e2 ~ |
  e4 r |
  R2
  r4 e,8 g |
  a4. a8 |
  g4 (a8 b) |
  c2 ~ |
  c4 r |
  R2*5
  r4 r8 g |
  a g a (b) |
  c4 r8 c |
  a a a4 |
  g2 ~ |
  g4 r 
  \time 3/4|
  R2.*2
  \time 2/4
  R2*2
  r4 a8 a |
  f (e) d4 |
  g4 r |
  R2
  r4 e'8 e |
  c (b) a4 |
  d c ~ |
  c8 g g c |
  a (g) e (g) |
  \slashedGrace { g16 ( } a2) |
  R2*2
  r4 a8 a |
  c4 a |
  g2 ~ |
  g4 r |
  R2
  r4 c,8 (d) |
  e e d8. g16 |
  g4 e8 (g) |
  a a g4 |
  c a8 (c) |
  d d b (c) |
  e e d4 ~ |
  d r |
  R2*4
  a8 (c \once \stemDown a4) |
  g2 ~ |
  g4 r
}

nhacDiepKhucAlto = \relative c' {
  c8 c e g |
  \slashedGrace { a16 ( } c4.) a16 (g) |
  e4 d |
  g2 ~ |
  g4 r |
  r c |
  g8 (a) f4 |
  e (d) |
  e2 ~ |
  e4 r |
  r e8 e |
  a2 ~ |
  a4 a8 a |
  gs2 ~ |
  gs4 r |
  R2
  R2
  r4 f8 f |
  e4 f |
  e2 ~ |
  e4 r |
  R2*5
  r4 r8 g |
  a g a (b) |
  c4 r8 e, |
  f e d4 |
  d2 ~ |
  d4 r 
  \time 3/4|
  R2.*2
  \time 2/4
  R2*2
  r4 a'8 a |
  f (e) d4 |
  g4 r |
  R2
  r4 e'8 e |
  c (b) a4 |
  d c ~ |
  c8 g g c |
  a (g) e (d) |
  c2 |
  R2*2
  r4 f8 f |
  e4 f |
  e2 ~ |
  e4 r |
  R2
  r4 c8 (d) |
  e e d8. e16 |
  d4 e8 (g) |
  a a g4 |
  g4 a8 (c) |
  d d b (c) |
  g g fs4 ( |
  g) r |
  R2*4
  f8 (g f4) |
  e2 ~ |
  e4 r
}

nhacDiepKhucTenor = \relative c {
  c8 c e g |
  \slashedGrace { a16 ( } c4.) a16 (g) |
  e4 d |
  g2 ~ |
  g4 d8 c |
  g'2 ~ |
  g4 r |
  R2
  r4 c8 (b) |
  a4 (g8 a16 g) |
  e4 g |
  a2 ~ |
  a4 b8 b |
  b2 ~ |
  b4 r |
  R2*2
  r4 c8 c |
  c4 b8 (d) |
  c2 ~ |
  c4 c, |
  e4 d8 e |
  g4 (a8) g |
  a8. ([c16 a8]) g |
  e4 d8 g |
  e8 (d) c4 |
  d2 ~ |
  d4 r |
  r r8 c' |
  c c c4 |
  b2 ~ |
  b4 r |
  R2.*2
  R2*2
  r4 a8 a f (e) d4 |
  g4 r |
  R2*3
  r4 c ~ |
  c8 g g c |
  a (g) e4 |
  f2 |
  R2*2
  r4 a8 d |
  c4 b |
  c2 ~ |
  c4 r |
  R2
  r4 c,8 (d) |
  e e d8. g16 |
  g4 e8 (g) |
  a a b4 |
  c a8 (c) |
  d d b (c) |
  c c c4 ( |
  b) r |
  R2*4
  c4 (c8 b) |
  c2 ~ |
  c4 r
}

nhacDiepKhucBas = \relative c {
  c8 c e g |
  \slashedGrace { a16 ( } c4.) a16 (g) |
  e4 d |
  g4 r8 f |
  e4 d8 c |
  g'2 ~ |
  g4 r
  R2
  R2*3
  r4 a8 (g) |
  f4 f8 f |
  e2 ~ |
  e4 r |
  R2*2
  r4 f8 f |
  g4 g |
  c,2 ~ |
  c4 c |
  e d8 e |
  g4 (a8) g |
  a8. ([c16 a8]) g |
  e4 d8 g |
  e (d) c4 |
  d2 ~ |
  d4 r |
  r r8 c |
  f f fs4 |
  g2 ~ |
  g4 r |
  R2.*2
  R2
  r4 a8 a |
  f (e) d4 |
  g r |
  R2*4
  r4 c ~ |
  c8 g g c |
  a (g) e4 |
  f2 |
  R2*2
  r4 f8 f |
  g,2 |
  c2 ~ |
  c4 r |
  R2
  r4 c8 (d) |
  e e d8. c16 |
  b4 e8 (g) |
  a a g8. (f16) |
  e4 a8 (c) |
  d d b (c) |
  c, c d4 ( |
  g) r |
  R2*4
  f8 (e f g) |
  c,2 ~ |
  c4 r
}

% Lời điệp khúc
loiDiepKhucXuong = \lyricmode {
  \override Lyrics.LyricText.font-series = #'bold
  Vinh danh Thiên Chúa trên các tầng trời
}

loiDiepKhucChuTe = \lyricmode {
  Chúng con cảm tạ Chúa vì vinh quang cao cả Chúa.
  Lạy Chúa là Thiên Chúa, là Chiên Thiên Chúa,
  là Con Đức Chúa Cha.
  Xin thương xót chúng con
  Chúa ngự bên hữu Đức Chúa Cha,
  thương xót chúng con.
  Vì, lạy Chúa Giê -- su Ki -- tô
  Cùng Đức Chúa Thánh Thần
  trong vinh quang Đức Chúa Cha.
  A -- men.
}

loiDiepKhucSop = \lyricmode {
  Và bình an dưới thế cho người thiện tâm.
  Chúng con chúc tụng Chúa
  Thờ lạy Chúa, tôn vinh Chúa
  Vì vinh quang cao cả Chúa
  Lạy Con Một Thiên Chúa, Chúa Giê -- su Ki -- tô
  Chúa xóa tội trần gian.
  Chúa xóa tội trần gian,
  Xin nhậm lời chúng con cầu khẩn.
  Xin thương xót chúng con.
  Chỉ có Chúa là Đấng Thánh,
  chỉ có Chúa là Chúa,
  chỉ có Chúa là Đấng Tối Cao
  A -- men.
}

loiDiepKhucAlto = \lyricmode {
  Và bình an dưới thế cho người thiện tâm.
  Chúng con chúc tụng Chúa
  Thờ lạy Chúa, tôn vinh Chúa
  vinh quang cao cả Chúa.
  Lạy Con Một Thiên Chúa, Chúa Giê -- su Ki -- tô
  Chúa xóa tội trần gian.
  Chúa xóa tội trần gian,
  Xin nhậm lời chúng con cầu khẩn.
  Xin thương xót chúng con.
  Chỉ có Chúa là Đấng Thánh,
  chỉ có Chúa là Chúa, chỉ có Chúa là Đấng Tối Cao
  A -- men.
}

loiDiepKhucTenor = \lyricmode {
  Và bình an dưới thế cho người thiện tâm.
  ca ngợi Chúa
  Chúng con thờ lạy Chúa.
  tôn vinh Chúa
  Vinh quang cao cả Chúa.
  Lạy Chúa là Thiên Chúa, là "Vua (i - a)" trên trời,
  là Chúa Cha toàn năng.
  Chúa Giê -- su Ki -- tô
  Chúa xóa tội trần gian
  Xin nhậm lời chúng con cầu khẩn.
  Xin thương xót chúng con.
  Chỉ có Chúa là Đấng Thánh, chỉ có Chúa là Chúa,
  chỉ có Chúa là Đấng Tối Cao
  A -- men.
}

loiDiepKhucBas = \lyricmode {
  Và bình an dưới thế cho người thiện tâm.
  Chúng con ca ngợi Chúa
  Chúng con tôn vinh Chúa
  Vinh quang cao cả Chúa.
  Lạy Chúa là Thiên Chúa, là "Vua (i - a)" trên trời,
  là Chúa Cha toàn năng.
  Chúa Giê -- su Ki -- tô
  Chúa xóa tội trần gian
  Xin nhậm lời Chúng con cầu khẩn.
  Xin thương đoàn con.
  Chỉ có Chúa là Đấng Thánh,
  chỉ có Chúa là Chúa, chỉ có Chúa là Đấng Tối Cao
  A -- men.
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
  %page-count = 6
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\markup {
  \vspace #13
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = xuong {
          \TongNhip \nhacDiepKhucXuong
        }
        \new Lyrics \lyricsto xuong \loiDiepKhucXuong
    >>
  >>
  \layout {
    ragged-right = ##f
    indent = #10
  }
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Vinh Danh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacXuong = \relative c'' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  \autoBeamOff
  c8 c c d4 c8 d ([c]) a g4
  \override Score.BarLine.break-visibility = ##(#t #f #f)
  \bar "||"
}

nhacDiepKhucSop = \relative c'' {
  g8 g a b |
  c4. b8 |
  a4 c |
  d2 ~ |
  d4 r |
  R2*5
  r4 f8 (e) |
  d4 d8 d |
  e4 r8 a,16 (c) |
  g8 f e (g) |
  a4. g8 |
  d' d4 d8 |
  a4 (b) |
  c2 ~ |
  c4 g |
  c8 (b) a d |
  e4. c8 |
  d (c) a4 |
  g4. g8 |
  c (d) c b |
  c2 ~ |
  c4 \bar "||" \break
  
  c,8. e16 |
  d8 g a4 |
  e'16 (f) e8 d d |
  d4 r8 g, |
  c (b) a c |
  d2 ~ |
  d8 c d d |
  e4. e,8 |
  a4 c8 c |
  b2 \break
  
  d8 d b b |
  c2 ~ |
  c4 r |
  b8. b16 c8 b |
  a2 ~ |
  a4 r |
  R2
  e8. d16 d8 f |
  e4. c8 |
  \slashedGrace { c16 ( } d2) |
  R2
  r8 e' c d |
  f4 f8 e |
  d2 |
  d8. d16 e8 d |
  c2 ~ |
  c4 c,8. c16 |
  a' (c) a8 g g |
  g2 ~ |
  g4 r |
  r e16 (g) a8 |
  a4. g8 |
  c4 a16 (c) d8 |
  d4. (e16 d) |
  c4 f8 f |
  e2 |
  a,8 c d16 (c) a8 |
  g4 e'8 e |
  e4 f8 e |
  d2 |
  c4. (d16 c) |
  c2 ~ |
  c4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  g8 g f f |
  e4. g8 |
  f4 e8 (a) |
  b2 ~ |
  b4 r |
  R2
  r4 f8 (e) |
  d4 e16 (d) c8 |
  g'2 ~ |
  g4 r |
  r a8 (c) |
  b4 a8 a |
  gs4 r8 a16 (c) |
  g8 f e (g) |
  a4. g8 |
  a a4 g8 |
  fs4 (f!) |
  e2 ~ |
  e4 g |
  c8 (b) a af |
  g4. g8 |
  f (e) d (c) |
  b4. c8 |
  f4 e8 d |
  e2 ~ |
  e4
  
  c8. e16 |
  d8 g a4 |
  c16 (d) c8 b a |
  g4 r8 g |
  c (b) a c |
  d2 ~ |
  d8 e, g g |
  c4. c,8 |
  f4 a8 a |
  e2 |
  f8 f d d |
  e2 ~ |
  e4 r |
  e8. e16 e8 d |
  c2 ~ |
  c4 r |
  R2
  c8. b16 b8 d |
  c4. c8 |
  b2 |
  R2
  r8 g' e f |
  g4 d'8 c |
  a2 |
  <b g>8. <b g>16 <c g>8 <b f> |
  <g e>2 ~ |
  <g e>4 c,8. c16 |
  f (g) f8 d d |
  e2 ~ |
  e4 r |
  r c16 (e) f8 |
  f4. d8 |
  e4 a16 (c) d8 |
  d4. (e16 d) |
  c4 c8 a |
  g2 |
  a8 c d16 (c) a8 |
  g4 g8 g |
  c4 d8 c |
  b2 |
  <g e>4 (<a f>) |
  <g e>2 ~ |
  <g e>4
}

nhacDiepKhucBas = \relative c' {
  g8 e d d |
  c4. e8 |
  f4 a |
  g2 ~ |
  g4 r8 g |
  e d c4 |
  f2 ~ |
  f4 r |
  r r8 c' |
  b4 a8 a |
  d4 d, |
  g f8 f |
  e4 r8 a16 (c) |
  g8 f e (g) |
  a4. e8 |
  f f4 b,8 |
  <<
    {
      \voiceOne
      d4 (g)
      \stemDown g2 ~ |
      g4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d4 (g,) |
      c2 ~ |
      c4
    }
  >>
  \oneVoice
  r4 |
  r f |
  c8 d e4 ~ |
  e8 e f fs |
  g4. e8 |
  a (f) g g |
  c2 ~ |
  c4
  
  r4
  R2*9
  
  R2*2
  a8. a16 c8 a |
  gs8. gs16 e4 |
  f2 |
  a8 a f d |
  g2 ~ |
  g4 r8 b, |
  c8. e16 a8 a |
  g2 |
  r8 c e, a |
  c2 ~ |
  c4 r8 c, |
  f4 f8 fs |
  g4. g,8 |
  c2 ~ |
  c4 r |
  R2
  r4 c16 (d) e8 |
  e4 d8 g |
  g4 r |
  R2
  r4 b16 (c) d8 |
  d4. (g,8) |
  a4 a8 b |
  c2 |
  a8 c d16 (c) a8 |
  g4 c8 c |
  a4 f |
  g2 |
  c, |
  c ~ |
  c4
}

% Lời điệp khúc
loiXuong = \lyricmode {
  \override Lyrics.LyricText.font-series = #'bold
  Vinh danh Thiên Chúa trên các tầng trời
}

loiDiepKhucSop = \lyricmode {
  Và bình an dưới thế cho người thiện tâm.
  Chúng con tôn vinh Chúa,
  Chúng con cảm tạ Chúa vì vinh quang cao cả Chúa.
  Lạy Chúa là Thiên Chúa, là Vua trên trời,
  là Chúa Cha toàn năng.
  \set stanza = "Duo:"
  Lạy Con Một Thiên Chúa,
  Chúa Giê -- su Ki -- tô.
  Lạy Chúa là Thiên Chúa, là Chiên Thiên Chúa,
  là Con Đức Chúa Cha.
  Chúa xóa tội trần gian
  xin thương xót chúng con.
  xin nhậm lời chúng con cầu khẩn.
  Chúa ngự bên hữu Đức Chúa Cha
  xin thương xót chúng con.
  Vì, lạy Chúa Giê -- su Ki -- tô
  Chỉ có Chúa là Chúa,
  chỉ có Chúa là Đấng Tối Cao,
  cùng Đức Chúa Thánh Thần trong vinh quang Đức Chúa Cha.
  A -- men.
}

loiDiepKhucAlto = \lyricmode {
  Và bình an dưới thế cho người thiện tâm.
  Chúng con chúc tụng Chúa
  Chúng con tôn vinh Chúa,
  Chúng con cảm tạ Chúa vì vinh quang cao cả Chúa.
  Lạy Chúa là Thiên Chúa, là Vua trên trời,
  là Chúa Cha toàn năng.
  Lạy Con Một Thiên Chúa,
  Chúa Giê -- su Ki -- tô.
  Lạy Chúa là Thiên Chúa, là Chiên Thiên Chúa,
  là Con Đức Chúa Cha.
  Chúa xóa tội trần gian
  xin thương xót chúng con.
  xin nhậm lời chúng con cầu khẩn.
  Chúa ngự bên hữu Đức Chúa Cha
  xin thương xót chúng con.
  Vì, lạy Chúa Giê -- su Ki -- tô
  Chỉ có Chúa là Chúa,
  chỉ có Chúa là Đấng Tối Cao,
  cùng Đức Chúa Thánh Thần trong vinh quang Đức Chúa Cha.
  A -- men.
}

loiDiepKhucBas = \lyricmode {
  Và bình an dưới trần cho người chính tâm.
  Chúng con ca ngợi Chúa.
  Chúng con thờ lạy Chúa,
  đoàn con tôn vinh Ngài,
  Chúng con cảm tạ Chúa vì vinh quang cao cả Chúa.
  Chúa là Thiên Chúa là Vua trên trời
  là Chúa Cha toàn năng.
  Xin thương xót chúng con, thương đoàn con.
  Chúa xóa tội trần gian nhậm lời đoàn con cầu khẩn.
  Chúa ngự bên hữu cùng Cha,
  xin thương xót đoàn con,
  Chỉ có Chúa là Đấng Thánh.
  chỉ có Chúa là Đấng Tối Cao,
  cùng Đức Chúa Thánh Thần trong vinh quang của Cha.
  A -- men.
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
  print-page-number = ##f
  page-count = 5
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
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacXuong
        }
        \new Lyrics \lyricsto beSop \loiXuong
    >>
  >>
  \layout {
    indent = #10
    ragged-right = ##f
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver" } <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
        \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff \with {
      \remove "Time_signature_engraver" } <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
        \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff \with {
      \remove "Time_signature_engraver" } <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    indent = #0
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

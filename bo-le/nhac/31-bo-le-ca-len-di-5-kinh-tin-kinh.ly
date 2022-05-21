% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Tin Kính"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucXuong = \relative c'' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  g8 g a ([g]) c, d e4
  \override Score.BarLine.break-visibility = ##(#t #t #t)
  \bar "||"
}

nhacDiepKhucChuTe = \relative c' {
  R2*6
  r4 e8 e |
  f4 (d8) d |
  a' g g g |
  g2 |
  a8 g a (b) |
  c4 r8 c |
  a (c) d e |
  d c e d16 (c) |
  g2 ~ |
  g4 r |
  R2*11
  r4 c |
  c c8 d |
  a a c16 (d c a) |
  g2 ~ |
  g4 r |
  R2*2
  r4 g |
  c4. b8 |
  a4. e'8 |
  e2 ~ |
  e4 r |
  R2*18
  a,8 ([c b]) a |
  e4 b8 d |
  e2 ~ |
  e4 r |
  R2*5
  g4 a8 (c16 a) |
  g8 a c (d) |
  \slashedGrace { d16 ( } e8) e e (d16 c) |
  d2 ~ |
  d4 r |
  R2*9
  r4 d16 (e d c) |
  a4 d8 c |
  a16 (c a g) e8 (d) |
  e2 ~ |
  e4 r |
  R2*12
  r4 r8 g |
  g8. ([c16 a8]) g |
  d d f (g) |
  g4. g8 |
  d'4 d8 c |
  a8. f16 a8 c |
  g4 f8 a |
  d,4 g8 e |
  e d g (e16 d) |
  c2 ~ |
  c4 r |
  R2*11
  r4 d'8 d |
  c c d16 ([d]) d ([c]) |
  g4 d8 f |
  a8. ([c16 a8]) f |
  g4 \fermata d' ( _~ |
  d8 e d4) |
  c2 ~ |
  c4 r \bar "|."
}

nhacDiepKhucSop = \relative c' {
  c8 (d) e d |
  g4. a8 |
  f d e (g) |
  a2 |
  a8 g a16 (c a g) |
  d8 d e16 (g e d) |
  c2 ~ |
  c4 r |
  R2*7
  r8 c c d |
  e d e4 |
  g r8 a |
  a g a4 |
  c c8 d |
  a a c d16 (c) |
  g2 ~ |
  g4 d8 f |
  g2 ~ |
  g ~ |
  g4 c,8 c |
  \slashedGrace { c16 ( } d8) e e16 (g) e8 |
  d4 r |
  R2*2
  r4 c8 c |
  c4 e8 (f) |
  d4 d8 f |
  a f a(c) |
  g4 g |
  c4. b8 |
  a4. e'8 |
  e2 ~ |
  e4 r |
  r a,8 (b) |
  c c c16 (b) a8 |
  e4 c8 (d) |
  f16 (e) d8 \slashedGrace { d16 ( } e4) ~ |
  e8 a \slashedGrace { f16 ( } e8) a |
  c4 b8 b |
  b2 |
  g8 a e (d) |
  e2 ~ |
  e4 e8 e |
  c'2 |
  b4 a8 a |
  e'2 |
  d8 (e) f4 |
  e2 |
  b8 d d d |
  d4 c8 b |
  a2 ~ |
  a4 r |
  R2
  r4 r8 g |
  e'2 |
  d4 r8 a |
  d ([c b a]) |
  g4. a8 |
  g4 d' |
  c2 ~ |
  c4 r |
  R2*6
  c8 c d16 (e) e,8 |
  g4 f8. a16 |
  g8 g g4 ~ |
  g e8 g |
  a4 g8 (a) |
  c b c (d) |
  e2 ~ |
  e4 r |
  R2*3
  c8 b a a |
  g2 ~ |
  g4 r |
  R2*4
  r4 g8 g |
  e'4. f8 |
  d4 g, |
  d'4. e8 |
  c4 b |
  c2 ~ |
  c4 r |
  R2*9
  r4 g |
  g e8 (g) |
  c4. d8 |
  e4 d16 (e d c) |
  g4. g8 |
  a d, e16 (g e d) |
  c2 ~ |
  c4 c'8 c |
  c4 d8 (c) |
  g4 a8 (g) |
  e e a (c16 a) |
  g2 ~ |
  g4 r |
  R2*4
  a8 (c a4) |
  g2 ~ |
  g4 r
}

nhacDiepKhucAlto = \relative c' {
  c8 (d) e d |
  g4. a8 |
  f d e (g) |
  a2 |
  a8 g a16 (c a g) |
  d8 d e16 (g e d) |
  c2 ~ |
  c4 r |
  R2*7
  r8 c c d |
  e d e4 |
  g r8 a |
  a g a4 |
  g4 c8 d |
  a a a f |
  d2 ~ |
  d4 d8 f |
  g2 ~ |
  g ~ |
  g4 c,8 c |
  \slashedGrace { c16 ( } d8) e e16 (g) e8 |
  d4 r |
  R2*2
  r4 c8 c |
  c4 e8 (f) |
  d4 d8 f |
  a f a(c) |
  g4 g |
  c4. b8 |
  a4. a8 |
  gs2 ~ |
  gs4 r |
  R2*9
  r4 e8 e |
  a2 |
  gs4 a8 a |
  a4 (gs) |
  a4 a |
  gs2 ~ |
  gs4 r |
  r a8 gs |
  e2 ~ |
  e4 r |
  R2
  r4 r8 g |
  g2 |
  g4 r8 g |
  g4. (fs8) |
  g4. f8 |
  e4 f |
  e2 ~ |
  e4 r |
  R2*5
  g8 g a16 (c) c,8 |
  e2 ~ |
  e4 f8. a16 |
  g8 g g4 ~ |
  g e8 g |
  a4 g8 (e) |
  a a a4 |
  gs2 ~ |
  gs4 r |
  R2*3
  g8 g g f |
  d2 ~ |
  d4 r |
  R2*4
  r4 g8 g |
  g4. g8 |
  g4 g |
  a4. a8 |
  g4 g8 (f) |
  e2 ~ |
  e4 r |
  R2*9
  r4 g |
  g e8 (g) |
  c4. d8 |
  e4 d16 (e d c) |
  g4. g8 |
  a d, e16 (g e d) |
  c2 ~ |
  c4 e8 e |
  f4 f |
  e d |
  c8 c f4 |
  d2 ~ |
  d4 r |
  R2*4
  f8 (g f4) |
  e2 ~ |
  e4 r
}

nhacDiepKhucTenor = \relative c {
  c8 (d) e d |
  g4. a8 |
  f d e (g) |
  a2 |
  a8 g a16 (c a g) |
  d8 d e16 (g e d) |
  a2 ~ |
  a4 r |
  R2*7
  r8 c c d |
  e d g4 |
  g r8 a |
  a g c4 |
  c c8 c |
  a a c c |
  b2 ~ |
  b4 r |
  r r8 e, |
  g f d16 ([g]) e ([d]) |
  c4 c8 c |
  \slashedGrace { c16 ( } d8) e e16 (g) e8 |
  d4 r |
  R2*2
  r4 c8 c |
  c4 e8 (f) |
  d4 d8 f |
  a f a (c) |
  g4 g |
  c4. b8 |
  a4. a8 |
  b2 ~ |
  b4 r |
  R2*9
  r4 e,8 e |
  e'2 |
  e4 c8 c |
  c4 (b) |
  a8 (c) d4 |
  b2 ~ |
  b4 r |
  r e8 d |
  c2 ~ |
  c4 r |
  R2
  r4 r8 g |
  c2 |
  b4 r8 c |
  b4. (c8) |
  b4. a8 |
  c4 b |
  c2 ~ |
  c4 r |
  R2*4
  c8 c d16 (e) e,8 |
  g2 ~ |
  g4 g8 (a) |
  c4 f,8. a16 |
  g8 g g4 ~ |
  g e8 g |
  a4 g8 (c) |
  a a a4 |
  b2 ~ |
  b4 r |
  R2*3
  e8 d c c |
  b2 ~ |
  b4 e,8 e |
  f f f16 (e) d8 |
  c4 c8 d |
  e4 d8 d |
  a' g e (g) |
  c4 g8 g |
  c4. c8 |
  b4 c |
  c4. c8 |
  e4 d |
  c2 ~ |
  c4 r |
  R2*9
  r4 g4 |
  g e8 (g) |
  c4. d8 |
  e4 d16 (e d c) |
  g4. g8 |
  a d, e16 (g e d) |
  c2 ~ |
  c4 g'8 g |
  a4 a 
  c b |
  c8 c c4 |
  b2 ~ |
  b4 r |
  R2*4
  c4 (c8 b) |
  c2 ~ |
  c4 r
}

nhacDiepKhucBas = \relative c {
  c8 (d) e d |
  g4. a8 |
  f d e (g) |
  a2 |
  a8 g a16 (c a g) |
  d8 d e16 (g e d) |
  a2 ~ |
  a4 r |
  R2*7
  r8 c c d |
  e d c4 |
  b4 r8 a' |
  a g f4 |
  e c'8 d |
  a a f f |
  g2 ~ |
  g4 r |
  r4 r8 e |
  g f d16 ([g]) e ([d]) |
  c4 c8 c |
  \slashedGrace { c16 ( } d8) e e16 (g) e8 |
  d4 r |
  R2*2
  r4 c8 c |
  c4 e8 (f) |
  d4 d8 f |
  a f a (c) |
  g4 g |
  c4. b8 |
  a4. f8 |
  e2 ~ |
  e4 r |
  R2*9
  r4 e8 e |
  a2 |
  e4 f8 f |
  e2 |
  f8 (e) d4 |
  e2 ~ |
  e4 r |
  r e8 e |
  a2 ~ |
  a4 r |
  R2
  r4 r8 g |
  c, ([d e f]) |
  g4 r8 e |
  d2 |
  g4. d8 |
  g4 g |
  c,2 ~ |
  c4 r |
  R2*3
  g'8 g a16 (c) c,8 |
  e2 ~ |
  e4 e8 (d) |
  c2 ~ |
  c4 f8. a16 |
  g8 g g4 ~ |
  g e8 g |
  a4 g |
  f8 f f4 |
  e2 ~ |
  e4 r |
  R2*3
  c8 d e f |
  g2 ~ |
  g4 e8 e |
  f f f16 (e) d8 |
  c4 c8 d |
  e4 d8 d |
  a' g e (g) |
  c4 g8 g |
  c4. c8 |
  g (f) e4 |
  f4. f8 |
  g4 g |
  c2 ~ |
  c4 r |
  R2*9
  r4 g4 |
  g e8 (g) |
  c4. d8 |
  e4 d16 (e d c) |
  g4. g8 |
  a d, e16 (g e d) |
  c2 ~ |
  c4 c8 c |
  f4 f |
  g g |
  a8 a d,4 |
  g2 ~ |
  g4 r |
  R2*4
  f8 ([e f g]) |
  c,2 ~ |
  c4 r
}

% Lời điệp khúc
loiDiepKhucXuong = \lyricmode {
  \override Lyrics.LyricText.font-series = #'bold
  Tôi tin kính một Thiên Chúa
}

loiDiepKhucChuTe = \lyricmode {
  Tôi tin kính một Chúa Giê -- su Ki -- tô,
  Con Một Thiên Chúa, sinh bởi Đức Chúa Cha từ trước muôn đời.
  Nhờ Người mà muôn vật được tạo thành.
  Người đã từ trời xuống thế
  Chịu tử hình và mai táng
  Người lên trời ngự bên hữu Đức Chúa Cha.
  Nước Người sẽ không bao giờ cùng.
  Người "được (i - a)" phụng thờ và tôn vinh
  cùng với Đức Chúa Cha và Đức Chúa Con,
  Người đã dùng các tiên tri mà phán dạy.
  Tôi trông đợi kẻ chết sống lại
  và sự "sống (i - a)" đời sau.
  A -- men.
}

loiDiepKhucSop = \lyricmode {
  Là Cha toàn năng,
  Đấng tạo thành trời đất muôn vật hữu hình và vô hình
  Người là Thiên Chúa bởi Thiên Chúa,
  Ánh sáng bởi Ánh sáng,
  Thiên Chúa thật bởi Thiên Chúa thật
  được sinh ra, đồng bản thể với Đức Chúa Cha
  Vì loài người chúng ta, và để cứu độ chúng ta,
  Người đã từ trời xuống thế.
  \set stanza = "Solo:"
  Bởi phép Đức Chúa Thánh Thần,
  Người đã nhập thể trong lòng Trinh Nữ Ma -- ri -- a
  và đã làm người.
  Người chịu đóng đinh vào thập giá vì chúng ta
  thời quan Phong -- xi -- ô Phi -- la -- tô.
  Ngày thứ ba, Người sống lại như lời Thánh Kinh.
  Và Người sẽ lại đến, lại đến trong vinh quang
  để phán xét kẻ sống và kẻ chết
  Sẽ không bao giờ cùng
  Người bởi Đức Chúa Cha và Đức Chúa Con mà ra.
  Tôi tin Hội Thánh duy nhất, thánh thiện,
  công giáo và tông truyền.
  Tôi tuyên xưng có một Phép Rửa để tha tội.
  A -- men.
}

loiDiepKhucAlto = \lyricmode {
  Là Cha toàn năng,
  Đấng tạo thành trời đất muôn vật hữu hình và vô hình
  Người là Thiên Chúa bởi Thiên Chúa,
  Ánh sáng bởi Ánh sáng,
  Thiên Chúa thật bởi Thiên Chúa thật
  được sinh ra, đồng bản thể với Đức Chúa Cha
  Vì loài người chúng ta, và để cứu độ chúng ta,
  Người đã từ trời xuống thế.
  
  Người chịu đóng đinh vào thập giá vì chúng ta
  Phi -- la -- tô.
  Ngày thứ ba, Người sống lại như lời Thánh Kinh.
  Và Người sẽ lại đến, lại đến trong vinh quang
  để phán xét kẻ sống và kẻ chết
  Sẽ không bao giờ cùng
  Người bởi Đức Chúa Cha và Đức Chúa Con mà ra.
  Tôi tin Hội Thánh duy nhất, thánh thiện,
  công giáo và tông truyền.
  Tôi tuyên xưng có một Phép Rửa để tha tội.
  A -- men.
}

loiDiepKhucTenor = \lyricmode {
  Là Cha toàn năng,
  Đấng tạo thành trời đất muôn vật hữu hình và vô hình
  Người là Thiên Chúa bởi Thiên Chúa,
  Ánh sáng bởi Ánh sáng,
  Thiên Chúa thật bởi Thiên Chúa thật
  mà không phải được tạo thành,
  đồng bản thể với Đức Chúa Cha.
  Vì loài người chúng ta, và để cứu độ chúng ta,
  Người đã từ trời xuống thế.
  Người chịu đóng đinh vào thập giá vì chúng ta
  Phi -- la -- tô.
  Ngày thứ ba, Người sống lại như lời Thánh Kinh.
  Và Người sẽ lại đến,
  lại đến, lại đến trong vinh quang
  để phán xét kẻ sống và kẻ chết
  Sẽ không bao giờ cùng.
  Tôi tin kính Đức Chúa Thánh Thần là Thiên Chúa
  và là Đấng ban sự sống,
  Người bởi Đức Chúa Cha và Đức Chúa Con mà ra.
  Tôi tin Hội Thánh duy nhất, thánh thiện,
  công giáo và tông truyền.
  Tôi tuyên xưng có một Phép Rửa để tha tội.
  A -- men.
}

loiDiepKhucBas = \lyricmode {
  Là Cha toàn năng,
  Đấng tạo thành trời đất muôn vật hữu hình và vô hình
  Người là Thiên Chúa bởi Thiên Chúa,
  Ánh sáng bởi Ánh sáng,
  Thiên Chúa thật bởi Thiên Chúa thật
  mà không phải được tạo thành,
  đồng bản thể với Đức Chúa Cha.
  Vì loài người chúng ta, và để cứu độ chúng ta,
  Người đã từ trời xuống thế.
  Người chịu đóng đinh vào thập giá vì chúng ta
  Phi -- la -- tô.
  Ngày thứ ba, Người sống lại như lời Thánh Kinh.
  Và Người sẽ lại đến,
  đến lại lại đến trong vinh quang
  để phán xét kẻ sống và kẻ chết
  Sẽ không bao giờ cùng.
  Tôi tin kính Đức Chúa Thánh Thần là Thiên Chúa
  và là Đấng ban sự sống,
  Người bởi Đức Chúa Cha và Đức Chúa Con mà ra.
  Tôi tin Hội Thánh duy nhất, thánh thiện,
  công giáo và tông truyền.
  Tôi tuyên xưng có một Phép Rửa để tha tội.
  A -- men.
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
  %page-count = 14
}


%A4
%{
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
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
    \override Staff.TimeSignature.transparent = ##t
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

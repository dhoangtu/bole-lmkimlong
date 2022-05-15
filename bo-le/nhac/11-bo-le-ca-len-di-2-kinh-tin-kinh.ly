% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Tin Kính"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  a8 a c (a) f g a4 \bar "||" \break
  \override Score.BarLine.break-visibility = ##(#t #t #t)
  
  \partial 4 c,4 |
  a'4. g8 |
  a4 c8 a |
  f4 f8 (g) |
  a4. g8 |
  f4 a |
  d,8 d e (d) |
  c2 ~ |
  c4 a'8 a |
  bf4. g8 |
  c bf a a |
  a4 g |
  f4. g8 |
  a4 r8 c |
  a (c) d f |
  c2 |
  g8 c a (g) |
  f2 ~ |
  f8 e f g |
  a4 g16 (a) b!8 |
  c4 r8 d |
  d4 c16 (d) e8 |
  f4 d8 f |
  c4. bf8 |
  g4 c |
  f,2 ~ |
  f4 f8 bf |
  bf4. g8 |
  d' bf g e |
  f4 c8 c16 (d) |
  \slashedGrace { d16 ( } f8.) bf16 bf8 a |
  g4 r8 f |
  f4 f8 g |
  d (e) d d |
  c2 ~ |
  c4 c8 c |
  c4 a'8 (bf16 a) |
  g4. f8 |
  bf d d d |
  c4. a8 |
  bf4 a8 (g) |
  f4 g |
  a2 ~ |
  a4 d,8 (f) |
  a bf a g |
  f4. d8 |
  f e \slashedGrace { e16 ( } g4) ~ |
  g8 g f a |
  bf4 a8 g |
  g4. f8 |
  g (a) f (e) |
  d2 |
  r8 d d bf' |
  a4 a8 a |
  f' (e) cs e |
  d4. g,8 |
  a4 a8 a |
  a (bf) a a |
  g4 r8 e |
  f d f g |
  a2 \bar "||"
  
  \key c \major
  r8 g e' (f) |
  d4 bf16 (c) d8 |
  g,4. f8 |
  e4 a |
  g4 r8 g |
  d'4 (e8 d) |
  c4 c8 e |
  f4 f8 e |
  d4 r8 g, |
  g4 a16 (b) g8 |
  c4 b8 b |
  b4 b16 (c) d8 |
  d4. c16 (d) |
  e8 g, a (b) |
  c4 r8 e |
  a,2 |
  d8. c16 a8 g |
  g2 ~ |
  g4 a8 a \bar "||"
  
  \key f \major
  bf4. bf8 |
  bf (a) g (a) |
  f4 f8 g |
  a4. f8 |
  f bf a g |
  c4 a8 bf |
  d d c4 ~ |
  c8 f, bf bf |
  a4. f8 |
  g2 |
  r8 e e f |
  d4 e8 f |
  g4 f8 bf |
  bf bf a4 ~ |
  a8 e g g |
  f2 ~ |
  f4 e8 a |
  d, (f) bf g |
  g d g (e16 d) |
  c2 ~ |
  c4 r8 a' |
  a4 g |
  c r8 c |
  d4 r8 d |
  g,4 r8 a |
  bf (a) f g |
  c,2 ~ |
  c4 f8 f |
  f2 ~ |
  f8 g c, a' |
  g (c) bf g |
  f4 c'8 c |
  a4 bf |
  d4. f8 |
  c4 g8 g |
  bf4 (a8) f |
  g2 |
  g4 (a8 g) |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  r8*8
  
  c4 |
  f4. e8 |
  f4 e8 f |
  d4 d8 (c) |
  f4. e8 |
  d4 c |
  b!8 b b4 |
  c2 ~ |
  c4 f8 f |
  d4. e8 |
  a g f f |
  f4 e |
  d4. c8 |
  f4 r8 c' |
  a (c) d f |
  c2 |
  g8 c a (g) |
  f2 ~ |
  f8 c a c |
  f4 d8 [d] |
  e4 r8 bf' |
  bf4 a8 [g] |
  a4 bf8 bf |
  a4. g8 |
  f4 e |
  f2 ~ |
  f4 f8 bf |
  bf4. g8 |
  d' bf g e |
  f4 c8 c16 (d) |
  \slashedGrace { d16 ( } f8.) bf16 bf8 a |
  g4 r8 f |
  f4 f8 g |
  d (e) d d |
  c2 ~ |
  c4 c8 c |
  c4 f8 (g16 f) |
  e4. d8 |
  g bf bf bf |
  a4. f8 |
  d4 c8 (bf) |
  a4 c |
  f2 ~ |
  f4 d8 (f) |
  a bf a g |
  f4. d8 |
  f e \slashedGrace { e16 ( } g4) ~ |
  g8 g f a |
  bf4 a8 g |
  g4. f8 |
  g (a) f (e) |
  d2 |
  r8 d d g |
  f4 f8 f |
  a4 a8 g |
  f4. e8 |
  f4 f8 f |
  f (g) f8 f |
  c4 r8 e |
  f d f g |
  a2 |
  
  \key c \major
  r8 g c (d) |
  b4 g16 (a) f8 |
  e4. d8 |
  c4 f |
  e r8 e |
  f4 (d8 g) |
  a4 a8 c |
  a4 a8 c |
  g4 r8 g |
  g4 a16 (b) g8 |
  c4 b8 b |
  b4 b16 (c) d8 |
  d4. c16 (d) |
  e8 g, a (b) |
  c4 r8 e |
  a,2 |
  d8. c16 a8 g |
  g2 ~ |
  g4 f8 f |
  
  \key f \major
  g4. g8 |
  g (f) e (f) |
  d4 d8 c |
  f4. d8 |
  d g f f |
  e4 a8 bf |
  d d c4 ~ |
  c8 f, bf bf |
  a4. f8 |
  g2 |
  r8 e e f |
  d4 e8 f |
  g4 f8 bf |
  bf bf a4 ~ |
  a8 e g g |
  f2 ~ |
  f4 e8 a |
  d, (f) bf g |
  g d g (e16 d) |
  c2 ~ |
  c4 r8 f |
  f4 f |
  e r8 a |
  bf4 r8 f |
  e4 r8 f |
  g (f) d b! |
  c2 ~ |
  c4 f8 f |
  f2 ~ |
  f8 g c, a' |
  g (c) bf g |
  f4 a8 a |
  f4 g |
  bf4. bf8 |
  a4 e8 e |
  d4 (f8) d |
  c2 |
  bf4. ( c8) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \override Lyrics.LyricText.font-series = #'bold
  Tôi tin kính một Thiên Chúa
  \revert Lyrics.LyricText.font-series
  Là Cha toàn năng, Đấng tạo thành trời đất
  muôn vật hữu hình và vô hình.
  Tôi tin kính một Chúa Giê -- su Ki -- tô,
  Con Một Thiên Chúa,
  sinh bởi Đức Chúa Cha từ trước muôn đời.
  Người là Thiên Chúa bởi Thiên Chúa,
  Ánh Sáng bởi Ánh Sáng, Thiên Chúa thật bởi Thiên Chúa thật.
  Được sinh ra mà không phải được tạo thành,
  đồng bản thể với Đức Chúa Cha,
  nhờ Người mà muôn vật được tạo thành.
  Vì loài người chúng ta, và để cứu rỗi chúng ta,
  Người đã từ trời xuống thế.
  Bởi phép Đức Chúa Thánh Thần,
  Người đã nhập thể trong lòng Trinh Nữ Ma -- ri -- a,
  và đã làm người.
  Người chịu đóng đinh vào thập giá vì chúng ta
  thời quan Phong -- xi -- ô Phi -- la -- tô,
  Chịu khổ hình và mai táng.
  Ngày thứ ba, người sống lại như lời Thánh Kinh,
  Người lên trời ngự bên hữu Đức Chúa Cha.
  Và Người sẽ lại đến trong vinh quang
  để phán xét kẻ sống và kẻ chết,
  Nước Người sẽ không bao giờ cùng.
  Tôi tin kính Đức Chúa Thánh Thần là Thiên Chúa
  và là Đấng ban sự sống.
  Người bởi Đức Chúa Cha và Đức Chúa Con mà ra.
  Người được phụng thờ và tôn vinh
  cùng với Đức Chúa Cha và Đức Chúa Con.
  Người đã dùng các tiên tri mà phán dạy.
  Tôi tin Hội Thánh duy nhất, thánh thiện,
  công giáo và tông truyền.
  Tôi tuyên xưng có một Phép Rửa để tha tội.
  Tôi trông đợi kẻ chết sống lại
  và sự sống đời sau.
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
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

% Đổi kích thước nốt cho bè phụ
notBePhu =
#(define-music-function (font-size music) (number? ly:music?)
   (for-some-music
     (lambda (m)
       (if (music-is-of-type? m 'rhythmic-event)
           (begin
             (set! (ly:music-property m 'tweaks)
                   (cons `(font-size . ,font-size)
                         (ly:music-property m 'tweaks)))
             #t)
           #f))
     music)
   music)

\score {
  \new ChoirStaff <<
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -1 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    indent = #10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

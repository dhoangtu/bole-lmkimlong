% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Tin Kính Các Thánh Tông Đồ"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \key f \major
  \time 23/4
  \partial 4 a8 a |
  \time 2/4
  \override Staff.TimeSignature.break-visibility = #all-invisible
  bf8. (g16) c8 c |
  f,4 r8 \bar "||"
  e8 |
  f g g d |
  
  \time 3/4
  c4 c8 [g'] f (g) |
  
  \time 2/4
  a2 ~ |
  a4 a8 a |
  
  \time 3/4
  bf8. bf16 bf8 [a] g g |
  
  \time 2/4
  g4. f8 |
  c' b! d d |
  
  \time 3/4
  c4 g8 [g] bf bf |
  
  \time 2/4
  a2 ~ |
  
  a4 e8 (f) |
  g g g g |
  \time 3/4
  c,4 c8 [c] a' (g) |
  \time 2/4
  f4. f8 |
  e16 (f) d8 g g |
  g4. f8 |
  g4 r8 e |
  \time 3/4
  e4 d8 [g] g g |
  \time 2/4
  g4 g8 g |
  f4 r8 f |
  bf a g d' |
  \time 3/4
  d4. d8 g, [bf] |
  bf4. bf8 d, [g] |
  \time 2/4
  f4 f8 [a16 (bf)] |
  g8. a16 g8 f |
  bf4 g8 c |
  f,4 r8 a |
  g4 g8 bf |
  d d d4 |
  c8. d16 bf8 c |
  a2 ~ |
  a8 a c bf16 (c) |
  g4. f8 |
  bf bf bf g |
  c4 f,8 f16 (g) |
  a2 ~ |
  a4 a8 a |
  bf8. bf16 bf8 bf |
  g2 |
  g8 g a f |
  bf4. g8 |
  c e,16 (f) g8 g |
  \time 3/4
  c,4. a'8 a16 (bf) a8 |
  \time 2/4
  g2 |
  g8 g a g16 (f) |
  d2 |
  f8 f g d |
  c8. c16 a'8 bf |
  g2 |
  f8 f d g16 (f) |
  c2 |
  g'4 (a8 g) |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \key f \major
  \time 23/4
  \partial 4 a8 a |
  \time 2/4
  \override Staff.TimeSignature.break-visibility = #all-invisible
  bf8. (g16) c8 c |
  f,4 r8 \bar "||"
  e8 |
  f g g d |
  
  \time 3/4
  c4 c8 [g'] f (g) |
  
  \time 2/4
  a2 ~ |
  a4 f8 f |
  
  \time 3/4
  g8. g16 g8 f e d |
  
  \time 2/4
  c4. d8 |
  e d f f |
  
  \time 3/4
  e4 e8 [e] g g |
  
  \time 2/4
  f2 ~ |
  
  f4 e8 (f) |
  g g g g |
  \time 3/4
  c,4 c8 [c] a' (g) |
  \time 2/4
  f4. f8 |
  e16 (f) d8 g g |
  g4. f8 |
  g4 r8 e |
  \time 3/4
  e4 d8 [g] g g |
  \time 2/4
  g4 g8 g |
  f4 r8 f |
  bf a g d' |
  \time 3/4
  d4. d8 g, [bf] |
  bf4. bf8 d, [g] |
  \time 2/4
  f4 f8 f |
  e8. f16 e8 ef |
  d4 e8 e |
  f4 r8 f |
  e4 e8 g |
  bf bf bf4 |
  a8. bf16 bf8 a |
  f2 ~ |
  f8 a c bf16 (c) |
  g4. f8 |
  bf bf bf g |
  c4 f,8 f16 (g) |
  a2 ~ |
  a4 f8 f |
  g8. g16 g8 g |
  e2 |
  g8 g a f |
  bf4. g8 |
  c e,16 (f) g8 g |
  \time 3/4
  c,4. f8 f16 (g) f8 |
  \time 2/4
  e2 |
  g8 g a g16 (f) |
  d2 |
  f8 f g d |
  c8. c16 f8 g |
  e2 |
  d8 d b! [b] |
  c2 |
  bf4 (c) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Tôi tin kính Đức Chúa Trời
  Là Cha phép tắc vô cùng dựng nên trời đất.
  Tôi tin kính Đức Chúa Giê -- su Ki -- tô
  là Con Một Đức Chúa Cha cùng là Chúa chúng tôi.
  Bởi phép Đức Chúa Thánh Thần mà Người xuống thai,
  sinh bởi bà Ma -- ri -- a đồng trinh,
  Chịu nạn thời quan Phong -- xi -- ô Phi -- la -- tô,
  Chịu đóng định vào Thánh giá, chết và táng xác,
  xuống ngục tổ tông.
  Ngày thứ ba bởi trong kẻ chết mà sống lại,
  Lên trời ngự bên hữu Đức Chúa Cha phép tắc vô cùng.
  Ngày sau bởi trời lại xuống phán xét kẻ sống và kẻ chết.
  Tôi tin kính Đức Chúa Thánh Thần.
  Tôi tin có Hội Thánh hằng có ở khắp thế này,
  các thánh thông công.
  Tôi tin phép tha tội.
  Tôi tin xác loài người ngày sau sống lại.
  Tôi tin hằng sống vậy.
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
}

TongNhip = {
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
    \override Lyrics.LyricSpace.minimum-distance = #1.8
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

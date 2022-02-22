% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tin Kính Các Thánh Tông Đồ" }
  composer = "Lm. Kim Long"
  %arranger = " "
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
  
  
}

nhacPhienKhucAlto = \relative c' {
  
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
  Tin tin hằng sống vậy.
  A -- men.
}

% Dàn trang
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
        \consists "Merge_rests_engraver"
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
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.85
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subsubtitle = \markup { \huge \bold "Kinh Thương Xót" }
  subtitle = \markup {
    \column {
      \left-align {
        \line {
          \normal-text \small "Bộ lễ CA LÊN ĐI 2 được viết khi Kinh Thương Xót còn đọc 3 lần,"
        }
        \line {
          \normal-text \small "nên khi Hội Thánh cho đọc 2 lần, nhiều nơi đã cắt bớt theo cách"
        }
        \line {
          \normal-text \small "dưới đây. Nếu muốn cũng có thể sử dụng:"
        }
        \null \null
      }
    }
  }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4 a4 |
  c4. a8 |
  bf4 a |
  g2 |
  c4. d8 |
  c4 b! |
  e4. f8 |
  e4 d8 d |
  e4 d |
  c2 ~ |
  c4 r |
  a (e) |
  c'4. b!8 |
  a2 |
  c4 (b!) |
  e4. d8 |
  c4 r8 c |
  d4 c |
  b!2 |
  e4. f8 |
  e4 d |
  d4. e8 |
  d4 c ~ |
  c bf4 |
  c bf |
  a c d4. c8 |
  d4 f |
  d a8 a |
  bf4 a |
  g d'8 d |
  e4 g |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  f4 |
  a4. f8 |
  g4 f |
  c2 |
  a'4. bf8 |
  a4 g |
  c4. d8 |
  c4 b!8 b |
  c4 g8 (f) |
  e2 ~ |
  e4 r |
  a4 (e) |
  c'4. b!8 |
  a2 |
  a4 (e) |
  c'4. b!8 |
  a4 r8 a |
  bf4 a |
  e2 |
  c'4. d8 |
  c4 b! |
  b!4. c8 |
  b!4 a ~ |
  a e |
  a gs |
  a c |
  d4. c8 |
  d4 f |
  d f,8 f |
  g4 f |
  e f8 g |
  c4 c8 (bf) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Xin Chúa thương xót chúng con.
  Xin Chúa thương
  \markup { \italic "(nguyện)" }
  xin Chúa thương, xin thương xót chúng con,
  Xin Chúa Ki -- tô, Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa Ki -- tô, Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin thương xót chúng con.
  Xin thương xót chúng con.
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
    \override Lyrics.LyricSpace.minimum-distance = #1.8
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

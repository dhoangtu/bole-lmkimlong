% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = "Lạy Chiên Thiên Chúa"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4 a8 (bf) |
  c4. c8 |
  d4 d8 d |
  bf4 g |
  c2 |
  a4. a8 |
  bf4 a |
  g2 ~ |
  g4 d8 (e) |
  f4. g8 |
  a4 a8 a |
  f4 e |
  a4 \tuplet 3/2 { a8 (gs) a } |
  c4 \tuplet 3/2 { c8 (b!) c } |
  d8. e16 d4 ( |
  c) a8 (bf) |
  c4. c8 |
  d4 d8 d |
  bf4 g |
  c2 |
  d4 d8 c |
  d2 |
  e4 g |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  f8 (g) |
  a4. a8 |
  bf4 bf8 a |
  g4 f |
  e2 |
  f4. f8 |
  g4 f |
  c2 ~ |
  c4 d8 (e) |
  f4. g8 |
  a4 a8 a |
  f4 e |
  a4 \tuplet 3/2 { a8 (gs) a } |
  c4 \tuplet 3/2 { c8 (b!) c } |
  d8. e16 d4 ( |
  c) f,8 (g) |
  a4. a8 |
  bf4 bf8 a |
  g4 f |
  e2 |
  f4 g8 a |
  bf2 |
  c4 c8 ^(bf) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  Xin thương xót chúng con,
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  Xin thương xót, xin thương xót chúng con.
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  Xin ban bình an cho chúng con.
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

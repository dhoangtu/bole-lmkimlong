% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup \fill-line {
    \center-column {
      \box \pad-markup #2 "Bộ Lễ CA LÊN ĐI 2"
      \null \null
    }
  }
  subtitle = \markup { \huge \bold "Kinh Thương Xót" }
  composer = "Lm. Kim Long"
  %arranger = " "
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
  c4 ^(b!) |
  e4. d8 |
  c4 r8 c |
  d4 c |
  b!2 ~ |
  b!4 \tuplet 3/2 { a8 (gs a) } |
  c8. b!16 a4 ~ |
  a \tuplet 3/2 { c8 (b! c) } |
  d8. e16 d4 ( |
  c) a |
  c4. a8 |
  bf4 a |
  g2 |
  f4. g8 |
  f4 e |
  a4. bf8 |
  a4 g8 g |
  a4 g |
  f d'8 d |
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
  a (e) |
  c'4. b!8 |
  a2 |
  a4 _(e) |
  c'4. b!8 |
  a4 r8 a |
  b!4 a |
  e2 ~ |
  e4 \tuplet 3/2 { a8 (gs a) } |
  c8. b!16 a4 ~ |
  a \tuplet 3/2 { c8 (b! c) } |
  d8. e16 d4 ( |
  c) f, |
  a4. f8 |
  g4 f |
  c2 |
  d4. e8 |
  d4 c |
  f4. g8 |
  f4 c8 c |
  f4 e |
  d f8 g |
  c4 c8 (bf) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Xin Chúa thương xót chúng con.
  Xin Chúa thương
  \markup { \italic "(nguyện)" }
  Xin Chúa thương,
  xin thương xót chúng con.
  Xin Chúa Ki -- tô,
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin Chúa thương
  \markup { \italic "(nguyện)" }
  xin Chúa thương, xin thương xót chúng con,
  Xin thương xót chúng con.
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
  page-count = #1
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
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

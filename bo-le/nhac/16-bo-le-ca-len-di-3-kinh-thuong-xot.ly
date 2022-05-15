% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup \fill-line {
    \center-column {
      \box \pad-markup #2 "Bộ Lễ CA LÊN ĐI 3"
      \null \null
    }
  }
  subtitle = \markup { \huge \bold "Kinh Thương Xót" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 8 a8 |
  c4. b8 |
  c (b) a (b) |
  a4 r8 d |
  e4. c8 |
  d (c) b (c) |
  b2 ~ |
  b4 r |
  a4 c8 b |
  a4 ( \slashedGrace { g16 ( } e8) ) a |
  c (b) a (b) |
  a2 |
  e'4 f8 e |
  d4. d8 |
  e (d) c (d) |
  c2 ~ |
  c4 r8 a |
  c4. b8 |
  c (b) a (b) |
  a2 |
  d4. d8 |
  <e c>8 (<d b>) <c a> (<d b>) |
  <c g>2 ~ |
  <c g>4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  a8 |
  c4. b8 |
  c (b) a (b) |
  a4 r8 <a f> |
  <gs e>4. <a f>8 |
  <a d,>4 <a d,> |
  <gs e>2 ~ |
  <gs e>4 r |
  a4 c8 b |
  a4 ( \slashedGrace { g16 ( } e8) ) a |
  c (b) a (b) |
  a2 |
  <g c,>4 <g c,>8 <g c,> |
  <a f>4. <a f>8 |
  <a e>4 <gs e> |
  <a a,>2 ~ |
  <a a,>4 r8 a |
  c4. b8 |
  c (b) a (b) |
  a2 |
  <a f>4. <a fs>8 |
  g4. <f g,>8 |
  <e c>2 ~ |
  <e c>4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Xin Chúa thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con,
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con,
  Xin thương xót
  <<
    { chúng }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    \once \override LyricText.self-alignment-X = #LEFT
	    đoàn
	  }
  >>
  con.
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
  system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
}

TongNhip = {
  \key c \major \time 2/4
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

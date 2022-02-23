% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Thánh" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  e4 e |
  e2 |
  r8 e c d |
  e4 c8 a |
  b2 ~ |
  b4 e, |
  a8 (g4) c,8 |
  d4 d |
  e2 ~ |
  e4 e'8 e |
  f4 d8 d |
  e4. d8 |
  c ([d c]) b |
  a2 ~ |
  a4 a8 (g) |
  d4 e8 c |
  f (e) d d |
  e2 ~ |
  e4 e'8 e |
  f4 d8 d |
  e4. d8 |
  c ([d c]) b |
  a2 ~ |
  a4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  <c a>4 <b g> |
  <c a>2 |
  r8 <c a> a a |
  <b gs>4 a8 <a f> |
  <gs e>2 ~ |
  <gs e>4 e |
  a8 (g4) c,8 |
  d4 d |
  e2 ~ |
  e4 <c' a>8 <b g> |
  <a f>4 <b g>8 <a f> |
  <gs e>4 <a e> |
  <a e> <gs e> |
  <e c a>2 ~ |
  <e c a>4 a8 (g) |
  d4 e8 c |
  f (e) d d |
  e2 ~ |
  e4 <c' a>8 <b g> |
  <a f>4 <b g>8 <a f> |
  <gs e>4 <a e> |
  <a e> <gs e> |
  <e c a>2 ~ |
  <e c a>4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh,
  Trời đất đầy vinh quang Chúa,
  Hoan hô Chúa, hoan hô Chúa trên các tầng trời.
  Chúc tụng Đấng ngự đến nhân danh Chúa,
  Hoan hô Chúa, hoan hô Chúa trên các tầng trời.
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
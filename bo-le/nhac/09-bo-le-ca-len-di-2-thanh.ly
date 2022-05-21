% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  c4 c |
  c r8 c |
  g4. a8 |
  bf4 a8 f |
  g2 ~ |
  g4 c, |
  a'4. g8 |
  a4 bf |
  c c8 c |
  f4. e8 |
  f (e) d4 |
  c4 c8 c |
  d4. c8 |
  bf (a) g4 |
  f2 ~ |
  f4 f8 (g16 f) |
  d4. a'8 |
  f bf g g |
  a4 c8 c |
  f4. e8 |
  f (e) d4 |
  c4 c8 c |
  d4. c8 |
  bf (a) g4 |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  a4 a |
  a r8 f |
  e4. f8 |
  g4 f8 d |
  c2 ~ |
  c4 c |
  f4. e8 |
  f4 g |
  e f8 g |
  a4. c8 |
  d (c) bf4 |
  a a8 a |
  bf4. a8 |
  g (f) c4 |
  f2 ~ |
  f4 f8 (g16 f) |
  d4. a'8 |
  f bf g g |
  a4 c8 bf |
  a4. c8 |
  d (c) bf4 |
  a4 a8 a |
  bf4. a8 |
  g (f) c ^(bf) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Thánh, Thánh, Thánh,
  Chúa là Thiên Chúa các đạo binh,
  Trời đất đầy vinh quang Chúa,
  Hoan hô Chúa trên các tầng trời,
  Hoan hô Chúa trên các tầng trời.
  Chúc tụng Đấng ngự đến nhân danh Chúa,
  Hoan hô Chúa trên các tầng trời,
  Hoan hô Chúa trên các tầng trời.
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

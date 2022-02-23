% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Lạy Chiên Thiên Chúa" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c' {
  \partial 8 e8 |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b4 d8 d |
  e (d) c (d) |
  c2 ~ |
  c4 r8 a |
  c (b) c (d) |
  e4 e8 e |
  c (b) a4 |
  d4 c8 c |
  d (c) b (c) |
  b2 ~ |
  b4 r8 e, |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b2 |
  g4 g8 e |
  a4. b8 |
  c ([b a b]) |
  a2 ~ |
  a4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  e8 |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b4 <a f>8 <a f> |
  <gs e>4 <gs e> |
  <a a,>2 ~ |
  <a a,>4 r8 a |
  c (b) c (d) |
  e4 e8 e |
  c (b) a4 |
  d4 a8 a |
  <a f>4 <a d,> |
  <gs e>2 ~ |
  <gs e>4 r8 e |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b2 |
  g4 g8 e |
  a4. <a d,>8 |
  <<
    {
      \voiceOne
      \stemDown a4. _(gs8)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #0.7
      e2
    }
  >>
  <e c a>2 _~ |
  <e c a>4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chiên Thiên Chúa Đấng xóa tội trần gian
  Xin thương xót chúng con.
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian
  xin thương xót chúng con.
  Lạy Chiên Thiên Chúa Đấng xóa tội trần gian,
  Xin ban bình an cho chúng con.
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
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = "Lạy Chiên Thiên Chúa"
  composer = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c' {
  \partial 8 e8 |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b <d a f>8 <d a f> |
  <<
    {
      \voiceOne
      e8 (d) c (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <gs, e>4 <gs e>
    }
  >>
  \oneVoice
  <c a a,>2 ~ |
  <c a a,>4 r8 a |
  c (b) c (d) |
  e4 e8 e |
  c (d) a4 |
  d <c a a>8 <c a a> |
  <<
    {
      \voiceOne
      d (c) b (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <a f>4 <a d,>
    }
  >>
  \oneVoice
  <b gs e>2 ~ |
  <b gs e>4 r8 e, |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b2 |
  g4 g8 e |
  a4. <b a d,>8 |
  <<
    {
      \voiceOne
      c8 ([b a b])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \override NoteColumn.force-hshift = #-1
      a4. (gs8)
    }
    \new Voice = "splitpart" {
      \voiceThree
      \override NoteColumn.force-hshift = #1
      \stemDown e2
    }
  >>
  \oneVoice
  <a e c a>2 ~ |
  <a e c a>4 \bar "|."
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
  system-system-spacing = #'((basic-distance . 0.1) (padding . 2.5))
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

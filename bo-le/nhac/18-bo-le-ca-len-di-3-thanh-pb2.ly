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
  <e c a>4 <e b g> |
  <e c a>2 |
  r8 <e c a>8 <c a> <d a> |
  <e b gs>4 <c a>8 <a a f> |
  <b gs e>2 ~ |
  <b gs e>4 e, |
  a8 (g4) c,8 |
  d4 d |
  e2 ~ |
  e4 <e' c a>8 <e b g> |
  <f a, f>4 <d b g>8 <d a f> |
  <<
    {
      \voiceOne
      e4. d8 |
      c ([d c]) b
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <gs e>4 <a e> |
      <a e> <gs e>
    }
  >>
  \oneVoice
  <a e c a>2 ~ |
  <a e c a>4 a8 (g) |
  d4 e8 c |
  f (e) d d |
  e2 ~ |
  e4 <e' c a>8 <e b g> |
  <f a, f>4 <d b g>8 <d a f> |
  <<
    {
      \voiceOne
      e4. d8 |
      c ([d c]) b
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <gs e>4 <a e> |
      <a e> <gs e>
    }
  >>
  \oneVoice
  <a e c a>2 ~ |
  <a e c a>4 \bar "|."
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
  system-system-spacing = #'((basic-distance . 0.1) (padding . 2.5))
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

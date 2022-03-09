% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "PHỤNG VỤ THÁNH THỂ" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \partial 4 c8 (d) |
  e4. e8 |
  a f e (a) |
  b4 \slashedGrace { b16 ( } c8) a |
  e4. e8 |
  a b b c |
  b (a) a (b) |
  e,2 |
  c8 d c b |
  e4. e8 |
  a a a16 (b) a8 |
  gs2 |
  b16 (c) b8 b b |
  c4 b8 b16 (c) |
  d4. e8 |
  e, b' b c16 (b) |
  a4 \bar "||"
}

nhacMauHai = \relative c'' {
  <<
    {
      \partial 4 e4 |
      c4. d8 |
      e e c (b) |
    }
    {
      c4 |
      a4. b8 |
      c b a (gs)
    }
  >>
  a2 ~ |
  a4 \bar "||"
}

nhacMauBa = \relative c' {
  \partial 4 c8 (d) |
  e4. e8 |
  a f e (a) |
  b4 \slashedGrace { b16 ( } c8) a |
  e4. e8 |
  a b b c |
  b (a) g (a) |
  e4. c8 |
  f f d e |
  e4. e8 |
  a a a16 (b) a8 |
  gs2 |
  b16 (c) b8 b b |
  c4 b8 b16 (c) |
  d4 e,8 c' |
  b b b c16 (b) |
  a4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Lạy Chúa là Chúa cả trời đất,
  chúc tụng Chúa đã rộng ban cho chúng con bánh này
  là hoa mầu ruộng đất và công lao của con người.
  Chúng con dâng lên Chúa
  để trở nên bánh trường sinh cho chúng con.
}

loiMauHai = \lyricmode {
  \set stanza = "GD:"
  Chúc tụng Thiên Chúa đến muôn đời.
}

loiMauBa = \lyricmode {
  \set stanza = "CT:"
  Lạy Chúa là Chúa Cả trời đất,
  chúc tụng Chúa đã rộng ban cho chúng con rượu này
  là sản phẩm từ cây nho và công lao của con người
  Chúng con dâng lên Chúa
  để trở nên của uống thiêng liêng cho chúng con.
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
  %system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
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
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    ragged-right = ##f
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    ragged-right = ##f
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

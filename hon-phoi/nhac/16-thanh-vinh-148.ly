% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 148"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4
  <<
    {
      a16 (bf) a8 |
      g4 bf |
      d2 ~ |
      d4 \bar "|."
    }
    {
      f,16 (g) f8 |
      e4 d |
      e2 ~ |
      e4
    }
  >>
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4. a16 (bf) a8 g |
  c8. bf16 d8 g, |
  g2 |
  r8 g e d |
  c8. f16 f8 f |
  \slashedGrace { e16 (f } g2) |
  r8 a16 (bf) a8 g |
  c4. bf8 |
  a g f (g) |
  a2 |
  r8 g e d |
  c4 c8 c |
  d (f) g e |
  f2 ~ |
  f4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. f16 (g) f8 e |
  a2 |
  a8. d,16 d8 d |
  g2 ~ |
  g8 g16 (a) g8 f |
  bf2 |
  bf8. a16 g8 bf |
  c2 ~ |
  c8 c bf a |
  d2 |
  d8. g,16 g8 a |
  \slashedGrace { g16 ( } bf2) ~ |
  bf4 d,8 d |
  a' g g16 (c) e,8 |
  f2 ~ |
  f4 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. f8 e g |
  f2 |
  a8 e f d |
  c2 ~ |
  c4 g'8 g |
  a2 |
  f8 a d,16 (f) a8 |
  g2 ~ |
  g8 g f a |
  g2 |
  bf8 g g bf |
  c2 ~ |
  c8 d g, g |
  bf4. g8 |
  g c a (g) |
  f2 ~ |
  f4 \bar "||"
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. f8 g e |
  f8. d16 f8 g |
  a4 a8 f |
  a4. g8 |
  g c bf g |
  f4 r8 c |
  f e d g |
  a4 e8 a |
  f bf g16 (bf) c8 |
  c2 ~ |
  c4 bf8 bf |
  d8. g,16 bf8 c |
  f,4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Hãy ca tụng danh Chúa.
}

loiMauHai = \lyricmode {
  Hãy ca tụng Chúa từ các tầng trời,
  Hãy ca tụng Ngài trên nơi cao thẳm.
  Hãy ca tụng Chúa hỡi muôn Thiên Thần Chúa,
  Hãy ca tụng Ngài nào toàn thể các đạo binh.
}

loiMauBa = \lyricmode {
  Hãy ca tụng Chúa hỡi mặt trời mặt trăng,
  hãy ca tụng Chúa, hỡi muôn vì sao sáng.
  Hãy ca tụng Chúa, hỡi tầng trời cao thẳm,
  và nguồn nước trên đỉnh vòm trời.
}

loiMauBon = \lyricmode {
  Ca tụng Chúa đi hỡi đồi núi chập chùng,
  cây ăn trái và các loại bá hương.
  Ca tụng Chúa đi thú rừng và gia súc
  các loài bò sát và mọi giống chim trời.
}

loiMauNam = \lyricmode {
  Vua Chúa trần gian và mọi dân nước,
  các thủ lãnh và thẩm phán khắp địa cầu,
  họ hãy ca tụng danh Chúa,
  vì danh Ngài cao cả vô song.
  Uy phong Chúa vượt cả đất trời.
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
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #4
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

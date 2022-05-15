% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 26"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key f \major
  \time 2/4
  a4 f8 bf |
  bf4. bf8 |
  c d g, bf |
  c2 |
  a8 g \slashedGrace { a16 ( } c8) f, |
  g2 |
  a8 f f d |
  e4 e16 (d) g8 |
  c,4. e8 |
  \slashedGrace { g16 ( } f4) \bar "||"
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  f8 f a d, |
  d4. c8 |
  f4 f8 e |
  a4. f8 |
  f f16 (g) bf8 g |
  c4. g8 |
  g4 bf8 d, |
  e4. e16 (f) |
  g8 a a f |
  bf4. bf8 |
  d c g16 (c) e,8 |
  f4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 (g) |
  a4. g8 |
  g a g f |
  d4 g8 g |
  a8. f16 f8 f |
  bf4 r8 c |
  bf (c) d g, |
  g4. g8 |
  c4 g8 f |
  f2 ~ |
  f4 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 f8 |
  f4 f16 (g) c,8 |
  a'16 (c) a8 f a |
  g2 |
  e16 (d) c8 f4 ~ |
  f8 d g e16 (g) |
  a2 |
  r8 bf a g |
  c8. e,16 a8 g16 (f) |
  d4 d8 d16 (f) |
  c8. c16 g'8 e16 (g) |
  a2 ~ |
  a4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4. a8 f bf |
  bf4. g8 |
  bf c e, e16 (g) |
  f2 ~ |
  f4 \bar "|."
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 f8 |
  f4 f16 (g) c,8 |
  <<
    {
      a'16 (bf) a8 f a |
      g4 g8 f |
      a4. g8 |
      bf4
    }
    {
      f16 (g) f8 d f |
      c4 c8 c |
      f4. e8 |
      d4
    }
  >>
  <<
    {
      \voiceOne
      g8 (bf)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f4
    }
  >>
  \oneVoice
  <c' e,>4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Chúa là ánh sáng là ơn cứu độ của tôi,
  tôi còn phải sợ ai?
  Chúa bảo vệ đời tôi, tôi khiếp gì ai nữa.
}

loiMauHai = \lyricmode {
  Tôi xin Chúa một điều, điều tôi luôn tìm kiếm
  là được ở trong nhà Chúa mọi ngày suốt đời tôi,
  để chiêm ngưỡng Chúa khả ái và ngắm trông thánh điện Ngài.
}

loiMauBa = \lyricmode {
  Lạy Chúa xin nghe tiếng con kêu cầu,
  xin thương xót và nhậm lời con,
  Con tưởng nhớ lời Ngài: Hãy tìm thánh nhan Ta.
}

loiMauBon = \lyricmode {
  Tôi tin sẽ được thấy ơn lành Chúa ban
  trong miền đất dành cho kẻ sống.
  Hãy trông đợi Chúa và sống can trường
  hãy vững lòng và trông cậy Chúa.
}

loiMauNam = \lyricmode {
  Chúa là ánh sáng, là ơn cứu độ của tôi.
}

loiMauSau = \lyricmode {
  Tôi tin sẽ được thấy ơn lành Chúa ban
  trong miền đất dành cho kẻ sống.
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
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "hoặc" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

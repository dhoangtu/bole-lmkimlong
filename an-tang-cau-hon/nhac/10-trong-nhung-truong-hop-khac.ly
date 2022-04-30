% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  %title = "Thánh Lễ"
  %subtitle = "Ca Nhập Lễ và Hiệp Lễ"
  subsubtitle = \markup { \huge "III. Trong Những Trường Hợp Khác" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key g \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \partial 4
  <<
    {
      d4 |
      e4. c8 c b |
      a4. a8 a g |
      \time 2/4
      fs4 fs8 g
    }
    {
      b4 |
      c4. a8 a g |
      fs4. fs8 e e |
      d4 d8 e
    }
  >>
  \time 3/4
  <<
    {
      \voiceOne
      fs4. (g8)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d2
    }
  >>
  \oneVoice
  <<
    {
      e8 [e]
    }
    {
      cs cs
    }
  >>
  d2
  <<
    {
      d4 |
      g4. g8 fs b |
      b4. a8 b [g] |
      c4 fs,8 fs
    }
    {
      c!?4 |
      b4. e8 d d |
      g4. fs8 g f! |
      e4 d8 d
    }
  >>
  <<
    {
      \voiceOne
      a'16 (b) a8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8 c
    }
  >>
  \oneVoice
  <g' b,>2 \bar "|."
}

nhacMauHai = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b4 |
  b2 ~ |
  b8 d b b |
  c4 a8 a |
  a4. d,8 |
  a'4 a |
  g r8 g |
  b4 c8 c |
  a2 |
  d8 e d d |
  c4. a8 |
  g2 ~ |
  g4 \bar "||"
}

nhacMauBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 e |
  c4 f8 f |
  d g e (g) |
  a2 |
  r8 g
  <<
    {
      a8 g |
      c4 b8 c |
      a a d d |
      g,4
    }
    {
      f8 d |
      e4 g8 a |
      fs fs f! f |
      e4
    }
  >>
  r8 fs |
  g g a (e) |
  d4.
  <<
    {
      g8 |
      a4 g |
      d'4. d8
    }
    {
      c,8 |
      f4 e |
      f4. fs8
    }
  >>
  <<
    {
      \voiceOne
      e'8 (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  <b g>4 |
  <c e, c>2 ~ |
  <c e, c>4 \bar "|."
}

nhacMauBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e4 |
  e e8 c |
  f4 d8 d |
  a'2 |
  d8 d e (d16 c) |
  g4. f8 |
  g d g e |
  c2 ~ |
  c4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Xin Chúa mở cửa thiên đàng cho linh hồn này
  được trở về quê hương mình,
  là nơi không còn chết chóc,
  nhưng có niềm vui tồn tại đến muôn đời.
}

loiMauHai = \lyricmode {
  Chúa nói:
  “Những ai Cha đã ban cho Tôi sẽ đến với Tôi.
  Và ai đến với Tôi, Tôi sẽ không xua đuổi ra ngoài.”
}

loiMauBa = \lyricmode {
  Tôi tin rằng: Đấng Cứu Chuộc tôi hằng sống.
  Và ngày sau hết tôi sẽ từ bụi đất trỗi dậy.
  Và trong thân xác này
  tôi sẽ nhìn thấy Thiên Chúa của tôi.
}

loiMauBon = \lyricmode {
  Chúa nói: “Đây là bánh từ trời xuống.
  Ai ăn bánh này thì không phải chết muôn đời.”
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

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "A - Cầu cho một người qua đời"
      }
      \line {
        \bold "Mẫu 1"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff\with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu 2"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

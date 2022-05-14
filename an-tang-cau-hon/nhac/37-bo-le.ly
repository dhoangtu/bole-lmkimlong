% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Bộ Lễ"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 8 a8 |
  c4. b8 |
  c (b) a (b) |
  a4 r8
  <<
    {
      d8 |
      e4. c8 |
      d (c) a (c) |
      b2
    }
    {
      b8 |
      c4. a8 |
      g (a) f (a) |
      e2
    }
  >>
  a4 c8 b |
  a8. (g16 e8) a |
  c (b) a (b) |
  a2 |
  <<
    {
      e'4 f8 e |
      d4. d8 |
      e (d) c (d) |
      c4
    }
    {
      c4 d8 c |
      b4. b8 |
      c (b) a (gs) |
      a4
    }
  >>
  r8 a |
  c4. b8 |
  c (b) a (b) |
  a2 |
  <<
    {
      d4 e8 d |
      e (d) c (d) |
      c2 \bar "|."
    }
    {
      f,4 fs8 g |
      c (b) a (gs) |
      a2
    }
  >>
}

nhacMauHai = \relative c'' {
  \key c \major
  \time 2/4
  <<
    {
      e4 e |
      e2 |
      r8 e c d |
      e4 c8 a |
      b2 ~ |
      b4
    }
    {
      c4 c |
      c2 |
      r8 c a b |
      gs4 a8 f |
      e2 ~ |
      e4
    }
  >>
  e4 |
  a8 (g!?4) c,8 |
  d4 d |
  e2 ~ |
  e4
  <<
    {
      e'8 e |
      f4 d8 d |
      e4. d8
    }
    {
      c8 b |
      a4 b8 a |
      gs4. b8
    }
  >>
  <<
    {
      \voiceOne
      c8 (d c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      a4.
    }
  >>
  \oneVoice
  <b gs>8 |
  a2 ~ |
  a4 a8 (g!?) |
  d4 e8 c |
  f (e) d d |
  e2 ~ |
  e4
  <<
    {
      e'8 e |
      f4 d8 d |
      e4. d8
    }
    {
      c8 b |
      a4 b8 g |
      gs4. b8
    }
  >>
  <<
    {
      \voiceOne
      c8 ([e c])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      a4.
    }
  >>
  \oneVoice
  <b gs>8 |
  a2 ~ |
  a4 \bar "|."
}

nhacMauBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 8 e8 |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b4
  <<
    {
      d8 d |
      e (d) c (d) |
      c2 ~ |
      c4
    }
    {
      b8 b |
      c (b) a (gs) |
      a2 ~ |
      a4
    }
  >>
  r8 a |
  c (b) c (d) |
  e4 e8 e |
  c (b) a4 |
  d4
  <<
    {
      a8 a |
      d (c) b (c) |
      b2 ~ |
      b4
    }
    {
      a8 a |
      b (a) gs (a) |
      e2 ~ |
      e4
    }
  >>
  r8 e |
  a (gs) a (b) |
  c4 d8 d |
  c (b) a4 |
  b2 |
  g!?4 g8 e |
  a4. <a f>8 |
  <<
    {
      \voiceOne
      a8 ([b a b]) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,4. (d8) |
    }
  >>
  \oneVoice
  <a' c,>2 ~ |
  <a c,>4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Xin Chúa thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin Chúa thương xót chúng con.
}

loiMauHai = \lyricmode {
  Thánh Thánh Thánh!
  Chúa là Thiên Chúa các đạo binh.
  Trời đất đầy vinh quang Chúa.
  Hoan hô Chúa, hoan hô Chúa trên các tầng trời.
  Chúc tụng Đấng ngự đến nhân danh Chúa.
  Hoan hô Chúa, hoan hô Chúa trên các tầng trời.
}

loiMauBa = \lyricmode {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian
  Xin thương xót chúng con.
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian
  Xin thương xót chúng con.
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
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

\markup {
  \vspace #2
  \line {
    \bold "Xin Thương Xót"
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Thánh Thánh Thánh"
  }
}

\score {
  <<
    \new Staff <<
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
    \bold "Lạy Chiên Thiên Chúa"
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

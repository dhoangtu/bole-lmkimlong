% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \fontsize #1 "Mẫu 2" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 a16 (bf) |
  g4
  <<
    {
      a8 a |
      a a a16 (bf) g8 |
      c4.
    }
    {
      f,8 f |
      f f f16 (g) f8 |
      e4.
    }
  >>
  <<
    {
      \voiceOne
      a16 (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,8
    }
  >>
  \oneVoice
  <<
    {
      d'4 bf16 (c) d8 |
      g,4. f8 |
      a bf4 a8 |
      g4 g8 a
    }
    {
      f4 g16 (a) f8 |
      e4. d8 |
      f g4 f8 |
      e4 d8 c
    }
  >>
  <<
    {
      \voiceOne
      d8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      b,!4
    }
  >>
  \oneVoice
  <<
    {
      g'8 d |
      c4.
    }
    {
      c8 bf |
      a4.
    }
  >>
  <<
    {
      \voiceOne
      f'16 (g)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8
    }
  >>
  \oneVoice
  <<
    {
      a'4 a8 bf |
      g2 ~ |
      g8 f g d |
      c8. g'16 a8 g |
      f2 ~ |
      f4 \bar "|."
    }
    {
      f4 f8 g |
      c,2 ~ |
      c8 d c bf |
      a8. bf16 c8 c |
      a2 ~ |
      a4
    }
  >>
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  a2 |
  <<
    {
      f8 a a bf |
      g4 f8 g |
      a4 f8 bf |
      a g16 (bf) c8 c |
      c4.
    }
    {
      d,8 f f g |
      e4 d8 e |
      f4 d8 g |
      f e16 (g) f8 f |
      e4.
    }
  >>
  <<
    {
      \voiceOne
      a16 (g)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8
    }
  >>
  \oneVoice
  <<
    {
      d4 c8 e |
      e4. g8 |
      f2 ~ |
      f4 \bar "|."
    }
    {
      bf,4 a8 bf |
      c4. bf8 |
      a2 ~ |
      a4
    }
  >>
}

% Lời
loiMauMot = \lyricmode {
  Từ sớm mai xin cho con no thỏa tình thương của Chúa,
  để suốt ngày được vui sướng hân hoan.
  Xin chiếu tỏa ánh huy hoàng của Chúa trên chúng con,
  và trên mọi việc tay chúng con làm.
}

loiMauHai = \lyricmode {
  Chúa nói: Thầy ban cho các con điều răn mới
  là các con hãy yêu thương nhau như Thầy đã yêu thương các con.
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
      instrumentName = \markup { \bold "Nhập lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace#2
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = "Ca Nhập Lễ và Hiệp Lễ"
  subsubtitle = "Mẫu 1"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 e16 (f) |
  d4.
  <<
    {
      e8 |
      f c g' g |
      e2 ~ |
      e8 e e a |
      a4. b8 |
      c4 g8 f |
      e2 ~ |
      e8 e c g' |
      g4. g8 |
      e a g g |
      c2 ~ |
      c4 \bar "|."
    }
    {
      c,8 |
      d a b b |
      c2 ~ |
      c8 c c e |
      f4. g8 |
      e4 e8 d |
      c2 ~ |
      c8 c a b |
      c4. d8 |
      c f e d |
      e2 ~ |
      e4
    }
  >>
  
}

nhacMauHai = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 e |
  e4. f8 |
  d d c (d) |
  g2 ~ |
  g8
  <<
    {
      e8 a a |
      g4 c8 b16 (c) |
      d4 b8 b |
      c4. f,8 |
      e4 d |
      g4. a8 |
      f4 f8 g |
      d4.
    }
    {
      c8 f f |
      e4 e8 d16 (e) |
      g4 d8 d |
      e4. e8 |
      c4 c |
      b4. c8 |
      d4 d8 c |
      b4.
    }
  >>
  <<
    {
      \voiceOne
      d16 (g) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      b,8
    }
  >>
  \oneVoice
  c2 ~ |
  c4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Từ thánh điện xin Chúa trợ giúp các bạn,
  Và từ Si -- on xin Chúa thương bảo vệ.
  Xin Ngài ban ơn theo lòng các bạn nguyện ước.
}

loiMauHai = \lyricmode {
  Đức Ki -- tô đã yêu thương Hội Thánh
  Và đã hiến mình cho Hội Thánh,
  để Hội Thánh trở nên Hiền Thê thánh thiện và tinh tuyền của Người.
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

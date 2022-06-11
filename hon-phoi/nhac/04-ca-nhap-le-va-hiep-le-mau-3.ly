% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \fontsize #1 "Mẫu 3" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  <<
    {
      a'4. f8 |
      f4. a8 |
      bf4 bf8 g |
      c2 |
      bf8 c f, g |
      a4
    }
    {
      f4. ef8 |
      d4. f8 |
      g4 g8 f |
      e2 |
      g8 e d c |
      f4
    }
  >>
  <<
    {
      \voiceOne
      g16 (a) f8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      b,!8 b
    }
  >>
  \oneVoice
  <e c>4 r8 c |
  <<
    {
      a'4. e8 |
      e8. a16 a8 e |
    }
    {
      f4. d8 |
      cs8. cs16 cs8 cs
    }
  >>
  d4 d8
  <<
    {
      f8 |
      g4
    }
    {
      c,8 |
      bf4
    }
  >>
  <<
    {
      \voiceOne
      a'8 g16 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c8 bf
    }
  >>
  \oneVoice
  <<
    {
      c8. c16 g'8 e |
      f2 ~ |
      f4 \bar "|."
    }
    {
      a,8. a16 bf8 c |
      a2 ~ |
      a4
    }
  >>
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4.
  <<
    {
      a8 bf g |
      c4 g8 f16 (g) |
      a2 ~ |
      a8 f g g
    }
    {
      f8 g f |
      e4 e8 d16 (e) |
      f2 ~ |
      f8 d c c
    }
  >>
  <<
    {
      \voiceOne
      e8 (f) d8 e16 (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c4 b!8 b
    }
  >>
  \oneVoice
  c2 |
  a'8 a d, d16 (f) |
  g4 c8 e, |
  e (f4) d8 |
  g2 |
  <<
    {
      a8. g16 f8 bf |
      g4.
    }
    {
      f8. e16 d8 f |
      e4.
    }
  >>
  <<
    {
      \voiceOne
      g16 (bf)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,8
    }
  >>
  \oneVoice
  <c' e,>2 ~ |
  <c e,>4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, hằng ngày con sẽ chúc tụng Chúa
  và ca ngợi danh Chúa đến muôn đời.
  Vì Chúa hiền dịu với hết mọi người
  và nhân ái với muôn loài Ngài tác tạo nên.
}

loiMauHai = \lyricmode {
  Tôi chúc tụng Chúa trong mọi lúc,
  miệng tôi liên lỉ ngợi khen Ngài.
  Hãy nếm thử mà xem Chúa thiện hảo dường bao.
  Phúc thay người tin cậy vào Chúa.
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
  \vspace #2
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
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

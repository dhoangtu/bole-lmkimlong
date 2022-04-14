% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = "Thánh Vịnh 144"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}


% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f16 (g) c,8 |
  d4.
  <<
    {
      bf'8 |
      g (c) e,4 |
      f2 ~ |
      f4 \bar "|."
    }
    {
      d8 |
      e (d) c4 |
      a2 ~ |
      a4
    }
  >>
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f16 (g) c8 |
  g8. e16 g8 g |
  a2 |
  a16 (g) c8 f, (e) |
  d8. d16 f8 a |
  g4 a8 d, |
  e8. g16 g8 e16 (d) |
  c4 f8 g |
  a4 bf8 g |
  g8. g16 c8 e, |
  f2 ~ |
  f4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  a'4. a8 |
  g bf d, (f) |
  g8. f16 bf8 g |
  c2 ~ |
  c4 f,8 a |
  a e16 (f) g8 e |
  d4 f8 (d) |
  c4. c16 (d) |
  a'8 (bf) a g |
  c4 c,8 c |
  e8. g16 g8 f |
  f4 \bar "||"
}

nhacMauBon = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a16 (c) a8 |
  g4 g ~ |
  g8 f e a |
  a4 a16 (g) c8 |
  f,4 g ~ |
  g8 d d f16 (g) |
  c,4 g'16 (a) f8 |
  e4. a16 (bf) |
  g8 g f (g) |
  a2 |
  r8 d bf g |
  c4 g8 g16 (c) |
  f,4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Chúa hiền dịu với hết mọi người.
}

loiMauHai = \lyricmode {
  Chúa là Đấng từ bi nhân ái,
  Luôn nhẫn nhịn và giầu lòng xót thương,
  Chúa hiền dịu với hết mọi người,
  và nhân ái với mọi loài Ngài tác tạo nên.
}

loiMauBa = \lyricmode {
  Lạy Chúa, muôn loài Chúa tạo nên đều xưng tụng Chúa
  và các thánh phải tán dương Ngài.
  Muôn loài để mắt trông đợi Chúa
  và ngài thương đúng bữa cho ăn.
}

loiMauBon = \lyricmode {
  Chúa công minh trong mọi đường lối Chúa
  và thánh thiện trong mọi việc Chúa làm.
  Chúa ở gần những ai kêu cầu Chúa,
  những kẻ thành tâm cầu khẩn Ngài.
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
      instrumentName = \markup { \bold "Đáp" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

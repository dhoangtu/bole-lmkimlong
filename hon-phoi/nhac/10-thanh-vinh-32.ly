% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh Đáp Ca"
  subtitle = \markup { \fontsize #3 "Thánh Vịnh 32" }
  composer = "Lm. Kim Long"
  tagline = ##f
}


% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 c8 |
  <<
    {
      f4 g |
      a4.
    }
    {
      a,4 c |
      f4.
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
  <c' e,>4
  <<
    {
      \voiceOne
      e,4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c8 (bf)
    }
  >>
  \oneVoice
  <f' a,>2 ~ |
  <f a,>4 \bar "|."
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  c8 a bf (a) |
  g4. bf8 |
  bf4 g8 bf |
  c2 |
  d8 c c (bf) |
  g4. g8 |
  g g g c |
  f,4 r8 c |
  a' f a16 (bf) a8 |
  g8. f16 bf8 g16 (bf) |
  c2 |
  r8 d bf c16 (bf) |
  g4. d8 |
  d c g' a16 (g) |
  f2 ~ |
  f4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  f8 c a' (g) |
  f4 d8 c |
  a'4 e8 e |
  g g f16 (e) c8 |
  d2 |
  r8 g f a |
  g8. bf16 bf8 bf |
  c4 bf8 c |
  g g c a16 (g) |
  f4 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  c4 (f8 g) |
  a4. g8 |
  e16 (f) d8 f g |
  a4 a8 bf |
  g4 bf8 c |
  a8. g16 e8 g |
  f2 ~ |
  f4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Lượng từ bi Chúa trải khắp địa cầu.
}

loiMauHai = \lyricmode {
  Phúc thay quốc gia có Chúa làm Thiên Chúa,
  Phúc thay dân tộc được Ngài chọn làm gia nghiệp.
  Này Chúa để mắt trông nom kẻ kính sợ Chúa,
  những kẻ trông cậy vào lòng từ bi của Ngài.
}

loiMauBa = \lyricmode {
  Tâm hồn chúng con trông đợi Chúa
  vì Ngài luôn che chở phù trì.
  Nên lòng chúng con hân hoan trong Chúa,
  và tin cậy vào thánh danh Ngài.
}

loiMauBon = \lyricmode {
  Lạy Chúa xin tỏ lòng từ bi Chúa cho chúng con,
  Như chúng con trông cậy nơi Ngài.
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
  page-count = 1
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

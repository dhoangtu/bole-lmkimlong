% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 102"
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
      a8 f |
      bf4. a8 |
      c4 c |
      d2 ~ |
      d4 \bar "|."
    }
    {
      f,8 d |
      g4. f8 |
      e4 e |
      f2 ~ |
      f4
    }
  >>
}

nhacMauHai = \relative c' {
  \key f \major
  \time 23/4
  \partial 4 d8 a' |
  \override Staff.TimeSignature.break-visibility = #all-invisible
  \time 3/4
  a4. bf8 bf g |
  a2 f8 g |
  \time 2/4
  g4. a8 |
  a f g f |
  \time 3/4
  e2 d8 a' |
  a4. bf8 bf g |
  \time 2/4
  a4. e8 |
  e g f g |
  \time 3/4
  a4 f8 [g] f [e] |
  d2 \bar "||"
}

nhacMauBa = \relative c'' {
  \key f \major
  \time 23/4
  \partial 4 a8 d, |
  \override Staff.TimeSignature.break-visibility = #all-invisible
  \time 2/4
  f e g g |
  a4 g8 a |
  \time 3/4
  f ([e]) c [c] c [e] |
  \time 2/4
  d4 d8 c |
  \time 3/4
  g'4. g8 g [g] |
  \time 2/4
  a4 bf8 bf |
  \time 3/4
  g4. g8 a [c,] |
  d2 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 23/4
  \partial 4 f4 |
  \override Staff.TimeSignature.break-visibility = #all-invisible
  \time 2/4
  e8 e f (g) |
  \time 3/4
  a4 f8 [f] g ([f]) |
  \time 2/4
  e4 d8 g |
  g4 bf8 g |
  c2 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Chúa là Đấng từ bi nhân ái.
}

loiMauHai = \lyricmode {
  Hồn tôi ơi hãy chúc tụng Chúa,
  Toàn thân tôi, hãy chúc tụng thánh danh Ngài.
  Hồn tôi ơi, hãy chúc tụng Chúa,
  và đừng bao giờ quên lãng mọi ân huệ của Ngài.
}

loiMauBa = \lyricmode {
  Chúa là Đấng từ bi nhân ái,
  luôn nhẫn nhịn và giầu lòng xót thương.
  Như người cha yêu thương con cái,
  Chúa xót thương ai kính sợ Ngài.
}

loiMauBon = \lyricmode {
  Nhưng lòng từ bi Chúa tồn tại muôn đời
  dành cho ai kính sợ Chúa.
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
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

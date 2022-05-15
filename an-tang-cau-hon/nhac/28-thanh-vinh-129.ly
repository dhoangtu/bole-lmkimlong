% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 129"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 d16 d |
  f4 \tuplet 3/2 { f8 f f } |
  e4. e8 |
  a4 r8 f |
  bf8. c16 \tuplet 3/2 { c8 c d } |
  a4 r8 c |
  a4. bf16 bf |
  g8. e16 \tuplet 3/2 { e8 g e } |
  d4 \bar "||"
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 d8 |
  a'4 \tuplet 3/2 { bf8 bf bf } |
  g4. bf8 |
  a4 \tuplet 3/2 { a8 c d } |
  d4 r8 a |
  bf8. bf16 \tuplet 3/2 { f8 f g } |
  a4. f16 a |
  g4 \tuplet 3/2 { g8 a e } |
  d4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 d8 |
  a'8. g16 \tuplet 3/2 { g8 f e } |
  a4. f8 |
  g8. e16 \tuplet 3/2 { f8 e c } |
  d4 r8 d |
  g4. g16 e |
  a4. a16 bf |
  bf8. g16 g8 a |
  d4 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 d16 e |
  e4 \tuplet 3/2 { d8 c c } |
  f4. g16 f |
  f4 \tuplet 3/2 { g8 f e } |
  a4 r8 f16 d |
  bf'4 \tuplet 3/2 { g8 g g } |
  a4. f16 a |
  g4 \tuplet 3/2 { f8 g a } |
  e4 r8 a |
  d,4. bf'8 |
  bf f bf a |
  g4. f8 |
  e a c, e16 (f) |
  d2 ~ |
  d4 \bar "||"
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  a'4. f16 f |
  g4 \tuplet 3/2 { g8 g e } |
  d2 ~ |
  d4 \bar "|."
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  f8 f e e |
  a4. g8 |
  g f e c |
  d2 ~ |
  d4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Từ vực sâu, con kêu lên Ngài, lạy Chúa,
  lạy Chúa, xin thương nghe tiếng con.
  Dám xin Chúa lắng tai nhậm lời con van nài.
}

loiMauHai = \lyricmode {
  Lạy Chúa, nếu Chúa chấp tội, Chúa ơi,
  nào ai đứng vững!
  Nhưng Chúa vẫn rộng lòng tha thứ,
  để chúng con luôn kính sợ Ngài.
}

loiMauBa = \lyricmode {
  Lạy Chúa, con trông cậy vào Chúa,
  hồn con trông cậy ở lời Ngài.
  Hồn con mong đợi Chúa hơn lính gác mong trời rạng đông.
}

loiMauBon = \lyricmode {
  Hơn lính gác mong trời rạng đông,
  Is -- ra -- el hãy mong đợi Chúa,
  Bởi vì Chúa rộng lường từ bi
  và Chúa rất giầu hơn cứu độ.
  Chính Ngài sẽ cứu chuộc Is -- ra -- el
  khỏi mọi lỗi lầm đã phạm.
}

loiMauNam = \lyricmode {
  Lạy Chúa, từ vực sâu con kêu lên Ngài.
}

loiMauSau = \lyricmode {
  Con trông cậy vào Chúa, con trông cậy ở lời Ngài.
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
      instrumentName = \markup { \bold "1" }}<<
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
      instrumentName = \markup { \bold "2" }}<<
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
      instrumentName = \markup { \bold "3" }}<<
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
      instrumentName = \markup { \bold "4" }}<<
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
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }}<<
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
      instrumentName = \markup { \bold "hoặc" }}<<
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

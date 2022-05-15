% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 41, 42"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 g |
  d4. g8 |
  f g d (g) |
  a4 g8 c |
  d4 c8 a |
  c4 c8 c |
  bf a c (d) |
  g,2 ~ |
  g4 \bar "||"
}

nhacMauHai = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 f |
  g4. bf8 |
  a a bf g |
  d'4 r8 c |
  bf c g (a) |
  bf4. d,8 |
  a' bf a a |
  g2 ~ |
  g4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 (a) |
  bf4 bf8 bf |
  d, d bf' a |
  a4. bf8 |
  g g bf (c) |
  d4 d8 c |
  d c bf c16 (bf) |
  a4 g16 (bf) a (g) |
  d4 g8 g |
  f (g) a (bf |
  g2 ^~ |
  g4) \bar "||"
}

nhacMauBon = \relative c'' {
  \key bf \major
  \time 2/4
  r8 g a a |
  a4. d,8 |
  a' bf g (a) |
  bf4. a8 |
  d16 (ef) c8 c d |
  d4. d8 |
  bf (g) g (f) |
  g4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 (f16 g) |
  a8 a a4 |
  d,8 d g (a) |
  bf4. bf8 |
  a c d4 ~ |
  d8 bf c16 (bf) g8 |
  a2 ~ |
  a4 a16 (bf) a8 |
  f8. g16 g8 ef |
  d4 d8 g |
  a4 g8 a |
  bf4 (a8) f |
  g4 \bar "||"
}

nhacMauSau = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 a |
  a2 ~ |
  a8 bf16 (a) g8 c, |
  d4. d8 |
  bf (c) ef8 d |
  d2 |
  bf'8 g c c |
  d2 |
  r8 a c bf |
  d4 d8 bf |
  a2 ~ |
  a4 bf8 bf |
  f4. d8 |
  d a' bf16 (a) f8 |
  g4 \bar "||"
}

nhacMauBay = \relative c'' {
  \key bf \major
  \time 2/4
  g8 d g bf |
  a8. a16 bf8 g |
  d'4 r8 c |
  bf c g (a) |
  bf4. d,8 |
  a' bf a a |
  g2 ~ |
  g4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Như nai rừng khát mong đến nguồn nước,
  Lạy Thiên Chúa, linh hồn con cũng khát mong tìm đến Ngài.
}

loiMauHai = \lyricmode {
  Linh hồn con khao khát Thiên Chúa hằng sống,
  bao giờ con được đến và ra trước tôn nhan Ngài.
}

loiMauBa = \lyricmode {
  Con nhớ lúc tiến vào lều thánh cao sang
  đến tận nhà Thiên Chúa giữa bao tiếng reo mừng ca ngợi
  của muôn người hân hoan mừng lễ.
}

loiMauBon = \lyricmode {
  Xin chiếu ánh sáng và chân lý của Chúa
  để dẫn con lên núi thánh, tới đền Ngài ngự.
}

loiMauNam = \lyricmode {
  Con sẽ bước tới bàn thờ Thiên Chúa,
  đến cùng Thiên Chúa niềm vui của con
  Gảy cung đàn con ca tụng Ngài,
  lạy Thiên Chúa là Thiên Chúa của con.
}

loiMauSau = \lyricmode {
  Hồn tôi ơi cớ chi phiền muộn,
  sao thổn thức trong ta
  Hãy cậy trông Thiên Chúa,
  vì tôi còn mãi xưng tụng Ngài,
  Đấng Cứu độ và là Thiên Chúa của tôi.
}

loiMauBay = \lyricmode {
  Linh hồn con khát khao Thiên Chúa hằng sống,
  bao giờ con được đến và ra trước tôn nhan Ngài.
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }}<<
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
      instrumentName = \markup { \bold "6" }}<<
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

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
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

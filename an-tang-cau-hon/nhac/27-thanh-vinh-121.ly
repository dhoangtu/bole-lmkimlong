% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 121"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 g |
  c,4. f8 |
  d4 d8 d |
  e4 g8 e |
  f e c a' |
  a4 r8 g |
  c2 |
  f8. e16 d8 d |
  d2 ~ |
  d8 e d c |
  a8. b16 a8 g |
  c2 ~ |
  c4 \bar "|."
}

nhacMauHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 d |
  c8. g'16 e8 e16 (g) |
  a4. g8 |
  c e, g4 |
  f8 d a'16 (b) a8 |
  g4. a16 (b) |
  a8 g c (d) |
  f4 e,8 g |
  g2 |
  f8. g16 e8 a |
  f4. d8 |
  c a'16 (b) g8 a |
  c2 \bar "||"
}

nhacMauBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 (a) |
  c, c e4 |
  e8. e16 f8 e |
  d4 r8 a' |
  a g g a |
  e4 e8 f |
  g4 r8 g |
  c,4 e8 d |
  a'4. g8 |
  f4 d8 g |
  c,4 \bar "||"
}

nhacMauBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 g' |
  g2 |
  fs8 g e f! |
  d4 d8 e16 (d) |
  c4. f8 |
  d a' g4 |
  e e8 e16 (f) |
  c'8. b16 c8 a |
  g2 ~ |
  g8 g c e, |
  f4 e16 (d) g8 |
  c,4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4
  <g e>8 <g e> |
  <e c>4.
  <<
    {
      \voiceOne
      a16 (b)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8
    }
  >>
  <a' f>4 <g f>8 <a f> |
  <c \=1^( e, \=2_(>2 |
  <c \=1) e,\=2)>4 \bar "|."
}

nhacMauSau = \relative c' {
  \key c \major
  \time 2/4
  e8 e c f |
  d4 d8 d |
  e4 e8 d |
  f a g c |
  c2 ~ |
  c4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Tôi vui mừng biết bao khi nghe nói:
  Ta cùng trẩy lên đền thánh Chúa.
  Giờ đây, hỡi Giê -- ru -- sa -- lem,
  bước chân ta dừng nơi cửa thành ngươi.
}

loiMauHai = \lyricmode {
  Các chi tộc, chi tộc của Chúa đều tiến về đây
  theo luật Is -- ra -- el để xưng tụng danh Chúa
  Vì nơi đây đặt ngai tòa xét xử, ngai tòa của nhà Đa -- vít.
}

loiMauBa = \lyricmode {
  Hãy cầu bình an cho Giê -- ru -- sa -- lem,
  chúc những ai yêu mến thành được yên vui,
  Thái bình trong thành lũy, yên ổn nơi tháp đài.
}

loiMauBon = \lyricmode {
  Vì anh em và thân bằng quyến thuộc,
  tôi nói rằng:
  “Chúc thành thánh an bình, vì nhà Chúa,
  Thiên Chúa chúng ta,
  Tôi chúc thành đô mọi phúc lành.”
}

loiMauNam = \lyricmode {
  Ta vui mừng trẩy lên đền thánh Chúa.
}

loiMauSau = \lyricmode {
  Tôi vui mừng biết bao khi nghe nói:
  Ta cùng trẩy lên đền thánh Chúa.
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
    \override LyricHyphen.minimum-distance = #2
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
    \override LyricHyphen.minimum-distance = #2
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
    \override LyricHyphen.minimum-distance = #2
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
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \fontsize #1 "II. Lễ giỗ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b4 |
  d a16 ([d]) b ([a]) |
  g8 b b (a16 g) |
  e4 r8 g |
  c8. c16 b8 a |
  d4. d8 |
  b g4 b8 |
  c2 |
  g8 e4 g8 |
  a4. fs16 (e) |
  d8 g \slashedGrace { fs16 (g } a4) ~ |
  a8 g c a |
  d4 fs,16 (a) g8 |
  g2 ~ |
  g4 \bar "|."
}

nhacMauHai = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b4 |
  b2 |
  a8. g16 g8 b |
  e,4. e8 |
  fs4 g8 (a) |
  b2 |
  r8 a a g |
  a4. g8 |
  c a d b16 (a) |
  g4. g8 |
  a e4 b'8 |
  \slashedGrace { d,16 (e } d2) |
  g8. fs16 fs8 b |
  b4. g8 |
  c4 d |
  d2 ~ |
  d4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. d8 a'16 (bf) a8 |
  g4. g8 |
  g bf g (f) |
  d4 a8 f' |
  f d a'16 (bf) g8 |
  a (g) f a |
  e4 e8 g |
  f4 e |
  d2 \bar "|."
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  a'4. a8 |
  e4 g8 g |
  f8. g16 g8 g |
  e4 d8 d |
  g (e) g a |
  a4 g8 g |
  g a g (f) |
  e2 |
  e8 e16 (g) f8 e |
  d2 \bar "||"
}

nhacMauNam = \relative c'' {
  \key g \major
  \time 2/4
  \autoPageBreaksOff
  \partial 4 a4 |
  b2 |
  b8 b g b |
  c b a a |
  a4 a8 d |
  d4. d8 |
  g,2 ~ |
  g4 g16 (a) fs8 |
  g a b g |
  c (b) e,16 (g) b8 |
  a4. fs8 |
  b4 e,8 b' |
  e, e16 (g) d4 ~ |
  d8 d b' c |
  a4 r8 g |
  d'4 d |
  g,2 ~ |
  g4 \bar "|."
}

nhacMauSau = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b4 |
  b b8 g |
  c a d4 ~ |
  d8 fs, g (a) |
  b2 |
  r8 a a b |
  fs2 |
  g8 fs a d, |
  e4 r8 e |
  b'4 b8 c |
  a8. d16 g,8 g |
  a4. fs16 (a) |
  a8 c b g |
  d'4 r8 d, |
  fs4 a |
  g2 ~ |
  g4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Thiên Chúa sẽ lau sạch nước mắt họ
  Sự chết sẽ không còn nữa,
  cũng không còn than khóc,
  không còn kêu la,
  không còn đau khổ
  vì các việc cũ đã qua đi.
}

loiMauHai = \lyricmode {
  Chúa phán:
  “Ta là sự sống lại và là sự sống.
  Ai tin vào Ta thì có sự sống muôn đời
  và không bị xét xử.
  Nhưng được từ cõi chết mà qua cõi sống.”
}

loiMauBa = \lyricmode {
  Lạy Chúa Giê -- su, xin cho các linh hồn
  mà Chúa đã đổ Máu châu báu để cứu chuộc
  được nghỉ yên muôn đời.
}

loiMauBon = \lyricmode {
  Lạy Chúa, Chúa là nơi an nghỉ sau khi lao nhọc,
  là sự sống sau cái chết,
  Xin ban cho các linh hồn được nghỉ yên muôn đời.
}

loiMauNam = \lyricmode {
  Thiên Chúa, Đấng đã làm cho Đức Giê -- su Ki -- tô
  từ cõi chết sống lại,
  cũng làm cho thân xác phải chết của chúng ta được sống,
  nhờ Thánh Thần của Ngài ngự trong chúng ta.
  Al -- le -- lu -- ia.
}

loiMauSau = \lyricmode {
  Chúa nói:
  “Tôi là bánh hằng sống từ trời xuống.
  Ai ăn bánh này sẽ được sống đời đời.
  Và bánh Tôi sẽ ban chính là Thịt Tôi
  để cho thế gian được sống.”
  Al -- le -- lu -- ia.
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

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "A - Ngoài mùa Phục Sinh"
      }
      \line {
        \bold "Nhập lễ:" \normal-text \italic "Như Nhập lễ Trẻ chưa chịu phép Rửa tội"
      }
    }
  }
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
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff\with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \vspace #2
  \line {
    \bold "B - Ngoài mùa Phục Sinh"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
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
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "C - Trong mùa Phục Sinh"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 17
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
      instrumentName = \markup { \bold "Nhập lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

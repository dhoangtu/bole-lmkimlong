% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Mẫu 4"
  subsubtitle = "Theo Graduale simplex"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 4
  <<
    {
      e4 |
      g4. g8 |
      c, f d e |
      e2 |
      a8 g g g |
      g4 r8 c |
      c b b a |
      d4. g,8
    }
    {
      c,4 |
      b4. b8 |
      a d b c |
      c2 |
      f8 e e d |
      e4 r8 a |
      a g g e |
      f4. e8
    }
  >>
  <<
    {
      \voiceOne
      e'8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  <<
    {
      e'8 d |
      d4 d8 e16 (d) |
      c2 ~ |
      c4 \bar "|."
    }
    {
      g8 g |
      f4 f8 g16 (f) |
      e2 ~ |
      e4
    }
  >>
}

nhacMauHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 f |
  f8. d16 g8 g |
  a4 a8 e |
  d8. g16 b,8 d |
  c4 \bar "||"
}

nhacMauBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e16 (f) e8 |
  d d g4 |
  f8 f f (g) d4 r8 f |
  e f g a |
  a2 |
  d,8 g e (f) |
  c2 ~ |
  c4 \bar "||"
}

nhacMauBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 d |
  c (d4) e8 |
  f2 |
  d8 a' g g |
  g8. b,16 b8 d |
  c2 ~ |
  c4 \bar "||"
}

nhacMauNam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 e |
  e8. c16 c8 e |
  f4 f8 f |
  g4. e8 |
  e4 r8 e |
  a8. d,16 g8 b, |
  c2 ~ |
  c4 \bar "||"
}

nhacMauSau = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e16 (d) g8 |
  c,4. e8 |
  f e f (e) |
  d4. d8 |
  d (e) g a |
  a4. f8 |
  f a d, f |
  g4. e8 |
  a4 d,8 g |
  c,2 ~ |
  c4 \bar "||"
}

nhacMauBay = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 c |
  f4. f8 |
  d8. g16 b,8 d |
  c4 c8 e |
  f4. f8 |
  e d f4 |
  g2 ~ |
  g4 \bar "||"
}

nhacMauTam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 e |
  e4. d8 |
  d d g (f) |
  e4 f8 d |
  d8. d16 d8 g |
  c,2 ~ |
  c4 \bar "||"
}

nhacMauChin = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 d |
  e2 ~ |
  e8 e e c |
  \slashedGrace { e16 ( } f4) g8 g |
  e4. d8 |
  f g d4 |
  b \bar "||"
}

nhacMauMuoi = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c4 |
  f4. d8 |
  g e a4 |
  a a8 d, |
  d4. d8 |
  d g b,4 |
  c \bar "||"
}

nhacMauMuoiMot = \relative c'' {
  \key c \major
  \time 2/4
  g8 c, e (f) |
  d4.
  <<
    {
      d8 |
      g e a g |
      c2 ~ |
      c4 \bar "|."
    }
    {
      c,8 |
      b c f d |
      e2 ~ |
      e4
    }
  >>
}

nhacMauMuoiHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e16 (f) e8 |
  d8. e16 c8 (d) g4 f8 a |
  g8. g16 d8 g |
  c,2 \bar "||"
}

nhacMauMuoiBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 r8 c |
  e16 (f) e8 d d |
  e8. d16 d8 d |
  \slashedGrace { d16 ( } g4) e8 a |
  a8. d,16 g8 b, |
  c2 ~ |
  c4 \bar "||"
}


nhacMauMuoiBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 e |
  d2 |
  g8. g16 g8 g |
  a4 f8 d |
  g4. e16 (d) |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiLam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 f |
  d4. d8 |
  d16 (e) c8 g' g |
  g4 g8 g |
  g8. d16 g8 e16 (d) |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiSau = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 g' |
  g4. g8 |
  a a f g16 (f) |
  d4 r8 e |
  c4 e16 (f) e8 |
  d d d c |
  g'4. d8 |
  d f g e16 (d) |
  c4 \bar "||"
}

nhacMauMuoiBay = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g4 |
  c,2 |
  c8 c e16 (f) d8 |
  e4 c8 c |
  e e e16 (f) e8 |
  d2 ~ |
  d4 \bar "||"
}


% Lời
loiMauMot = \lyricmode {
  Khi ấy, có tiệc cưới tại Ca -- na, xứ Ga -- li -- lê -- a,
  Có Chúa Giê -- su ở đó cùng Đức Ma -- ri -- a thân mẫu Người.
}

loiMauHai = \lyricmode {
  Đừng ấm ức vì quân gian ác,
  Chớ phân bì với bọn bất lương.
}

loiMauBa = \lyricmode {
  Hãy trông cậy vào Chúa và làm điều lành
  để được ở trong đất nước và sống yên hàn.
}

loiMauBon = \lyricmode {
  Hãy vui thỏa trong Chúa,
  Ngài sẽ ban cho ngươi toại lòng ước mong.
}

loiMauNam = \lyricmode {
  Hãy phó thác đường đời cho Chúa,
  và cậy trông vào Ngài,
  vì chính Ngài sẽ hành động.
}

loiMauSau = \lyricmode {
  Ngài sẽ làm cho đức công chính ngươi rạng ngời như ánh sáng,
  và sự chính trực của ngươi rực rỡ như chính ngọ.
}

loiMauBay = \lyricmode {
  Người hiền đức sẽ được Chúa làm gia nghiệp
  và vui hưởng cảnh an bình viên mãn.
}

loiMauTam = \lyricmode {
  Chúa biết rõ ngày đời người thanh sạch,
  gia nghiệp họ tồn tại muôn đời.
}

loiMauChin = \lyricmode {
  Người công chính dẫu ít tiền của
  vẫn tốt hơn bọn gian ác sang giầu.
}

loiMauMuoi = \lyricmode {
  Nhờ Chúa mà con người vững bước,
  Chúa hài lòng về đường lối họ đi.
}


loiMauMuoiMot = \lyricmode {
  Đó là ân lộc dành cho người kính sợ Chúa.
}


loiMauMuoiHai = \lyricmode {
  Phúc cho ai kính sợ Chúa và bước đi trong đường lối Ngài.
}


loiMauMuoiBa = \lyricmode {
  Thành quả tay bạn làm ra, bạn được tận hưởng,
  bạn có phúc và những gặp may.
}

loiMauMuoiBon = \lyricmode {
  Hiền thê bạn như cây nho sai trái
  trong nội thất của bạn.
}

loiMauMuoiLam = \lyricmode {
  Con cái bạn như những chồi non ô -- liu
  xum xuê quanh bàn ăn của bạn.
}

loiMauMuoiSau = \lyricmode {
  Từ Si -- on xin Chúa chúc lành cho bạn,
  chúc bạn thấy Giê -- ru -- sa -- lem phồn vinh,
  mọi ngày trong suốt cuộc đời.
}

loiMauMuoiBay = \lyricmode {
  Chúc bạn được nhìn thấy con cháu,
  Nguyện bình an cho Is -- ra -- el.
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh vinh 36"
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
    indent = 20
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
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "6" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "7" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "8" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "9" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
    >>
  >>
  \layout {
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh vinh 127"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBa
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBon
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiLam
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiSau
    >>
  >>
  \layout {
    indent = 20
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
      instrumentName = \markup { \bold "6" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBay
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBay
    >>
  >>
  \layout {
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

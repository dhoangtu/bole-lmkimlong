% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 127"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4.
  <<
    {
      c8 a c |
      g2 ~ |
      g8 bf g bf |
      c2 ~ |
      c4 \bar "|."
    }
    {
      a8 f a |
      e2 ~ |
      e8 g f (d) |
      e2 ~ |
      e4
    }
  >>
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  g8 g a f |
  bf4 bf8 d |
  c4. c8 |
  g c a (g) |
  f4 r8 f |
  f16 (a) g8 d d |
  g2 ~ |
  g8 f f g |
  \slashedGrace { f16 ( } bf4) bf8 d |
  d8. g,16 c8 e, |
  f2 ~ |
  f8 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 f16 (g) |
  d4. a'8 |
  a a a4 |
  bf4 c8 c |
  d4. c16 (bf) |
  g4 a8 bf |
  f4. e8 |
  f d g g |
  g4. bf8 |
  bf4 bf8 g |
  a4. g16 (c) |
  f,2 ~ |
  f8 \bar "||"
}

nhacMauBon = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  f4. g16 (f) |
  d4 d8 g |
  a f bf g |
  c4 a8 bf |
  bf4. bf8 |
  c c f, e16 (f) |
  d4 r8 g |
  c,2 |
  a'16 (bf) a8 g g |
  g4. e8 |
  g4. g8 |
  g bf c e, |
  f4 f8 f |
  bf8. g16 c8 c |
  c2 ~ |
  c8 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Phúc cho những ai kính sợ Chúa.
}

loiMauHai = \lyricmode {
  Phúc cho ai kính sợ Chúa,
  và bước đi trong đường lối của Ngài.
  Thành quả tay bạn làm ra, bạn được an hưởng,
  bạn có phúc và những gặp may.
}

loiMauBa = \lyricmode {
  Hiền thê bạn như cây nho sai trái trong gia thất của bạn,
  con cái bạn như những chồi non ô -- liu
  xum xuê quanh bàn ăn của bạn.
}

loiMauBon = \lyricmode {
  Đó là ân lộc dành cho những kẻ kính sợ Chúa,
  Từ Si -- on xin Chúa chúc lành cho bạn,
  chúc bạn thấy Giê -- ru -- sa -- lem phồn vinh
  mọi ngày trong suốt cuộc đời,
  và được thấy con cái cháu chắt.
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
    \override LyricHyphen.minimum-distance = #2
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
    \override LyricHyphen.minimum-distance = #2
    ragged-last = ##f
  }
}

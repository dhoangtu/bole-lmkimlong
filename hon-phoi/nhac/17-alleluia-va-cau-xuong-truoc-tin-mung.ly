% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Alleluia và Câu Xướng Trước Tin Mừng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c8
  <<
    {
      c8 |
      c (d) c4 |
      g8 bf a (g)
    }
    {
      bf8 |
      a (g) a4 |
      e8 c d (e)
    }
  >>
  f2 ~ |
  f4 \bar "|."
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. f8
  <<
    {
      g8 a |
      bf4. g8 |
      c4 c
    }
    {
      e,8 f |
      d4. f8 |
      e4 e
    }
  >>
  f2 ~ |
  f4 \bar "|."
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  f8 g a f4 g8 \hide ([a]) g8 f d4 (c8)
  f8 g \hide ([a]) g4 f \bar "|."
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. c8 c f |
  f4 f8 a |
  d,4. f8 |
  g4 e16 (f) g8 |
  a4 f8 f |
  bf4. g8 |
  c2 ~ |
  c4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c8 d |
  g,4. bf8 |
  c4 r8 c |
  a bf g g |
  g4 e8 e |
  g4. c,8 |
  e e4 g8 |
  f2 ~ |
  f4 \bar "||"
}

nhacMauSau = \relative c'' {
  \key f \major
  \time 2/4
  \partial 8 a8 |
  a g g g |
  g4 f8 a |
  bf g16 (bf) c8 d |
  c2 |
  bf8 bf c c16 (bf) |
  g4 a8 bf |
  a g4 e8 |
  e4 (f ~ |
  f) \bar "||"
}

nhacMauBay = \relative c' {
  \key f \major
  \time 2/4
  f8 e16 (f) d8 c |
  g'4 f8 a16 (bf) |
  g4. g8 |
  c4 bf8 c |
  d2 ~ |
  d8 g,16 (bf) a8 e |
  g4 (f ~ |
  f) \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauHai = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauBa = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
}

loiMauBon = \lyricmode {
  Người nào yêu thương thì đã được sinh ra bởi Thiên Chúa
  và nhận biết Thiên Chúa.
}

loiMauNam = \lyricmode {
  Thiên Chúa là Tình yêu, chúng ta hãy yêu thương nhau
  như Thiên Chúa đà yêu thương chúng ta.
}

loiMauSau = \lyricmode {
  Nếu chúng ta yêu thương nhau thì Thiên Chúa ở trong chúng ta
  và tình yêu của Ngài nơi chúng ta nên trọn hảo.
}

loiMauBay = \lyricmode {
  Ai ở trong tình yêu thì ở trong Thiên Chúa,
  và Thiên Chúa ở trong người ấy.
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
  \bold "Mẫu để khởi và kết"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
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
      instrumentName = \markup { \bold "2" }} <<
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
      instrumentName = \markup { \bold "3" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #2
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Các câu xướng"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #1.8
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
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
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
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
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
      instrumentName = \markup { \bold "4" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Alleluia"
  subsubtitle = \markup {
    \column {
      \center-align {
        \line {
          \italic "Câu xướng trước tin mừng"
        }
        \line {
          "CÁC MẪU CHUNG để khởi và kết"
        }
      }
    }
  }
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
      c |
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
  \partial 4 f8 a |
  <<
    {
      c (d) c4 |
      a8 bf
    }
    {
      g8 (f) e4 |
      f8 d
    }
  >>
  <<
    {
      \voiceOne
      g8 (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,4
    }
  >>
  \oneVoice
  f2 ~ |
  f4 \bar "|."
}

nhacMauBa = \relative c' {
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

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  f8 g bf f4 g8 \hide ([a]) g8 f e4 (c8)
  f g \hide ([a]) g4 f \bar "|."
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. c8
  <<
    {
      d f |
      g4. c8
    }
    {
      bf,8 d |
      c4. e8
    }
  >>
  <<
    {
      \voiceOne
      a8 (g)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f4
    }
  >>
  \oneVoice
  <<
    {
      e8 (g) |
      f2 ~ |
      f4 \bar "|."
    }
    {
      c8 (bf) |
      a2 ~ |
      a4
    }
  >>
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  f8. e16 a8 f |
  bf4 d8 bf |
  c2 ~ |
  c8 bf d g, |
  g g g a |
  d,4 d8 e16 (d) |
  c4. a'16 (g) |
  f4 \bar "||"
}

nhacMauBay = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  a a8 g |
  e8. g16 g8 a |
  a4. bf8 |
  bf bf g c |
  f,4. g16 (a) |
  e8 f g a |
  g4. d8 |
  e c c a'16 (g) |
  f2 ~ |
  f4 \bar "||"
}

nhacMauTam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  bf2 |
  a8 a bf (a) |
  g4 a |
  a4. a8 |
  g g e e16 (f) |
  d4 e16 (f) a8 |
  g4. g8 |
  f bf bf (d) |
  g,4. c,8 |
  c a' g (e) |
  f2 ~ |
  f4 \bar "||"
}

nhacMauChin = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  a2 |
  g8 f bf g |
  c bf bf (c) |
  d2 |
  a8 a c (a16 g) |
  d4. c8 |
  g'4 e |
  f \bar "||"
}

nhacMauMuoi = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  a2 |
  g8. f16 f8 bf |
  g4. g8 |
  g4 g8 (bf) |
  c4 a8 a |
  a4. bf8 |
  g a g4 |
  f \bar "||"
}

nhacMauMuoiMot = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a8 a |
  bf g a g |
  f2 ~ |
  f8 a g g16 (f) |
  d4 g8 g |
  c,4. c8 |
  a'16 (bf) a8 a a |
  a4 bf8 a |
  g4. g16 (a) |
  f8 f bf4 |
  c \bar "||"
}

nhacMauMuoiHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  a8 bf g a |
  a4 f8 f |
  bf4. g8 |
  c2 |
  bf8 d g, bf |
  c4 bf8 c |
  f, ([e f]) g |
  g2 |
  f8 a e f |
  d4 c8 g' |
  f2 ~ |
  f4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauHai = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauBa = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauBon = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
}

loiMauNam = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauSau = \lyricmode {
  Lạy Cha là Chúa trời đất, chúc tụng Cha
  vì đã mặc khải mầu nhiệm Nước Trời cho những kẻ bé mọn.
}

loiMauBay = \lyricmode {
  Chúa phán: Hỡi những người Cha Ta chúc phúc,
  hãy đến lãnh nhận Nước Trời đã chuẩn bị cho các ngươi
  từ khi tạo dựng vũ trụ.
}

loiMauTam = \lyricmode {
  Thiên Chúa yêu thương thế gian
  đến nỗi đã ban Con Một của Ngài
  để những ai tin vào Con của Ngài
  thì được sống muôn đời.
}

loiMauChin = \lyricmode {
  Chúa nói: Tôi là bánh hằng sống từ trời xuống,
  ai ăn bánh này sẽ sống đời đời.
}

loiMauMuoi = \lyricmode {
  Chúa phán: Ta là sự sống lại và là sự sống,
  Ai tin Ta sẽ không chết muôn đời.
}

loiMauMuoiMot = \lyricmode {
  Quê hương chúng ta ở trên trời,
  chúng ta mong đợi Đấng Cứu Chuộc là Đức Giê -- su Ki -- tô
  Chúa chúng ta sẽ từ trời ngự đến.
}

loiMauMuoiHai = \lyricmode {
  Phúc cho những ai đã chết mà được chết trong Chúa.
  Họ sẽ được nghỉ ngơi, khỏi vất vả gian lao,
  vì các việc họ làm đều theo họ.
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
      instrumentName = \markup { \huge \bold "1" }} <<
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

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \huge \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
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

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \huge \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
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

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \huge \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 20
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \huge \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
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

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
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
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
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
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
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
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
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
      instrumentName = \markup { \bold "5" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
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
      instrumentName = \markup { \bold "6" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
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
      instrumentName = \markup { \bold "7" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
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

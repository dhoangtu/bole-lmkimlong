% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Lễ"
  subtitle = "Ca Nhập Lễ và Hiệp Lễ"
  subsubtitle = \markup { \huge "I. Lễ an táng" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g4 |
  d'4. c8 |
  c d c (bf) |
  a2 |
  a8 a16 (c) bf8 a |
  g4. d8 |
  g bf bf g |
  a4. c8 |
  bf4 a8 bf |
  a4. g8 |
  d'2 ~ |
  d4 \bar "|."
}

nhacMauHai = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g4 |
  d'4. c8 |
  c d d g, |
  a4. bf8 |
  a a bf16 (a) g8 |
  d4. d8 |
  bf' bf bf a16 (bf) |
  c8 (d) bf a |
  g2 ~ |
  g8 d bf' a |
  c4. a8 |
  d2 ~ |
  d4 d, |
  bf'2 |
  a8 a bf a |
  g2 |
  g8 bf a g |
  f4 r8 d |
  g bf bf g |
  c4. d8 |
  bf2 |
  a8 bf a g |
  d'4. d,8 |
  bf' bf bf a16 (bf) |
  c8 (d) bf8 a |
  g2 ~ |
  g4 \bar "|."
}

nhacMauBa = \relative c'' {
  \key g \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \partial 4
  <<
    {
      d4 |
      e4. c8 c b |
      a4. a8 a g |
      \time 2/4
      fs4 fs8 g
    }
    {
      b4 |
      c4. a8 a g |
      fs4. fs8 e e |
      d4 d8 e
    }
  >>
  \time 3/4
  <<
    {
      \voiceOne
      fs4. (g8)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d2
    }
  >>
  \oneVoice
  <<
    {
      e8 [e]
    }
    {
      cs cs
    }
  >>
  d2
  <<
    {
      d4 |
      g4. g8 fs b |
      b4. a8 b [g] |
      c4 fs,8 fs
    }
    {
      c!?4 |
      b4. e8 d d |
      g4. fs8 g f! |
      e4 d8 d
    }
  >>
  <<
    {
      \voiceOne
      a'16 (b) a8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8 c
    }
  >>
  \oneVoice
  <g' b,>2 \bar "|."
}

nhacMauBon = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4.
  <<
    {
      d8 b a |
      g4 b8 b |
      e,4. d8 |
      d' b b b |
      b4 c8 b |
      a2 ~ |
      a8 g b b
    }
    {
      b8 g fs |
      e4 d8 d |
      cs4. d8 |
      b' g g fs |
      g4 a8 g |
      d2 ~ |
      d8 b g' g
    }
  >>
  <<
    {
      \voiceOne
      fs4 (g8) a
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,4. d8
    }
  >>
  \oneVoice
  <<
    {
      b'8 d, e b' |
      a4. b8 |
      c a d fs, |
      a4.
    }
    {
      g8 b c g |
      fs4. g8 |
      a fs e e |
      c4.
    }
  >>
  <<
    {
      \voiceOne
      b'16 (a)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8
    }
  >>
  \oneVoice
  <g' b,>2 \bar "|."
}

nhacMauNam = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4. b8 c b |
  a4. c8 |
  c a d d |
  g,4 d8 g16 (a) |
  f8 (g) b a16 (g) |
  e (g) a8 b a |
  a4. c8 |
  a c d4 ~ |
  d8 b16 (a) fs8 a16 (b) |
  g2 |
  c8 b a a |
  a4. g8 |
  g g g (a) |
  b2 |
  a8 c e d |
  d4. a8 |
  a4 d8 d |
  fs,4. a8 |
  g2 |
  <b g>8 <b e,>
  <<
    {
      \voiceOne
      a8 (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      fs,4
    }
  >>
  g2 ~ |
  g4 \bar "|."
}

nhacMauSau = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b4 |
  b2 |
  a8 g g b |
  e,4. d8 |
  fs4 g8 (a) |
  b4
  <<
    {
      a8 a |
      a4 g8 c |
      c8. c16 c8 a |
      d4 c8 d
    }
    {
      fs,8 fs |
      fs4 e8 g |
      a8. a16 a8 g |
      fs4 e8 fs
    }
  >>
  <<
    {
      \voiceOne
      e'8 (d16 c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g4
    }
  >>
  \oneVoice
  <<
    {
      a8 b |
      b2
    }
    {
      fs8 g |
      g2
    }
  >>
  <<
    {
      \voiceOne
      \slashedGrace { \once \stemDown b16 (} a8) c d
      \afterGrace b8 _({
        \override Flag.stroke-style = #"grace"
        a16)}
      \revert Flag.stroke-style
    }
    \new Voice = "splitpart" {
      \voiceTwo
      fs8 e d d
    }
  >>
  \oneVoice
  <<
    {
      e4. e8 |
      d4 fs8 (a) |
      g2 ~ |
      g4 \bar "|."
    }
    {
      c,4. c8 |
      b4 d8 (c) |
      b2 ~ |
      b4
    }
  >>
}

nhacMauBay = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b4 |
  b b8 b |
  e,8 g a b |
  b4. c8 |
  c c e, g |
  d4. d8 |
  fs8 g a b |
  a4. g8 |
  c a a d |
  g,2
  \tweak extra-offset #'(3.8 . -2.2)
  _\markup { \italic "MPS" }
  \bar "||"
  
  \once \override NoteColumn.X-offset = 7 <>
  g4 r8 e |
  d4 fs8 (a) |
  g2 ~ |
  g4 \bar "|."
}

nhacMauTam = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 g8 b |
  \slashedGrace { e,16 (g } a2) |
  a8 e d fs |
  a8. a16 a8 g |
  g g fs (a) |
  b2 |
  r8 <e c>8
  <<
    {
      \voiceOne
      d8 d16 (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g8 g
    }
  >>
  \oneVoice
  <a fs>4. <a e>8 |
  <<
    {
      \voiceOne
      fs16 (e) a8 d, (e)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d8 c b4
    }
  >>
  \oneVoice
  <<
    {
      a'8. a16 a8 g |
      g2
      \tweak extra-offset #'(6 . -2.2)
      _\markup { \italic "MPS" }
      \bar "||"
      
      \once \override NoteColumn.X-offset = 7 <>
      b8 b
    }
    {
      c,8. cs16 d8 d |
      b2 |
      g'8 g
    }
  >>
  <<
    {
      \voiceOne
      a8 (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      fs,4
    }
  >>
  \oneVoice
  g2 \bar "|."
}

nhacMauChin = \relative c'' {
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

nhacMauMuoi = \relative c' {
  \key g \major
  \time 2/4
  \partial 8 g'8 |
  a8. g16 fs8 fs |
  b4 b8 a16 (g) |
  e4 d8 b' |
  c4 c8. c16 |
  a8 d d4 ~ |
  d8 b16 (a) fs8 a |
  g2 ~ |
  g4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, xin cho các linh hồn được nghỉ yên muôn đời,
  Và cho ánh sáng ngàn thu chiếu soi trên các linh hồn ấy.
}

loiMauHai = \lyricmode {
  Lạy Chúa, xin cho ánh sáng ngàn thu
  chiếu soi trên các linh hồn
  cùng với các thánh của Chúa đến muôn đời.
  Vì Chúa là Đấng từ ái.
  Lạy Chúa, xin cho các linh hồn được nghỉ yên muôn đời
  và cho ánh sáng ngàn thu chiếu soi trên các linh hồn ấy,
  Cùng với các thánh của Chúa đến muôn đời.
}

loiMauBa = \lyricmode {
  Xin Chúa mở cửa thiên đàng cho linh hồn này
  được trở về quê hương mình,
  là nơi không còn chết chóc,
  nhưng có niềm vui tồn tại đến muôn đời.
}

loiMauBon = \lyricmode {
  Chúng ta mọng đợi Đấng Cứu Chuộc
  là Đức Giê -- su Ki -- tô, Chúa chúng ta.
  Người sẽ biến đổi thân xác hèn hạ chúng ta
  nên giống thân xác hiển vinh của Người.
}

loiMauNam = \lyricmode {
  Như Chúa Giê -- su đã chết và đã sống lại,
  thì những kẻ đã an nghỉ trong Chúa Giê -- su
  cũng được Thiên Chúa dẫn về với Người.
  Cũng như nơi A -- dam mọi người đều phải chết,
  thì trong Đức Ki -- tô mọi người cũng sẽ được tác sinh.
  Al -- le -- lu -- ia.
}

loiMauSau = \lyricmode {
  Chúa phán: “Ta là sự sống lại và là sự sống,
  Ai tin Ta dù có chết cũng sẽ được sống,
  và ai sống mà tin Ta,
  sẽ không chết bao giờ.”
  Al -- le -- lu -- ia.
}

loiMauBay = \lyricmode {
  Chúa phán: “Hỡi những người Cha Ta chúc phúc,
  hãy đến lãnh nhận Nước Trời đã chuẩn bị cho các ngươi
  từ khi tạo dựng vũ trụ.”
  trụ.”
  Al -- le -- lu -- ai.
}

loiMauTam = \lyricmode {
  Nhờ Phép Rửa, chúng ta được mai táng
  với Đức Ki -- tô trong sự chết,
  Chúng ta tin rằng:
  Chúng ta cũng được sống với Đức Ki -- tô.
  Al -- le -- lu -- ia.
}

loiMauChin = \lyricmode {
  Thiên Chúa sẽ lau sạch nước mắt họ
  Sự chết sẽ không còn nữa,
  cũng không còn than khóc,
  không còn kêu la,
  không còn đau khổ
  vì các việc cũ đã qua đi.
}

loiMauMuoi = \lyricmode {
  Thiên Chúa tiêu diệt sự chết đến muôn đời,
  Và Thiên Chúa sẽ lau sạch nước mắt trên mọi khuôn mặt.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
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
  \line {
    \bold "A - Ngoài mùa Phục Sinh"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override LyricHyphen.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
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
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "D - An táng trẻ em đã Rửa tội"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "E - An táng trẻ em chưa Rửa tội"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

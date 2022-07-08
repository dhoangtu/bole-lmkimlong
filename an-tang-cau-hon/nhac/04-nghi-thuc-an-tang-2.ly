% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  %title = "Nghi Thức An Táng"
  %composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 8 e8 |
  a a f16 (e) a8 |
  b4.
  <<
    {
      b8 |
      c4 c |
      c
    }
    {
      e,8 |
      a4 a |
      a
    }
  >>
  \oneVoice
  r8 a |
  c b a c16 (d) |
  e4 d8 e |
  c d16 (c) a8 (g) |
  a4 r8 a \bar "||" \break
  
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  a a16 (g) e8 (d) |
  e8. <b' e,>16 <c a>8 <b d,> |
  <b e,>4
  <<
    {
      \voiceOne
      b16 (c) b8 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,8 d |
    }
  >>
  \oneVoice
  <a' c,>2 ~
  ^\markup { \halign #-5 \bold "Tận" }
  \partial 4 <a c,>4 \bar "|." \break
}

nhacMauHai = \relative c'' {
  \key c \major
  \time 2/4
  \autoPageBreaksOff
  \partial 4. b8 c b |
  b4. c8 
  <<
    {
      c (b) a (g) |
      a4 c8 a |
      b2 ~ \break
    }
    {
      \new Staff = "oasis" \with {
        alignAboveContext = #"1"
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 6))
        \remove "Time_signature_engraver"
        firstClef = ##f
      } {
          c8 (b) g (a) |
          e4 b'16 (c) g8 |
          a2
      }
    }
  >>
  b8 d e d16 (c) |
  a4. c8 |
  <<
    {
      a a g (a) |
    }
    {
      \new Staff = "oasis" \with {
        alignAboveContext = #"2"
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 6))
        \remove "Time_signature_engraver"
        firstClef = ##f
      } {
          b8 g g (a)
      }
    }
  >>
  e4 c'8 b |
  b4 d8 e |
  c d16 (c) a8 (g) |
  a4 r8 a \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacMauBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e4 |
  c'4. b8 |
  b b a (g) |
  a2 |
  a8 a16 (b) b8 a |
  e4. c8 |
  d f f d |
  e4. c'8 |
  b b b a |
  e'4 r8 a, \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacMauBon = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 af g |
  f4 af8 g |
  g e f (e) |
  d4 r8 g |
  e!? (f) <g e> (<a d,>) |
  <g e>4 <c e,>8 <d f,>
  <<
    {
      \voiceOne
      d (c) b (c) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g4 g |
    }
  >>
  \oneVoice
  <a f>4. <a f>8 |
  <a f> <f d> <a f>16 (<c a>) <a f>8 |
  <g e>4 <g e>8 <g e>
  <<
    {
      \voiceOne
      d'16 (e) d8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f,8 fs
    }
  >>
  \oneVoice
  <c' g>8 <b g> |
  <c e,>2 ~ |
  <c e,>4 \bar "|."
}

nhacMauNam = \relative c' {
  \key c \major
  \time 2/4
  %\autoPageBreaksOff
  \partial 8 e8 |
  e d f16 (e) d8 |
  c4 f8 f |
  d2 ~ |
  d8 c f f |
  <<
    {
      \voiceOne
      f2
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1
      \tiny d
    }
  >>
  \oneVoice
  d8 g f d |
  c4. c8 |
  <<
    {
      a'4 g8 g |
      g4 g8 g
    }
    {
      f4 e8 e |
      e4 c8 e
    }
  >>
  <<
    {
      \voiceOne
      d'4 _(e8 d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f,2
    }
  >>
  \oneVoice
  <c' e,>2 ~ |
  <c e,>4 \bar "|."
}

nhacMauSau = \relative c'' {
  \key c \major
  \time 2/4
  c8 b b c16 (d) |
  g,4. e8 |
  e4 e |
  a g8 g |
  g8. c,16 c8 f |
  f4 e16 (d) g8 |
  a2 |
  <<
    {
      e8 a a g |
      c4 a8 d |
      d4.
    }
    {
      c,8 f f d |
      e4 c8 f |
      f4.
    }
  >>
  \oneVoice
  <<
    {
      \voiceOne
      d'16 _(e) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f,8 |
    }
  >>
  \oneVoice
  <d' g,>8 <g, e>
  <<
    {
      \voiceOne
      d'16 _(e) d8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f,8 g
    }
  >>
  \oneVoice
  <c e,>2 ~ |
  <c e,>4 \bar "|."
}

nhacMauBay = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 e |
  c4 f8 f |
  d g e (g) |
  a2 |
  r8 g
  <<
    {
      a b |
      c4 b8 c |
      a a d d
    }
    {
      f,8 d |
      e4 d8 c |
      f f fs fs
    }
  >>
  g4. fs8 \bar "||" \break
  
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  g g a (e) |
  d4. d8 |
  e c f e |
  a4
  <<
    {
      d8 d |
      b4 (a8 b) |
      c2 ~ |
      c4 r8
      ^\markup { \bold "Tận" }
      \bar "|."
    }
    {
      fs,8 fs |
      g4 (f8 d) |
      e2 ~ |
      e4
    }
  >>
  \break
  
  \partial 8 c'8 |
  g4. g16 (a) |
  d,8 d e (d) |
  c8. f16 d8 d |
  e4 e8 a |
  g4. c8 |
  b c e (d16 c) |
  g4 r8 fs \bar "||" \break
  \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  
  \partial 8 e8 |
  g (a) f (e) |
  d4. d16 (e) |
  c8. c16 c8 c |
  g'4 r8 fs \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

% Lời
loiMauMot = \lyricmode {
  Lạy các thánh của Thiên Chúa, xin đến cứu giúp.
  Lạy các Thiên Thần của Chúa, xin đến gặp linh hồn này,
  xin dâng linh hồn này lên trước tôn nhan Đấng Tối Cao.
}

loiMauHai = \lyricmode {
  Xin Đức Ki -- tô Đấng
  <<
    { đã gọi ông đón nhận ông }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    đã gọi bà đón nhận bà
	}
  >>
  Xin các Thiên thần dẫn
  <<
    { đưa ông vào }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    đưa bà vào
    }
  >>
  lòng Ap -- bra -- ham.
  Xin đến gặp linh hồn này. Xin
}

loiMauBa = \lyricmode {
  Lạy Chúa xin cho linh hồn này được nghỉ yên muôn đời
  và cho ánh sáng ngàn thu chiếu soi trên linh hồn ấy.
  Xin
}

loiMauBon = \lyricmode {
  Xin các Thiên Thần dẫn đưa ông vào thiên đàng.
  Khi vừa tới nơi xin các thánh Tử Đạo đón tiếp
  và dẫn đưa
  <<
  { ông }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  bà
	}
  >>
  vào thành thánh Giê -- ru -- sa -- lem.
}

loiMauNam = \lyricmode {
  Xin ca đoàn các Thiên Thần đón tiếp
  <<
  { ông và xin cho ông }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  bà _ _ _ bà
	}
  >>
  được nghỉ yên muôn đời,
  cùng với La -- za -- rô người nghèo khó xưa.
}

loiMauSau = \lyricmode {
  Ta là sự sống lại và là sự sống.
  Ai tin Ta thì dù có chết cũng sẽ sống.
  Và bất cứ ai sống mà tin Ta sẽ không phải chết muôn đời.
}

loiMauBay = \lyricmode {
  Tôi tin rằng Đấng Cứu Chuộc tôi hằng sống,
  và ngày sau hết tôi sẽ từ bụi đất sống lại,
  và trong thân xác này tôi sẽ nhìn thấy Thiên Chúa,
  Đấng Cứu Độ tôi.
  Chính tôi sẽ được nhìn thấy Ngài chứ không ai khác,
  và mắt tôi sẽ được chiêm ngưỡng Ngài.
  Và Niềm hy vọng này đã được đặt vào lòng tôi.
  Và
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
  %page-count = 3
}

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "Giai đoạn II:" \normal-text \italic "Tại nhà thờ"
      }
      \line {
        \italic "* Thánh lễ (xem phần sau)"
      }
      \line {
        \italic "* Phó dâng và từ biệt lần cuối:"
      }
      \line {
        \italic "Sau lời kêu mời của Linh mục, rảy nước thánh, xông hương - tùy nghi hát"
      }
    }
  }
}

\score {
  <<
    \new Staff <<
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
      \remove "Time_signature_engraver"
    } <<
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
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    } <<
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

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \italic "Nếu Linh mục và Cộng đoàn cùng đưa linh cữu ra nghĩa trang,"
      }
      \line {
        \italic "có thể cử hành nghi thức phó dâng và từ biệt lần cuối tại phần mộ."
      }
      \line {
        \italic "Trong trường hợp này, sau Lời nguyện Hiệp lễ, người ta di quan."
      }
      \line {
        \italic "Khi đó có thể hát một hoặc hai hoặc ba đối ca sau đây:"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \italic "Trong nghi thức Phó dâng và từ biệt lần cuối,"
      }
      \line {
        \italic "có thể hát Câu Xướng Đáp sau đây"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }<<
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

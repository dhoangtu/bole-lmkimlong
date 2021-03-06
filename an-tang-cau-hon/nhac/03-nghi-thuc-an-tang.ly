% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Nghi Thức An Táng"
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
  \partial 4
  <<
    {
      \voiceOne
      d8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1 d4
    }
  >>
  \oneVoice
  <a' f>4. <a f>8 |
  <a f> <a f>
  <<
    {
      \voiceOne
      g8 (a)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e4
    }
  >>
  \oneVoice
  <d' f,>2 ~ |
  <d f,>4 \bar "|."
}

nhacMauSau = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 g8 f |
  <<
    {
      g4. g8 |
      f4 e |
      a2 ~ |
      a4 \bar "|."
    }
    {
      e4. e8 |
      d4 d |
      cs2 ~ |
      cs4
    }
  >>
}

nhacMauBay = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4. c8 a a |
  a4. g16 (f) |
  d8 (f) a a |
  g2 |
  g8 f f16 (a) g (f) |
  d4 d8 d16 (f) |
  g4. f8 |
  \slashedGrace { f16 (g } a2) |
  a8 d, g e16 (d) |
  c2 ~ |
  c8 c g' g |
  f4 f8 d |
  g f bf g |
  c2 ~ |
  c4 \bar "||"
}

nhacMauTam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c,8 a'16 (bf) |
  a8 g f g |
  a2 ~ |
  a8 f g g16 (f) |
  d4 d8 g |
  f g g e16 (d) |
  c2 |
  f8 f f a |
  d,4 r8 c |
  a' (bf) g g |
  a2 ~ |
  a8 bf a g |
  c8. c16 a8 g |
  f4 \bar "||"
}

nhacMauChin = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c8 f, |
  g2 ~ |
  g8 a f d |
  d4. e16 (d) |
  c8. g'16 f8 e |
  f4 e8 d |
  g8. bf16 bf8 g |
  a4 g8 f |
  bf8. g16 g8 bf |
  c4 \bar "||"
}

nhacMauMuoi = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  f,4. e8 |
  e e f (g) |
  a4 a8 g |
  g a d,16 (f) d8 |
  c4. c8 |
  f4. g16 (f) |
  e8 (f) g f16 (g) |
  a8. bf16 bf8 d, |
  d4. c8 |
  f4 \bar "||"
}

nhacMauMuoiMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  <<
    {
      a'8. a16 bf8 bf |
      g4 g8 c |
      c2 ~ |
      c4 \bar "|."
    }
    {
      f,8. f16 g8 g |
      e4 d8 e |
      e2 ~ |
      e4
    }
  >>
}

nhacMauMuoiHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4. a8 bf a |
  g4 a8 f |
  <<
    {
      \voiceOne
      g8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1
      \parenthesize
      e
    }
  >>
  c8 g'4 |
  f2 ~ |
  f4 \bar "|."
}

nhacMauMuoiBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. a8 c a |
  b4. g8 |
  g a f (e) |
  e4 c'8 b |
  b4. a8 |
  e'4 d |
  e \bar "|."
}

nhacMauMuoiBon = \relative c'' {
  \key c \major
  \time 2/4
  a8 a g a |
  e4
  <<
    {
      \voiceOne
      c'8 c
      b2
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \override NoteColumn.force-hshift = #1.2
      \tiny c8 b |
      a2
    }
  >>
  \oneVoice
  g8 g
  <<
    {
      \voiceOne
      a d,
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \override NoteColumn.force-hshift = #1.2
      \tiny g d
    }
  >>
  \oneVoice
  e4 c'8 b |
  b4. g16 (c) |
  b8 g a a |
  e4. e8 |
  c'4 b8 b |
  b4 e,8 e |
  b'4 (c8 b) |
  a4 \bar "||"
}

nhacMauHaiMuoiLam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  a'2 ~ |
  a8 g g f |
  <<
    {
      \voiceOne
      d4 e8 e
    }
    \new Voice = "beBas" {
      \voiceTwo
      \override NoteColumn.force-hshift = #1
      \tiny d4. e8
    }
  >>
  \oneVoice
  e2 |
  d8 d16 (f) e8 d |
  a4. a8 |
  d e f d |
  g2 |
  a8 g g d |
  <<
    {
      \voiceOne
      c4 d8 d
    }
    \new Voice = "beBas" {
      \voiceTwo
      \override NoteColumn.force-hshift = #2
      \tiny \parenthesize c4. \parenthesize d8
    }
  >>
  \oneVoice
  d2 ~ |
  d4 \bar "||"
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
  Bởi vì Chúa rộng lượng từ bi
  và Chúa rất giàu ơn cứu độ.
  Chính Ngài sẽ cứu chuộc Is -- ra -- el
  khỏi mọi lỗi lầm đã phạm.
}

loiMauNam = \lyricmode {
  Lạy Chúa, con kêu lên cùng Chúa.
}

loiMauSau = \lyricmode {
  Linh hồn con trông cậy vào Chúa.
}

loiMauBay = \lyricmode {
  Chúa chăn nuôi tôi, tôi chẳng thiếu thốn chi.
  Trên đồng cỏ xanh rì ngài để tôi nằm nghỉ,
  Tới dòng nước yên lành,
  Ngài hướng dẫn tôi, tâm hồn tôi Ngài lo bồi dưỡng.
}

loiMauTam = \lyricmode {
  Ngài dẫn tôi trên đường ngày chính vì uy danh Ngài,
  Dù bước qua lũng tối tử thần
  con không lo mắc nạn,
  vì Chúa ở cùng con,
  chính côn trượng Chúa khiến con an lòng.
}

loiMauChin = \lyricmode {
  Trước mặt con, Chúa dọn bàn tiệc đối diện những kẻ hại con.
  Trên đầu con Chúa xức dầu thơm,
  Ly rượu con đầy tràn chan chứa.
}

loiMauMuoi = \lyricmode {
  Phúc lộc và lượng từ bi Chúa mãi theo tôi suốt cả cuộc đời.
  Và tôi sẽ ở trong nhà Chúa suốt chuỗi ngày dài triền miên.
}

loiMauMuoiMot = \lyricmode {
  Lạy Chúa, xin nhớ đến con trong nước Chúa.
}

loiMauMuoiHai = \lyricmode {
  Xin Chúa Ki -- tô đón nhận
  <<
  { "ông (anh)" }
  \new Lyrics {
	  \set associatedVoice = "beSop"
	  \override Lyrics.LyricText.font-shape = #'italic
	  "bà (chị)"
	}
  >>
  vào thiên đàng.
}

loiMauMuoiBa = \lyricmode {
  Tôi đã nghe tiếng từ trời phán bảo rằng:
  Phúc cho ai được chết trong Chúa.
}

loiMauMuoiBon = \lyricmode {
  Xin ca đoàn thiên thần đón tiếp
  <<
  { ông }
  \new Lyrics {
	  \set associatedVoice = "beSop"
	  \override Lyrics.LyricText.font-shape = #'italic
	  bà
	}
  >>
  và đặt
  <<
  { ông }
  \new Lyrics {
	  \set associatedVoice = "beSop"
	  \override Lyrics.LyricText.font-shape = #'italic
	  bà
	}
  >>
  vào lòng Ap -- bra -- ham để
  <<
  { ông }
  \new Lyrics {
	  \set associatedVoice = "beSop"
	  \override Lyrics.LyricText.font-shape = #'italic
	  bà
	}
  >>
  nghỉ yên muôn đời cùng với La -- za -- rô,
  người nghèo khó xưa.
}

loiMauHaiMuoiLam = \lyricmode {
  Lạy Chúa, xin cho linh
  <<
  { hồn Ma -- ri -- a }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  _ _ Giu -- se
	}
  >>
  được nghỉ yên muôn đời
  và cho ánh sáng ngàn thu chiếu soi trên linh
  <<
  { hồn Ma -- ri -- a }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  _ _ Giu -- se
	}
  >>
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
        \bold "Giai đoạn I:" \normal-text \italic "Tại nhà tang"
      }
      \line {
        \italic "Sau đoạn Thánh Kinh ngắn, tùy nghi hát:"
      }
      \line {
        \bold \italic "Thánh vịnh 129"
      }
    }
  }
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
      \remove "Time_signature_engraver"
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    \override Lyrics.LyricSpace.minimum-distance = #0.75
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
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
      instrumentName = \markup { \bold "hoặc" }} <<
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
  \bold "Thánh Vịnh 22"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
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
      instrumentName = \markup { \bold "2" }} <<
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
      instrumentName = \markup { \bold "3" }} <<
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
      instrumentName = \markup { \bold "4" }} <<
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
      instrumentName = \markup { \bold "Đáp" }} <<
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

\markup {
  \vspace #2
  \bold "Thánh Vịnh 113" \normal-text "với câu đáp:"
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "Đáp" }} <<
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

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "Rước đến nhà thờ"
      }
      \line {
        "Tùy nghi hát các Thánh vịnh, sau với Đối ca"
        \italic "(Hát Đối ca xong,"
      }
      \line {
        \italic "hát liên tục hết Thánh vịnh rồi mới lặp lại Đối ca để kết thúc)"
      }
      \vspace #2
      \line {
        \italic "* Thánh vịnh 114 (trang 236), với Đối ca"
      }
    }
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBa
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
  %\vspace #2
  \italic "* Thánh vịnh 115 (trang 236), với Đối ca"
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBon
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
  \italic "* Thánh Vịnh 50 (trang 244), với Đối ca"
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    } <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiLam
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

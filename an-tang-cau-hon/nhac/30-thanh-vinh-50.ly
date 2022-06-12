% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 50"
  subsubtitle = \markup { \normal-text \italic "Hát khi rước xác đến nhà thờ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhanMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 e |
  f4 e8 f |
  g4. g8 |
  f (e) f g |
  a4 bf8 g |
  a4. g8 |
  f g a f |
  e4 e8 d |
  e8. a,16 f'8 e |
  d4 d8 g |
  f8. e16 d8 g |
  \slashedGrace { f16 (g } a2) ~ |
  a4 \bar "||"
}

nhacPhanHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  f8 e g4 ~ |
  g8 bf g a |
  a4 f8 g |
  e2 |
  g8 g f16 (e) a8 |
  d,4 r8 d |
  c d a f' |
  f8. f16 e8 e |
  a4 r8 a |
  e4 e8 g |
  a bf f (e) |
  d2 ~ |
  d4 \bar "||"
}

nhacPhanBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  c2 |
  r8 e a, d |
  d4 e8 e |
  f4. f8 |
  g a e f |
  \slashedGrace { c16 ( } d4) f8 e |
  e4. f8 |
  g4 f8 e |
  a4 f8 g |
  e4. a,8 |
  f' (e) c d |
  d4 \bar "||"
}

nhacPhanBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  bf'8 g a4 ~ |
  a8 g f g |
  e2 |
  r8 f a d, |
  e4. d8 |
  d16 (e) a,8 f' e |
  d2 |
  d8 c c d |
  bf8. a16 f'8 e |
  d8. d16 g (f) e8 |
  e4 g8 f |
  g4 e8 g |
  f8. g16 bf8 g |
  a2 ~ |
  a4 \bar "||"
}

nhacPhanNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 d |
  d4. c8 |
  f2 |
  bf8 a g f |
  \slashedGrace { c16 ( } e4) d8 g |
  a8. f16 f8 f |
  bf4. (a8) |
  f a f16 (g) f8 |
  e4 d8 d16 (e) |
  c4 a8 a |
  f' d e4 ~ |
  e8 f f (g) |
  a4. (g8) |
  f g16 (a) e8 f |
  d4 \bar "||"
}

nhacPhanSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 e |
  f4. e8 |
  d e e c |
  d4. d8 |
  a4 a8 d |
  d d c f |
  e4 e8 d |
  g4 r8 g |
  d f e (f) |
  g f16 (e) g8 g |
  a2 |
  a8 a f (e) |
  g8. e16 a8 f16 (e) |
  d2 ~ |
  d4 \bar "||"
}

nhacPhanBay = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 d |
  c4. d8 |
  d4. c8 |
  f4 f8 g |
  e2 |
  g8 f e e16 (f) |
  d4. g8 |
  a4 a16 (bf) a8 |
  g4 g8 a |
  f (e) d f |
  e4 d8 a' |
  a2 |
  r8 f f f |
  bf4 g16 (a) f8 |
  e4. a8 |
  d,2 ~ |
  d4 \bar "||"
}

nhacPhanTam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  c8 f e4 ~ |
  e8 d16 (e) a,8 a |
  f'4 e8 f |
  g4. f8 |
  g a a d, |
  e2 |
  d16 (e) d8 c16 (d) c8 |
  a4 d8 e |
  f4 r8 e |
  a g16 (f) d8 e |
  e2 |
  e16 (f) d8 g g |
  e8. e16 g8 g |
  a2 ~ |
  a4 \bar "||"
}

nhacPhanChin = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  f'4 e16 (f) e8 |
  d4. g8 |
  a4 r8 bf |
  a g a f |
  g4. a8 |
  a4 g8 f |
  e4 d8 e |
  f2 ~ |
  f8 d f16 (e) d8 |
  a4. a8 |
  d c d (e) |
  f4 e8 d |
  g4. g16 (a) |
  c,8 e f e |
  d2 ~ |
  d4 \bar "||"
}

nhacPhanMuoi = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  f'4 e8 c |
  d e e f |
  f (e) d d |
  d2 |
  r8 g g16 (f) e8 |
  e4. d8 |
  a'16 (bf) a8 g g |
  g4 r8 a |
  d,2 |
  c8 d a e' |
  f4 e8 d |
  d4 r8 d |
  a'4. bf8 |
  a4 f8 a |
  f4. d8 |
  e4 r8 f |
  c4. f8 |
  e f f d |
  g4. g8 |
  g f f (g) |
  a2 ~ |
  a4 \bar "||"
}

nhacPhanMuoiMot = \relative c' {
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
      \override NoteColumn.force-hshift = #1.7
      \tiny \parenthesize d4. \parenthesize e8
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
      \override NoteColumn.force-hshift = #1.7
      \tiny \parenthesize c4. \parenthesize d8
    }
  >>
  \oneVoice
  d2 ~ |
  d4 \bar "|."
}

% Lời
loiPhanMot = \lyricmode {
  Lạy Thiên Chúa, nguyện thương con theo lượng từ bi Chúa,
  xóa tội con theo lòng thương xót hải hà.
  Xin rửa con sạch hết lỗi lầm.
  Tội con phạm, xin Ngài thanh tẩy.
}

loiPhanHai = \lyricmode {
  Vì lỗi lầm con, chính con đã biết,
  tội con phạm luôn phơi bày trước mặt.
  Con đã xúc phạm đến Chúa, đến một mình Chúa,
  đã làm điều gian ác trước nhan Ngài.
}

loiPhanBa = \lyricmode {
  Như vậy, Chúa thật công minh khi tuyên án,
  và ngay chính khi xét xử.
  Khi chào đời, con đã vương lầm lỗi,
  và trong tội, mẹ đã hoài thai con.
}

loiPhanBon = \lyricmode {
  Này Chúa ưa thích tâm hồn chân thật, tận đáy lòng con,
  Ngài tỏ bày lẽ khôn ngoan.
  Xin dùng cành hương thảo rẩy nước trên con thì con được sạch,
  Xin rửa con thì con sẽ nên trắng hơn tuyết.
}

loiPhanNam = \lyricmode {
  Xin cho con được nghe tiếng reo vui hoan hỉ,
  và xương cốt bị Ngài nghiền nát được hớn hở nhảy mừng.
  Xin ngoảnh mặt, đừng nhìn đến tội con,
  và tẩy xóa mọi lỗi lầm con phạm.
}

loiPhanSau = \lyricmode {
  Lạy Thiên Chúa xin tạo cho con quả tim trong sạch
  và canh tân tinh thần cương nghị trong lòng con.
  Xin đừng xua đuổi con khỏi tôn nhan Chúa,
  Chớ rút khỏi con thần khí của Ngài.
}

loiPhanBay = \lyricmode {
  Xin ban lại cho con niềm vui ơn cứu độ,
  với tinh thần quảng đại xin Chúa đỡ nâng con,
  Con sẽ dạy kẻ bất lương đường lối Chúa,
  và người tội lỗi sẽ trở lại với Ngài.
}

loiPhanTam = \lyricmode {
  Xin giải thoát con khỏi vạ đổ máu,
  lạy Thiên Chúa là Thiên Chúa cứu độ con
  Lưỡi con sẽ reo mừng Ngài công chính.
  Lạy Chúa, xin mở môi con,
  để miệng con loan truyền lời ca khen Chúa.
}

loiPhanChin = \lyricmode {
  Vì Chúa chẳng ưa gì hy lễ.
  Nếu con dâng lễ toàn thiêu Chúa cũng chẳng vui lòng.
  Lạy Thiên Chúa, của lễ dâng Ngài là tâm hồn tan nát,
  xin đừng chê tấm lòng tan nát khiêm cung.
}

loiPhanMuoi = \lyricmode {
  Lạy Chúa xin rộng lòng thi ân giáng phúc cho Si -- on,
  Xin xây dựng lại thành lũy Giê -- ru -- sa -- lem.
  Bấy giờ Ngài sẽ nhận hy lễ theo luật truyền,
  của lễ tiến dâng và lễ vật toàn thiêu.
  Bấy giờ thiên hạ sẽ giết bò tơ dâng trên bàn thờ Chúa.
}

loiPhanMuoiMot = \lyricmode {
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

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanMot
        }
      \new Lyrics \lyricsto beSop \loiPhanMot
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
          \nhacPhanHai
        }
      \new Lyrics \lyricsto beSop \loiPhanHai
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
          \nhacPhanBa
        }
      \new Lyrics \lyricsto beSop \loiPhanBa
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
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanBon
        }
      \new Lyrics \lyricsto beSop \loiPhanBon
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
      instrumentName = \markup { \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanNam
        }
      \new Lyrics \lyricsto beSop \loiPhanNam
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
      instrumentName = \markup { \bold "6" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanSau
        }
      \new Lyrics \lyricsto beSop \loiPhanSau
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
      instrumentName = \markup { \bold "7" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanBay
        }
      \new Lyrics \lyricsto beSop \loiPhanBay
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
      instrumentName = \markup { \bold "8" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanTam
        }
      \new Lyrics \lyricsto beSop \loiPhanTam
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
      instrumentName = \markup { \bold "9" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanChin
        }
      \new Lyrics \lyricsto beSop \loiPhanChin
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
      instrumentName = \markup { \bold "10" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanMuoi
        }
      \new Lyrics \lyricsto beSop \loiPhanMuoi
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
      instrumentName = \markup { \bold "Đáp" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacPhanMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiPhanMuoiMot
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

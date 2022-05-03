% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 24"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauHaiMuoiBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 (g) |
  a4. a8 |
  bf d, d d16 (f) |
  g4. e8 |
  f g bf g16 (bf) |
  c4. d8 |
  d4 bf8 c16 (bf) |
  g4 r8 g |
  c2 |
  r8 a bf bf |
  g4. g8 |
  e (f) g a |
  a4. g8 |
  c4 e,8 g |
  f4 \bar "||"
}

nhacMauHaiMuoiLam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  f8 g a4 ~ |
  a8 a bf a |
  g4 g8 a |
  g8. f16 bf8 c |
  c2 ~ |
  c8 bf g g |
  a8. f16 g8 a |
  \slashedGrace { d,16 (f } d2) ~ |
  d8 c e g |
  bf8. e,16 e8 g |
  f4 \bar "||"
}

nhacMauHaiMuoiSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 g16 (f) |
  e4. f8 |
  g c, g' f16 (g) |
  a2 |
  bf8 g bf c |
  \slashedGrace { f,16 (g } f4.) e8 |
  g a a g16 (f) |
  d2 |
  f8 d c f |
  e4 e8 g |
  f (g) bf g |
  a4. e8 |
  g f f bf |
  g4. g16 (bf) |
  c4 \bar "||"
}

nhacMauHaiMuoiBay = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  <<
    {
      a'2 |
      g8 g g f |
      bf4. g8 |
      c2 ~ |
      c4 \bar "|."
    }
    {
      f,2 |
      e8 e e ef |
      d4. d8 |
      e2 ~ |
      e4
    }
  >>
}

nhacMauHaiMuoiTam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  <<
    {
      a'2 |
      r8 bf bf g |
      c4. c8 |
      e,4 e8 g |
      f2 ~ |
      f4 \bar "|."
    }
    {
      f2 |
      r8 g g f |
      e4. d8 |
      c4 c8 (bf) |
      a2 ~ |
      a4
    }
  >>
}

% Lời
loiMauHaiMuoiBon = \lyricmode {
  Lạy Chúa xin nhớ lại lượng từ bi
  và lòng thương xót của Chúa đã có từ muôn đời.
  Lạy Chúa xin nhớ đến con theo lòng thương xót Chúa
  vì Chúa thật nhân lành.
}

loiMauHaiMuoiLam = \lyricmode {
  Lòng con se thắt, xin nới ra cho,
  xin kéo con khỏi cơn quẫn bách.
  Xin nhìn phận con lầm than khốn khổ
  và thương tha thứ mọi tội lỗi con.
}

loiMauHaiMuoiSau = \lyricmode {
  Xin giữ gìn mạng con và thương giải thoát,
  Chớ để con xấu hổ vì con tín thác nơi Ngài.
  Ước chi lòng trong sạch và ngay thẳng giữ gìn con
  vì con trọn niềm trông cậy ở Chúa.
}

loiMauHaiMuoiBay = \lyricmode {
  Lạy Chúa, con nâng tâm hồn lên cùng Chúa.
}

loiMauHaiMuoiTam = \lyricmode {
  Lạy Chúa, ai trông cậy Chúa sẽ chẳng hổ ngươi.
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
  \line {
    \bold "Thánh vịnh 24"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiBon
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.7
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
          \nhacMauHaiMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiLam
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
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiSau
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
      instrumentName = \markup { \bold "Đáp" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiBay
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiBay
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
      instrumentName = \markup { \bold "hoặc" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiTam
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiTam
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

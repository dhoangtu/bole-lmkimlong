% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 114, 115"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauHaiMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 a8 (b) |
  g a e g |
  a4 r8 b |
  c c b4 |
  e,8 e b' (c) |
  a4 c8 a |
  c c b16 (a) b8 |
  g4 a8 b |
  e,4. e8 |
  c'4 b8 g |
  a4 \bar "||"
}

nhacMauHaiHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 f16 (e) |
  d8. b16 d8 d |
  e4 c'8 b |
  b b16 (c) g8 a |
  e4 f8 d16 (e) |
  c8. d16 f8 f |
  e2 |
  r8 a f f |
  e d e (g) |
  a2 ~ |
  a4 \bar "||"
}

nhacMauHaiBa = \relative c'' {
  \key c \major
  \time 2/4
  \autoPageBreaksOff
  \partial 4 c8 b |
  c8. a16 a8 e' |
  e4. e8 |
  e4. b16 (c) |
  e,4 c'16 (d) c8 |
  b4 r8 a |
  e (a) b4 |
  b8. a16 d8 e |
  e4 a,8 a |
  a (b) c4 ~ |
  c8 e, b'16 (c) b8 |
  a4 \bar "||"
}

nhacMauHaiBon = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. a8 c c |
  b8. d16 c8 d |
  e4 b8 a |
  c8. e,16 g8 e16 (g) |
  a2 ~ |
  a4 \bar "|."
}

nhacMauHaiNam = \relative c' {
  \key c \major
  \time 2/4
  \partial 8 e8 |
  a4
  <<
    {
      b |
      c4. c8 |
      b4 e |
      a,2 ~ |
      a4 \bar "|."
    }
    {
      gs4 |
      a4. a8 |
      e4 d |
      c2 ~ |
      c4
    }
  >>
}

% Lời
loiMauHaiMot = \lyricmode {
  Chúa từ bi và công chính
  Thiên Chúa chúng ta đầy lòng xót thương
  Chúa gìn giữ những ai bé mọn,
  tôi yếu hèn, Ngài đã cứu độ tôi.
}

loiMauHaiHai = \lyricmode {
  Tôi đã tin cả khi tôi nói:
  “Tấm thân tôi khổ cực trăm bề.”
  Lúc hoảng sợ tôi đã thốt lên:
  “Hết thảy mọi người đều giả dối.”
}

loiMauHaiBa = \lyricmode {
  Trước nhan Chúa thật là quý giá
  cái chết của bậc thánh nhân Ngài.
  Ôi lạy Chúa, con là tôi tớ Chúa,
  Ngài đã bẻ gẫy xiềng xích cho con.
}

loiMauHaiBon = \lyricmode {
  Tôi sẽ bước đi trước nhan thánh Chúa,
  trong miền đất dành cho kẻ sống.
}

loiMauHaiNam = \lyricmode {
  Al -- le -- lu -- ia,
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
  %\vspace #2
  \bold "Thánh vịnh 114"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMot
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMot
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
  \bold "Thánh vịnh 115"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiHai
        }
      \new Lyrics \lyricsto beSop \loiMauHaiHai
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
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiBa
        }
      \new Lyrics \lyricsto beSop \loiMauHaiBa
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
      instrumentName = \markup { \bold "Đáp" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiBon
        }
      \new Lyrics \lyricsto beSop \loiMauHaiBon
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
      instrumentName = \markup { \bold "hoặc" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiNam
        }
      \new Lyrics \lyricsto beSop \loiMauHaiNam
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

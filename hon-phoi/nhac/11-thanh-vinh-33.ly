% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 33"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. e8 g c, |
  <<
    {
      a'4 a8 g |
      c2 ~ |
      c4 \bar "|."
    }
    {
      f,4 d8 d |
      e2 ~ |
      e4
    }
  >>
}

nhacMauHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e8 g c, |
  f4 e8 d |
  a'2 r8 f g g |
  f4 d8 e16 (d) |
  c4 r8 g' |
  c2 |
  g8 f g g16 (a) |
  d,4 d16 (e) d8 |
  c a' g4 ~ |
  g8 g d' b |
  c2 ~ |
  c4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 c, |
  f4 f8 e |
  a4 b8 c |
  c8. e16 a,8 a |
  g2 |
  r8 g g e |
  a8. f16 g8 a |
  d,2 |
  r8 d f a |
  g f16 d g8 d |
  c4 \bar "||"
}

nhacMauBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e8 c e |
  f4. f8 |
  d g e e |
  a4 e8 g |
  f a d, f |
  g4. g8 |
  g g b16 (c) d8 |
  d2 |
  b8 d c a |
  g4 f8 a |
  d,2 |
  a'16 (b) g8 a b |
  c4 \bar "||"
}

nhacMauNam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e8 d (e) |
  g4. g8 |
  c, e e f16 (e) |
  d4 a'8 g |
  c2 ~ |
  c8 b b16 (c) e8 |
  a,2 |
  a8 a f d |
  g2 |
  d'8 a a a |
  b4 r8 b16 (c) |
  g4. e8 |
  a g g (a) |
  c2 ~ |
  c4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Tôi chúc tụng Chúa trong mọi lúc.
}

loiMauHai = \lyricmode {
  Tôi chúc tụng Chúa trong mọi lúc,
  Miệng tôi liên lỉ ngợi khen Ngài.
  Trong Chúa, linh hồn tôi hãnh diện,
  Kẻ mọn hèn lắng nghe và hãy mừng vui.
}

loiMauBa = \lyricmode {
  Hãy cùng tôi ca ngợi Chúa,
  cùng nhau ta tán tụng danh Ngài.
  Tôi kêu cầu Chúa, Ngài thương đáp lại
  và giải cứu tôi khỏi mọi nỗi kinh hoàng.
}

loiMauBon = \lyricmode {
  Ai nhìn lên Chúa để được vui mừng rạng rỡ
  và không phải bẽ mặt hổ ngươi.
  Kìa người nghèo khổ kêu van và Chúa đã nhậm lời,
  Ngài cứu họ khỏi mọi cơn nguy khó.
}

loiMauNam = \lyricmode {
  Thiên Thần Chúa đóng trại chung quanh những người
  kính sợ Chúa và giải thoát họ.
  Hãy nếm thử mà xem Chúa thiện hảo dường bao,
  Phúc thay người tin cậy vào Chúa.
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
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

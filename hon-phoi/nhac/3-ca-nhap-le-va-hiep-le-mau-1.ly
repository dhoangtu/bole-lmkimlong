% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = "Ca Nhập Lễ và Hiệp Lễ"
  subsubtitle = "Mẫu 1"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 8
  c
}

nhacMauHai = \relative c'' {
  \key c \major
  \time 2/4
  \partial 8
  c
}

% Lời
loiMauMot = \lyricmode {
  Từ thánh điện xin Chúa trợ giúp các bạn,
  Và từ Si -- on xin Chúa thương bảo vệ.
  Xin Ngài ban ơn theo lòng các bạn nguyện ước.
}

loiMauHai = \lyricmode {
  Đức Ki -- tô đã yêu thương Hội Thánh
  Và đã hiến mình cho Hội Thánh,
  để Hội Thánh trở nên Hiền Thê thánh thiện và tinh tuyền của Người.
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
    indent = 15
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
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

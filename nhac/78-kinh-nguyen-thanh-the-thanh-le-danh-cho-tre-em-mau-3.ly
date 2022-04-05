% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  %title = "Kinh Nguyện Thánh Thể"
  %subtitle = \markup { \huge \bold "Thánh Lễ Dành Cho Trẻ Em" }
  subsubtitle = \markup { \large \bold "Mẫu 3" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key c \major
  \time 2/4
  e8 g \hide ([a]) b4 b8 a g b c c a b c b4
  a8 \hide ([c]) d b c a b4 e,8 g b a a a a4 \bar "|" a8 a a
  b d c4 b8 c a g g b e, g b a4 a8 d c a c
  b4 b8 f f g \hide ([a]) e4 g8 e e g \hide ([b]) a4 \bar "|" g8 \hide ([g]) a4 a8 a a
  e e g a a4 g8 c a c d4 d8 c a c c a c
  b b c a4 b8 b a g g a \hide ([b]) b4 a8 d c a a g4 \bar "||"
}

nhacMauHai = \relative c'' {
  \key g \major
  \time 2/4
  \partial 8
  <<
    {
      d8 |
      c4 a8 b |
      b4 fs8 g |
      a4. a8 |
      d4 r8 b |
      a4 fs8 g |
      g2 ~ |
      g4 \bar "||"
    }
    {
      b8 |
      a4 fs8 g |
      g4 d8 e |
      d4. c8 |
      b4 r8 g' |
      c,4 d8 c |
      b2 ~ |
      b4
    }
  >>
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "LM."
  Lạy Thiên Chúa, chúng con tạ ơn Chúa đã dựng nên chúng con,
  để chúng con sống cho Chúa và thương mến nhau như anh em.
  Thật là hồng ân Chúa ban khi chúng con được gặp gỡ
  trò truyện với nhau và biết chia sẻ với nhau
  những gì là tốt lành, những gì là khó khăn,
  Lạy Cha trong khi vui mừng và tạ ơn Cha vì những hồng ân ấy,
  chúng con hiệp với tất cả những ai tin kính Cha,
  với các Thiên Thần và các Thánh
  mà hoan hỉ tuyên xưng rằng:
}

loiMauHai = \lyricmode {
  Chúng con ngợi khen Cha là Thiên Chúa tốt lành,
  chúng con tạ ơn Cha.
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
  \column {
    \null
    \line { \bold "Mở đầu như Mẫu 1" }
    \null
    \line { \bold "Hoặc:" }
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
    indent = 15
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  \column {
    \null
    \line { \bold "Thánh! Thánh! Thánh!" }
    \line { "có thể sử dụng như ở Mẫu 2" }
    \null
    \line { \bold "Tung hô sau Truyền Phép" }
    \line { "có thể dùng 1 trong 4 cách ở Mẫu 1" }
    \null
    \line { \bold "Linh mục tiếp tục đọc các lời nguyện," }
    \line { \bold "sau mỗi lời, Giáo Dân tung hô:" }
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

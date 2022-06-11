% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Kinh Tiền Tụng Chung (I)"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b c c
  b4 b8 b d d4 c8 \hide ([b]) g4 a8 b a b c g b b \hide ([c]) a4 \bar "|"
  a8 \hide ([b a]) g4 c8 c c b b a a4 a8 b c
  g b a4 a8 c b b c d \hide ([c]) b a4 a8 \hide ([b]) g4 b8
  c a b c4 b8 d b c \hide ([b]) a b4 a8 a c a c
  b a g \hide ([a]) b4 b8 c a a \hide ([b]) a g4 g8 \hide ([a]) b4 a8 c
  a c c c d c \hide ([b]) a4 a8 c b b b c a c
  a \hide ([b]) b c a c b a g g4 \bar "|" g8 \hide ([a]) b4 a8 c
  c b a a a \hide ([b]) c b a4 c8 a a a b \hide ([a])
  g4 g8 g b \hide ([c]) a b c d4 d8 b b
  a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc nhờ Đức Ki -- tô, Chúa chúng con,
  thật là chính đáng, phải đạo và đem lại ơn cứu độ cho chúng con.
  Trong Người, Chúa đã muốn canh tân mọi sự và cho hết thảy chúng con
  được thông phần sự sung mãn của Người.
  Bởi vì, tuy vốn là Thiên Chúa, Người đã tự bỏ mình đi, và nhờ Máu Người
  đổ ra trên thập giá, Người đã hòa giải muôn loài.
  Bởi đó, Người đã được suy tôn trên hết mọi sự
  và trở nên căn nguyên cứu độ vĩnh cửu cho tất cả những ai vâng phục Người.
  Vì thế, cùng với các Thiên Thần và Tổng Lãnh Thiên Thần,
  các Bệ Thần và Quản Thần, cùng toàn thể đạo binh thiên quốc,
  chúng con không ngừng hát bài ca chúc tụng vinh quang Chúa rằng:
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 3\mm
  bottom-margin = 3\mm
  left-margin = 3\mm
  right-margin = 3\mm
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  } 
}

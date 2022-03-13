% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Thăng Thiên" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b c c b4
  b8 b d d4 c8 \hide ([b]) a4 a8 b a b c g b b \hide ([c]) a4 \bar "|"
  b8 b c \hide ([b]) a4 a8 c a b c a c c a \hide ([b]) a g4
  a8 c b \hide ([c]) a b g b \hide ([c]) a4 a8 b c b
  a b a a b \hide ([c]) a g4 \bar "|"
  g8 \hide ([a]) b4 b8 a b b
  d c b c \hide ([b]) a b4 a8 b \hide ([c]) b a b c a a
  a b \hide ([a]) g4 g8 g4 b8 \hide ([c]) a a a a b \hide ([c]) a b c
  d4 b8 a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc, nhờ Đức Ki -- tô Chúa chúng con
  thật là chính đáng, phải đạo và đem lại ơn cứu độ cho chúng con.
  Sau khi sống lại, Người đã hiện ra tỏ tường với tất cả môn đệ,
  và đã lên trời trước mặt các ông để cho chúng con được tham dự
  thần tính của Người.
  Vì thế, với niềm hân hoan chứa chan trong lễ Phục sinh,
  toàn thể nhân loại trên khắp địa cầu đều nhảy mừng,
  Đồng thời các Quyền Thần cùng toàn thể đạo binh thiên quốc
  không ngừng hát bài ca chúc tụng vinh quang Chúa rằng:
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  page-count = 1
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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
    %indent = 10
  } 
}

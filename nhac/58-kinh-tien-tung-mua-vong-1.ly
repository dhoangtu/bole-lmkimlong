% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Mùa Vọng I" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b8 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b c
  c b4 b8 b d d4 c8 \hide ([b]) a4 a8 b a b c g
  b b \hide ([c]) a4 \bar "|"
  
  a8 g \hide ([a]) b a c c4 a8 c b c c
  a4 a8 b g g g a g b \hide ([c]) a a a b4 a8 a a c
  g g g b b \hide ([c]) a4 \bar "|"
  a8 \hide ([b]) a g c \hide ([b]) a c b4 b8 c d d c \hide ([b])
  a a b c a a a \hide ([b]) g4 b8 a c b g g b b b4
  a8 a b c b b a \hide ([g]) c4 b8 d \hide ([c]) a a g4 \bar "|"
  g8 \hide ([a]) b4 a8 c c b a a a \hide ([b]) c b a c a a a
  b \hide ([a]) g4 g8 g b \hide ([c]) a b c d4 d8 b b
  a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa, là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc nhờ Đức Ki -- tô
  Chúa chúng con, thật là chính đáng phải đạo
  và đem lại ơn cứu độ cho chúng con.
  Khi ngự đến lần thứ nhất, mặc lấy thân xác yếu hèn,
  Người đã thực hiện hồng ân mà Chúa dự định từ xưa
  và mở đường cứu độ đời đời cho chúng con.
  Để khi Người đến lần thứ hai trong vinh quang cao cả
  nhờ hồng ân bấy giờ được tỏ hiện, chúng con sẽ lãnh nhận
  điều Chúa đã hứa mà ngày nay chúng con đang tỉnh thức
  và vững dạ đợi chờ.
  Vì thế cùng với các Thiên Thần và Tổng Lãnh Thiên Thần,
  các Bệ Thần và Quản Thần, cùng toàn thể đạo binh Thiên quốc,
  chúng con không ngừng hát bài ca chúc tụng vinh quang Chúa rằng:
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
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
    indent = #10
  } 
}

% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Giáng Sinh I" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c b c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 b8 b d d4 c8 \hide ([b])
  a4 a8 b a b c g b b \hide ([c]) a4 \bar "|"
  g8 g g g b
  a a \once \stemDown a4 (b) a8 a c c b c c d d c \hide ([b]) a
  b c c b4 a8 b a c b c d b c \hide ([b]) a4 g8
  b a g b c4 b8 c c a \hide ([b]) a g4 \bar "|" g8 ([b]) b4
  a8 c c b a a a \hide ([b]) c b a4 c8 a a a
  b \hide ([a]) g4 g8 g b \hide ([c]) a b c d4 d8 b b
  a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa, là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc,
  thật là chính đáng, phải đạo và đem lại ơn cứu độ cho chúng con.
  Vì nhờ mầu nhiệm Ngôi Lời nhập thể, một luồng sáng mới
  từ vinh quang Chúa chiếu rọi vào tâm trí chúng con
  để khi nhận biết Thiên Chúa xuất hiện hữu hình,
  thì chúng con được lôi cuốn yêu mến những sự vô hình.
  Vì thế, cùng với các Thiên Thần và Tổng Lãnh Thiên Thần,
  các Bệ Thần và Quản Thần cùng toàn thể đạo binh thiên quốc,
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
  %page-count = 1
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
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
    indent = #10
  } 
}

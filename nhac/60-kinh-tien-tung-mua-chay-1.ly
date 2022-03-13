% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Mùa Chay I" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b c
  c b4 b8 b d d4 c8 \hide ([b]) a4 a8 b a b c g
  b c \hide ([b]) a4 \bar "|" a8 a b4 c8 b b c c c \hide ([b]) a b
  b c \hide ([b]) a a a a b4 c8 b a b \hide ([c]) a a g (a4) \bar "|"
  
  a8 b a b g g g \hide ([a]) b4 a8 b c c4 a8 c b
  d d c \hide ([b]) a g b b \hide ([c]) a4 a8 c c c a c a
  a a a g a4 b \bar "|" g8 \hide (a) b a b c b
  a a a \hide ([b]) c b a c a a a b \hide ([a]) g4
  g8 g b \hide ([c]) a b c d4 d8 b b a c a
  b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu
  chúng con tạ ơn Chúa mọi nơi mọi lúc, nhờ Đức Ki -- tô,
  Chúa chúng con, thật là chính đáng, phải đạo
  và đem lại ơn cứu độ cho chúng con.
  Vì hàng năm, Chúa ban cho các tín hữu được hân hoan
  đón chờ mầu nhiệm Vượt Qua với tâm hồn đã được thanh tẩy
  Để khi nhiệt tâm làm việc đạo đức, thực thi bác ái,
  và năng chịu các Bí Tích đem lại ơn tái sinh,
  thì các tín hữu được lãnh nhận trọn vẹn ơn làm con Chúa.
  Vì thế, cùng với các Thiên Thần và Tổng Lãnh Thiên Thần,
  các Bệ Thần và Quản Thần,
  cùng toàn thể đạo binh thiên quốc,
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
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  } 
}

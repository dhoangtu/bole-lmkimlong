% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = \markup {
    \center-column {
      \huge \bold "Kinh Tiền Tụng"
      \huge \bold "Cầu Cho Các Tín Hữu Đã Qua Đời I" }
  }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c b4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b c c
  b4 b8 b d d4 c8 \hide ([b]) a4 a8 b a b c g b
  b \hide ([c]) a4 \bar "|" a8 \hide ([b a]) g4 g8 b a c b c d d c \hide ([b])
  a b c b4 a8 c b a a a c b d d \hide ([c])
  b \hide ([a]) b4 c8 a b c4 a8 c c c b c a b
  c a a g4 \bar "|" g8 g \hide ([a]) b4 b8 b b b b b4 a8 c
  b \hide ([a]) g \hide ([a]) b a b a4 a8 b b b c \hide ([b]) c a b4
  a8 a a c c4 b8 b b b d \hide ([c]) a \hide ([b]) c c a4 g \bar "|"
  g8 \hide ([a]) b4 a8 c c b a a a \hide ([b]) c b a4 c8 a
  a a b \hide ([a]) g4 g8 g b \hide ([c]) a b c d4 d8 b
  b a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc, nhờ Đức Ki -- tô, Chúa chúng con,
  thật là chính đáng, phải đạo và đem lại ơn cứu độ cho chúng con.
  Nơi Người niềm hy vọng sống lại vinh phúc đã chiếu tỏa trên chúng con,
  để những ai buồn sầu vì số phận chức chắn phải chết,
  cũng được an ủi vì Chúa đã hứa ban phúc trường sinh bất diệt sau này.
  Vì, lại Chúa, đối với các tín hữu Chúa, sự sống thay đổi chứ không mất đi,
  và khi nơi nương náu dưới trần gian bị hủy diệt tiêu tan
  thì lại được một chỗ ở vĩnh viễn trên trời.
  Vì thế, cùng với các Thiên Thần và Tổng Lãnh Thiên Thần,
  các Bệ Thần và Quản Thần, cùng toàn thể đạo binh thiên quốc,
  chúng con không ngừng hát ài ca chúc tụng vinh quang Chúa rằng:
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

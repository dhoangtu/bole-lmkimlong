% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Thánh Thể" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b a
  c b4 b8 b d d4 c8 \hide ([b]) a4 a8 b a b c g
  b b \hide ([c]) a4 \bar "|" b8 a c c b c a c b a4 a8
  c a a a c b b c a4 g8 g
  g c b \hide ([c]) a4 b8 c b a c d4 b8 c c
  a g \hide ([a]) b4 a8 a c b a a b g c b \hide ([c]) a4 \bar "|"
  g8 g g b b \hide ([c]) a4 c8 b c \hide ([b]) g b b b b
  b b4 b8 \hide ([c]) b a b c a g4 g8 g g c b
  c \hide ([b]) a4 g8 g g c c \hide ([b]) a b4 a8 b c a b4
  g8 g g c c \hide ([b]) a a a4 g8 b a b \hide ([c]) a c b a
  a b \hide ([c]) d4 b8 d c d b a a a b \hide ([a]) g4 g8 \hide ([a]) b4
  a8 a b a c c4 c8 a b c b b \hide ([c]) d4 b8 b d
  b c \hide ([b]) a b c b a4 c8 b b a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc, nhờ Đức Ki -- tô, Chúa chúng con,
  thật là chính đáng, phải đạo và đem lại ơn cứu độ cho chúng con.
  Khi dùng bữa tối sau hết với các Tông Đồ,
  Người muốn mầu nhiệm Thập giá sinh ơn cứu độ được tưởng niệm đến muôn đời,
  nên đã dâng mình cho Chúa làm Con Chiên không tì vết,
  làm của lễ ca ngợi hoàn hảo được Chúa chấp nhận.
  Nhờ mầu nhiệm đáng kính này, Chúa nuôi dưỡng và thánh hóa các tín hữu Chúa.
  Để nhân loại trên khắp địa cầu được cùng một đức tin chiếu soi,
  và cùng một đức mến liên kết.
  Vậy khi chúng con đến dự bàn tiệc bí tích kỳ diệu này,
  để khi được no đầy ân sủng dịu ngọt của Chúa,
  thì chúng con thấy như được dự tiệc trên trời.
  Bởi đó mọi loài trên trời dưới đất hát bài ca mới thờ lạy Chúa,
  và cùng với toàn thể đạo binh các Thiên Thần,
  chúng con không ngừng tung hô Chúa rằng.
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
  page-count = 2
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
    indent = 10
  } 
}

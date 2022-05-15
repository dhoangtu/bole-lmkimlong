% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Kinh Tiền Tụng Chúa Nhật Thường Niên"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 a8 c b b c
  c b4 b8 b d d4 c8 \hide ([b]) a4 a8 b a b c g b
  b \hide ([c]) a4 \bar "|" a8 a a a c4 b8 d \hide ([c]) b b c \hide ([b]) a a g
  a4 g8 a g b a g g g \hide ([a]) b4 a8 c b \hide ([c]) b a4 d8
  d c \hide ([b]) b4 g8 \hide ([a]) b4 a8 b c b a a a a
  b \hide ([c]) a a4 a8 b c \hide ([b]) a g (a4) b8 a c b4 c8 c
  b \hide ([c]) d4 b8 d c b a c b \hide ([a]) g a b4 a8 c
  c b g b a4 a8 c c b c b d d \hide ([c]) a \hide ([b])
  g4 \bar "|" g8 \hide ([a]) b4 a8 c c b a a a \hide ([b]) c b a4 c8 a a
  a b \hide ([a]) g4 g8 g b \hide ([c]) a b c d4 d8 b b
  a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc, nhờ Đức Ki -- tô,
  Chúa chúng con, thật là chính đáng, phải đạo và đem lại ơn cứu độ
  cho chúng con. Nhờ mầu nhiệm Vượt Qua, Người đã thực hiện công trình
  kỳ diệu này là kêu gọi chúng con từ vòng tội lỗi,
  và dưới ách tử thần tới ánh vinh quang;
  Nhờ đó, giờ đây chúng con được gọi là dòng dõi tuyển chọn,
  hàng tư tế vương giả, dân tộc thánh thiện, dân riêng của Chúa
  để chúng con loan truyền khắp nơi quyền năng Chúa,
  là Đấng đã kêu gọi chúng con từ chốn tối tăm tới nơi sáng láng
  diệu kỳ. Vì thế cùng với các Thiên Thần và Tổng Lãnh Thiên Thần,
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

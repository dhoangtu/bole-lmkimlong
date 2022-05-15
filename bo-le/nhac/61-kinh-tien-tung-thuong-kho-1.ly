% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Kinh Tiền Tụng Thương Khó I"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b a b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 b8 b d d4 c8 \hide ([b])
  a4 a8 b a b c g b b \hide ([c]) a4 \bar "|" a8 a a
  b \hide ([c]) a b b c a a b c4 g8 b b b a \hide ([b])
  c b \hide ([c]) a a a a b4 a8 a a b g \hide ([a]) b
  a4 a8 a c b \hide ([c]) d b d c a b g (a4) a8
  a a c b a g \hide ([a]) b4 \bar "|" g8 b a \hide ([b]) c4 a8
  c a b \hide ([c]) a g g a \hide ([b]) b4 d8 b b b c \hide ([b])
  a b b \hide ([c]) a a g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc, thật là chính đáng,
  phải đạo và đem lại ơn cứu độ cho chúng con.
  Vì nhờ cuộc Khổ Nạn sinh ơn cứu độ của Con Chúa,
  toàn thế giới đã nhận biết phải tuyên xưng uy linh Chúa,
  đồng thời việc xét xử thế gian
  và quyền năng của Đấng chịu đóng đinh được sáng tỏ,
  nhờ quyền lực khôn tả của Thập giá
  Vì thế, lạy Chúa cùng với toàn thể Thiên Thần và các Thánh,
  chúng con tuyên xưng Chúa và hân hoan tung hô rằng:
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

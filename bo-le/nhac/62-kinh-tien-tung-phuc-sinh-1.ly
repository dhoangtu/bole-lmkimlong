% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Phục Sinh I" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 c8 b b b c b \hide ([c]) d4 d8 b c
  c
  \once \override NoteColumn.force-hshift = #1.5
  \tweak font-size #-2
  \parenthesize
  a
  a b \hide ([a]) g4 b8 b d d4 c8 \hide ([b]) a4 a8 b a b
  c g b b \hide ([c]) a4 a8 c b g b a b b c4
  c8 d c c4 b8 a b a c b a g a \hide ([b]) b4 \bar "|"
  g8 b \hide ([c]) a a b a4 b8 b \hide ([c]) a a b4 g8
  a \hide ([b]) b4 c8 c a a c b c b4 b8 d \hide ([c]) a4 a8 \hide ([b])
  g g g c b b \hide ([c]) a4 \bar "|" g8 \hide ([a]) b4 b8 a b b d
  c b c \hide ([b]) a b4 a8 b \hide ([c]) b a b c a a
  a b \hide ([a]) g4 g8 g4 b8 \hide ([c]) a a a a b \hide ([c]) a b
  c d4 b8 a c a b c a b b c \hide ([b]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa, chúng con tuyên xưng Chúa mọi lúc
  nhất là trong đêm
	  \override Lyrics.LyricText.font-shape = #'italic
	  (ngày)
	\revert Lyrics.LyricText.font-shape
  cực thánh này, thật là chính đáng phải đạo
  và đem lại ơn cứu độ cho chúng con,
  và chúng con càng hãnh diện tung hô Chúa khi Đức Ki -- tô,
  Chiên Vượt Qua của chúng con đã được hiến tế
  Vì chính Người là Chiên thật đã xóa tội trần gian.
  Người đã chết để hủy diệt sự chết nơi chúng con
  và sống lại để phục hồi sự sống cho chúng con.
  Vì thế, với niềm hân hoan chứa chan trong lễ Phục sinh
  toàn thể nhân loại trên khắp địa cầu đều nhảy mừng.
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
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
    %indent = 10
  } 
}

% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Kinh Tiền Tụng Chung (IV)"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 b8 b d d4 c8 \hide ([b])
  a4 a8 b a b c g b b \hide ([c]) a4 \bar "|" b8 c b a
  c b b a4 a8 g b a c b \hide ([c]) d4 a8 a a
  a b b \hide ([c]) a4 g8 b a c b b a4 c8 b
  a c d4 b8 b a b c a a b g4 g8
  c b b c b \hide ([c]) a4 \bar "|" g8 \hide ([a]) b4 a8 c b g c b
  a4 d8 c b a \hide ([b]) c4 a8 b b \hide ([c]) a a g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu
  chúng con tạ ơn Chúa mọi nơi mọi lúc, thật là chính đáng,
  phải đạo và đem lại ơn cứu độ cho chúng con.
  Tuy Chúa không cần chúng con ca tụng,
  nhưng việc chúng con cảm tạ Chúa lại là một hồng ân Chúa ban.
  Vì những lời chúng con ca tụng, chẳng thêm gì cho Chúa,
  nhưng đem lại cho chúng con ơn cứu độ nhờ Đức Ki -- tô, Chúa chúng con
  Vì thế, hiệp với ca đoàn các Thiên Thần, chúng con ca ngợi Chúa
  và hân hoan tuyên xưng rằng:
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

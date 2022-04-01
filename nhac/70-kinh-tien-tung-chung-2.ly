% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tiền Tụng Chung (II)" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  g8 \hide ([a]) b4 a8 b c c4 b8 c d b c \hide ([b]) a b4
  b8 a g a b a b a \hide ([b]) c4 b8 b d d4 c8 \hide ([b])
  a4 a8 b a b c g b b \hide ([c]) a4 \bar "|" a8 g b \hide ([c]) a4
  c8 c a a b \hide ([a]) g4 g8 b b a a a a c
  c4 d8 d c a b \hide ([a]) g4 g8 c b b c b \hide ([c]) a4 \bar "|"
  g8 \hide ([a g]) g4 c8 b a b \hide ([a]) g4 c8 b \hide ([c]) a a a4 c8 a
  a c b c c d4 d8 d b c \hide ([b]) a4 a8 c
  a c c4 a8 b b c \hide ([b]) a b4 b8 b c b a
  a b c c a a a \hide ([c]) b b a b b \hide ([a]) g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Lạy Chúa là Cha chí thánh, là Thiên Chúa toàn năng hằng hữu,
  chúng con tạ ơn Chúa mọi nơi mọi lúc, thật là chính đáng,
  phải đạo và đem lại ơn cứu độ cho chúng con.
  Do lòng nhân hậu, Chúa đã tạo dựng con người,
  và khi con người bị luận phạt công minh
  Chúa đã thương tình cứu chuộc, nhờ Đức Ki -- tô, Chúa chúng con
  Nhờ Người, các Thiên Thần ca ngợi, các Quản Thần thờ lạy,
  các Quyền Thần kính sợ uy linh Chúa, các Dũng Thần trên trời
  và các Thấn Sốt Mến cùng hân hoan chúc tụng Chúa,
  Xin cho chúng con được đồng thanh với các ngài thành khẩn tuyên xưng
  và tung hô rằng:
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
  %page-count = 2
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

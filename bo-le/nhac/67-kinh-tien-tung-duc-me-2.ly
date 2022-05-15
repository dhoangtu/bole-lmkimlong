% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Kinh Tiền Tụng Đức Mẹ II"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  b8 a a a b g c \hide ([b]) a a4 a8 g c \hide ([b])
  a a b b4 c8 b c d d d b c \hide ([b]) a
  a a4 b8 a g c a b a a b a \hide ([g]) g4 g8 a
  a g b a a \hide ([b]) c4 b8 b d d4 c8 \hide ([b]) a a b
  a b c g b b \hide ([c]) a4 \bar "|" a8 \hide ([b]) g4 c8 c a b c
  a a a b a b \hide ([c]) a g4 g8 c b a a b
  c a b \hide ([c]) d d c \hide ([b]) a4 b8 c a a a b g
  g \hide ([a]) b4 a8 a4 c8 c b b b a c c b b
  c d4 d8 b b b b c b \hide ([c]) a4 \bar "|" g8 b \hide ([c]) a a4 a8 b
  c b a a a \hide ([b]) c c d4 c8 a b g \hide ([a]) c b b4
  b8 b c b g g b c c \hide ([b]) a4 b8 b \hide ([c]) a a g4 (a) \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Chúng con tuyên xưng Chúa là Đấng kỳ diệu trong việc
  Chúa tuyên phong các thánh
  Nhất là khi kính nhớ Đức Trinh Nữ Ma -- ri -- a,
  chúng con hiệp với lời ca tụng tạ ơn của Người mà tôn vinh
  lòng nhân hậu của Chúa, thật là chính đáng,
  phải đạo và đem lại ơn cứu độ cho chúng con.
  Quả thật Chúa đã làm nên những việc trọng đại trong toàn cõi địa cầu,
  Và đã mở lượng từ bi hải hà của Chúa đến muôn đời
  khi đoái nhìn phận hèn nữ tỳ của Chúa, nhờ Người,
  Chúa đã ban cho nhân loại Đấng Cứu Độ là Con Chúa, Đức Giê -- su Ki -- tô,
  Chúa chúng con.
  Nhờ Đức Ki -- tô đạo binh các Thiên Thần thờ lạy uy linh Chúa,
  muôn đời hoan hỉ trước Tôn Nhan,
  Xin cho chúng con được đồng thanh với các ngài hân hoan tung hô rằng:
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
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  } 
}

% Cài đặt chung\
\version "2.22.1"
\include "english.ly"
\include "gregorian.ly"

\header {
  title = "Kinh Vinh Danh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \autoBeamOff
  a8 a a bf [a] g a f [e] d4 \bar "||" \break
  d8 d f g a4 f8 [e] c c d4 \bar "||"
  bf'8 a g f [g] a4 \bar "||"
  f8 e f c [d] e4 \bar "||"
  bf'8 a [g] f g a4 \bar "||"
  f8 e [c] d d e4 \bar "||"
  bf'8 a g f [g] a4 d,8 f f f e [g] a4 \bar "||"
  d,8 a' f g a4 f8 g [f] e4 d a'8 d c [b] g a4 \bar "||"
  d,8 g f g a4 bf8 a g g g4 \bar "||"
  d8 a' f g a4 g8 a b c4 f,8 a bf b [a] g4 \bar "||"
  c8 c b [a] g a4 g8 g a [g] f [e] d4 \bar "||"
  f8 f e [d] c d4 f8 e e g f e [g] a4 \bar "||"
  d8 g, a c c c [b] a4 g8 f a [g] f [e] d4 \bar "||"
  c8 c e [f] e d d d4 d8 e f [e] d g g4 \bar "||"
  f8 bf bf [a] g c4 \bar "||"
  a8 d d [c] g [a] c b a4 \bar "||"
  f8 g f e d4 a'8 a a bf a g4 \bar "||"
  f4 (e8 [c]) d4 \bar "||"
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Vinh danh Thiên Chúa trên các tầng trời.
  Và bình an dưới thế cho người thiện tâm.
  Chúng con ca ngợi Chúa.
  Chúng con chúc tụng Chúa.
  Chúng con thờ lạy Chúa,
  Chúng con tôn vinh Chúa.
  Chúng con cảm tạ Chúa vì vinh quang cao cả Chúa.
  Lạy Chúa là Thiên Chúa, là Vua trên trời,
  là Chúa Cha toàn năng,
  Lạy Con Một Thiên Chúa, Chúa Giê -- su Ki -- tô.
  Lạy Chúa là Thiên Chúa, là Chiên Thiên Chúa
  là Con Đức Chúa Cha.
  Chúa xóa tội trần gian, xin thương xót chúng con.
  Chúa xóa tội trần gian, xin nhậm lời chúng con cầu khẩn.
  Chúa ngự bên hữu Đức Chúa Cha, xin thương xót chúng con.
  Vì lạy Chúa Giê -- su Ki -- tô, chỉ có Chúa là Đấng Thánh,
  Chỉ có Chúa là Chúa. Chỉ có Chúa là Đấng Tối Cao,
  Cùng Đức Chúa Thánh Thần, trong vinh quang Đức Chúa Cha.
  A -- men.
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
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.SpacingSpanner.packed-spacing = ##f
    \set Score.defaultBarType = ""
    ragged-last = ##f
    indent = #10
  } 
}

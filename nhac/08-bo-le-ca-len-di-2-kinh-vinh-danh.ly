% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Vinh Danh" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  a8 a a c4 
  a8 bf (g) f4 f \bar "||" \break
  \override Score.BarLine.break-visibility = ##(#t #t #t)
  
  \partial 4 c8 c |
  f4 g |
  a4. g8 |
  a4 bf |
  c4. bf8 |
  g4 g |
  
}

nhacPhienKhucAlto = \relative c' {
  
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \override Lyrics.LyricText.font-series = #'bold
  Vinh danh Thiên Chúa trên các tầng trời
  \revert Lyrics.LyricText.font-series
  Và bình an dưới thế, bình an dưới thế cho người thiện tâm.
  Chúng con ca ngợi Chúa,
  Chúng con chúc tụng Chúa,
  Chúng con thờ tlayj Chúa,
  Chúng con tôn vinh Chúa,
  Chúng con cảm tạ Chúa,
  vì vinh quang cao cả Chúa,
  lạy Chúa là Thiên Chúa,
  là Vua trên trời,
  là Chúa Cha toàn năng.
  Lạy Con Một Thiên Chúa, Chúa Giê -- su Ki -- tô,
  Lạy Chúa là Thiên Chúa,
  là Chiên Thiên Chúa, là Con Đức Chúa Cha.
  Chúa xóa tội trần gian,
  Xin thương,
  Xin thương, xin thương xót chúng con.
  Chúa xóa tội trần gian,
  Xin nhận lời chúng con cầu khẩn.
  Chúa ngự bên hữu Đức Chúa Cha,
  Xin thương,
  Xin thương, xin thương xót chúng con.
  Vì, lạy Chúa Giê -- su Ki -- tô, chỉ có Chúa là Đấng Thánh,
  chỉ có Chúa là Chúa, chỉ có Chúa là Đấng Tối Cao,
  Cùng Đức Chúa Thánh Thần trong vinh quang Đức Chúa Cha.
  A -- men, A -- men.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  page-count = #1
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

% Đổi kích thước nốt cho bè phụ
notBePhu =
#(define-music-function (font-size music) (number? ly:music?)
   (for-some-music
     (lambda (m)
       (if (music-is-of-type? m 'rhythmic-event)
           (begin
             (set! (ly:music-property m 'tweaks)
                   (cons `(font-size . ,font-size)
                         (ly:music-property m 'tweaks)))
             #t)
           #f))
     music)
   music)

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

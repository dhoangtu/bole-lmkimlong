% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Tin Kính" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4 a8 (bf) |
  c4. c8 |
  d4 d8 d |
  bf4 g |
  c2 |
  a4. a8 |
  bf4 a |
  g2 ~ |
  g4 d8 (e) |
  f4. g8 |
  a4 a8 a |
  f4 e |
  a4 \tuplet 3/2 { a8 (gs) a } |
  c4 \tuplet 3/2 { c8 (b!) c } |
  d8. e16 d4 ( |
  c) a8 (bf) |
  c4. c8 |
  d4 d8 d |
  bf4 g |
  c2 |
  d4 d8 c |
  d2 |
  e4 g |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  f8 (g) |
  a4. a8 |
  bf4 bf8 a |
  g4 f |
  e2 |
  f4. f8 |
  g4 f |
  c2 ~ |
  c4 d8 (e) |
  f4. g8 |
  a4 a8 a |
  f4 e |
  a4 \tuplet 3/2 { a8 (gs) a } |
  c4 \tuplet 3/2 { c8 (b!) c } |
  d8. e16 d4 ( |
  c) f,8 (g) |
  a4. a8 |
  bf4 bf8 a |
  g4 f |
  e2 |
  f4 g8 a |
  bf2 |
  c4 c8 (bf) |
  a2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \override Lyrics.LyricText.font-series = #'bold
  Tôi tin kính một Thiên Chúa
  \revert Lyrics.LyricText.font-series
  Là Cha toàn năng, Đấng tạo thành trời đất
  muôn vật hữu hình và vô hình.
  Tôi tin kính một Chúa Giê -- su Ki -- tô,
  Con Một Thiên Chúa,
  sinh bởi Đức Chúa Cha từ trước muôn đời.
  Người là Thiên Chúa bởi Thiên Chúa,
  Ánh Sáng bởi Ánh Sáng, Thiên Chúa thật bởi Thiên Chúa thật.
  Được sinh ra mà không phải được tạo thành,
  đồng bản thể với Đức Chúa Cha,
  nhờ Người mà muôn vật được tạo thành.
  Vì loài người chúng ta, và để cứu rỗi chúng ta,
  Người đã từ trời xuống thế.
  Bởi phép Đức Chúa Thánh Thần,
  Người đã nhập thể trong lòng Trinh Nữ Ma -- ri -- a,
  và đã làm người.
  Người chịu đóng đinh vào thập giá vì chúng ta
  thời quan Phong -- xi -- ô Phi -- la -- tô,
  Chịu khổ hình và mai táng.
  Ngày thứ ba, người sống lại như lời Thánh Kinh,
  Người lên trời ngự bên hữu Đức Chúa Cha.
  Và Người sẽ lại đến trong vinh quang
  để phán xét kẻ sống và kẻ chết,
  Nước Người sẽ không bao giờ cùng.
  Tôi tin kính Đức Chúa Thánh Thần là Thiên Chúa
  và là Đấng ban sự sống.
  Người bởi Đức Chúa Cha và Đức Chúa Con mà ra.
  Người được phụng thờ và tôn vinh
  cùng với Đức Chúa Cha và Đức Chúa Con.
  Người đã dùng các tiên tri mà phán dạy.
  Tôi tin Hội Thánh duy nhất, thánh thiện,
  công giáo và tông truyền.
  Tôi tuyên xưng có một phép rửa để tha tội.
  Tôi trông đợi kẻ chết sống lại
  và sự sống đời sau.
  A -- men.
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
        \notBePhu -1 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.9
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Nguyện Thánh Thể II" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  g8 ([a]) b4 b8 g g c c4 a8 a a a b ([a]) g4 \bar "||"
  g8 ([a]) b4 b8 a g a b4 a8 b c ([b]) a b4 b8 b c
  a b ([a]) g4 g8 g b b c b4 a8 a c c b b b b
  c b ([c]) a4 \bar "||"
  
  a8 g g g g g a ([b]) g4 g8 g b
  b4 a8 b4 a8 ([c]) b4 a8 b b c b a g ([a]) b4 c8 a c
  b4 d8 b c ([b]) g a4 g8 g g g g4 b8 g g g b ([c]) a4 \bar "||"
  
  g8 g g b b4 b8 c ([b]) a b4 g8 g b b4 c8 ([b]) a b4 b8
  b c b a g ([a]) b4 c8 a c b4 d8 b c g ([a]) b4
  g8 g g b c a4 d8 b c c a b ([a]) g4 b8 g b b c
  b4 g8 g g g b ([c]) a4 d8 b c a a a g b b ([c]) a4 \bar "||"
}

nhacMauHai = \relative c'' {
  a4 g8 g g b ([c]) a4 \bar "||"
}

nhacMauBa = \relative c'' {
  g8 ([a]) b4 b8 a a g c ([b]) a b4
  g8 c c d d a4 b8 c g4 a8 a4 \bar "||"
}

nhacMauBon = \relative c'' {
  g8 ([a]) b4 c8 b c d a b b g4
  a8 g g e4 c'8 a b4 b8 c g4 a8 a4 \bar "||"
}

nhacMauNam = \relative c'' {
  g8 ([a]) b b b4 c8 c a d d4 b8 b b
  d c ([d]) e4 a,8 a c c b4 b8 c g4 b8 a4 \bar "||"
}

nhacMauSau = \relative c'' {
  g8 g g ([a]) b4 b8 c c a b a8 c b d a4
  c8 b a a b4 c8 a b b d d a b ([c]) g a b4
  g8 c c b b c ([b]) a4 g8 a a e e b' ([c]) b b4
  b8 b b ([c]) d4 d8 b b c a b c b c ([b]) a4
  a8 a e e e c' c b b4 a8 b g a e e b' c a4
  g8 ([a]) b4 b8 c c a b b4 a8 e b' ([c]) a a4 c8 b a a
  d ([c]) b c c4 a8 c c c a b b b b4 c8 e,
  g a a b a4 g8 g b ([c]) g a a4 \bar "||" \break
  
  b8 c c a b b4 a8 d d4 b8 c c c c a b g
  e e e g ([a]) a4 a8 a g c c ([b]) a a
  b4 a8 c b d g, b ([c]) a4 \bar "||" \break
  
  b8 c c c b g b c a4 b8 b c b
  g a e b' ([c]) a4 g8 g g4 e8 e c' a a b4
  b8 a b g4 g8 a e c' a c b4
  c8 b g a e a g ([a]) b4 b8 b c g ([a])
  e8 e e c' c ([b]) g g a4 \bar "||" \break
  
  a8 g e g a b c c a c b4 b8 c a
  g8 g g a e e4 e8 c' c b b ([c]) a a a4 a8 b
  c4 c8 b b4 g8 b b c ([b]) a b4 b8 b g e4 e8 e
  e ([g]) a a4 c8 c b b d ([c]) b a a a4 g8 g c c
  a4 c8 b a b g g a b c4
  e,8 a ([b]) a a g g4 g8 a4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, Chúa thật là Đấng Thánh, là nguồn mọi sự thánh thiện
  Vì thế chúng con nài xin Chúa dùng ơn Thánh Thần Chúa
  thánh hóa những của lễ này để trở nên cho chúng con
  Mình và Máu Đức Giê -- su Ki -- tô, Chúa chúng con.
  Khi tự nguyện nộp mình chịu khổ hình
  Người cầm lấy bánh, tạ ơn, bẻ ra và trao cho các môn đệ mà nói:
  Tất cả các con hãy nhận lấy mà ăn
  Vì này là Mình Thầy sẽ bị nộp vì các con.
  Cùng một thể thức ấy, sau bữa ăn tối,
  Người cầm lấy chén cũng tạ ơn, trao cho các môn đệ mà nói:
  Tất cả các con hãy nhận lấy mà uống
  Vì này là chén Máu Thầy, Máu Giao ước mới và vĩnh cửu
  sẽ đổ ra cho các con và nhiều người được tha tội.
  Các con hãy làm việc này mà nhớ đến Thầy.
}

loiMauHai = \lyricmode {
  Đây là mầu nhiệm Đức Tin
}

loiMauBa = \lyricmode {
  Lạy Chúa, chúng con loan truyền Chúa chịu chết
  và tuyên xưng Chúa sống lại cho tới khi Chúa đến.
}

loiMauBon = \lyricmode {
  Lạy Chúa, mỗi lần ăn bánh và uống chén này
  Chúng con loan truyền Chúa chịu chết
  cho tới khi Chúa đến.
}

loiMauNam = \lyricmode {
  Lạy Chúa Cứu Thế, Chúa đã dùng thánh giá
  và sự phục sinh của Chúa để giải thoát chúng con,
  xin cứu độ chúng con.
}

loiMauSau = \lyricmode {
  Vì vậy, lạy Chúa, khi kính nhớ Con Chúa chịu chết và sống lại,
  Chúng con dâng lên Chúa Bánh trường sinh và chén cứu độ
  để tạ ơn Chúa, vì Chúa đã thương cho chúng con
  được xứng đáng hầu cận trước Tôn Nhan và phụng sự Chúa.
  Chúng con tha thiết nài xin Chúa cho chúng con
  khi thông phần Mình và Máu Đức Ki -- tô được quy tụ nên một
  nhờ Chúa Thánh Thần.
  Lạy Chúa, xin nhớ đến Hội Thánh Chúa lan rộng khắp hoàn cầu,
  để kiện toàn Hội Thánh trong đức mến
  cùng với Đức Giáo Hoàng "..." "..." "..."
  Đức Giám mục "..." "..." "..." chúng con cùng toàn thể hàng giáo sĩ.
  Xin nhớ đến tôi tớ Chúa là "..." "..."
  (và "..." "...)" Chúa đã gọi ra khỏi đời này về với Chúa.
  Xin cho kẻ đã chết như Con Chúa thì cũng được sống lại với Người.
  Xin Chúa cũng nhớ anh chị em chúng con
  đang an nghỉ trong niềm hy vọng sống lại, và mọi người,
  đặc biệt các bậc tổ tiên ông bà cha mẹ
  và thân bằng quyến thuộc chúng con đã ly trần
  trong tình thương của Chúa.
  Xin cho hết thảy được vào hưởng ánh sáng tôn nhan Chúa.
  Chúng con nài xin Chúa thương xót tất cả chúng con,
  cho chúng con được hưởng sự sống đời đời
  cùng với Đức Trinh nữ Ma -- ri -- a, Mẹ Thiên Chúa,
  thánh Giu -- se bạn trăm năm Đức Trinh Nữ,
  các thánh Tông Đồ và toàn thể các thánh
  đã sống đẹp lòng Chúa qua mọi thời đại,
  và cùng với các ngài, chúng con được ca ngợi
  và tôn vinh Chúa nhờ Đức Giê -- su Ki -- tô, Con Chúa.
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
  page-count = 5
}

TongNhip = {
  \key c \major
  \time 2/4
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
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    %indent = 25
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Chủ tế"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 25
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Cộng đoàn"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 25
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Hoặc"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 25
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Hoặc"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 25
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  \bold "Có thể dùng những cung điệu nơi trang 47"
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 25
    ragged-right = ##f
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

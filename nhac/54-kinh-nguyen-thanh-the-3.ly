% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Nguyện Thánh Thể III" }
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
  g8 \bar "||"
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
  Lạy Chúa, Chúa thật là Đấng Thánh,
  và muôn vật Chúa tạo thành đều phải ca tụng Chúa,
  vì nhờ Đức Giê -- su Ki -- tô con Chúa, Chúa chúng con,
  do quyền năng tác động của Chúa Thánh Thần,
  Chúa ban sự sống và thánh hóa mọi loài
  và không ngừng qui tụ một dân riêng
  để từ đông sang tây họ dâng lên Chúa
  một hiến lễ tinh tuyền.
  Vì vậy, lạy Chúa, chúng con tha thiết nài xin Chúa
  nhờ cũng một Chúa Thánh Thần,
  đoái thương thánh hóa của lễ chúng con dâng tiến Chúa đây
  để trở nên Mình và Máu Đức Giê -- su Ki -- tô Con Chúa,
  Chúa chúng con.
  Thừa lệnh Người, chúng con cử hành mầu nhiệm này.
}

loiMauHai = \lyricmode {
  Trong đêm bị trao nộp, chính Người cầm lấy bánh, tạ ơn Chúa,
  dâng lời chúc tụng, bẻ ra và trao cho các môn đệ mà nói:
  Tất cả các con hãy nhận lấy mà ăn,
  Vì này là Mình Thầy sẽ bị nộp vì các con.
}

loiMauBa = \lyricmode {
  Cùng một thể thức ấy, sau bữa ăn tối,
  Người cầm lấy chén, tạ ơn Chúa, dâng lời chúc tụng
  và trao cho các môn đệ mà nói:
  Tất cả các con hãy nhận lấy mà uống,
  vì này là chén Máu Thầy,
  Máu giao ước mới và vĩnh cửu
  sẽ đổ ra cho các con và nhiều người được tha tội.
  Các con hãy làm việc này mà nhớ đến Thầy.
  Đây là mầu nhiệm đức tin.
}

loiMauBon = \lyricmode {
  Vì vậy lạy Chúa, khi kính nhớ cuộc khổ hình sinh ơn cứu độ,
  sự sống lại và lên trời vinh hiển của con Chúa,
  đồng thời mong đợi Người lại đến,
  chúng con dâng lên Chúa hy lễ hằng sống và thánh thiện này
  để tạ ơn Chúa
  Chúng con nài xin Chúa đoái nhìn hiến tế của Hội Thánh
  dâng lên Chúa và khi Chúa nhận đây chính là của lễ
  mà Chúa hiến tế để nguôi lòng Chúa
  xin cho chúng con được bổ dưỡng bởi Mình và Máu Con Chúa
  thì được tràn đầy Thánh Thần của Người
  thì trở nên một thân thể và một tinh thần trong Đức Ki -- tô.
}

loiMauNam = \lyricmode {
  Nguyện xin Chúa Thánh Thần làm cho chúng con trở nên
  của lễ muôn đời dâng tiến Chúa
  để chúng con được hưởng gia nghiệp với các người Chúa đã chọn
  nhất là với Đức Trinh Nữ Ma -- ri -- a rất thánh
  Mẹ Thiên Chúa, thánh Giu -- se bạn trăm năm Đức Trinh Nữ,
  các thánh Tông Đồ và Tử Đạo hiển vinh
  (cùng với thánh "..." "...)"
  cùng toàn thể các thánh, vì chúng con tin tưởng các ngài
  luôn chuyển cầu cùng Chúa cho chúng con.
  Lạy Chúa, chúng con nguyện xin của lễ hòa giải này
  đem lại bình an và ơn cứu độ cho cả thế giới
  Xin cho Hội Thánh Chúa trên đường lữ thứ trần gian
  được vững mạnh trong đức tin và đức mến
  cùng với tôi tớ Chúa là Đức Giáo Hoàng "..." "..." "..."
  Đức Giám Mục "..." "..." "..." chúng con
  cùng toàn thể hàng giám mục,
  giáo sĩ khắp nơi và tất cả dân riêng Chúa.
  Xin Cha thương chấp nhận lời cầu của gia đình
  mà Cha đã muốn tụ họp trước tôn nhan Cha đây.
}

loiMauSau = \lyricmode {
  Xin Cha thương đến anh chị em chúng con đã ly trần
  và mọi người sống đẹp lòng Cha mà nay đã lìa cõi thế,
  đặc biệt các bậc tổ tiên ông bà cha mẹ
  và thân bằng quyến thuộc chúng con,
  xin thương nhận tất cả vào nước Cha,
  nơi chúng con hy vọng sẽ tới để cùng nhau
  tận hưởng vinh quang Cha muôn đời,
  khi Cha lau sạch nước mắt chúng con,
  vì khi thấy tận tường Cha là Thiên Chúa chúng con
  thì muôn đời chúng con sẽ trở nên giống Cha
  và sẽ ca ngợi Cha khôn cùng nhờ Đức Giê -- su Ki -- tô
  Chúa chúng con.
  Nhờ Người Cha rộng ban mọi ơn lành cho thế gian.
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
    indent = 10
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
    indent = 10
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\markup {
  \column {
    \line { \bold "Cộng đoàn có thể Tung hô như KNTT II" }
    \line { \bold "hoặc theo cung điệu trang 47" }
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
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
    indent = 10
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
    indent = 10
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
    indent = 10
    ragged-right = ##f
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

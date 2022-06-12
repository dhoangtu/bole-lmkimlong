% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Nguyện Thánh Thể III"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  g8 \hide ([a]) b4 b8 a a c c4 a8 b g a e e4 e8 g a
  g a4 g8 g c b b b b b c4 c8 c \hide ([b]) a4 a8
  g a b e, e b' \hide ([c]) b a4 c8 b a b g a
  a e e4 e8 g e a g g a a4 b8 \hide ([c]) a
  b b b4 b8 d d d \hide ([e]) b d d \hide ([c]) b a4 \bar "||"
  
  e8 e e \hide ([g]) a4 c8 b b c \hide ([b]) a c d4 a8 c b c
  b a4 a8 g a a e c'4 c8 b b c c \hide ([b]) a4
  g8 g a e e c' c b b b b b c4 c8 b \hide ([c])
  a4 g8 g \hide ([a]) e4 c'8 b c g4 g8 g a4 \bar "||"
}

nhacMauHai = \relative c'' {
  a8 a g a e4 c'8 a a b b4 a8 b c4
  d8 b c a4 a8 \hide ([c]) b4 a8 b b c b a g \hide ([a]) b4
  c8 a c b4 d8 b c \hide ([b]) g a4 g8 g
  g g g4 b8 g g g b \hide ([c]) a4 \bar "||"
}


nhacMauBa = \relative c'' {
  g8 g g b b4 b8 c \hide ([b])
  a b4 g8 g b b4 a8 b c4 c8 b c a4 a8 b
  b c b a g \hide ([a]) b4 c8 a c b4 d8 b c a b4
  g8 g g b c a4 d8 b c c a b \hide ([a]) g4 b8 g
  b b c b4 g8 g g g a \hide ([c]) a4 c8 b c a a a
  g b b \hide ([c]) a4 \bar "||"
  a4 g8 g g b \hide ([c]) a4 \bar "||"
}

nhacMauBon = \relative c'' {
  g8 g g \hide ([a]) b4 a8 b b a b g b b b \hide ([c]) a4
  g8 b a a c \hide ([b]) a c b b c d4 b8 b c a4 a8 a
  b4 c8 b b b c4 b8 c a d b c a a g g a
  b4 a8 g e g a a g b b a a b \hide ([c]) a a
  b4 a8 b c a b c a a c b d d d c b
  g \hide ([a]) b4 b8 b c a4 g8 a b g e e a \hide ([b]) g a4
  g8 g g g c a b g4 g8 g b a
  b c \hide ([b]) g g a e b' c b \hide ([a]) a4 \bar "||"
}


nhacMauNam = \relative c'' {
  g8 a c c a a b
  c b4 a8 c b d \hide ([c]) b a b c c4 a8 c b g
  g a e b' b g c c a4 b8 a c c b c
  a a a c c b c d4 d8 b b g a a c \hide ([b])
  a b4 b8 b a g g b e, g a4 g8 c c b
  b4 e,8 e g a a4 g8 c b b a b g4 a8 g
  e e c' b c \hide ([b]) a4 \bar "||"
  
  e8 \hide ([g]) a4 c8 b g a g a
  e e e4 a8 g g a g b c a c b \hide ([c]) d d4
  b8 b a c c4 b8 a b c \hide ([b]) g a4 g8 a e a
  b8 a g b b4 e,8 a g a a4 g8 c c a b
  b b4 c8 b e, \hide ([g]) a a a b a4 g8 g g g a e4
  c'8 c c b4 g8 b e, \hide ([g]) g g a4 \bar "|"
  
  b8 b b c a a a g a e e g a a g g c b a a a4 \bar "||"
}


nhacMauSau = \relative c'' {
  a8 a a c \hide ([b]) a g a b a g a \hide ([g]) e4
  e8 e e b' g g a g b c a b b4 e,8 e
  c'8 a a b4 b8 a b g4 g8 a e c' a
  c b4 b8 b g c b \hide ([c]) g b a4 a8 b a a
  g c c4 a8 a b g g a a a a e4 a8 a
  a g c c c b4 a8 b c a a c b c d
  d c4 g8 a e4 c'8 b c a b c b4 b8 d c
  b c b a4 e8 c' b b c b a4 g8 g
  a g a g a e b' c a4 \bar "||"
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
  để tạ ơn Chúa.
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
  và sẽ ca ngợi Cha khôn cùng nhờ Đức Ki -- tô
  Chúa chúng con.
  Nhờ Người Cha rộng ban mọi ơn lành cho thế gian.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 3\mm
  bottom-margin = 3\mm
  left-margin = 3\mm
  right-margin = 3\mm
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\markup {
  \vspace #3
  \column {
    \line { \bold "Cộng đoàn có thể Tung hô như KNTT II" }
    \line { \bold "hoặc theo cung điệu trang 66" }
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

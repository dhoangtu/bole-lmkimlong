% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  %title = "Thánh Lễ"
  %subtitle = "Ca Nhập Lễ và Hiệp Lễ"
  %subsubtitle = \markup { \huge "I. Lễ an táng" }
  %composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  
}

nhacMauHai = \relative c'' {
  
}

nhacMauBa = \relative c'' {
  
}

nhacMauBon = \relative c'' {
  
}

nhacMauNam = \relative c'' {
  
}

nhacMauSau = \relative c'' {
  
}

nhacMauBay = \relative c'' {
  
}

nhacMauTam = \relative c'' {
  
}

nhacMauChin = \relative c'' {
  
}

nhacMauMuoi = \relative c' {
  
}

nhacMauMuoiMot = \relative c'' {
  
}

nhacMauMuoiHai = \relative c' {
  
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, xin cho các linh hồn được nghỉ yên muôn đời.
  Và được tràn đầy ánh quang huy hoàng của Chúa.
}

loiMauHai = \lyricmode {
  Thiên Chúa đã sai Con Một của Ngài xuống thế gian,
  để nhờ Người mà chúng ta được sống.
}

loiMauBa = \lyricmode {
  Thiên Chúa đã yêu thương thế gian,
  đến nỗi đã ban Con Một của Ngài,
  để những ai tin vào Con của Ngài
  thì không phải hư mất
  nhưng được sống đời đời.
}

loiMauBon = \lyricmode {
  Chúng ta mong đợi Đấng Cứu Chuộc
  là Đức Giê -- su Ki -- tô, Chúa chúng ta.
  Người sẽ biến đổi thân xác hèn hạ chúng ta
  nên giống thân xác hiển vinh của Người.
}

loiMauNam = \lyricmode {
  Phúc cho những ai đã chết mà được chết trong Chúa.
  Họ sẽ được nghỉ ngơi khỏi phải vất vả gian lao.
  Vì các việc họ đã làm đều theo họ.
}

loiMauSau = \lyricmode {
  Lạy Chúa, xin cho những người chúng con tưởng nhớ
  khi lãnh nhận Mình và Máu Đức Ki -- tô
  được nghỉ yên muôn đời.
}

loiMauBay = \lyricmode {
  Lạy Chúa, con đã trông cậy vào Chúa,
  muôn đời con sẽ không phải tủi hổ.
  Xin giải thoát con theo đức công minh của Ngài.
}

loiMauTam = \lyricmode {
  Chúa phán:
  Ta là sự sáng thế gian.
  Ai theo Ta sẽ không đi trong tối tăm,
  nhưng sẽ có ánh sáng ban sự sống.
}

loiMauChin = \lyricmode {
  Tâm hồn tìm kiếm Chúa, hãy mừng vui.
  Các bạn hãy tìm kiếm Chúa và hãy vững lòng.
  Hãy luôn tìm kiếm thánh nhan Ngài.
}

loiMauMuoi = \lyricmode {
  Xin chiếu tỏa ánh Tôn nhan trên tôi tớ Chúa,
  và rủ tình thương xót cứu độ con.
  Lạy Chúa, con sẽ không phải tủi hổ
  vì con đã kêu cầu Ngài.
}

loiMauMuoiMot = \lyricmode {
  Lạy Chúa, xin nhìn xem gương mặt Đấng Ki -- tô của Chúa
  Vì một ngày ở trong tiền đình nhà Chúa
  thì quý hơn cả ngày ngày.
}

loiMauMuoiHai = \lyricmode {
  Như nai rừng khát mong đến nguồn nước.
  Lạy Thiên Chúa, linh hồn con cũng khát mong tìm đến Ngài.
  Linh hồn con khát mong Thiên Chúa hằng sống.
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

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "B - Cầu cho nhiều hoặc tất cả những người đã qua đời"
      }
      \line {
        \bold "Mẫu 1"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff\with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu 2"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu 3"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu 4"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu 5"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu6"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

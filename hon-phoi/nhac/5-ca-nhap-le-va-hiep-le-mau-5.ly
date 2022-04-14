% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Mẫu 5"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}


% Nhạc
nhacMauMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e4 |
  f d8 d |
  <<
    {
      a'4. g8 |
      g e e f |
      d4 r8 d |
      d4 g |
      g4. c8 |
      b b e e |
      a,2 ~ |
      a8 a a c |
      g4 a8 f |
      f a d, e |
      f4 e8 e |
      a4. f8 |
      f a
    }
    {
      f4. e8 |
      e c c d |
      b4 r8 b |
      b4 b |
      c4. d8 |
      d d g g |
      f2 ~ |
      f8 f f g |
      e4 f8 d |
      d c b c |
      d4 c8 c |
      e4. d8 |
      d d
    }
  >>
  <<
    {
      \voiceOne
      e16 (d) g8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8 b
    }
  >>
  \oneVoice
  c2 ~ |
  c4 \bar "|."
}

nhacMauHai = \relative c' {
  
}

nhacMauBa = \relative c' {
  
}

nhacMauBon = \relative c' {
  
}

nhacMauNam = \relative c' {
  
}

nhacMauSau = \relative c' {
  
}

nhacMauBay = \relative c' {
  
}

nhacMauTam = \relative c' {
  
}

nhacMauChin = \relative c' {
  
}

nhacMauMuoi = \relative c' {
  
}

nhacMauMuoiMot = \relative c'' {
  
}

nhacMauMuoiHai = \relative c'' {
  \key c \major
  \time 2/4
  g8 e f (e) |
  d4. c8 |
  e d f e |
  g2 |
  r8 g a g |
  <<
    {
      e'8. e16 e (f) c8 |
      d2 ~ |
      d8 a a16 (b) a8 |
      g8. g16 d' (e) d8 |
      c2 ~ |
      c4 \bar "|."
    }
    {
      c8. c16 c (d) a8 |
      g2 ~ |
      g8 f f16 (g) f8 |
      e8. c16 f (g) f8 |
      e2 ~ |
      e4
    }
  >>
}


% Lời
loiMauMot = \lyricmode {
  Xin Chúa, từ đền thánh ban ơn phù trợ các bạn,
  và từ Si -- on xin ngài gìn giữ các bạn,
  ban cho các bạn những điều lòng các bạn mong ước
  và hoàn tất mọi dự tính của các bạn.
}

loiMauHai = \lyricmode {
  Chúa là nơi chúng con nương náu,
  từ đời nọ qua đời kia.
  Trước khi núi đồi chưa được dựng nên,
  lúc địa cầu và vũ trụ chưa được tạo thành,
  Ngài vẫn là Thiên Chúa từ muôn thuở đến muôn muôn đời.
}

loiMauBa = \lyricmode {
  Nguyện Thiên Chúa Is -- ra -- el kết hợp các con.
  Xin Ngài thương mến ở cùng các con trong mọi lúc,
  và giờ đây nguyện Ngài ban ân phúc dư đầy.
}

loiMauBon = \lyricmode {
  Phúc cho ai có lòng trong sạch vì họ sẽ nhìn thấy Thiên Chúa.
  Phúc cho ai kiến tạo hòa bình vì họ sẽ được gọi là con Thiên Chúa.
  Phúc cho ai chịu bách hại vì sự công chính vì nước Trời là của họ.
}

loiMauNam = \lyricmode {
  Tôi chúc tụng Chúa trong mọi lúc
  miệng tôi liên lỉ ngợi khen Ngài.
}

loiMauSau = \lyricmode {
  Hãy nhìn lên Chúa để được vui mừng rạng rỡ
  và không phải bẽ mặt hổ ngươi.
}

loiMauBay = \lyricmode {
  Chúa để mắt nhìn người công chính
  và lắng nghe tiếng họ khấn xin.
}

loiMauTam = \lyricmode {
  Chúa nhậm lời người công chính kêu xin,
  giải thoát họ khỏi mọi cơn nguy khôn.
}

loiMauChin = \lyricmode {
  Người công chính gặp nhiều nỗi gian truân
  nhưng luôn được Chúa thương giải thoát.
}

loiMauMuoi = \lyricmode {
  Chúa cứu mạng các tôi tớ Chúa
  và không luận phạt những ai trông cậy vào Ngài.
}

loiMauMuoiMot = \lyricmode {
  Trước tiên các con hãy tìm kiếm Nước Chúa và sự công chính của Ngài,
  Còn tất cả những điều khác Ngài sẽ ban thêm cho các con sau.
}

loiMauMuoiHai = \lyricmode {
  Bao là ân lộc dành cho người kính sợ Chúa.
  Cầu mong bạn thấy lũ cháu đàn con
  và cảnh an bình của Is -- ra -- el.
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
}

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "Sách ORDO CANTUS MISSAE ghi thêm"
      }
      \line {
        \bold "Nhập lễ 1:" \italic "như mẫu 1 (trang 3) hoặc theo bản dịch của sách lễ 1974"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ 1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ 2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ 3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
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
  \bold "Hát với Thánh vịnh 127" \normal-text "(trang 6)"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ 1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh vịnh 33"
}


\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
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
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
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
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 15
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
      instrumentName = \markup { \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "6" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ 2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Hát với Thánh vinh 36" \normal-text "(trang 5)"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ 3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Hát với Thánh vinh 127" \normal-text "(trang 6)"
}

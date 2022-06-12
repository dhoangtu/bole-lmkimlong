% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup {
    \column {
      \center-align {
        \line {
          \bold "B - Cầu cho nhiều"
        }
        \line {
          \bold "hoặc tất cả những người đã qua đời"
        }
      }
    }
  }
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g4 |
  d'4. c8 |
  c d c (bf) |
  a2 |
  a8 a16 (c) bf8 a |
  g2 |
  r8 d d d |
  d bf' a a |
  g4. bf16 (c) |
  d2 ~ |
  d4 \bar "|."
}

nhacMauHai = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 a4 |
  bf4. bf8 |
  a g f g |
  d4 bf'8 a |
  g4 g16 (a) f8 |
  g4 g8 c |
  bf4. a8 |
  d2 ~ |
  d4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g4 |
  a4. c8 |
  a a c (a) |
  g4 a |
  a4. a8 |
  g g e e16 (f) |
  d4 d16 (f) a8 |
  g4. c8 |
  b c a (c) |
  g2 |
  d8 g f g |
  a4 e8 d |
  g4. b,8 |
  c2 ~ |
  c4 \bar "|."
}

nhacMauBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e8 d d |
  c4 f8 f |
  d4. d8 |
  a' g g g |
  g4 c8 c |
  a4 r8 a |
  d d b16 (c) d8 |
  e e, f a |
  g4. g8 |
  c g a fs |
  g4. d8 |
  c2 ~ |
  c4 \bar "|."
}

nhacMauNam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 8 g8 |
  e f d e |
  e4 c8 c |
  f4. d8 |
  g2 |
  g8 c b b16 (c) |
  d4. b8 |
  b16 (c) e8 e, b' |
  g4. f8 |
  a e e f |
  d4 d8 g |
  c,2 ~ |
  c4 \bar "|."
}

nhacMauSau = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c4 |
  g'4. e8 |
  e f d4 ~ |
  d8 a' g e16 (g) |
  a4 b8 c |
  g4. d8 |
  d f f e |
  e4 d8 f |
  e4. d8 |
  c2 ~ |
  c4 \bar "|."
}

nhacMauBay = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c4 |
  g'4. e8 |
  f e d d |
  a'4 r8 g |
  fs4. g8 |
  a8. g16 f8 d |
  \slashedGrace { d16 ( } e2) |
  r8 a g16 (a) c8 |
  b4. d8 |
  e d d e16 (d) |
  c2 ~ |
  c4 \bar "|."
}

nhacMauTam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g4 |
  g r8 e |
  c c f f |
  d4 a'8 a |
  a4. c8 |
  a a a c |
  g2 |
  d'8. e16 e8 e |
  e4 d8 b |
  d4 (c _~ |
  c) \bar "|."
}

nhacMauChin = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 f8 |
  c4 c8 a' |
  a4 bf16 (a) f8 |
  g4 r8 g16 (a) |
  f8 bf g c |
  c2 ~ |
  c8 bf d d |
  g,2 ~ |
  g8 g d c |
  a'4 bf8 g |
  f2 ~ |
  f4 \bar "|."
}

nhacMauMuoi = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 g |
  d (f) a16 (bf) a8 |
  g8. g16 g8 a |
  a2 |
  f8 a16 (bf) g8 c |
  d4 d8 b! |
  c4 r8 a |
  d4. c8 |
  d c bf g |
  \slashedGrace { g16 ( } a4.) c,8 |
  g'8. a16 g8 e |
  f2 ~ |
  f4 \bar "|."
}

nhacMauMuoiMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 e8 (g) |
  a2 |
  a8 g c c |
  bf4. d8 |
  g, g e (g) |
  a4 c,8 c |
  c4. e16 (f) |
  e8 d d d |
  a'4. fs8 |
  a g f d |
  c2 ~ |
  c4 \bar "|."
}

nhacMauMuoiHai = \relative c' {
  \key f \major
  \time 2/4
  e8 e c f |
  d4 e16 (d) c8 |
  f2 |
  e4. g8 |
  a4 r8 g |
  fs g a c |
  g4 d8 f |
  d4 r8 d |
  c e g (a) |
  g8. g16 a8 g |
  c2 ~ |
  c4 \bar "|."
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
  thì quý hơn cả ngàn ngày.
}

loiMauMuoiHai = \lyricmode {
  Như nai rừng khát mong đến nguồn nước.
  Lạy Thiên Chúa, linh hồn con cũng khát mong tìm đến Ngài.
  Linh hồn con khát mong Thiên Chúa hằng sống.
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

\markup {
  \vspace #1
  \line {
    \bold "Mẫu 1"
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1.2
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Mẫu 6"
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
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

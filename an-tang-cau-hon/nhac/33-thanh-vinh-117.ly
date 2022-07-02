% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 117"
  subsubtitle = \markup { \normal-text \italic "Hát khi di quan ra nghĩa trang" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g16 (a) f8 e |
  a4. a8 |
  d4 d |
  g,2 |
  e8 e e g |
  a8. d,16 e (f) d8 |
  c4 r8 c |
  g'4. b8 |
  a a g16 (a) b8 |
  c2 |
  b8 b b c |
  d8. a16 b (c) a8 |
  g4 \bar "||"
}

nhacMauHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e8 g g |
  g4 c,16 (d) e8 |
  f2 |
  e8 e e g |
  a8. d,16 e (g) d8 |
  c4 r8 f |
  e4 f8 d |
  a'4 g16 (a) b8 |
  c2 |
  b8 b b c |
  d8. a16 b (c) a8 |
  g4 \bar "||"
}

nhacMauBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e4 e8 |
  e4. e8 |
  f d c (d) |
  g4. c8 |
  c4 c |
  b8 a b16 (c) e8 |
  d4 r8 d |
  d4 b8 g |
  a8. g16 g8 a |
  f4 f8 g |
  d8. b16 b8 b |
  c4 \bar "||"
}

nhacMauBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e16 (f) d8 c |
  g'8. e16 g8 g |
  a2 |
  r8 c d d |
  d e a,16 (c) a8 |
  g4 r8 g |
  e4 e |
  f4. f8 |
  d d d16 (g) b,8 |
  c2 ~ |
  c4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 e e |
  f4. f8 |
  d c c16 (d) g8 |
  g4 r8 g |
  g4 d16 (f) e8 |
  e4 g8 g |
  a8. a16 g8 g |
  c2 ~ |
  c4 \bar "||"
}

nhacMauSau = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 d16 (f) e8 |
  d4. g8 |
  c,4 e8 e |
  f8. e16 d8 d |
  g2 |
  r8 a f16 (a) g8 |
  g8. g16 f8 d |
  e2 |
  e8 c c e |
  f4 f16 (e) d8 |
  g4 g8 g |
  a8. a16 g8 g |
  c4 \bar "||"
}

nhacMauBay = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 b, (c) |
  d4 d8 d |
  e4. e8 |
  f8. f16 d8 d |
  g4 r8 e' |
  a,4 d |
  g,4. g8 |
  c g f4 |
  e r8 a |
  d,4 g8 b, |
  c4 \bar "||"
}

nhacMauTam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. c4 g8 |
  g8. g16 e8 a |
  a4 c8 a |
  c c b16 (c) e8 |
  d4 d8 e |
  e a, b c |
  g4 r8 a |
  c c b4 |
  b g8 a |
  a d, f g |
  c,4 \bar "||"
}

nhacMauChin = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. e4 e8 |
  f8. d16 d8 e |
  e4 f8 f |
  f8. f16 g8 a |
  d,4 a'8 g |
  g8. c16 a8 c |
  d2 |
  r8 d d b |
  c c a (d) |
  g,2 \bar "||"
}

nhacMauMuoi = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 f (e) |
  d a' c a |
  g2 |
  r8 e16 (f) g8 a |
  d,4 f8 e |
  a2 |
  c8 b b16 (c) b8 |
  e4 c8 d |
  e8. a,16 b8 (d) |
  g,4 \bar "||"
}

nhacMauMuoiMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 f e |
  a4. g8 |
  e'4 e16 (f) e8 |
  d8. g,16 d'8 b |
  c4 c8 c |
  c g a e |
  f4 a8 f |
  g f16 (e) a8 a |
  d,2 |
  d'8. b16 b8 c |
  a4 g8 g |
  g8. d'16 d8 d |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiHai = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. c4 g8 |
  g a f d |
  e4. e8 |
  f e d c |
  g'4 g8 e16 (g) |
  a4 r8 g |
  c8. b16 c8 e, |
  g4 r8 e |
  a4. g8 |
  a g d (e) |
  c4 \bar "||"
}

nhacMauMuoiBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 c, f |
  e (g) a4 ~ |
  a g8 g |
  c4 e,8 e |
  a8. a16 g8 d |
  f4 e8 e |
  e4 r8 a |
  e4 g |
  c4. a8 |
  e' e e f16 (e) |
  d2 |
  c8 c e, a |
  a4 f8 d |
  g4. g8 |
  e (d) b b |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiBon = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 c, e |
  f4. d8 |
  g4. e8 |
  f (e) d4 |
  a' g8 b |
  c4. a16 (c) |
  d2 ~ |
  d8 d e d16 (c) |
  g2 |
  r8 g16 (a) f8 d |
  a'4. g8 |
  c4 c |
  f,2 |
  e8 e e g |
  a8. d,16 e (f) d8 |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiLam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 d |
  c e f e |
  d2 ~ |
  d8 d a' a16 (b) |
  g4 g16 (a) g8 |
  c2 ~ |
  c4 \bar "|."
}

nhacMauMuoiSau = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 e |
  f4. e8 |
  a4 d,8 e |
  f8. f16 d8 g |
  c,2 ~ |
  c4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Hãy cảm tạ Chúa vì Chúa tốt lành,
  vì lượng từ bi Chúa bền vững muôn đời.
  Giờ đây Is -- ra -- el hãy lên tiếng
  vì lượng từ bi Chúa bền vững muôn đời.
}

loiMauHai = \lyricmode {
  Nhà A -- a -- ron hãy lên tiếng
  vì lượng từ bi Chúa bền vững muôn đời.
  Những ai kính sợ Chúa hãy lên tiếng
  vì lượng từ bi Chúa bền vững muôn đời.
}

loiMauBa = \lyricmode {
  Trong gian truân tôi đã kêu cầu Chúa,
  Chúa đã đoái nghe và giải thoát tôi,
  Có Chúa ở cùng tôi, tôi không khiếp sợ,
  phàm nhân nào làm gì được tôi.
}

loiMauBon = \lyricmode {
  Chúa ở cùng tôi, Ngài luôn bênh đỡ
  nên tôi coi khinh những kẻ địch thù.
  Náu thân nơi Chúa tốt hơn tin tưởng người đời.
}

loiMauNam = \lyricmode {
  Náu thân nơi Chúa tốt hơn cậy nhờ vua quan.
  Chư dân bủa vây tôi, nhân danh Chúa, tôi trừ diệt chúng.
}

loiMauSau = \lyricmode {
  Chúng bủa vây tôi tứ bề, nhân danh Chúa tôi trừ diệt chúng.
  Chúng bủa vây tôi như thể đàn ong.
  Chúng bừng bừng như lửa giữa bụi gai,
  nhân danh Chúa tôi trừ diệt chúng.
}

loiMauBay = \lyricmode {
  Chúng đẩy tôi, xô cho ngã nhưng Chúa đã phù trợ tôi.
  Chúa là sức mạnh, là Đấng tôi ca ngợi,
  chính Ngài cứu độ tôi.
}

loiMauTam = \lyricmode {
  Tiếng reo vui ca mừng chiến thắng
  vang rền trong doanh trại chính nhân
  Tay hữu Chúa biểu dương sức mạnh.
  Tay hữu Chúa giơ cao, tay hữu Chúa biểu dương sức mạnh.
}

loiMauChin = \lyricmode {
  Tôi không chết, nhưng tôi sẽ sống
  và tường thuật kỳ công Chúa làm,
  Chúa trừng phạt, Chúa sửa dạy tôi
  nhưng không nộp tôi cho tử thần.
}

loiMauMuoi = \lyricmode {
  Hãy mở cửa công chính cho tôi
  để tôi tiến vào cảm tạ Chúa.
  Đây là cửa nhà Chúa, người công chính hãy tiến vào.
}

loiMauMuoiMot = \lyricmode {
  Con cảm tạ Chúa vì Chúa đã lắng nghe và cứu độ con.
  Phiến đá những thợ xây loại bỏ đã trở nên tảng đá góc tường.
  Đó là việc Chúa làm, thật kỳ diệu trước mắt chúng ta.
}

loiMauMuoiHai = \lyricmode {
  Đây là ngày Chúa đã lập ra,
  ta hãy hân hoan mừng rỡ trong ngày đó.
  Lạy Chúa xin cứu độ con.
  Lạy Chúa xin giúp con thịnh đạt.
}

loiMauMuoiBa = \lyricmode {
  Chúc tụng Đấng ngự đến nhân danh Chúa.
  Từ nhà Chúa chúng tôi cầu chúc cho anh em.
  Chúa là Thiên Chúa, Ngài đã chiếu sáng chúng ta.
  Hãy xếp thành đám rước, tay cầm lá tiến lên cạnh bàn thờ.
}

loiMauMuoiBon = \lyricmode {
  Chúa là Thiên Chúa của con, con chúc tụng Chúa.
  Lạy Thiên Chúa của con, con tán dương Ngài.
  Hãy cảm tạ Chúa, vì Chúa tốt lành.
  Vì lượng từ bi Chúa bền vững muôn đời.
}

loiMauMuoiLam = \lyricmode {
  Hãy mở cửa công chính cho tôi,
  để tôi tiến vào cảm tạ Chúa.
}

loiMauMuoiSau = \lyricmode {
  Đây là cửa nhà Chúa, người công chính hãy mau tiến vào.
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

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "6" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "7" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "8" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "9" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "10" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "11" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "12" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "13" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBa
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "14" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBon
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "Đáp" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiLam
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup { \bold "hoặc" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiSau
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

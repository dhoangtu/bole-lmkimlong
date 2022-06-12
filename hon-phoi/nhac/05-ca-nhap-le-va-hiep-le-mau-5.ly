% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \fontsize #1 "Mẫu 5" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% mã nguồn cho những chức năng chưa hỗ trợ trong phiên bản lilypond hiện tại
% cung cấp bởi cộng đồng lilypond khi gửi email đến lilypond-user@gnu.org
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
% kết thúc mã nguồn

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

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  c4. f,8 |
  a c g g |
  a4
  <<
    {
      \voiceOne
      d,8 d |
      d (c) f e |
      f2 ~ |
      f4
    }
    \new Voice = "splitpart" \notBePhu -2 {
      \voiceTwo
      f8 f |
      f (a) a g
      a2 ~ |
      a4
    }
  >>
  \oneVoice
  <>_\markup { \halign #-1 \bold "Tận" }
  r8
  \bar "|."
  
  f8 |
  e4. f8 |
  d d c d16 (f) |
  g4 a8 f |
  f4 f8 a |
  e e d d |
  c4. c8 |
  a' (bf) g bf |
  c4 bf8 c |
  g16 (a) bf8 a g |
  f2 \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacMauBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 8 g8 |
  a c c a |
  g4. g8|
  c,4 e8 (f) |
  d2 ~ |
  d8 d c e |
  f8. e16 d8 a' |
  g g e (f) |
  a4 g8
  <<
    {
      g8 |
      c4 a8 a |
      d8. d16
    }
    {
      f,8 |
      e4 c8 c |
      f8. f16
    }
  >>
  <<
    {
      \voiceOne
      d'16 (e) d8 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,8 g
    }
  >>
  \oneVoice
  <c e,>2 ~ |
  <c e,>4 \bar "|."
}

nhacMauBon = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 e |
  e f d e |
  c2 |
  c8 c e d |
  f4. e8 |
  g4 c8 b |
  b e a, a |
  a8. a16 a8 c16 (d) |
  g,4. f8 |
  e g4 g8 |
  a4 a16 (c) a8 |
  g4 f8 a |
  d,8. d16 d8 e |
  f4. e8 |
  a d, d d16 (g) |
  c,2 ~ |
  c8 \bar "|."
}

nhacMauNam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. d8 e c |
  f4 e8 d |
  g2 |
  r8 e g g |
  f4 d8 e16 (d) |
  c2 ~ |
  c4 \bar "||"
}

nhacMauSau = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 c, e |
  f4. f8 |
  d e c c |
  a'4 e8 g |
  f d16 (g) b,8 d |
  c2 ~ |
  c4 \bar "||"
}

nhacMauBay = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. c8 e, (g) |
  a8. d,16 d8 e |
  f4 d8 a' |
  g4. e8 |
  f b,4 d8 |
  c2 ~ |
  c4 \bar "||"
}

nhacMauTam = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 f (e) |
  d4. d8 |
  a' c a (g) |
  g4 f16 (g) a8 |
  d,4. a'16 (b) |
  g8 a4 b8 |
  c2 ~ |
  c4 \bar "||"
}

nhacMauChin = \relative c' {
  \key c \major
  \time 2/4
  \partial 4. c8 d4 |
  e2 |
  e8 e a16 (c) a8 |
  g2 ~ |
  g8 g g e |
  a16 (b) a8 g (a) |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoi = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. c4 c8 |
  e, a g a |
  a2 ~ |
  a8 f g d |
  d4. a'8 |
  g f d c |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiMot = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g4 |
  e f8 d |
  e c a' a |
  a4. b8 |
  c d e d16 (c) |
  g4 r8 e |
  a a c, (d) |
  e2 ~ |
  e8 g
  <<
    {
      e'8 d |
      d8. d16 e8 d |
      c2 ~ |
      c4 \bar "|."
    }
    {
      c8 c |
      b8. a16 g8 f |
      e2 ~ |
      e4
    }
  >>
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
  và lắng tai nghe tiếng họ khấn xin.
}

loiMauTam = \lyricmode {
  Chúa nhậm lời người công chính kêu xin,
  giải thoát họ khỏi mọi cơn nguy khốn.
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
  Còn tất những điều khác Ngài sẽ ban thêm cho các con sau.
}

loiMauMuoiHai = \lyricmode {
  Bao là ân lộc dành cho người kính sợ Chúa.
  Cầu mong bạn thấy lũ cháu đàn con
  và cảnh an bình của Is -- ra -- el.
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
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "Sách ORDO CANTUS MISSAE ghi thêm"
      }
      \line {
        \bold "Nhập lễ 1:" \italic "như mẫu 1 (trang 159) hoặc theo bản dịch của sách lễ 1974:"
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
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
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
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Hát với Thánh vịnh 127" \normal-text "(trang 164)"
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
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Hát với Thánh vịnh 36" \normal-text "(trang 162)"
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
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Hát với Thánh vịnh 127" \normal-text "(trang 164)"
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 142"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 (f) |
  a4. g8 |
  g f g f |
  e4 a8 bf |
  g4 g8 a |
  g f e4 ~ |
  e8 e16 (f) d8 d |
  a'2 |
  r8 c bf g |
  a8. e16 a (bf) a8 |
  g4 r8 g |
  f f g a |
  e4 g8 a |
  \slashedGrace { d,16 (f } d4) r8 a |
  f'8 e d4 ~ |
  d a'16 (bf) g8 |
  a a c4 |
  d2 ~ |
  d4 \bar "||"
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 g |
  e8. f16 c8 d |
  c4 d8 d16 (f) |
  e8. g16 f8 f16 (g) |
  a4 f8 bf16 (a) |
  g8. f16 g8 a |
  e4 e8 e |
  e f d (g) |
  a4 a8 g16 (f) |
  e4. a,8 |
  e'8. e16 c8 e |
  d2 ~ |
  d4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 (f) |
  a4. g8 |
  g4 e8 e |
  f4 d8 g |
  g8. f16 e8 g |
  a4 f8 a16 (bf) |
  g2 |
  g8. g16 g8 f |
  e4 d8 e |
  f4 a,8 e' |
  e8. e16 c8 e |
  d2 ~ |
  d4 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 c |
  d8. a16 d8 e |
  f4 e16 (f) d8 |
  d g bf g |
  a4 g8 f |
  a8. d,16 d8 d16 (e) |
  f4. f8 |
  e e e4 ~ |
  e8 a, e' c |
  d2 ~ |
  d4 \bar "||"
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d4 |
  <a' f>2 ~ |
  <a f>8 <g e> <g e> <f d> |
  <g e>4
  <<
    {
      \voiceOne
      e8 (a)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      cs,4
    }
  >>
  \oneVoice
  d2 ~ |
  d4 \bar "|."
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, xin nghe lời con khẩn nguyện,
  xin lắng tai nghe tiếng con van nài
  bởi Ngài thành tín.
  Xin nhậm lời con, vi Chúa công minh.
  Xin đừng gọi tôi tớ Ngài ra xét xử,
  vì trước nhan Ngài chẳng người nào là công chính.
}

loiMauHai = \lyricmode {
  Con nhớ lại những ngày xa xưa,
  hồi tưởng mọi công trình của Chúa
  và gẫm suy việc tay Chúa làm,
  Con dang tay hướng về Chúa,
  trước nhan Ngài, hồn con như thửa đất khô.
}

loiMauBa = \lyricmode {
  Lạy Chúa, xin mau nhậm lời con,
  vì nay con đã tàn hơi sức.
  Từ sớm mai xin cho con cảm nghiệm tình thương Chúa,
  vì con luôn trông cậy nơi Ngài.
}

loiMauBon = \lyricmode {
  Xin dạy con thực thi ý Chúa,
  Bởi Ngài là Thiên Chúa của con.
  Xin thần trí thiện hảo của Chúa
  dẫn con đi theo đường lối thẳng ngay.
}

loiMauNam = \lyricmode {
  Lạy Chúa, xin nghe lời con khẩn nguyện.
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
      instrumentName = \markup { \bold "1" }}<<
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
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 10
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
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
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
      instrumentName = \markup { \bold "Đáp" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

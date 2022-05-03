% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 62"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 g |
  a4. g8 |
  g a c d,16 (f) |
  g4 g8 e16 e |
  f8 f g d |
  d4 r8 d |
  c8. f16 f8 g |
  a4. a16 c |
  a8 d, f a |
  g2 |
  r8 g a g |
  f bf4 g8 |
  c4 \bar "||"
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 8 c8 |
  a8. g16 f8 a |
  d,4 f8 g16 (f) |
  c4 r8 c |
  a' bf4 g8 |
  g4. g8 |
  c c a (g) |
  f4 r8 e16 (f) |
  d8 c f (g) |
  a8. bf16 a8 g |
  c4. c16 bf |
  c8 g c a16 (g) |
  f4 \bar "||"
}

nhacMauBa = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 g16 (f) |
  d4. g8 |
  a4 f |
  bf r8 c16 c |
  c8 c bf c16 (bf) |
  g2 |
  r4 g8 a |
  g (c) a16 (g) e8 |
  e16 (f) g8 g a |
  d,4 d8 c |
  g'8. c16 e,8 e |
  f2 ~ |
  f4 \bar "|."
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 c8 |
  a'4. f8 |
  bf8. d,16 d8 (f) |
  g2 |
  r8 f g g |
  d16 (e) e8 g g |
  c,4 r8 c |
  e8. g16 e8 e |
  a4. f8 |
  a bf bf4 ~ |
  bf8 d,16 (c) g'8 a16 (g) |
  f2 ~ |
  f4 \bar "||"
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 (g) |
  a4. a8 |
  bf (a) d, (f) |
  g4. g8 |
  f bf bf c |
  c2 ~ |
  c4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Lạy Thiên Chúa, Ngài là Thiên Chúa của con,
  Ngay từ rạng đông con hướng về Ngài.
  Linh hồn con khao khát Chúa,
  thân xác con mòn mỏi ngóng trông,
  Như đất khô cằn không giọt nước.
}

loiMauHai = \lyricmode {
  Thế nên con diện kiến Ngài nơi thánh điện,
  để chiêm ngắm quyền lực và vinh quang của Ngài,
  Bởi lượng từ bi Chúa quý hơn mạng sống,
  môi miệng con sẽ tán dương hoài.
}

loiMauBa = \lyricmode {
  Nên suốt đời con chúc tụng Chúa,
  Tay nâng cao xưng tụng danh Ngài.
  Hồn no thỏa như được hưởng ca lương mỹ vị,
  môi miệng con hớn hở ngợi ca.
}

loiMauBon = \lyricmode {
  Vì Chúa là Đấng phù trợ con,
  và con hoan hỷ nương bóng cánh Ngài.
  Hồn con bám chặt vào Chúa
  và tay hữu Chúa đã nâng đỡ con.
}

loiMauNam = \lyricmode {
  Lạy Chúa, Thiên Chúa của con, linh hồn con khao khát Chúa.
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
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #0.7
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
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
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
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
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
      instrumentName = \markup { \bold "Đáp" }}<<
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

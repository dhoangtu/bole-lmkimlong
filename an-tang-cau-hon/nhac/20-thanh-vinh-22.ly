% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 22"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4. c8 a a |
  a4. g16 (f) |
  d8 (f) a a |
  g2 |
  g8 f f16 (a) g (f) |
  d4 d8 d16 (f) |
  g4. f8 |
  \slashedGrace { f16 (g } a2) |
  a8 d, g e16 (d) |
  c2 ~ |
  c8 c g' g |
  f4 f8 d |
  g f bf g |
  c2 ~ |
  c4 \bar "||"
}

nhacMauHai = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c,8 a'16 (bf) |
  a8 g f g |
  a2 ~ |
  a8 f g g16 (f) |
  d4 d8 g |
  f g g e16 (d) |
  c2 |
  f8 f f a |
  d,4 r8 c |
  a' (bf) g g |
  a2 ~ |
  a8 bf a g |
  c8. c16 a8 g |
  f4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a8 f |
  g2 ~ |
  g8 a f d |
  d4. e16 (d) |
  c8. g'16 f8 e |
  f4 e8 d |
  g8. bf16 bf8 g |
  a4 g8 f |
  bf8. g16 g8 bf |
  c4 \bar "||"
}

nhacMauBon = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c4 |
  f,4. e8 |
  e e f (g) |
  a4 a8 g |
  g a d,16 (f) d8 |
  c4. c8 |
  f4. g16 (f) |
  e8 (f) g f16 (g) |
  a8. bf16 bf8 d, |
  d4. c8 |
  f4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4. c8 g g |
  g4. g16 (f) |
  d8 (c) g' g |
  f2 ~ |
  f4 \bar "|."
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 a |
  g8. a16 a8 f |
  e4. g8 |
  g g4 a8 |
  d4. c8 |
  g (a) e e |
  f4 \bar "|."
}

% Lời
loiMauMot = \lyricmode {
  Chúa chăn nuôi tôi, tôi chẳng thiếu thốn chi.
  Trên đồng cỏ xanh rì ngài để tôi nằm nghỉ,
  Tới dòng nước yên lành,
  Ngài hướng dẫn tôi, tâm hồn tôi Ngài lo bồi dưỡng.
}

loiMauHai = \lyricmode {
  Ngài dẫn tôi trên đường ngày chính vì uy danh Ngài,
  Dù bước qua lũng tối tử thần
  con không lo mắc nạn,
  vì Chúa ở cùng con,
  chính côn trượng Chúa khiến con an lòng.
}

loiMauBa = \lyricmode {
  Trước mặt con, Chúa dọn bàn tiệc đối diện những kẻ hại con.
  Trên đầu con Chúa xức dầu thơm,
  Ly rượu con đầy tràn chan chứa.
}

loiMauBon = \lyricmode {
  Phúc lộc và lượng từ bi Chúa mãi theo tôi suốt cả cuộc đời.
  Và tôi sẽ ở trong nhà Chúa suốt chuỗi ngày dài triền miên.
}

loiMauNam = \lyricmode {
  Chúa chăn nuôi tôi, tôi chẳng thiếu thốn chi.
}

loiMauSau = \lyricmode {
  Dù bước qua lũng tối tử thần, con không lo mắc nạn,
  vì Chúa ở cùng con.
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
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
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
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
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
      instrumentName = \markup { \bold "3" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
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
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
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
      instrumentName = \markup { \bold "Đáp" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "hoặc" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

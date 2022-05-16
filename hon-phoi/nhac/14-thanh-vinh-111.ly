% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Vịnh 111"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b16 (c) a8 |
  g4. a8 |
  e e c' c |
  a4. a16 (c) |
  d2 ~ |
  d4 \bar "|."
}

nhacMauHai = \relative c'' {
  \key g \major
  \time 2/4
  \partial 8 b8 |
  a g c a |
  d4 g,8 b |
  e,4. e8 |
  a a fs (e) |
  d4 g8 a |
  fs4. g8 |
  e e a g16 (a) |
  b2 |
  g8 b e, g |
  a8. a16 d8 d |
  g,2 ~ |
  g4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 g8 fs |
  fs2 |
  e8. a16 a8 b |
  b4. g8 |
  b a d b16 (a) |
  fs8. fs16 fs8 g |
  d4 a'8 a |
  b8. g16 b8 c |
  d d c16 (e) d8 |
  a4. a8 |
  fs fs g e |
  d4 g8 a |
  b2 ~ |
  b4 \bar "||"
}

nhacMauBon = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 d8 b16 (a) |
  fs4. b8 |
  b g e g |
  a2 |
  b8. b16 fs8 fs |
  fs4 a8 g16 (a) |
  b4 r8 g |
  c4. e8 |
  a, b d a |
  g2 ~ |
  g4 \bar "||"
}

nhacMauNam = \relative c' {
  \key g \major
  \time 2/4
  \partial 4 d4 |
  g g8 (a) |
  fs4. fs16 (g) |
  a8 a g (a) |
  b4 a8 b16 (a) |
  g8. g16 c8 a16 (c) |
  d4 d,8 g |
  e8. fs16 a8 g16 (a) |
  b4 b8 c |
  a8. d16 fs,8 a |
  g2 ~ |
  g4 \bar "||"
}

nhacMauSau = \relative c' {
  \key g \major
  \time 2/4
  \partial 4. d8 b' a |
  fs8. g16 e (fs) a8 |
  d,2 |
  b'8 a d b16 (a) |
  fs8. fs16 fs8 g |
  e4 r8 e |
  d4 c8 e |
  d (e4) g8 |
  g4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Phúc thay người hết lòng mộ mến huấn lệnh của Chúa.
}

loiMauHai = \lyricmode {
  Phúc thay người kính sợ Chúa,
  người hết lòng mộ mến huấn lệnh Ngài.
  Con cái họ sẽ hùng cường trên mặt đất,
  Dòng dõi kẻ lòng ngay được Chúa chúc lành.
}

loiMauBa = \lyricmode {
  Nơi nhà họ đầy vinh hoa phú quý,
  và đức công chính của họ tồn tại muôn đời.
  Trong u tối bùng lên ánh sáng soi kẻ ngay lành,
  có lòng từ bi nhân hậu và công chính.
}

loiMauBon = \lyricmode {
  Phúc thay người biết xót thương và cho vay,
  biết sắp đặt mọi sự cho phải lẽ,
  Người ấy sẽ chẳng nao núng bao giờ.
}

loiMauNam = \lyricmode {
  Họ không khiếp sợ phải nghe tin độc dữ,
  nhưng vững lòng cậy trông vào Chúa,
  lòng kiên cường họ không sợ hãi
  cho dẫu khi đối mặt quân thù.
}

loiMauSau = \lyricmode {
  Người biết chia sẽ cho kẻ khó nghèo,
  đức công chính của họ tồn tại muôn đời,
  uy lực được vinh hiển giương cao.
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
      instrumentName = \markup { \bold "Đáp" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 10
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
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
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
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 10
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
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
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

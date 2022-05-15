% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Phép Lành Cuối Lễ"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  c8 c (b) a b c4 \bar "||" \break
  g8 a d4 e8 b c b a4 \bar "|" \break
  
  a8 g g b a4 e8 a a ([b]) c4 \bar "||"
  a8 c ([b]) e, e e ([g]) a ([b] a4) \bar "||"
}

nhacMauHai = \relative c'' {
  b8 b c a b4 c8 d4 b8 c ([b]) a b ([c]) g4
  a8 b g a a e ([g]) a4 \bar "||" \break
  g8 g4 ([a]) \bar "||"
  
  c8 b4 d8 c b c ([b]) a g a4 \bar "||"
  <c a>4 <d b g> \bar "|"
  <e c g c,>2 ~ <e c g c,>4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Hãy chúc tụng danh Chúa.
  \set stanza = " GD:"
  Từ bây giờ và cho đến muôn đời.
  \set stanza = "CT:"
  Ơn phù trợ chúng ta ở nơi danh Chúa
  \set stanza = "GD:"
  Là Đấng tạo thành trời đất.
}

loiMauHai = \lyricmode {
  \set stanza = "CT:"
  Xin Thiên Chúa toàn năng là Cha và Con
  và Thánh Thần ban phúc lành cho anh chị em.
  \set stanza = "GD:"
  A -- men.
  \set stanza = "CT:"
  Lễ xong, chúc anh chị em đi bình anh.
  \set stanza = "GD:"
  Tạ ơn Chúa.
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
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup {
        \column {
          \center-align {
            \line { \bold "Khi Chủ tế" }
            \line { \bold "là giám mục" }
          }
        }
      }
    } <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 30
    \override Staff.TimeSignature.transparent = ##t
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
      instrumentName = \markup { \bold "Chung" }} <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 30
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

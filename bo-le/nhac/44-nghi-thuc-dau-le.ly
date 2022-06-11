% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Nghi Thức Đầu Lễ"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacLamDau = \relative c'' {
  \autoBeamOff
  c8 c c4
  a8 b4 g8
  b \hide ([c]) a4 \bar "||"
  
  \partial 8 g8 |
  g4 (a) \bar "||"
}

nhacMauMot = \relative c'' {
  a8 c c b \hide ([c]) d c c c c4
  d8 d c4 a8 c b \hide ([c]) d c4
  a8 b b a a \hide ([b]) c \hide ([b])
  a g4 g8 g8 a e \hide ([g]) a g a4 \bar "||"
  
  g8 a e \hide ([g]) a4 \bar "||"
}

nhacMauHai = \relative c'' {
  g8 a a g \hide ([a])
  e e a g a \hide ([b]) c4
  c8 d c4 a8 a c b b b b4
  g8 g a e \hide ([g]) a4 \bar "||"
}

nhacMauBa = \relative c'' {
  a8 \hide ([b]) g g a e \hide ([g]) a4 \bar "||"
  g8 a e \hide ([g]) a4 \bar "||"
}

nhacMauBon = \relative c' {
  e8 a g \hide ([a]) b4 g8 g a e \hide ([g]) a4 \bar "||"
}

% Lời
loiLamDau = \lyricmode {
  \set stanza = "CT:"
  Nhân danh Cha và Con và Thánh Thần.
  \set stanza = " GD:"
  A -- men.
}

loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Nguyện xin ân sủng Đức Giê -- su Ki -- tô,
  Chúa chúng ta
  tình yêu của Chúa Cha
  và ơn thông hiệp của Chúa Thánh Thần
  ở cùng tất cả anh chị em.
  \set stanza = " GD:"
  Và ở cùng cha.
}

loiMauHai = \lyricmode {
  \set stanza = "CT:"
  Nguyện xin ân sủng và bình an của Thiên Chúa,
  Cha chúng ta và của Chúa Giê -- su Ki -- tô
  ở cùng anh chị em.
}

loiMauBa = \lyricmode {
  \set stanza = "CT:"
  Chúa ở cùng anh chị em.
  \set stanza = " GD:"
  Và ở cùng cha.
}

loiMauBon = \lyricmode {
  Bình an của Chúa ở cùng anh chị em.
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

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacLamDau
      }
    >>
    \new Lyrics \lyricsto beSop \loiLamDau
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  \bold "Chủ tế chào giáo dân"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Mẫu 1" }} <<
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
    \override LyricHyphen.minimum-distance = #1.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Mẫu 2" }} <<
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

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Mẫu 3" }} <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
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
      instrumentName = \markup {
        \column {
          \center-align {
            \line { \bold "Khi Chủ tế" }
            \line { \bold "là Giám mục" }
          }
        }
      }
    } <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
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

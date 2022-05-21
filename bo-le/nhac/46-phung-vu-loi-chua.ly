% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Phụng Vụ Lời Chúa"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  a8 (b) g g |
  c2 \bar "||"
  b8 (c) d4 |
  e2 \bar "||"
}

nhacMauHai = \relative c'' {
  a8 g b ([c]) b b b b b c b ([a]) a4 \bar "||"
}

nhacMauBa = \relative c' {
  \partial 4 e4 |
  <<
    {
      c' d8 d |
      e2 ~ |
      e4
    }
    {
      a,4 b8 b |
      c2 ~ |
      c4
    }
  >>
  \bar "||"
}

nhacMauBon = \relative c' {
  \partial 4 e4 |
  <<
    {
      c'4. b8 \bar "|"
      b4 c8 [d] \bar "|"
      e2 ~ \bar "|"
      e4
    }
    {
      a,4. a8 |
      gs4 a8 b |
      c2 ~ |
      c4
    }
  >>
  \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Đó là lời Chúa.
  \set stanza = " GD:"
  Tạ ơn Chúa.
}

loiMauHaiMattheu = \lyricmode {
  Tin mừng Chúa Giê -- su Ki -- tô theo thánh Mat -- thêu.
}

loiMauHaiLuca = \lyricmode {
  \repeat unfold 9 { _ }
  Lu -- ca.
}

loiMauHaiMacco = \lyricmode {
  \repeat unfold 9 { _ }
  Mac -- cô.
}

loiMauHaiGioan = \lyricmode {
  \repeat unfold 9 { _ }
  Gio -- an.
}

loiMauBa = \lyricmode {
  Lạy Chúa, vinh danh Chúa.
}

loiMauBon = \lyricmode {
  Lạy Chúa Ki -- tô ngợi khen Chúa.
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
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \column {
          \center-align {
            \line {
              \bold "Sau bài đọc"
            }
            \line {
              \bold "1 và 2"
            }
          }
        }
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 30
    ragged-right = ##f
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Bài Tin Mừng"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMattheu
      \new Lyrics \lyricsto beSop \loiMauHaiLuca
      \new Lyrics \lyricsto beSop \loiMauHaiMacco
      \new Lyrics \lyricsto beSop \loiMauHaiGioan
    >>
  >>
  \layout {
    indent = 30
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup { \vspace #0.3 }

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Giáo dân đáp"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 30
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
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \column {
          \center-align {
            \line {
              \bold "Kết bài"
            }
            \line {
              \bold "Tin Mừng"
            }
          }
        }
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 30
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

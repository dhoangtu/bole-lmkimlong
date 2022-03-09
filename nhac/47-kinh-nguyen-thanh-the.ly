% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "KINH NGUYỆN THÁNH THỂ" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  a8 ([b]) g g a e ([g]) a4 \bar "||"
  g8 a e ([g]) a4 \bar "||" \break
  
  b8 ([c]) b b a4 b \bar "||"
  b8 ([c]) b a b f ([a]) b4 \bar "||" \break
  
  a8 ([b a]) g a b a b c c ([b]) a4 \bar "||"
  e8 e g ([a]) a4 \bar "||"
}

nhacMauHai = \relative c'' {
  
}

nhacMauBa = \relative c' {
  
}

nhacMauBon = \relative c' {
  
}

nhacMauNam = \relative c' {
  
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Chúa ở cùng anh chị em.
  \set stanza = " GD:"
  \revert Lyrics.LyricText.font-series
  Và ở cùng cha.
  \set stanza = "CT:"
  Hãy nâng tâm hồn lên.
  \set stanza = "GD:"
  \revert Lyrics.LyricText.font-series
  Chúng con đang hướng về Chúa.
  \set stanza = "CT:"
  Hãy tạ ơn Chúa là Thiên Chúa chúng ta.
  \set stanza = "GD:"
  \revert Lyrics.LyricText.font-series
  Thật là chính đáng.
}

loiMauHai = \lyricmode {
  
}

loiMauBa = \lyricmode {
  
}

loiMauBon = \lyricmode {
  
}

loiMauNam = \lyricmode {
  
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
        \bold "Mở đầu"
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
    indent = 18
    \override Lyrics.LyricSpace.minimum-distance = #0.45
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\markup {
  \bold "Lời tung hô Tưởng Niệm"
  \normal-text \italic "(sau Truyền Phép)"
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Mẫu 1"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 30
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Mẫu 2"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Mẫu 3"
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
    indent = 40
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
  }
}

\score {
  <<
    \new Staff \with {
      \remove "Time_signature_engraver"
      instrumentName = \markup {
        \bold "Kết KNTT"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 40
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup \fill-line {
    \center-column {
      \box \pad-markup #2 "Bộ Lễ CA LÊN ĐI 5"
      \null
    }
  }
  subtitle = \markup { \fontsize #3 \bold "Kinh Thương Xót" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucCongDoan = \relative c' {
  \autoPageBreaksOff
  \partial 4 r4 |
  R2.
  r2 e4 |
  g4. e8 g e |
  d2. ~ |
  d4 r2 |
  r4 a' c8 a |
  a4. a8 c a |
  g2. |
  R2.
  \pageBreak
  r4 d'8 e d4 ~ |
  d8 d e4 d |
  c2. ~ |
  c4 r2 \bar "|."
}

nhacDiepKhucSop = \relative c'' {
  \partial 4 g4 |
  a4. g8 a c |
  g2 r4 |
  R2.
  r4 d' e8 d |
  d4. d8 e d |
  c2. ~ |
  c4 r2 |
  r g4 |
  a4. g8 a c |
  g2. |
  a8 a c4 a |
  g2. ~ |
  g4 r2
}

nhacDiepKhucAlto = \relative c' {
  e4 |
  f4. c8 f f |
  d2 r4 |
  R2.
  r4 g4 g8 g |
  a4. a8 gs gs |
  a2. ~ |
  a4 r2 |
  r e4 |
  f4. c8 f f |
  d2. |
  f8 f e4 f |
  e2. ~ |
  e4 r2
}

nhacDiepKhucTenor = \relative c' {
  c4 |
  c4. g8 d' c |
  b2 r4 |
  R2.
  r4 b b8 b |
  d4. a8 b b |
  a2. ~ |
  a4 r2 |
  r c4 |
  c4. g8 d' c |
  b2. |
  a8 d c4 b |
  c2. ~ |
  c4 r2
}

nhacDiepKhucBas = \relative c {
  c4 |
  f4. e8 d d |
  g2 r4 |
  R2.
  r4 g g8 g |
  fs4. f!8 e e |
  a2. ~ |
  a4 r2 |
  r b,4 |
  f'4. e8 d d |
  g2. |
  d8 d g,2 |
  c2. ~ |
  c4 r2
}

% Lời
loiDiepKhucCongDoan = \lyricmode {
  Xin Chúa thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con
  Xin Chúa thương, thương xót chúng con.
}

loiDiepKhucSop = \lyricmode {
  Xin Chúa thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin thương xót chúng con.
}

loiDiepKhucTenor = \lyricmode {
  Xin Chúa thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con
  xin thương
  <<
  { xót }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  đoàn
	}
  >>
  chúng con.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 3\mm
  bottom-margin = 3\mm
  left-margin = 3\mm
  right-margin = 3\mm
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
}

TongNhip = {
  \key c \major \time 3/4
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
      instrumentName = \markup { \bold "Cộng đoàn" }
    }
    <<
        \clef treble
        \new Voice = congDoan {
          \TongNhip \nhacDiepKhucCongDoan
        }
      \new Lyrics \lyricsto congDoan \loiDiepKhucCongDoan
    >>
  \new ChoirStaff \with {
    instrumentName = \markup { \bold "Ca đoàn" }
  }<<
    \new Staff  \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -1 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      >>
    \new Staff  \with {
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
        \new Voice \TongNhip \partCombine 
        \nhacDiepKhucTenor
        \notBePhu -1 { \nhacDiepKhucBas }
      \new NullVoice = beTenor \nhacDiepKhucTenor
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
      >>
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    indent = 25
  }
}

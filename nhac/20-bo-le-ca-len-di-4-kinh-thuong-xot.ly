% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup \fill-line {
    \center-column {
      \box \pad-markup #2 "Bộ Lễ CA LÊN ĐI 4"
      \null \null \null
    }
  }
  subtitle = \markup { \huge \bold "Kinh Thương Xót" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  \partial 4 e4 |
  g2 |
  e8. e16 f8 e |
  d4 r |
  R2
  a'8. a16 c8 a |
  g4 r |
  R2
  r4
  \once \override NoteColumn.force-hshift = #1
  a |
  d4 c8 c ~ |
  c2 |
  b8. b16 c8 b |
  a4 r8 a |
  c16 (d) d8 b4 |
  a8. a16 b8 a |
  g2 ~ |
  g4 e |
  g2 |
  e8. e16 f8 e |
  d4 r |
  R2
  d'8. d16 e8 d |
  c2 ~ |
  c4 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  e4 |
  g2 |
  c,8. c16 d8 c |
  b4 r |
  R2
  f'8. f16 a8 f |
  e4 r |
  R2
  r4 a8 (g) |
  f4 e8 e ~ |
  e2 |
  e8. e16 e8 d |
  c4 r8 a' |
  c16 (d) d8 b4 |
  e,8. fs16 g8 fs |
  g2 ~ |
  g4 e |
  g2 |
  e8. e16 f8 e |
  d4 r |
  c'8. c16
  \tweak extra-offset #'(3 . -1.65)
  ^\markup { \rest #"2" }
  d8 c |
  a8. a16 <c g>8 <b f> |
  <g e>2 ~ |
  <g e>4
}

nhacDiepKhucBas = \relative c {
  e4 |
  g2 |
  c,8. c16 f8 fs |
  g4. g8 |
  c2 ~ |
  c ~ |
  c4 c |
  e4 d8 d ~ |
  d2 ~ |
  d4 r |
  a8. a16 c8 a |
  gs8. gs16 e4 |
  a r8 a |
  c16 (d) c8 b4 |
  c8. d16
  <<
    {
      \voiceOne
      d8 c
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,4
    }
  >>
  \oneVoice
  <b g>2 ~ <b g>4 r |
  r g |
  c2 |
  b8. b16 c8 b |
  a4 r8 e |
  f8. fs16 g8 g |
  c2 ~ |
  c4
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Xin Chúa, xin thương xót chúng con
  Xin thương xót chúng con
  Xin Chúa Ki -- tô
  xin thương xót chúng con.
  Xin Chúa Ki -- tô
  xin thương xót chúng con.
  Xin Chúa, xin thương xót chúng con
  xin thương xót chúng con.
}

loiDiepKhucAlto = \lyricmode {
  \repeat unfold 37 { _ }
  \override Lyrics.LyricText.font-shape = #'italic
  xin thương xót chúng con,
  thương xót chúng con.
}

loiDiepKhucBas = \lyricmode {
  Xin Chúa, xin thương xót chúng con.
  Xin Chúa
  Xin Chúa Ki -- tô
  Xin thương xót chúng con,
  thương đoàn con.
  Xin Chúa Ki -- tô
  xin thương
  <<
  { xót }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  đoàn
	}
  >>
  chúng con
  Xin Chúa
  xin thương xót chúng con,
  nguyện xin thương xót chúng con.
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
  system-system-spacing = #'((basic-distance . 0.1) (padding . 4.5))
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
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      } <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -1 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuSop \nhacDiepKhucSop
      \new Lyrics \lyricsto nhacThamChieuSop \loiDiepKhucSop
      \new NullVoice = nhacThamChieuAlto \nhacDiepKhucAlto
      \new Lyrics \lyricsto nhacThamChieuAlto \loiDiepKhucAlto
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

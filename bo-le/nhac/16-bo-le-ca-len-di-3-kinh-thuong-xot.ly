% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup \fill-line {
    \center-column {
      \box \pad-markup #2 "Bộ Lễ CA LÊN ĐI 3"
      \null \null
    }
  }
  subtitle = \markup { \fontsize #3 \bold "Kinh Thương Xót" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 8 a8 |
  c4. b8 |
  c (b) a (b) |
  a4 r8 <d a f> |
  <e gs, e>4. <c a f>8 |
  <<
    {
      \voiceOne
      d8 (c) b (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <a d,>4 <a d,>
    }
  >>
  \oneVoice
  <b gs e>2 ~ |
  <b gs e>4 r |
  a c8 b |
  a4 (\slashedGrace { g16 } e8)
  \once \override NoteColumn.X-offset = 1.5 <> a |
  c (b) a (b) |
  a2 |
  <e' g, c,>4 <f g, c,>8 <e g, c,> |
  <d a f>4. <d a f>8 |
  <<
    {
      \voiceOne
      e8 (d) c (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <a e>4 <gs e>
    }
  >>
  \oneVoice
  <c a a,>2 ~ |
  <c a a,>4 r8 a |
  c4. b8 |
  c (b) a (b) |
  a2 |
  <d a f>4. <d a fs>8 |
  <<
    {
      \voiceOne
      <e c>8 (<d b>) <c a> (<d b>)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4. <f g,>8
    }
  >>
  \oneVoice
  <c' g e c>2 ~ |
  <c g e c>4 \bar "|."
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Xin Chúa thương xót chúng con.
  Xin Chúa thương xót chúng con.
  Xin Chúa Ki -- tô thương xót chúng con,
  Xin Chúa Ki -- tô thương xót chúng con.
  Xin Chúa thương xót chúng con,
  Xin thương xót
  <<
    { chúng }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    \once \override LyricText.self-alignment-X = #LEFT
	    \tweak extra-offset #'(1.5 . 0) đoàn
	  }
  >>
  con.
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
  system-system-spacing = #'((basic-distance . 0.1) (padding . 3))
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.8
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

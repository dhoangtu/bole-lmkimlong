% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Lạy Chiên Thiên Chúa"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  \time 23/4
  \partial 2 c4 e8 e |
  \time 3/4
  \override Staff.TimeSignature.break-visibility = #all-invisible
  f4 f8 [f] d d |
  \time 2/4
  g2 |
  <<
    {
      e8. e16 f8 e |
      d2 ~ |
      d4
    }
    {
      c8. c16 d8 c |
      b2 ~ |
      b4
    }
  >>
  r4 |
  <<
    {
      \time 3/4
      r4 d'8 [d8] b b |
      \time 2/4
      c2 ~ |
      c4
    }
    {
      \time 3/4
      r4 f8 f d d |
      \time 2/4
      e,2 ~ |
      e4
    }
  >>
  r4 |
  <<
    {
      b'8. b16 c8 d |
      a2
    }
    {
      e8. e16 e8 d |
      c2
    }
  >>
  c4 e8 e |
  \time 3/4
  f4 f8 [f] d d |
  \time 2/4
  g2
  c,4 c8 e |
  d4 r8 g |
  c4 c8 a |
  <<
    {
      d8. d16 e8 ^(d) |
      c2 ^( |
      c4)
    }
    {
      a8. a16 <c g>8 (<b f>) |
      <g \=1( e>2 \=2( |
      <g \=1) e>4 \=2)
    }
  >>
  \bar "|."
}

nhacDiepKhucBas = \relative c {
  c4 e8 e |
  \override Staff.TimeSignature.break-visibility = #all-invisible
  f4 f8 [f] d d |
  g2 |
  c,8. c16 f8 fs |
  g2 |
  g4 b8 c |
  d2 r4 |
  R2
  a8. a16 b8 a |
  gs8. gs16 e4 |
  a2 ~ |
  a4 r |
  R2.
  g4 b8 b |
  c2 |
  b8 b g (b) |
  a4. g8 |
  f8. fs16 g4 |
  c,2 ~ |
  c4
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian
  Xin thương xót chúng con.
  Đấng xóa tội trần gian
  Xin thương xót chúng con.
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  xin ban bình an, bình an,
  ban bình an cho chúng con.
}

loiDiepKhucBas = \lyricmode {
  Lạy Chiên Thiên Chúa, Đấng xóa tội trần gian,
  Xin thương xót chúng con.
  Lạy Chiên Thiên Chúa,
  Xin thương xót chúng con,
  thương đoàn con.
  Lạy Chiên Thiên Chúa
  Xin ban bình an,
  xin ban cho chúng con.
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
  page-count = 1
}

TongNhip = {
  \key c \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
        \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

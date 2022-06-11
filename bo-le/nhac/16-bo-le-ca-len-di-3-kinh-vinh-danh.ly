% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Vinh Danh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  \partial 8 c8 c c d4 c8 d \hide ([c]) a \partial 4 g4 \bar "||" \break
  \override Score.BarLine.break-visibility = ##(#t #t #t)
  
  g8 g c d |
  e4. d16 (c) |
  a4 g |
  c2 ~ |
  c4 r \bar "||"
  \partial 4 
  <<
    {
      \voiceOne
      e8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <c c,>4
    }
  >>
  \oneVoice
  <e a, f>8 <d a fs>
  <<
    {
      \voiceOne
      <c a>8 (<d b>)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  <e' c c,>2 ~ |
  <e c c,>4 g,8 (a) |
  g e d (e) |
  g (a g4 ~ |
  g)
  <<
    {
      \voiceOne
      e'8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <c c,>4
    }
  >>
  \oneVoice
  <e a, f>8 (<d a fs>) <c a g> <d b g> |
  <e c c,>2 ~ |
  <e c c,>4 g,8 (a) |
  g (e) g g |
  a (c g4 ~ |
  g)
  <<
    {
      \voiceOne
      e'8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <c c,>4
    }
  >>
  \oneVoice
  <e a, f>8 <d a fs>
  <<
    {
      \voiceOne
      <c a>8 (<d b>)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  <e' c c,>4 <g, e c>8 <c g e> |
  <c a f> <c a f>
  <<
    {
      \voiceOne
      \once \override NoteColumn.force-hshift = #-1 a8 (c)
      d8 (e c4 ~ |
      c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <a f>4 |
      <g e>2 ~ |
      <g e>4
    }
  >>
  \oneVoice
  c,4 |
  a'8 (g) e g |
  c4. a8 |
  d8. [e16 c8] a |
  g2 |
  d8 g e16 (d) c8 |
  d2 ~ |
  d4 r |
  c8 e d g |
  a4
  <<
    {
      \voiceOne
      e'8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <c c,>4
    }
  >>
  \oneVoice
  <e a, f>8 <d a f> <d a fs>4 |
  <d b g>2 ~ |
  <d b g>4 r8 e, |
  a (g) e g |
  c4. a8 |
  d [e16 (d) c8] d |
  e2 |
  e,8 g a c |
  g2 ~ |
  g4 a8 a |
  f (e) d4 |
  g <d' a f>8 <d a f> |
  <<
    {
      \voiceOne
      e (d) c (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <a e>4 <gs e>
    }
  >>
  \oneVoice
  <c a a,>2 ~ |
  <c a a,>4 c8 c |
  b (a) g4 |
  a g8 e |
  d g e16 (d) c8 |
  c4 (d ~ |
  d) r |
  <e' e,> <g, g,>8 <c c,> |
  <e e,>4 <f f,>8 <e e,> |
  <d d,>4 <d a f>8 <d a f>
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
  <c g e c>4 e,8 e |
  a16 (c) a8 g g |
  g4 c,8 f |
  f (e) d <g e c> |
  <g d b>4 e16 (g) a8 |
  a4 g16 (<a f> <b f d>8) |
  <c g e>4 a16 (c) d8 |
  <<
    {
      \voiceOne
      \once \override NoteColumn.force-hshift = #1.5 d2
      c8 (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d4 (<b g>8 <a f>)
      <g e>4
    }
  >>
  \oneVoice
  <f' a, d,>8 <f b, g> |
  <e c c,>4 a,8 d |
  d (e) c (a) |
  g4 <e' c c,>8 <e c c,> |
  <e b g>4 <f a, f>8 <e c fs,> |
  <d b g>2 |
  <<
    {
      \voiceOne
      f2
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <a, f>4 (<b g>)
    }
  >>
  \oneVoice
  <e c c,>2 ~ |
  <e c c,>4 \bar "|."
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \override Lyrics.LyricText.font-series = #'bold
  Vinh danh Thiên Chúa trên các tầng trời
  \revert Lyrics.LyricText.font-series
  Và bình an dưới thế cho người thiện tâm.
  Chúng con ca ngợi
  <<
    { Chúa. }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \markup { \italic "Ngài" }
	  }
  >>
  Chúng con chúc tụng Chúa,
  Chúng con thờ lạy
  <<
    { Chúa, }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \markup { \italic "Ngài" }
	  }
  >>
  Chúng con tôn vinh Chúa
  Chúng con cảm tạ
  <<
    { Chúa, vì vinh quang cao cả Chúa.}
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    \tweak extra-offset #'(-2 . 0) Ngài _ _ _ _ _ Ngài
	  }
  >>
  Lạy Chúa là Thiên Chúa, là Vua (i -- a) trên trời,
  là Chúa Cha toàn năng.
  Lạy Con Một Thiên Chúa, Chúa Giê -- su Ki -- tô.
  Lạy Chúa là Thiên Chúa, là Chiên (i -- a) Thiên Chúa,
  là Con Đức Chúa Cha.
  Chúa xóa tội trần gian xin thương xót chúng con.
  Chúa xóa tội trần gian xin nhậm lời chúng con cầu khẩn.
  Chúa ngự bên hữu Đức Chúa Cha xin thương xót
  <<
    { chúng }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \markup { \italic "đoàn" }
	  }
  >>
  con.
  Vì, lạy Chúa Giê -- su Ki -- tô chỉ có Chúa là Đấng Thánh,
  Chỉ có Chúa là Chúa, chỉ có Chúa là Đấng Tối Cao,
  Cùng Đức Chúa Thánh Thần, trong vinh quang Đức Chúa Cha.
  A -- men.
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
  page-count = 2
  print-page-number = ##f
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    %indent = #10
  } 
}

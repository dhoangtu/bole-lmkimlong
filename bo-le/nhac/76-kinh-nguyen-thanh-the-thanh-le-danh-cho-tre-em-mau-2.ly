% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subsubtitle = \markup { \huge \bold "Mẫu 2" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key g \major
  \time 23/4
  \partial 8 g8 \bar "|"
  a8 [g] e [g] \bar "|"
  a4. c8 b [b] \bar "|"
  b4 a8 [d] \bar "|"
  d4. g,8 g [c] \bar "|"
  c [b] b [b] \bar "|"
  b4. c8 \bar "|"
  a [b] e,16 [(g) e8] \bar "|"
  d4 g8 [fs16 (g)] \bar "|"
  b4. g8 \bar "|"
  a2 ~ \bar "|"
  a4 b8 [b] \bar "|"
  b [c] b [d] \bar "|"
  d4 c8 [g] \bar "|"
  b [c] c [b] \bar "|"
  a4. g8 a16 [(g) e8] \bar "|"
  e ([d]) fs [a] \bar "|"
  g4 \bar "||" \break
  
  d4 \bar "|"
  <<
    {
      b'4 b8 [b] \bar "|"
      c4. a8 \bar "|"
      d [b] a [fs] \bar "|"
      fs4. a8 \bar "|"
      g2 ~ \bar "|"
      g4 \bar "||"
    }
    {
      g4 g8 [g]
      a4. g8
      fs g fs e
      d4. c8
      b2 ~
      b4
    }
  >>
  \break
  \oneVoice
  
  b'8 [b] \bar "|"
  b [c] a [d] \bar "|"
  d4. b8 \bar "|"
  c [b] b [b] \bar "|"
  b4 b8 [c] \bar "|"
  a4. fs16 ([g]) \bar "|"
  e8 [g] a [b] \bar "|"
  a4 d8 [fs,] \bar "|"
  g4 \bar "||" \break
  
  d4 \bar "|"
  <<
    {
      b'4 b8 [b] \bar "|"
      c4. a8 \bar "|"
      d [b] a [fs] \bar "|"
      fs4. a8 \bar "|"
      g2 ~ \bar "|"
      g4 \bar "||"
    }
    {
      g4 g8 [g]
      a4. g8
      fs g fs e
      d4. c8
      b2 ~
      b4
    }
  >>
  \break
  \oneVoice
  
  b'8 [b] \bar "|"
  b [c] a [d] \bar "|"
  d4. c8 a [c] \bar "|"
  b [b] c [b] \bar "|"
  a2 \bar "|"
  fs8 [fs] b [b] \bar "|"
  e,4. e8 \bar "|"
  d ([e]) g [b] \bar "|"
  g4. fs16 [(g) a8] b \bar "|"
  \slashedGrace { e,16 ([g]  } e4.) e16 ([g]) \bar "|"
  d8 [g] fs [a] \bar "|"
  b4 \bar "||" \break
  
  d,4 \bar "|"
  <<
    {
      b'4 b8 [b] \bar "|"
      c4. a8 \bar "|"
      d [b] a [fs] \bar "|"
      fs4. a8 \bar "|"
      g2 ~ \bar "|"
      g4 \bar "||"
    }
    {
      g4 g8 [g]
      a4. g8
      fs g fs e
      d4. c8
      b2 ~
      b4
    }
  >>
  \break
  \oneVoice
  
  r8 d \bar "|"
  g8 [g] fs [a] \bar "|"
  g4 g8 [g] \bar "|"
  b [c] b [b] \bar "|"
  d4. b8 \bar "|"
  a [c] c [b16 (a)] \bar "|"
  e4 d8 [b'] \bar "|"
  b [a16 (g)] e8 [g] \bar "|"
  a4. d8 \bar "|"
  b4 g8 [a] \bar "|"
  a4. fs8 g [a] \bar "|"
  d2 \bar "||" \break
  
  <<
    {
      d4. d8 \bar "|"
      d4 r8 d a [b] \bar "|"
      c4 b8 [g] \bar "|"
      a2 ~ \bar "|"
      a4 d, \bar "|"
      b'4. a8 b [c] \bar "|"
      d2 b8 [b] \bar "|"
      c4. a8 d [g,] \bar "|"
      g2 ~ \bar "|"
      g4 g8 ([a16 g]) \bar "|"
      d4. b'8 \bar "|"
      g [c] a [a] \bar "|"
      d2 b8 [b] \bar "|"
      c4. a8 d [g,] \bar "|"
      g2 ~ \bar "|"
      g4 \bar "||"
    }
    {
      b4. b8
      b4 r8 g fs g
      a4 g8 e
      d2 ~
      d4 \skip 4
      g4. fs8 g a
      b2 g8 f!
      e4. e8 c c
      b2 ~
      b4 \skip 4
      \skip 4. \skip 8
      \skip 8 \skip 8 \skip 8 g'8
      fs2 g8 f!
      e4. e8 c c
      b2 ~
      b4
    }
  >>
}

nhacMauHai = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4. b8 a g |
  c4 a8 a |
  b4 \bar "||"
  g8 (a16 g) d4. b'8 |
  g c c
  <<
    {
      a |
      \time 3/4
      d2 b8 b |
      c4. a8 d [g,] |
      \time 2/4
      g2 ~ |
      g4 \bar "||"
    }
    {
      g8 |
      fs2 g8 fs |
      e4. e8 c c |
      b2 ~ |
      b4
    }
  >>
}

nhacMauBa = \relative c'' {
  \key g \major
  \time 2/4
  \partial 8 b8 |
  a4. fs8 |
  g a a d, |
  g4 r8 \bar "||"
}

nhacMauBon = \relative c'' {
  \key g \major
  \time 2/4
  \partial 8 g8 |
  g2 |
  fs8
  <<
    {
      g a b |
      c4. c8 |
      a2 ~ |
      a4 \bar "||"
    }
    {
      e8 d g |
      a4. g8 |
      fs2 ~ |
      fs4
    }
  >>
}

nhacMauNam = \relative c'' {
  \key g \major
  \time 2/4
  \partial 8
  <<
    {
      d8 |
      c4 c8 a |
      b4 r8 c |
      b4 d8 g, |
      a4 r8 b |
      a4 fs8 g |
      g2 ~ |
      g4 \bar "||"
    }
    {
      b8 |
      a4 a8 fs |
      g4 r8 a |
      g4 fs8 e |
      d4 r8 g |
      c4 d8 c |
      b2 ~ |
      b4
    }
  >>
}

nhacMauSau = \relative c' {
  \key g \major
  \time 3/4
  \partial 4 d4 |
  <<
    {
      b'4. d8 g, [g] |
      g4. g8 fs [g] |
      \slashedGrace { e16 ^(g } e4.) d8 d g |
      fs4 g8 (c) a [a] |
      d2. ~ |
      d4 \bar "||"
    }
    {
      g,4. fs8 e d |
      e4. e8 d d |
      c4. b8 b e |
      d4 e8 (a) <g e> <g e> |
      <fs d>2. ~ |
      <fs d>4
    }
  >>
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "LM:"
  Lạy Cha rất mực yêu thương, chúng con hân hoan tạ ơn Cha,
  và cùng với Đức Giê -- su Ki -- tô, chúng con hớn hở vui mừng
  trong Hội Thánh của Cha.
  Cha yêu thương chúng con đến nỗi đã dựng nên thế giới bao la
  và xinh đẹp này cho chúng con.
  \set stanza = "GD:"
  Lạy Chúa, vinh danh Chúa là Đấng yêu thương loài người chúng con.
  \set stanza = "LM:"
  Cha yêu thương chúng con đến nỗi ban Chúa Giê -- su,
  Con Cha cho chúng con để Người dẫn đưa chúng con đến cùng Cha.
  \set stanza = "GD:"
  Lạy Chúa, vinh danh Chúa là Đâng yêu thương loài người chúng con.
  \set stanza = "LM:"
  Cha yêu thương chúng con đến nỗi quy tụ chúng con
  trong Đức Ki -- tô, và nhờ Chúa Thánh Thần, Cha làm cho chúng con
  trở nên nghĩa tử của một gia đình duy nhất.
  \set stanza = "GD:"
  Lạy Chúa, vinh danh Chúa là Đấng yêu thương loài người chúng con.
  \set stanza = "LM:"
  Vì Cha ban tặng chúng con một tình yêu lớn lao dường ấy,
  nên cùng với các Thiên Thần và các thánh đang thờ lạy Cha
  chúng con tạ ơn Cha và ca hát rằng:
  \set stanza = "GD:"
  Thánh! Thánh! Thánh! Chúa là Thiên Chúa các đạo binh
  Trời đất đầy vinh quang Chúa. Hoan hô Chúa trên các tầng trời.
  Chúc tụng Đấng ngự đến nhân danh Chúa.
  Hoan hô Chúa trên các tầng trời.
}

loiMauHai = \lyricmode {
  Chúng con được sống như con cái.
  \set stanza = "GD:"
  Chúc tụng Đấng ngự đến nhân danh Chúa.
  Hoan hô Chúa trên các tầng trời.
}

loiMauBa = \lyricmode {
  Chúng con được lôi cuốn đến cùng Cha.
}

loiMauBon = \lyricmode {
  Vinh danh và ngợi khen Thiên Chúa chúng con.
}

loiMauNam = \lyricmode {
  Chúng con ca ngợi Cha, chúng con chúc tụng Cha,
  chúng con tạ ơn Cha.
}

loiMauSau = \lyricmode {
  Lạy Chúa ước gì mọi người nên một thân thể và một tinh thần
  để tôn vinh Chúa.
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

\markup {
  \bold "Mở đầu: như mẫu 1"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Mở đầu" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  %\vspace #2
  \bold "Linh mục đọc tiếp và kết: như con cái"
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\markup {
  \column {
    %\vspace #2
    \line { \bold "Linh mục đọc tiếp phần Truyền Phép." }
    \line { \bold "Tung hô sau Truyền Phép: như Mẫu 1" }
    \vspace #2
    \line { \bold "Linh mục đọc tiếp, và kết với kết: Chúng con được ..." }
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  %\vspace #2
  \bold "Giáo dân tung hô:"
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \bold "Hoặc:"
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \column {
    %\vspace #2
    \line { \bold "Linh mục đọc tiếp 3 lời nguyện," }
    \line { \bold "sau mỗi lời, Giáo dân tung hô:" }
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Nguyện Thánh Thể"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key c \major
  a8 \hide ([b]) g g a e \hide ([g]) a4 \bar "||"
  g8 a e \hide ([g]) a4 \bar "||" \break
  
  b8 \hide ([c]) b b a4 b \bar "||"
  b8 \hide ([c]) b a b f \hide ([a]) b4 \bar "||" \break
  
  a8 \hide ([b a]) g a b a b c c \hide ([b]) a4 \bar "||"
  e8 e g \hide ([a]) a4 \bar "||"
}

nhacMauHai = \relative c' {
  \key f \major
  \partial 4 f4 |
  d8 d f a |
  g4 \bar "||"
  c,4 |
  <<
    {
      a'2 |
      r8 a g g |
      f4 bf8 g |
      a4 f8 bf |
      bf4 d8 d |
      g,4 a8 bf |
      g4. c8 |
      c2 ~ |
      c4
    }
    {
      f,2 |
      r8 f e e |
      d4 g8 e |
      f4 d8 f |
      g4 f8 f |
      e4 f8 g |
      f4. f8 |
      e2 ~ |
      e4
    }
  >>
  \bar "||"
}

nhacMauBa = \relative c' {
  \key c \major
  e8 (d) c c |
  f4. a8 |
  g2 ~ |
  g4 \bar "||"
  
  g |
  c2 |
  r8
  <<
    {
      c a b |
      c8. a16 d8 d |
      g,2 ~ |
      g8 a f e |
      d4 e8 c |
      a'2 |
      a8 c b d
    }
    {
      e,8 f g |
      a8. f16 fs8 g |
      e2 ~ |
      e8 f d c |
      b4 c8 a |
      f'2 |
      f8 a g f
    }
  >>
  <<
    {
      \voiceOne
      d'4 (c _~ |
      c4)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,2 ~ |
      e4
    }
  >>
  \bar "||"
}

nhacMauBon = \relative c' {
  \key c \major
  e4 c8 c |
  c4 e8 (f) |
  d2 ~ |
  d4 \bar "||"
  c8 (d) |
  e4. e8 |
  e2 |
  f8 f d a' |
  a4 g8
  <<
    {
      g |
      g c b (c) |
      d2 |
      a8 a c c |
      b2 |
      d8. e16 b8 d |
      c2 ~ |
      c4
    }
    {
      f,8 |
      e e d (e) |
      g2 |
      f8 f e e |
      d2 |
      f8. fs16 g8 g |
      e2 ~ |
      e4
    }
  >>
  \bar "||"
}

nhacMauNam = \relative c'' {
  \key c \major
  c8 a a4 d8 b b c \hide ([b]) a4 g8 g a e
  e a a g c b d \hide ([c]) a b a b4 b8 a
  a c b \hide ([c]) d \hide ([c]) b a4 b8 a g4 \bar "||"
  e8 ([g a b]) \bar "|"
  a2 \bar "||"
}

nhacMauSau = \relative c'' {
  <<
    {
      \once \stemUp c4 (b8 a) |
      b2 |
      d4. ^(f8) |
      e2 ~ |
      e4
    }
    {
      \once \stemUp a,4 (g8 f) |
      e2 |
      <a f>4. _(<b d,>8) |
      <gs e>2 ~ |
      <gs e>4
    }
  >>
  \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Chúa ở cùng anh chị em.
  \set stanza = " GD:"
  Và ở cùng cha.
  \set stanza = "CT:"
  Hãy nâng tâm hồn lên.
  \set stanza = "GD:"
  Chúng con đang hướng về Chúa.
  \set stanza = "CT:"
  Hãy tạ ơn Chúa là Thiên Chúa chúng ta.
  \set stanza = "GD:"
  Thật là chính đáng.
}

loiMauHai = \lyricmode {
  \set stanza = "CT:"
  Đây là mầu nhiệm đức tin.
  \set stanza = "GD:"
  Lạy Chúa chúng con loan truyền Chúa chịu chết,
  và tuyên xưng Chúa sống lại
  cho tới khi Chúa đến.
}

loiMauBa = \lyricmode {
  \set stanza = "CT:"
  Đây là mầu nhiệm đức tin.
  \set stanza = "GD:"
  Lạy Chúa mỗi lần ăn bánh và uống chén này
  chúng con loan truyền Chúa chịu chết
  cho tới khi Chúa đến.
}

loiMauBon = \lyricmode {
  \set stanza = "CT:"
  Đây là mầu nhiệm đức tin.
  \set stanza = "GD:"
  Lạy Chúa Cứu Thế,
  Chúa đã dùng Thánh Giá và sự phục sinh của Chúa
  để giải thoát chúng con,
  xin cứu độ chúng con.
}

loiMauNam = \lyricmode {
  \set stanza = "CT:"
  Chính nhờ Người, với Người và trong Người
  mà mọi danh dự và vinh quang đều quy về Chúa
  là Cha toàn năng trong sự hợp nhất của Chúa Thánh Thần
  đến muôn đời.
  \set stanza = " GD:"
  A -- men
}

loiMauSau = \lyricmode {
  A -- men, A -- men.
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
  %page-count = 2
}

TongNhip = {
  \time 2/4
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
    indent = 30
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
  }
}

\markup { \vspace #0.5 }

\markup {
  \bold "Lời tung hô Tưởng Niệm"
  \normal-text \italic "(sau Truyền Phép)"
}

\markup { \vspace #0.5 }

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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

%\pageBreak

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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
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
    indent = 30
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
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
    indent = 30
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #0.5
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
        \bold "Có thể thêm"
      }
    }
    <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
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

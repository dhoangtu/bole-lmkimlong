% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Nguyện Thánh Thể"
  subtitle = \markup { \huge \bold "Thánh Lễ Dành Cho Trẻ Em" }
  subsubtitle = \markup { \large \bold "Mẫu 1" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key c \major \time 2/4
  a8 \hide ([b]) g g a e \hide ([g]) a4 \bar "||"
  g8 a e \hide ([g]) a4 \bar "||" \break
  b8 \hide ([c]) b c g4 b \bar "||"
  b8 \hide ([c]) b a b g \hide ([a]) b4 \bar "||" \break
  a8 \hide ([b a]) g a b a a c c \hide ([b]) a4 \bar "||" \break
  e8 e
  \once \override NoteColumn.X-offset = 2 <>
  g \hide ([a]) a4 \bar "||"
}

nhacMauHai = \relative c'' {
  \key c \major \time 2/4
  g8 \hide ([a]) b4 a8 b c a4 c8 c b a c b a g4 b8 a
  a g \hide ([a]) c a b4 c8 b a d g, a a g4 b8 a b
  g c a d4 \bar "|" b8 a a g \hide ([a]) b4 g8 b a b c c a
  a4 a8 a a c4 d8 b c a a a g b a4 \bar "|" b8 a a g \hide ([a])
  b4 a8 c c b \hide ([a]) g4 g8 g g b4 a8 a c d b c c a4 \bar "|"
  b8 a a g \hide ([a]) b4 g8 c c a b a a g a b4 a8 a a
  d4 b8 d c d g, c c b b c \hide ([b]) a4 \bar "|" c8 a d b c g4
  g8 c b b c \hide ([b]) a4 a8 a b c b a \hide ([b]) g g g4 \bar "||" \break
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  d4 \bar "|" b'4. b8 fs16 \hide ([g]) b8 \bar "|"
  a4. g8 \bar "|"
  c4 a \bar "|"
  d2 \bar "||"
}

nhacMauBa = \relative c'' {
  \key g \major \time 2/4
  <<
    {
      d4. d8 \bar "|"
      d4 r8 d a [b] \bar "|"
      c4 b8 [g] \bar "|"
      a2 ~ \bar "|"
      a4 \bar "||"
    }
    {
      b4. b8
      b4 r8 g fs g
      a4 g8 e
      d2 ~
      d4
    }
  >>
}

nhacMauBon = \relative c' {
  \key g \major \time 2/4
  e8 \hide ([g]) a4 g8 fs g a b e, e4 e8 g fs fs b g b \hide ([c]) a4 \bar "|"
  a8 a b a a a b e, \hide ([g]) a c c c b4 \bar "|" g8 b b b g
  b a4 g8 g e e fs g4 fs8 fs fs g fs e g \hide ([a]) b4 b8 b
  g g b b g e \hide ([g]) \bar "|" a4 d, \bar "|"
  b'4. b8 g \hide ([b]) \bar "|" a4. d8 \bar "|"
  c4 a8 a \bar "|"
  g4 d \bar "|" \break
  
  d4 \bar "|"
  <<
    {
      b'4. a8 b c \bar "|"
      d2 b8 b \bar "|"
      c4. a8 d g, \bar "|"
      g2 ~ \bar "|"
      g4 \bar "||"
    }
    {
      g4. fs8 g a
      b2 g8 f!
      e4. e8 c c
      b2 ~
      b4
    }
  >>
}

nhacMauNam = \relative c'' {
  \key g \major \time 2/4
  g8 b c b a4 a8 g g c c b a g a4 b8 b b
  b c a a a d d d4 \bar "|"
  a8 a4 c8 b a b \hide ([a]) g g a4 g8
  c a a a d4 \bar "|" d8 d d b c1 a8 c c a b1 c8
  b4 \bar "|" c8 c d4 d8 d b b \hide ([c]) b b b4 a8 c c b \hide ([a]) g4
  g8 g g \hide ([a]) b b4 c8 b a a g a4 g8 c c a a
  d b \hide ([a]) \bar "|" g4 r8 c \bar "|" b4 g8 g \bar "|"
  a4. d,8 \bar "|" d8 a' a a \bar "|" g4 \bar "||" \break
  
  g8 ([a16 g]) d4. b'8 \bar "|"
  g [c] a [
  <<
    {
      a] \bar "|"
      d2 b8 [b] \bar "|"
      c4. a8 d [g,] \bar "|"
      g2 ~ \bar "|"
      g4 \bar "||"
    }
    {
      g8
      fs2 g8 f!
      e4. e8 c c
      b2 ~
      b4
    }
  >>
}

nhacMauSau = \relative c'' {
  \key g \major
  \time 2/4
  g4 d8 [d] |
  e (g4) b8 |
  a4 \bar "||" \break
  <<
    {
      d8 b |
      b4. c8 |
      c g c (b) |
      a2 |
      r8 g b b |
      fs4 r8 a |
      fs e d d |
    }
    {
      b'8 g |
      g4. g8 |
      a e a (g) |
      fs2 |
      r8 e g e |
      d4 r8 cs |
      d c b b |
    }
  >>
  \oneVoice
  <<
    {
      \voiceOne
      a' _(b)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,4
    }
  >>
  \oneVoice
  <<
    {
      a'8 a |
      g2 ~ |
      g4 \bar "||"
    }
    {
      d8 d |
      b2 ~ |
      b4
    }
  >>
}

nhacMauBay = \relative c' {
  \key g \major
  \time 2/4
  \partial 4 d4 |
  <<
    {
      b'2 ~ |
      b8 b a a |
      g4 c8 a |
      b4. fs8 |
      g g a a |
      d,4 b'8 c |
      a4. d8 |
      d2 ~ |
      d4 \bar "||"
    }
    {
      g,2 ~ |
      g8 g fs fs |
      e4 a8 fs |
      g4. d8 |
      e e cs cs |
      d4 d8 a' |
      g4. g8 |
      fs2 ~ |
      fs4
    }
  >>
}

nhacMauTam = \relative c' {
  \key g \major
  \time 2/4
  \partial 4 d4 |
  <<
    {
      b'2 ~ |
      b8 b g a |
      b8. fs16 a8 a |
      d,2 ~ |
      d8 g fs fs |
      e4 b'8 g |
      c4 b8 c |
      a4. d8 |
      d2 ~ |
      d4 \bar "||"
    }
    {
      g,2 ~ |
      g8 g e fs |
      g8. d16 cs8 cs |
      d2 ~ |
      d8 b d d |
      c4 d8 e |
      a4 g8 a |
      g4. g8 |
      fs2 ~ |
      fs4
    }
  >>
}

nhacMauChin = \relative c' {
  \key g \major
  \time 2/4
  \partial 4 d4 |
  <<
    {
      b'4. b8 |
      b2 |
      b8 b g c |
      c4. a8 |
      a a b c |
      d4 a8 a |
      d4. c8 |
      b4 a8 b |
      fs4. a8 |
      g2 ~ |
      g4 \bar "||"
    }
    {
      g4. g8 |
      g2 |
      g8 g e g |
      a4. e8 |
      d d g g |
      fs4 fs8 f! |
      e4. a8 |
      g4 fs8 e |
      d4. c8 |
      b2 ~ |
      b4
    }
  >>
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "X:"
  Chúa ở cùng anh chị em.
  \set stanza = "Đ:"
  Và ở cùng cha.
  \set stanza = "X:"
  Hãy nâng tâm hồn lên.
  \set stanza = "Đ:"
  Chúng con đang hướng về Chúa.
  \set stanza = "X:"
  Hãy tạ ơn Chúa là Thiên Chúa chúng ta.
  \set stanza = "Đ:"
  Thật là chính đáng.
}

loiMauHai = \lyricmode {
  \set stanza = "LM:"
  Lạy Chúa là Cha tốt lành, Đấng đã quy tụ chúng con nên một,
  chúng con đang ở trước mặt Chúa, để ca tụng Chúa
  và tuyên xưng rằng: Chúng con hết lòng thán phục Chúa,
  chúng con ca ngợi Chúa vì vẻ đẹp trên khắp cõi địa cầu,
  và vì niềm vui Chúa tuôn đổ tràn đầy tâm hồn chúng con.
  Chúng con ca ngợi Chúa vì ánh sáng ban ngày,
  và vì Lời Chúa dùng để soi sáng tâm trí chúng con.
  Chúng con ca ngợi Chúa, vì trái đất và con người cư ngụ trên đó,
  và vì sự sống mà chúng con biết là Chúa đã ban cho chúng con.
  Chúa là Đấng thật tốt lành, là Đâng yêu thương chúng con
  và làm cho chúng con những điều kỳ diệu.
  Vì thế tất cả chúng con đều hát mừng Chúa:
}

loiMauBa = \lyricmode {
  \set stanza = "GD:"
  Thánh! Thánh! Thánh!
  Chúa là Thiên Chúa các đạo binh.
}

loiMauBon = \lyricmode {
  \set stanza = "CT:"
  Lạy Cha, Cha hằng quan tâm đến loài người,
  và không ngừng trợ giúp họ khắp nơi,
  nên Cha đã sai Con Yêu Dấu của Cha đến với chúng con,
  Người đã đến cứu độ chúng con, đã chữa lành người đau yếu,
  ban ơn tha thứ cho kẻ tội lỗi,
  đã đón nhận và chúc phúc cho trẻ em.
  Vì thế với lòng biết ơn, chúng con tung hô rằng:
  \set stanza = "GD:"
  Trời đất đầy vinh quang Chúa. Hoan hô Chúa trên các tầng trời.
}

loiMauNam = \lyricmode {
  \set stanza = "CT:"
  Lạy Cha rất nhân từ, không phải chỉ có chúng con ca tụng Chúa,
  nhưng dân Cha trên khắp địa cầu đều tôn vinh Cha.
  Vì vậy chúng con tha thiết nguyện cầu Cha cùng với toàn thể Hội Thánh,
  với Đức Giáo hoàng "( ... )" và Đức Giám mục "( ... )" chúng con.
  Trên thiên quốc Đức Thánh Trinh Nữ Ma -- ri -- a và các thánh Tông Đồ
  cùng toàn thể các Thánh cũng không ngừng ca tụng Cha,
  cùng với các ngài và các Thiên Thần, chúng con thờ lạy Cha
  mà đồng thanh tung hô rằng:
  \set stanza = "GD:"
  Chúc tụng Đấng ngự đến nhân danh Chúa,
  Hoan hô Chúa trên các tầng trời.
}

loiMauSau = \lyricmode {
  \set stanza = "LM:"
  Đây là mầu chiệm đức tin.
  \set stanza = "GD:"
  Đức Ki -- tô đã chết vì chúng con và đã sống lại,
  chúng con đợi chờ Người đến trong vinh quang.
}

loiMauBay = \lyricmode {
  Lạy Chúa, chúng con loan truyền Chúa chịu chết
  và tuyên xưng Chúa sống lại cho tới khi Chúa đến.
}

loiMauTam = \lyricmode {
  Lạy Chúa mỗi lần ăn bánh và uống chén này,
  chúng con loan truyền Chúa chịu chết cho tới khi Chúa đến.
}

loiMauChin = \lyricmode {
  Lạy Chúa Cứu Thế, Chúa đã dùng Thánh giá và sự phục sinh của Chúa
  để giải thoát chúng con, xin cứu độ chúng con.
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##t
  }
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
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
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
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
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
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
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
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Linh mục tiếp tục phần Truyền Phép"
}

\score {
  <<
    \new Staff \with {
      \consists "Merge_rests_engraver"
      printPartCombineTexts = ##f
      instrumentName = \markup {
         
        \column {
          \line { \bold "Tung hô" }
          \line { \bold "sau Truyền Phép" }
        }
      }
    } <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 40
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Hoặc dùng 1 trong 3 công thức đã có sẵn:"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
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

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##t
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##t
  }
}

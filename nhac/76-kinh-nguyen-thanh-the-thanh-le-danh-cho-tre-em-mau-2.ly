% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  %title = "Kinh Nguyện Thánh Thể"
  %subtitle = \markup { \huge \bold "Thánh Lễ Dành Cho Trẻ Em" }
  subsubtitle = \markup { \large \bold "Mẫu 2" }
  composer = "Lm. Kim Long"
  %arranger = " "
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
    }
  >>
  \oneVoice
  
  
}

nhacMauHai = \relative c'' {
  
}

nhacMauBa = \relative c'' {
  
}

nhacMauBon = \relative c' {
  
}

nhacMauNam = \relative c'' {
  
}

nhacMauSau = \relative c'' {
  
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
  trong Đức Ki -- tô, và nhờ Chúa Thánh Thần, Cha làm co chúng con
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

\markup {
  \vspace #2
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
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
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

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "KINH THỐNG HỐI" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauHai = \relative c' {
  \partial 4 e8 (a) |
  b4 b8 b |
  c (b) a (b) |
  a4 \bar "||" \break
  
  e8
  <<
    {
      \voiceOne
      c' |
      b4 c8 b |
      a4. d16 (e) |
      \stemDown e2 ~ |
      e4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      a,8 |
      g4 a8 g |
      f4. <a f>8 |
      <gs e>2 ~ |
      <gs e>4
    }
  >>
  \oneVoice
  \bar "||"
  
  c8 (d) |
  e4. d8 |
  c a a b |
  c (b) a b |
  a4 \bar "||" \break
  
  e8
  <<
    {
      \voiceOne
      b' |
      b4. c8 |
      e4 b8 c16 (b) |
      \stemDown a2 ~ |
      a4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,8 |
      e4. d8 |
      c4 d8 e |
      <c a>2 ~ |
      <c a>4
    }
  >>
  \bar "||"
}

nhacMauBa = \relative c' {
  e8 a b4 c8
}

% Lời
loiMauHai = \lyricmode {
  \set stanza = "CT:"
  Lạy Chúa xin thương xót chúng con.
  \set stanza = "GD:"
  Vì chúng con đã xúc phạm đến Chúa.
  \set stanza = "CT:"
  Lạy Chúa, xin tỏ lòng từ bi Chúa cho chúng con.
  \set stanza = "GD:"
  Và ban ơn cứu độ cho chúng con.
}

loiMauBa = \lyricmode {
  \set stanza = "CT:"
  Lạy Chúa, Chúa đã được sai đến để cứu chữa
  những tâm hồn thống hối:
  Xin Chúa thương xót chúng con.
  \set stanza = "GD:"
  Xin Chúa thương xót chúng con.
  \set stanza = "CT:"
  Lạy Chúa Ki -- tô, Chúa đã đến kêu gọi những người tội lỗi:
  Xin Chúa Ki -- tô thương xót chúng con.
  \set stanza = "GD:"
  Xin Chúa Ki -- tô thương xót chúng con.
  \set stanza = "CT:"
  Lạy Chúa, Chúa ngự bên hữu Đức Chúa Cha
  để chuyển cầu cho chúng con:
  Xin Chúa thương xót chúng con.
  \set stanza = "GD:"
  Xin Chúa thương xót chúng con.
  \set stanza = "CT:"
  Xin Thiên Chúa toàn năng thương xót tha tội
  và dẫn đưa chúng ta tới sự sống muôn đời.
  \set stanza = "GD:"
  A -- men.
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

\markup {
  \bold "Mẫu 1:"
  \normal-text \italic "(đọc) Tôi thú nhận ..."
}

\markup { \vspace #0.5 }

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Mẫu 2" }} <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Mẫu 3" }} <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauBa
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
    \override LyricHyphen.minimum-distance = #1.5
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

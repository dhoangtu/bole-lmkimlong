% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Kinh Lạy Cha"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  a8 g \hide ([a]) b b b4 a8 b a c \hide ([b]) g g4 (a)
  a8 g a g4 e \bar "||"
  
  e8 \hide ([g]) a b a4 b8 a g4
  a8 g e a a g \hide ([a]) b4 c8 b a \hide ([b]) c4 c8 b g g
  b b c b \hide ([c]) b a4 \bar "|"
  b8 b b c b a a4
  g8 e d e4 e8 a g \hide ([a]) b a4 b8 c b c
  b4 a8 c b d c4 a8 b e, \hide ([g]) b a a b
  b b4 b8 c c b a g \hide ([a])
  e \hide ([g]) b ([c] \once \stemDown a4) \bar "|" \break
  
  g8 \hide ([a]) b4 b8 c c b g g g \hide ([a]) b4 b8 c8 b4 b8 c a
  c b a b \hide ([a]) g g a4 e8 a \hide ([b]) g g a b c4 c8 b
  c b b c \hide ([b]) a a b4 g8 g a g g g a \hide ([g])
  e4 a8 a b a a g g a e a \hide ([b]) c4 a8 a c b b \hide ([c]) d c c
  c c4 c8 b g b \hide ([c]) a4 \bar "||" \break
  
  e8 [a] \bar "|"
  g4.
  <<
    {
      c8 \bar "|"
      b4 b8 [d] \bar "|"
      c [b] c ([d]) \bar "|"
      e4
    }
    {
      a,8 \bar "|"
      e4 d8 g \bar "|"
      e [d] a' ([g]) \bar "|"
      c4
    }
  >>
  <<
    {
      \voiceOne
      b16 [(c) b8] \bar "|"
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,8 [d] \bar "|"
    }
  >>
  \oneVoice
  <<
    {
      a'2 ~ \bar "|"
      a4
    }
    {
      c,2 ~ \bar "|"
      c4
    }
  >>
  \bar "||" \break
  
  e8 \hide ([g]) b a a a a4 c8 c c c c b a a4 g8 g g
  g a b c b4 a8 b a b g \hide ([a]) e b' c a4 a8 g b
  e, b' \hide ([c]) a4 a8 a g c c b c a d d4 b8 c b
  b b a c \hide ([b]) g g a4 a8 a c b d d d4 d8 b
  c \hide ([b]) a b a a g4 \bar "||"
  
  e8 \hide ([g a b]) a4 \bar "||" \break
  
  a8 a a \hide ([b]) c4 g8 g g a e \hide ([g]) a4 \bar "||"
  g8 a e \hide ([g]) a4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  \set stanza = "CT:"
  Vâng lệnh Chúa Cứu Thế và theo thể thức Người dạy,
  chúng ta dám nguyện rằng:
  \set stanza = " GD:"
  Lạy Cha chúng con ở trên trời
  Chúng con nguyện danh Cha cả sáng,
  Nước Cha trị đến,
  Ý Cha thể hiện dưới đất cũng như trên trời
  Xin Cha cho chúng con hôm nay lương thực hằng ngày;
  và tha nợ chúng con,
  như chúng con cũng tha kẻ có nợ chúng con.
  Xin chớ để chúng con sa chước cám dỗ
  nhưng cứu chúng con cho khỏi sự dữ.
  \set stanza = "CT:"
  Lạy Chúa, xin cứu chúng con khỏi mọi sự dữ,
  xin đoái thương cho những ngày chúng con đang sống
  được bình an.
  Nhờ Chúa rộng lòng thương cứu giúp,
  chúng con sẽ luôn luôn thoát khỏi tội lỗi,
  và được yên ổn khọi mọi biến loạn,
  đang khi chúng con mong đợi niềm hy vọng hồng phúc
  và ngày trở lại của Chúa Giê -- su Ki -- tô,
  Đấng cứu độ chúng con
  \set stanza = " GD:"
  Vì vương quyền, uy lực và vinh quang là của Chúa
  đến muôn đời.
  \set stanza = "CT:"
  Lạy Chúa Giê -- su Ki -- tô,
  Chúa đã nói với các tông đồ rằng:
  Thầy để lại bình an cho các con,
  Thầy ban bình an của Thầy cho các con.
  Xin đừng chấp tội chúng con,
  Nhưng xin nhìn đến đức tin của Hội Thánh Chúa.
  Xin đoái thương ban cho Hội Thánh được bình an
  và hợp nhất theo thánh ý Chúa,
  Chúa hằng sống và hiển trị muôn đơi.
  \set stanza = " GD:"
  A -- men.
  \set stanza = "CT:"
  Bình an của Chúa hằng ở cùng anh chị em.
  \set stanza = "GD:"
  Và ở cùng cha.
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
  <<
    \new Staff \with {
      \remove "Time_signature_engraver" } <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

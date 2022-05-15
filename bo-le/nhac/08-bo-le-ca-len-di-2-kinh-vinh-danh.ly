% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  subtitle = \markup { \huge \bold "Kinh Vinh Danh" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \override Score.BarLine.break-visibility = ##(#f #f #f)
  a8 a a c4 
  a8 bf (g) f4 f \bar "||" \break
  \override Score.BarLine.break-visibility = ##(#t #t #t)
  
  \partial 4 c8 c |
  f4 g |
  a4. g8 |
  a4 bf |
  c4. bf8 |
  g4 g |
  a2 ~ |
  a4 r8 bf |
  a g f (g) |
  a4 r8 d |
  c4 d8 c |
  f4 r8 bf, |
  a (g) f g |
  a4 r8 d |
  c4 c8 c |
  f4 r8 d |
  c (a) f g |
  a4 c,8 a' |
  a4 a8 bf |
  c4 r8 g |
  bf (a) f g |
  a4 c, |
  g'4. g8 |
  f4 r8 f |
  c' (d) c b! |
  c2 ~ |
  c4 r |
  d,8 g f g |
  a2 |
  a16 (bf) a8 g g |
  g4 c, |
  a'8 (bf) f g |
  a4 r8 g |
  a4 b! |
  c r8 c, |
  a' bf bf (a) |
  g2 |
  a4. a8 |
  f (e) d4 |
  g2 |
  c4. (b!8) |
  c4 r |
  a4. (gs8) |
  a4 g8 g |
  a4 g |
  f2 |
  d'4. d8 |
  bf (a) g4 |
  c2 |
  bf4. a8 |
  g4 bf |
  a8 (g) f (a) |
  a2 |
  c8 (d16 c) a8 c |
  f (e) f d |
  c2 |
  c4. ^(b!8) |
  c4 r |
  a4. ^(gs8) |
  a4 g8 g |
  a4 g |
  f2 ~ |
  f4 c8 c |
  a'16 (bf) a8 g g |
  g4 c,8 a' |
  a4 f8 bf |
  bf4 g8 c |
  c4 a8 (c) |
  d4 b!8 e |
  e2 |
  c4 f8 f |
  d4. g,8 |
  a (bf) a g |
  f4 d'8 d |
  d2 |
  e4 f |
  c2 ~ |
  c4 d8 _(e) |
  f2 ~ |
  f4 \stemDown e |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  r8*12
  
  c8 bf |
  a4 c |
  f4. e8 |
  f4 g |
  a4. d,8 |
  e4 e |
  f2 ~ |
  f4 r8 bf |
  a g f (g) |
  a4 r8 bf |
  a4 bf8 g |
  a4 r8 bf |
  a (g) f g |
  a4 r8 bf |
  a4 g8 g |
  a4 r8 d |
  c (a) f e |
  f4 c8 f |
  f4 f8 g |
  e4 r8 e |
  d (f) d c |
  f4 c |
  b!4. c8 |
  d4 r8 d |
  e (f) e d |
  e2 ~ |
  e4 r |
  d8 g f g |
  a2 |
  a16 (bf) a8 g g |
  g4 c, |
  f8 (g) d e |
  f4 r8 e |
  f4 d |
  e r8 c |
  f g g (f) |
  e2 |
  a4. a8 |
  f (e) d4 |
  g2 |
  a4. (gs8) |
  a4 r |
  f4. (e8) |
  f4 e8 e |
  f4 c |
  d2 |
  d'4. d8 |
  bf (a) g4 |
  c2 |
  g4. f8 |
  e4 g |
  f8 (e) d (c) |
  f2 |
  c'8 (d16 c) a8 c |
  f (e) f d |
  c2 |
  a4. _(gs8) |
  a4 r |
  f4. _(e8) |
  f4 c8 c |
  f4 e |
  f2 ~ |
  f4 c8 c |
  f16 (g) f8 f f |
  e4 c8 f |
  f4 f8 ef |
  d4 g8 f |
  e4 f8 (e) |
  f4 g8 g |
  c2 |
  a4 g8 g |
  f4. e8 |
  f (g) f e |
  d4 f8 g |
  bf2 |
  c4 bf |
  a2 ~ |
  a4 g |
  a2 ~ |
  a4 <bf c,> |
  <a f>2 ~ |
  <a f>4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \override Lyrics.LyricText.font-series = #'bold
  Vinh danh Thiên Chúa trên các tầng trời
  \revert Lyrics.LyricText.font-series
  Và bình an dưới thế, bình an dưới thế cho người thiện tâm.
  Chúng con ca ngợi Chúa,
  Chúng con chúc tụng Chúa,
  Chúng con thờ lạy Chúa,
  Chúng con tôn vinh Chúa,
  Chúng con cảm tạ Chúa,
  vì vinh quang cao cả Chúa,
  lạy Chúa là Thiên Chúa,
  là Vua trên trời,
  là Chúa Cha toàn năng.
  Lạy Con Một Thiên Chúa, Chúa Giê -- su Ki -- tô,
  Lạy Chúa là Thiên Chúa,
  là Chiên Thiên Chúa, là Con Đức Chúa Cha.
  Chúa xóa tội trần gian,
  Xin thương,
  Xin thương, xin thương xót chúng con.
  Chúa xóa tội trần gian,
  Xin nhận lời chúng con cầu khẩn.
  Chúa ngự bên hữu Đức Chúa Cha,
  Xin thương,
  Xin thương, xin thương xót chúng con.
  Vì, lạy Chúa Giê -- su Ki -- tô, chỉ có Chúa là Đấng Thánh,
  chỉ có Chúa là Chúa, chỉ có Chúa là Đấng Tối Cao,
  Cùng Đức Chúa Thánh Thần trong vinh quang Đức Chúa Cha.
  A -- men, A -- men.
}

% Dàn trang
\paper {
  #(set-paper-size "a5")
  top-margin = 3\mm
  bottom-margin = 3\mm
  left-margin = 3\mm
  right-margin = 3\mm
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
}

TongNhip = {
  \key f \major \time 2/4
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
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -1 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    indent = #10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Chúa Nhật Phục Sinh"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% mã nguồn cho những chức năng chưa hỗ trợ trong phiên bản lilypond hiện tại
% cung cấp bởi cộng đồng lilypond khi gửi email đến lilypond-user@gnu.org
% in số phiên khúc trên mỗi dòng
#(define (add-grob-definition grob-name grob-entry)
     (set! all-grob-descriptions
           (cons ((@@ (lily) completize-grob-entry)
                  (cons grob-name grob-entry))
                 all-grob-descriptions)))

#(add-grob-definition
    'StanzaNumberSpanner
    `((direction . ,LEFT)
      (font-series . bold)
      (padding . 1.0)
      (side-axis . ,X)
      (stencil . ,ly:text-interface::print)
      (X-offset . ,ly:side-position-interface::x-aligned-side)
      (Y-extent . ,grob::always-Y-extent-from-stencil)
      (meta . ((class . Spanner)
               (interfaces . (font-interface
                              side-position-interface
                              stanza-number-interface
                              text-interface))))))

\layout {
    \context {
      \Global
      \grobdescriptions #all-grob-descriptions
    }
    \context {
      \Score
      \remove Stanza_number_align_engraver
      \consists
        #(lambda (context)
           (let ((texts '())
                 (syllables '()))
             (make-engraver
              (acknowledgers
               ((stanza-number-interface engraver grob source-engraver)
                  (set! texts (cons grob texts)))
               ((lyric-syllable-interface engraver grob source-engraver)
                  (set! syllables (cons grob syllables))))
              ((stop-translation-timestep engraver)
                 (for-each
                  (lambda (text)
                    (for-each
                     (lambda (syllable)
                       (ly:pointer-group-interface::add-grob
                        text
                        'side-support-elements
                        syllable))
                     syllables))
                  texts)
                 (set! syllables '())))))
    }
    \context {
      \Lyrics
      \remove Stanza_number_engraver
      \consists
        #(lambda (context)
           (let ((text #f)
                 (last-stanza #f))
             (make-engraver
              ((process-music engraver)
                 (let ((stanza (ly:context-property context 'stanza #f)))
                   (if (and stanza (not (equal? stanza last-stanza)))
                       (let ((column (ly:context-property context
'currentCommandColumn)))
                         (set! last-stanza stanza)
                         (if text
                             (ly:spanner-set-bound! text RIGHT column))
                         (set! text (ly:engraver-make-grob engraver
'StanzaNumberSpanner '()))
                         (ly:grob-set-property! text 'text stanza)
                         (ly:spanner-set-bound! text LEFT column)))))
              ((finalize engraver)
                 (if text
                     (let ((column (ly:context-property context
'currentCommandColumn)))
                       (ly:spanner-set-bound! text RIGHT column)))))))
      \override StanzaNumberSpanner.horizon-padding = 10000
    }
}

stanzaReminderOff =
  \temporary \override StanzaNumberSpanner.after-line-breaking =
     #(lambda (grob)
        ;; Can be replaced with (not (first-broken-spanner? grob)) in 2.23.
        (if (let ((siblings (ly:spanner-broken-into (ly:grob-original grob))))
              (and (pair? siblings)
                   (not (eq? grob (car siblings)))))
            (ly:grob-suicide! grob)))

stanzaReminderOn = \undo \stanzaReminderOff
% kết thúc mã nguồn

% Nhạc
nhacMauMot = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4. b8 c c |
  a2 |
  g8 c a c |
  d2 |
  <<
    {
      b8 b b (c) |
      a4 b8 b |
      g a e g |
      a2 |
      c8 c c (d) |
      b4 a8 d |
      d d
    }
    {
      g,8 g g (a) |
      fs4 g8 g |
      e d c e |
      d2 |
      e8 e e (fs) |
      g4 g8 g |
      fs fs
    }
  >>
  <<
    {
      \voiceOne
      b16 (a) e8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d8 d
    }
  >>
  \oneVoice
  <<
    {
      e2 |
      d8 d fs (g) |
      a2 ~ |
      a8 b a fs |
      g4
    }
    {
      c,2 |
      b8 b d (e) |
      fs2 ~ |
      fs8 g c d |
      b4
    }
  >>
   r8 \bar "|."
   
   g16 fs |
   fs8 b b e, |
   a4 r8 fs16 g |
   a8 g g e |
   d2 \bar "||"
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 f16 c |
  c8 a' a f |
  g4. g16
  <a f> |
  <c e,>8 <bf d,> <g e> <g e> |
  f4 r8 \bar "|."
}

nhacMauBa = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4. d8 b b |
  c4 c8 a |
  g a16 (g) e4 |
  d8 fs a fs |
  g4 r8
  <<
    {
      a |
      a4. b8 |
      b g c a |
      d2 |
      e8 d
    }
    {
      d,8 |
      d4. d8 |
      g e a g |
      fs2 |
      c'8 b
    }
  >>
  <<
    {
      \voiceOne
      d8 d16 (c) |
      a4 \slashedGrace { d16 _( } d8) b16 _(a) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      a8 g |
      fs4 fs8 e |
    }
  >>
  \oneVoice
  <<
    {
      fs4. d8 |
      fs4 a8 a |
      g2 \bar "||"
    }
    {
      d4. b8 |
      d4 c8 c |
      b2
    }
  >>
  
  d8 b' g g |
  c2 ~ |
  c8 b d d |
  a4 b8 e, |
  e2 |
  r8 fs16 (g) a8 d, |
  <<
    {
      b'4 b8 g |
      c8. c16 c8 d |
      d4
    }
    {
      g,4 g8 f! |
      e8. e16 e8 g |
      fs4
    }
  >>
  <<
    {
      \voiceOne
      a16 (b) a8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g8 fs
    }
  >>
  \oneVoice
  g2 \bar "||"
  
  d8 b' b b |
  c4. d8 |
  d b c b |
  a4 a8 g |
  a fs g16 (a) b8 |
  d,2 ~ |
  d4 g8 fs16 (g) |
  a8 d,
  <<
    {
      b'16 (c) b8 |
      a8. c16 c8 a |
      b4 g8 c |
    }
    {
      g16 (a) g8 |
      fs8. e16 e8 fs |
      g4 g8 f! |
    }
  >>
  <<
    {
      \voiceOne
      c'8 a16 (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e,8 e
    }
  >>
  \oneVoice
  <e' g,>8 <cs a> |
  <d fs,>4 r8 \bar "||"
  
  b8 |
  b a g g |
  c2 ~ |
  c8 c e d16 (c) |
  a8 a b (a) |
  g2 \bar "||"
  r4
  <<
    {
      d'8 d |
      b2 |
      g8 a e g |
      a4 d8 d
    }
    {
      b8 a |
      g2 |
      e8 d c e |
      d4 fs8 fs
    }
  >>
  g4. g8 |
  d'4 b8 b |
  b4 c8 c |
  a4 r8 \bar "||"
  
  <<
    {
      d8 |
      b c c a |
      a8. d16 d8 g, |
      g (fs) g a |
      b4
    }
    {
      b8 |
      g a a g |
      fs8. fs16 fs8 e |
      e (d) b d |
      g4
    }
  >>
  r8 g
  <<
    {
      e8. a16 c8 d |
      d4 b8 b |
      c4 a8 a |
      b4.
    }
    {
      c8. e,16 a8 g |
      fs4 g8 g |
      e4 c8 c |
      d4.
    }
  >>
  <<
    {
      \voiceOne
      b'16 (a) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8 |
    }
  >>
  \oneVoice
  <g' b,>2 ~ |
  <g b,>4 \bar "|."
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 f8 |
  c f e16 (f) a8 |
  g8. f16 bf8 a |
  a4 \tuplet 3/2 { a8 f bf } |
  bf4 bf8 d |
  c d16 (c) g8 (bf) |
  c4. g8 |
  a4 \bar "|."
}

nhacMauNam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c8 a |
  a4. g8 |
  f g d16 (f) a8 |
  g8. a16 f8 bf |
  bf2 |
  <c a>8 <a f> <bf g> (<a f>) |
  <g c>4 bf8 d |
  c c f, (g) |
  a8. bf16 bf8 a |
  g2 ~ |
  g8 f f g |
  d d e (d) |
  c2 |
  c8 c
  <<
    {
      \voiceOne
      e8 (f)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c4
    }
  >>
  \oneVoice
  <<
    {
      g'2 ~ |
      g8 a g e |
      f4 \bar "|."
    }
    {
      bf,2 ~ |
      bf8 a bf c |
      a4
    }
  >>
}

% Lời
loiMauMot = \lyricmode {
  Con đã sống lại và vẫn ở bên Cha,
  al -- le -- lu -- ia;
  Chúa đã đặt tay Ngài trên con,
  al -- le -- lu -- ia;
  Thượng trí Chúa quá ư kỳ diệu,
  al -- le -- lu -- ia.
  Al -- le -- lu -- ia.
  <<
    {
      \set stanza = "1."
      Đây là ngày Chúa đã làm ra,
      nào ta hãy hân hoan reo mừng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Bao địch thù xúm tới bủa vây,
      nhờ Danh Chúa tôi nay diệt trừ.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đây Ngài là Đấng cứu độ tôi,
      được uy dũng tôi luôn ca mừng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Xin cảm tạ Chúa đã dủ thương hằng nghe thấu khi tôi kêu cầu.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Ta dàn hàng, nhánh là cầm tay vào cung thánh
      vây quanh bàn thờ.
    }
  >>
}

loiMauHai = \lyricmode {
  Đây là ngày Chúa đã làm ra,
  nào ta hãy hỉ hoan vui mừng.
}

loiMauBa = \lyricmode {
  Các Ki -- tô hữu hãy dâng lời ca ngợi mừng hy lễ Vượt Qua.
  Chiên Con đã cứu chuộc cả đoàn chiên,
  Đức Ki -- tô vô tội đã giao hòa tội nhân với Chúa Cha.
  Sự sống và sự chết giao chiến với nhau cách kỳ diệu,
  Thủ Lãnh sự sống tuy đã chết nhưng nay vẫn sống để trị vì.
  Bà Ma -- ri -- a hỡi, hãy nói cho chúng tôi nghe,
  trên đường đi bà đã thấy gì?
  Tôi đã thấy mồ Đức Ki -- tô, Đấng vẫn đang sống
  và vinh quang của Đấng Phục Sinh
  Thấy các Thiên Thần làm chứng cùng với khăn niệm và y phục.
  Đức Ki -- tô, niềm hy vọng của tôi đã sống lại,
  Người đến Ga -- li -- lê trước các ông.
  Chúng tôi biết Đức Ki -- tô đã sống lại thật từ cõi chết.
  Lạy Chúa là Vua chiến thắng,
  xin thương xót, xin thương xót chúng con.
}

loiMauBon = \lyricmode {
  Chiên Vượt Qua của chúng ta là Đức Ki -- tô đã bị sát tế,
  Vậy chúng ta hãy mừng lễ trong Chúa.
}

loiMauNam = \lyricmode {
  Đức Ki -- to, Chiên Vượt Qua của chúng ta đã bị sát tế,
  Al -- le -- lu -- ia.
  Vậy chúng ta hãy mừng lễ với bánh không men
  là lòng tinh tuyền và chân thật,
  Al -- le -- lu -- ia, al -- le -- lu -- ai.
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
  page-count = 3
}

\markup {
  \vspace #2
  \bold "Ca nhập lễ:"
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \column {
      \left-align {
        \line {
          \bold "Thánh Vịnh Đáp ca:" \normal-text "như lễ Đêm, trang 28-29"
        }
        \line {
          "Hoặc hát với câu Đáp sau đây:"
        }
      }
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \vspace #2
  \bold "Ca Tiếp Liên"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Alleluia:" \normal-text "(khởi với Alleluia như thưởng lễ) Câu Xướng:"
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
    %indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Ca Hiệp Lễ"
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
    %indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \italic "Hát thêm các câu Thánh Vịnh như trong lễ Đêm (trang 29)"
}

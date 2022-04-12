% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Tôi đã thấy nước"
  subsubtitle = "(hát khi rẩy nước thánh)"
  composer = "Lm. Kim Long"
  %arranger = " "
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
  r8 a b b |
  b4 g8 a |
  e16 (fs) d8 e g |
  fs2 |
  <b g>8 <b g>8
  <<
    {
      \voiceOne
      <b e,>8 (<c c,>)
      <a d,>4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1.5 g4
      \once \override NoteColumn.force-hshift = #1.5 fs4
    }
  >>
  \oneVoice
  g8 c |
  c a16 (c) e8 e |
  d4 c8 e |
  c a a d |
  d (b16 a) fs8 g |
  a4 <b g>8 <b g> |
  <<
    {
      \voiceOne
      b8 (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <g e>4
    }
  >>
  \oneVoice
  <a e c>4 |
  <a fs d>8 <a fs d> <d fs, c>4 |
  <g, d b>2 ~ |
  <g d b>4 r8 \bar "|."
  
  d'8 |
  b (a) g (a) |
  b2 ~ |
  b8 e, e g |
  a4 r8 g |
  b g a16 (g) e8 |
  d2 ~ |
  d8 d a'16 (b) a8 |
  g2 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Tôi đã thấy nước từ bên phải đền thờ chảy ra
  Al -- le -- lu -- ia,
  Và nước ấy chảy đên những ai
  thì tất cả đều được cứu rỗi và reo lên:
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
  <<
    {
      \set stanza = "1."
      Hãy cảm tạ Chúa vì Ngài hảo tâm,
      vì đức từ bi của Ngài bền vững muôn đời.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Chính đây tảng đá thợ nề loại ra,
      rầy Chúa làm cho trở thành là Đá góc tường.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chính trong ngày thánh mà Ngài dựng nên
      nào hãy cùng nhau tưng bừng đàn hát reo mừng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Cánh tay của Chúa vận dụng oai phong
      tạo tác kỳ công muôn vàn, trần thế ngóng trông.
    }
  >>
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

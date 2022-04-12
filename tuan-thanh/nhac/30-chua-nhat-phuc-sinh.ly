% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Chúa Nhật Phục Sinh"
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
  
}

nhacMauHai = \relative c'' {
  
}

nhacMauBa = \relative c'' {
  
}

nhacMauBon = \relative c' {
  
}

nhacMauNam = \relative c' {
  
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
      Xin cảm tạ Chúa đã dủ thương nghe thấu khi tôi kêu cầu.
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
  Đức Ki -- to vô tội đã giao hòa tội nhân với Chúa Cha.
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
  Vậy chúng ta hãy mwungf lễ với bánh không men
  là lòng tinh tuyền và chân thật,
  Al -- le -- lu -- ia, al -- le -- lu -- ai.
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
    indent = 15
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.6
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
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
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
    \new Staff \with {
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  "Hát thêm các câu Thánh Vịnh như trong lễ Đêm (trang 29)"
}

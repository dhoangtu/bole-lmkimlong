% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thứ Sáu Tuần Thánh"
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
nhacMauMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c8 (d) |
  e4. e8 |
  e f e d |
  <g b,>4 <a d,>8 <b d,> |
  <c e,>2 \bar "|."
  
  c8 b16 (c) d8 d |
  g,4 e8 e |
  f g d16 (e) d8 |
  c2 |
  c8 g' a (g) |
  e4. c'8 |
  \once \phrasingSlurDashed
  b \(c\) d (e) |
  d2 |
  b8. c16 b8 e, |
  a a r d, |
  f f g b, |
  c4 \bar "||"
}

nhacMauHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 c |
  f ([e g]) a |
  a2 |
  g8 g a a |
  f4 (e8) c |
  f4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a8 g |
  f (g) a4 |
  f (e8 c) |
  d2 ~ |
  d4 \bar "|."
}

nhacMauBon = \relative c'' {
  \key f \major
  \time 2/4
  <<
    {
      a4. a8 |
      bf4. (a8) |
      d4. d8 |
      e4 r8 e |
      f16 (e) cs8 cs d |
      d2 |
      g,8 g a8. f16 |
      f8 f g e |
      e2 |
      d'4. bf8 |
      g4. a8 |
      a2 ~ |
      a4 \bar "|."
    }
    {
      f4. f8 |
      g4. (f8) |
      bf4. bf8 |
      a4 r8 g |
      f16 (g) a8 a g |
      f2 |
      e8 e f8. a16 |
      d,8 d e d |
      cs2 |
      d4. g8 |
      e4. e8 |
      f2 ~ |
      f4
    }
  >>
  \break
  
  d8 (f) |
  g4. f8 |
  g bf a g |
  f (g) a f |
  e2 |
  e8 g f f |
  f4. g8 |
  a a a, (c) |
  d2 ~ |
  \partial 4 d4 \bar "|." \break
  
  f8 (e) d a' |
  a2 |
  bf8 bf4 g8 |
  e2 |
  a8 a4 a8 |
  d,4 \bar "|." \break
  
  d8 (f) |
  g2 |
  f8 g bf bf |
  a4. g8 |
  g d f e |
  e2 |
  e8 g f f |
  f4. g8 |
  a a a, (c) |
  d2 ~ |
  d4 \bar "||"
}

nhacMauNam = \relative c' {
  
}

nhacMauSau = \relative c' {
  
}

nhacMauBay = \relative c' {
  
}

nhacMauTam = \relative c'' {
  
}

nhacMauChin = \relative c'' {
  
}

nhacMauMuoi = \relative c'' {
  
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, con xin phó linh hồn con trong tay Chúa.
  <<
    {
      \set stanza = "1."
      Con ẩn náu bên Ngài, đừng để con xấu hổ khi nào.
      Hồn con phó trọn trong bàn tay Chúa đây.
      Xin Chúa trung hậu vô biên, Ngài yêu thương cứu chuộc con.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Con bị lũ quân thù, bạn bè thân thích thảy chê cười,
      vừa khi ngó mặt, kinh tởm _ tránh xa,
      quên lãng như mật thây ma, và coi như thứ bỏ đi.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Con hằng vững tin Ngài, Ngài là Thiên Chúa của con thờ.
      Hồn con phó trọn trong bàn tay Chúa liên.
      Xin cứu con vượt qua tay địch quân đang bách hại con.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Xin tỏa thánh nhan Ngài và dủ thương cứu kẻ tôi đòi.
      Nào ai vững lòng trông cậy _ Chúa liên,
      mau hãy con trường thêm lên và luôn luôn vững mạnh thêm.
    }
  >>
}

loiMauHai = \lyricmode {
  Đây là cây Thánh Giá, nơi treo Đấng Cứu Độ trần gian.
}

loiMauBa = \lyricmode {
  Chúng ta hãy đến thờ lạy.
}

loiMauBon = \lyricmode {
  Dân Ta hỡi, dân Ta hỡi, Ta đã làm gì cho ngươi,
  Hay Ta đã làm phiền lòng người điều gì?
  Hãy trả lời cho Ta.
  Phải chăng vì Ta dẫn ngươi ra khỏi đất Ai Cập,
  mà ngươi dọn thập tự cho Đấng Cứu Chuộc ngươi?
  
  Chúa là Đấng Thánh, Đấng Thánh uy hùng, Đấng Thánh vĩnh hằng.
  Phải chăng vì Ta đã dẫn ngươi qua sa mạc bốn mươi năm,
  mà ngươi dọn thập tự cho Đấng Cứu Chuộc ngươi?
}

loiMauNam = \lyricmode {
  
}

loiMauSau = \lyricmode {
  
}

loiMauBay = \lyricmode {
  
}

loiMauTam = \lyricmode {
  
}

loiMauChin = \lyricmode {
  
}

loiMauMuoi = \lyricmode {
  
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
  %page-count = 9
}

\markup {
  \vspace #2
  \bold "Thánh vịnh Đáp ca:" \normal-text " Tv. 30"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }} <<
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
          \bold "Câu xướng trước Tin Mừng:" \normal-text "như Chúa Nhật Lễ Lá, trang 8"
        }
        \null
        \line {
          \bold "TÔN THỜ THÁNH GIÁ"
        }
        \null
        \line {
          \normal-text \italic "Linh mục mở lần khăn phủ Thánh Giá, nâng cao và hát (3 lần, lên cung dần)"
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
  %\vspace #2
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { "Cộng đoàn đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 30
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        "Khi cộng đoàn hôn kính Thánh Giá, có thể hát bài:" \bold "Dân Ta ơi"
      }
      \line {
        "(Tt. Ca lên đi, trang 644) hoặc các câu than vãn sau đây:"
      }
    }
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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  "Lặp lại: Chúa là Đấng Thánh..."
}


\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
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
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  "Lặp lại: Chúa là Đấng Thánh..."
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
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
  "Lặp lại: Dân ta hỡi..."
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
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
  "Lặp lại: Dân ta hỡi..."
}


\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
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
  \column {
    \left-align {
      \line {
        "Lặp lại: Dân ta hỡi..."
      }
      \line {
        "Có thể hát thêm" \bold "Đối ca" \normal-text "sau đây:"
      }
    }
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Ca Vãn"
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 15
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

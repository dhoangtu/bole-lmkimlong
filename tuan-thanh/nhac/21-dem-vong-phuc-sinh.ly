% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Đêm Vọng Phục Sinh"
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
  \key c \major
  \time 2/4
  c8 c c b \hide ([a]) a4 \bar "||"
}

nhacMauHai = \relative c' {
  \key c \major
  \time 2/4
  e8 g4 a \bar "||"
}

nhacMauBa = \relative c'' {
  \key g \major
  \time 2/4
  \partial 8 g8 |
  g4 \tuplet 3/2 { a8 d <b g> } |
  <<
    {
      b4 \tuplet 3/2 { g8 g g } |
      c4. a16 d |
      g,4 \bar "|."
    }
    {
      g4 \tuplet 3/2 { e8 e e } |
      a4. fs16 fs |
      g4
    }
  >>
}

nhacMauBon = \relative c'' {
  \key g \major
  \time 2/4
  <<
    {
      \partial 4 b8 b |
      b (c) a4 |
      a8 a d4 |
      g,2 ~ |
      g4 \bar "|."
    }
    {
      g8 g |
      g (a) g4 |
      e8 g fs4 |
      g2 ~ |
      g4
    }
  >>
  \break
  
  \partial 8 d16 g |
  b4 \tuplet 3/2 { b8 g b } |
  a4. g16 b |
  c4 \tuplet 3/2 { c8 b a } |
  e'8. b16 \tuplet 3/2 { d8 c b } |
  a4 r8 b16 e, |
  e8. e16 \tuplet 3/2 { g8 g a } |
  d,4 \tuplet 3/2 { c8 b d } |
  a'8. fs16 \tuplet 3/2 { e8 fs d } |
  g2 ~ |
  g4 \bar "||"
}

nhacMauNam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4
  <<
    {
      e8 g |
      a4. d,8 |
      d g
    }
    {
      c,8 e |
      f4. a,8 |
      b b
    }
  >>
  <<
    {
      \voiceOne
      e (d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      b4
    }
  >>
  \oneVoice
  c2 ~ |
  c4 \bar "|." \break
  
  c8 d |
  e f16 e d8 e16 (g) |
  a4 f8 g16 (f) |
  e8. e16 \slashedGrace { a16 ( } c8) d,16 (f) |
  g4 g8 bf |
  c8. a16 a (g) c8 |
  f,4 e8 g |
  d d16 d g8 b, |
  c4 \bar "||"
}

nhacMauSau = \relative c'' {
  \key g \major
  \time 2/4
  <<
    {
      b4. c16 a |
      b4. g8 |
      c4 \tuplet 3/2 { c8 a c } |
      d4. d8 |
    }
    {
      g,4. a16 fs |
      g4. f!8 |
      e4 \tuplet 3/2 { e8 e a } |
      fs4. fs8 |
    }
  >>
  g2 ~ |
  \partial 4 g4 \bar "||" \break
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  \partial 4 \tuplet 3/2 { g8 a fs } |
  g4. d8 |
  bf'4 \tuplet 3/2 { bf8 g bf } |
  c4. c8 |
  d4 \tuplet 3/2 { g,8 g a } |
  bf4. g8 |
  a4 \tuplet 3/2 { d,8 d d } |
  a'4. f8 |
  g2 \bar "||"
}

nhacMauBay = \relative c'' {
  \key bf \major
  \time 2/4
  <<
    {
      bf8. bf16 bf8 a |
      d2 |
      d8. c16 bf8 a |
    }
    {
      g8. g16 g8 g |
      fs2 |
      g8. a16 g8 f |
    }
  >>
  g2 \bar "|." \break
  
  bf8. bf16 bf8 a |
  d d16 c bf (c) bf8 |
  a2 |
  a8. a16 a8 f |
  g f16 g f8 c |
  d4 r8 d16 d |
  bf' (a) g8 a8. bf16 |
  g8 g ef4 |
  d8. d16 a' a fs8 |
  <> \tweak extra-offset #'(3 . -2.6) _\markup { \italic "(tiếp)" }
  g2
  d'8. d16 c8 bf |
  a a16 a bf8 g |
  fs2 |
  a8. d,16 g8 a |
  bf bf16 a d8 fs, |
  g2 \bar "||"
}

nhacMauTam = \relative c'' {
  
}

nhacMauChin = \relative c' {
  
}

nhacMauMuoi = \relative c' {
  
}

nhacMauMuoiMot = \relative c' {
  
}

nhacMauMuoiHai = \relative c' {
  
}

nhacMauMuoiBa = \relative c' {
  
}

nhacMauMuoiBon = \relative c' {
  
}

nhacMauMuoiLam = \relative c' {
  
}

% Lời
loiMauMot = \lyricmode {
  Ánh sáng Chúa Ki -- tô
}

loiMauHai = \lyricmode {
  Tạ ơn Chúa
}

loiMauBa = \lyricmode {
  Xin sai Thánh Thần Chúa đến để Ngài đổi mới mặt đất này.
}

loiMauBon = \lyricmode {
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia
  <<
    {
      \set stanza = "1."
      Hồn tôi hỡi, chúc tụng Chúa đi,
      Lạy Thiên Chúa Đấng con thờ kính,
      Ngài cao cả muôn trùng.
      Áo Ngài mặc toàn oai phong lẫm liệt,
      cẩm bào Ngài khoác muôn vạn ánh hào quang.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Nền kiên vững của mặt đất đây là do Chúa đích thân củng cố,
      ngàn kiếp không chuyển rời.
      Khắp địa cầu, vực sâu như áo choàng,
      quy tụ nguồn nước trên đỉnh núi đồi cao.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Từng con suối Chúa làm phát sinh từ khe thác
      giữa nơi đồi núi lượn khúc quanh co hoài,
      chim làm tổ ở ngay bên suối này,
      giữa lùm cây lá líu lo hát rền vang.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Từ cao vút Chúa đà đổ mưa gội sông núi,
      khiến trên mặt đất tràn phúc ân của Ngài.
      Súc vật được cỏ xanh nuôi sống hoài,
      thảo mộc tươi tốt cho người thế dùng luôn.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Kỳ công Chúa đầy dẫy khắp nơi,
      thật khôn khéo Chúa đã hoàn tất vạn sắc với muôn mầu.
      Khắp địa cầy đầy thụ tạo của Ngài.
      Vậy hồn ta hỡi ca tụng Chúa Trời đi.
    }
  >>
}

loiMauNam = \lyricmode {
  Tình thương Chúa tràn ngập khắp địa cầu.
  <<
    {
      \set stanza = "1."
      Lời Thiên Chúa rất ngay thật chân chính,
      Việc tay Ngài thực đáng cậy tin.
      Ngài yêu thích công minh chính trực,
      Tình thương Ngài tràn ngập khắp mọi nơi.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Lời Thiên Chúa khiến cung trời hiện hữu,
      Làn hơ Ngài tạo tác ngàn sao,
      Và đại dương thu gom nhốt lại,
      Cùng thủy triều Ngài dồn trữ vào kho.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Thật vinh phúc quốc gia nào nhận Chúa, 
      và dân nào được Chúa chọn riêng.
      Từ thiên quốc cao sang Chúa ngự,
      Và trông chừng mọi người khắp trần gian.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Đoàn con những vững tâm đợi trông Chúa,
      bởi Chúa hằng phù giúp chở che.
      Hồng ân Chúa xin thương xuống đầy
      trên những người hằng bền vững cậy trông.
    }
  >>
}

loiMauSau = \lyricmode {
  xin giữ gìn con, lạy Chúa, con tìm ẩn thân nơi Ngài.
  <<
    {
      \set stanza = "1."
      Đây sản nghiệp con là Chúa,
      sinh mạng con trong tay Chúa.
      Đặt Ngài ở trước mặt liên,
      gần Ngài là hết chuyển lay.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Nay trí lòng con mừng rỡ nên nằm nghỉ ngơi an giấc,
      vì Ngài đâu nỡ để con hủy diệt ở chốn mồ sâu.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Theo lối trường sinh, Ngài sẽ thương tình dạy con đưa bước.
      Tràn niềm vui trước Thần Nhan,
      Gần Ngài hạnh phúc nào hơn.
    }
  >>
}

loiMauBay = \lyricmode {
  Tôi xin ca mừng Chúa, Đấng cao cả uy hùng.
  <<
    {
      \set stanza = "1."
      Tôi xin ca mừng Chúa,
      Đấng cao cả uy hùng,
      chiến mã với kỵ binh xô lấp trong đại dương.
      Ngài là dũng lực tôi,
      Đấng tôi ca ngợi và là Đấng cứu độ tôi.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Tôn danh Ngài là “Chúa”,
      Đấng như một anh hùng
      ném xuống đáy đại dương xa mã Pha -- ra -- on,
      và từng lớp kỵ binh tướng công tinh nhuệ
      nhận chìm dưới biển Hồng "luôn. Đ."
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đây bao nhiêu vực thẳm há ra để chôn vùi
      chúng rớt xuống vực mau như đá tảng chìm sâu,
      Này Ngài đã biểu dương,
      cánh tay vung mạnh mà nghiền nát lũ địch "quân. Đ."
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Cho con dân được tới núi gia nghiệp của Ngài,
      tới chỗ đó địnhc ư do chính tay Ngài chọn,
      Và Ngài thiết lập nên thánh cung nơi này,
      ngự trị mãi mãi ngàn "năm. Đ."
    }
  >>
  \stanzaReminderOff
  Đức Chúa tôi tôn thờ, tôi xin chúc vinh Ngài,
  Đấng tổ tiên cung kính,
  tôi nguyện tán tụng liên.
}

loiMauTam = \lyricmode {
  
}

loiMauChin = \lyricmode {
  
}

loiMauMuoi = \lyricmode {
  
}

loiMauMuoiMot = \lyricmode {
  
}

loiMauMuoiHai = \lyricmode {
  
}

loiMauMuoiBa = \lyricmode {
  
}

loiMauMuoiBon = \lyricmode {
  
}

loiMauMuoiLam = \lyricmode {
  
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

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        "Sau khi làm phép Lửa Mới, linh mục thắp nến Phục Sinh và kiệu vào nhà thờ,"
      }
      \line {
        "ngài nâng cao nến Phục Sinh (3 lần, mỗi lần cao giọng hơn) và công bố:"
      }
    }
  }
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
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##t
  }
}

\markup {
  "Cộng đoàn đáp:"
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
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##t
  }
}

\markup {
  \vspace #2
  \column {
    \left-align {
      \line {
        \bold "Công Bố Tin Mừng Phục Sinh"
      }
      \line {
        \bold "Đọc Sách Thánh:" \normal-text "- Sau mỗi bài đọc, hát Thánh Vịnh Đáp Ca"
      }
      \line {
        "Sau bài đọc 1:" \bold "Tv. 103"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { "Đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 15
    %\override Staff.TimeSignature.transparent = ##t
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
  "Hoặc: " \bold "Tv. 32"
}


\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
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
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  "Sau bài đọc 2:" \bold "Tv. 15"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
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

\markup {
  \vspace #2
  "Sau bài đọc 3:" \bold "Xuất hành 35"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
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
      \null
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

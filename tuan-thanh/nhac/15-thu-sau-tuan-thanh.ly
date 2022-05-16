% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thứ Sáu Tuần Thánh"
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
  %\break
  
  d8 (f) |
  g4. f8 |
  g bf a g |
  f (g) a f |
  e2 |
  e8 g f f |
  f4. g8 |
  a a a, (c) |
  d2 ~ |
  \partial 4 d4 \bar "|." %\break
  
  f8 (e) d a' |
  a2 |
  bf8 bf4 g8 |
  e2 |
  a8 a4 a8 |
  d,4 \bar "|." %\break
  
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

nhacMauNam = \relative c'' {
  \key f \major
  \time 2/4
  a8 g f (g) |
  d4 d8 e |
  f e c d |
  d4 r8 bf' |
  g a f d |
  e4. e8 |
  e d f g |
  a4 g8 f |
  e4. f8 |
  d e f d |
  g8. f16 e8 g |
  a4 r8 a |
  bf4. a8 |
  a a bf bf |
  g4. f8 |
  a a d, e |
  f e e4 |
  a8 a a, (c) |
  d2 ~ |
  d4 \bar "|."
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 (f) |
  g4 g8 a |
  a f g f |
  e4 a,8 f' |
  e d d f16 (g) |
  a4. a8 |
  f g a f |
  e4. e16 (f) |
  g8 (f) e a |
  d,2 ~ |
  d4 \bar "||"
}

nhacMauBay = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a8 (bf) |
  g4 a8 g |
  g f e f |
  d4. e8 |
  a,4. e'8 |
  f d bf'4 |
  a a8 g |
  a2 ~ |
  a4 \bar "|."
}

nhacMauTam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a8 (bf) |
  g4. a8 |
  f f g g |
  f8. e16 g8 g |
  g4 r8 a |
  a,8. d16 f8 e |
  e e d (g) |
  a2 ~ |
  a4 \bar "|."
}

nhacMauChin = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 (f) |
  a2 |
  r8 a g e |
  f (g) a a |
  a2 |
  r8 d c b! |
  a4 d,8 f |
  f e f g |
  a ([bf a]) g |
  a4 r8 f |
  f g a a |
  e4 e8 g |
  g a f e |
  d2 ~ |
  d4 \bar "|." \break
  
  e8 f |
  e4 a,8 f' |
  f e f (e) |
  d4 d8 a |
  f'4 e8 f |
  e4. g8 |
  f f e (g) |
  a2 ~ |
  a4 \bar "||"
}

nhacMauMuoi = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 d8 f \bar ".|:"
  f (e) d (e) |
  d2 |
  r8 a' c c |
  d (c) b! g |
  a4. g8 |
  f f a (bf) |
  a4. f8 |
  g e a4 ~ |
  a8 g f e |
  d2 ~ |
  d4 \bar "||" \break
  
  r8 a'
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
  bf (a) g4 |
  a2 |
  r8 a g f |
  e4. g8 |
  g f e4 |
  d \bar "||" \break
  
  a'16 (bf) g8 |
  a4 a8 a |
  d, d f d |
  e2 |
  f8 g a4 |
  g8 a bf bf |
  g (a) c d |
  d2 |
  d8 d bf a |
  g4 f8 a |
  a4. a8 |
  e g f (e) |
  \partial 4 d4 \bar "||"
  d8 f \bar ":|."
  r8 a \bar "||"
  d,4 d8 (e16 d) |
  c4 ( d ~ |
  d) r8 a' \bar "|."
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
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
  Có chi phải làm mà Ta đã không làm cho ngươi?
  Chính Ta đã vun trồng ngươi như vun trồng vườn nho quý Ta tuyển chọn,
  thế mà ngươi đã làm Ta phải chịu cay đắng.
  Ta khát ngươi cho Ta uống dấm chua
  và đã lấy đòng đâm thấu cạnh sườn Đấng Cứu Chuộc ngươi.
}

loiMauSau = \lyricmode {
  Vì ngươi, Ta đã đánh phạt dân Ai Cập
  cùng các con đầu lòng của chúng,
  thế mà ngươi đã trao nộp để Ta bị đánh đòn.
}

loiMauBay = \lyricmode {
  Chính Ta đã cho ngươi phủ việt vương quyền
  thế mà ngươi đã đội mão gai trên đầu Ta.
}

loiMauTam = \lyricmode {
  Chính Ta đã dùng quyền năng cao cả mà tôn ngươi lên,
  thế mà ngươi đã treo ta trên Thập giá.
}

loiMauChin = \lyricmode {
  Lạy Chúa, chúng con thờ lạy Thánh giá Chúa,
  chúng con ca tụng và tôn vinh sự phục sinh thánh của Chúa.
  Vì nhờ cây Thánh giá này, niềm vui chan chứa cả địa cầu.
  <<
    {
      \set stanza = "1."
      Xin Chúa thương và chúc phúc cho chúng con,
      xin dọi chiếu trên chúng con ánh tôn nhan của Chúa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Trong thế gian, đường lối Chúa nay quán thông,
      ơn giải thoát Thiên Chúa ban,
      khắp nơi nơi hiểu biết.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Nay các dân được chính Chúa cai quản luôn,
      nay vạn quốc, Thiên Chúa ta sẽ công minh xử xét.
    }
  >>
}

loiMauMuoi = \lyricmode {
  Ôi Thánh Giá tín trung, là cây cao quý hơn mọi cây.
  Không rừng nào có cây trổ sinh cành là, hoa quả như vậy.
  Ôi gỗ êm ái, Mũi đinh êm dịu mang thân nặng dịu dàng.
  <<
    {
      \set stanza = "1."
      Lưỡi tôi hỡi hãy hát mừng cuộc chiến hiển vinh,
      hãy công bố sự vinh thắng lẫy lừng trên Thánh Giá.
      Đấng cứu độ gian trần chịu sát tế đã toàn thắng khải hoàn.
      Ôi Thánh
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Bởi thương xót, Đấng Tác Thành liệu sẵn một cây,
      một cây mới diệt tan hết án phạt cây trái cấm,
      xóa lỗi tổ tông phạm và cái chết,
      Chúa rầy đã khoan hồng.
      - - Ôi
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chúa diệt tan lũ ác thù lừa dối đoàn con,
      Ngài khôn khéo thực thi đúng kế hoạch ơn cứu rỗi,
      khí giới của quân thù rầy Chúa đã biến thành những linh dược.
      Ôi Thánh
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Chính Con Chúa xuống thế trần mặc xác phàm nhân,
      tời gian tới hồi viên mãn, CHúa đã sai phái đến
      Đấng tác tạo muôn loài được thánh mẫu,
      đấng đồng trinh sinh hạ.
      - - Ôi
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Nép thân xác giữa máng lừa chật ních lựng hôi,
      Hài Nhi khóc, được thân mẫu lấy vải thô vấn kỹ,
      cũng cuốn chân tay lại thật khéo léo với một tấm khăn sạch.
      Ôi Thánh
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "6."
      \override Lyrics.LyricText.font-shape = #'italic
      Giữa nhân thế, Chúa sống lần hồi mấy chục năm,
      rồi tự ý mà hy tế chính mình trên thánh giá,
      chuốc lấy muôn khổ hình mà kết thúc tháng ngày ở gian trần.
      - - Ôi
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "7."
      Quất roi đánh, nhổ nước bọt, tặng dấm thật chua,
      Mạo gai đó và đinh sắt, lưỡi đòng đâm nát xác
      Máu nước đổ lan tràn rửa thế giới với biển lớn, tinh cầu.
      Ôi Thánh
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "8."
      \override Lyrics.LyricText.font-shape = #'italic
      Hỡi cây lớn hãy rũ cành và giãn lần ra,
      và mau hãy làm thân cứng hóa mềm mau đón lấy
      chính Đức Vua cao trọng nằm áp xuống chiếc giường ấm êm này.
      - - Ôi
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "9."
      Chỉ ngươi xúng với giá chuộc lại cả trần gian,
      và nên giống tàu thiêng thấm máu của Chiên Chí thánh,
      dẫn thế giới sa chìm được tiến tới bến bờ cách an bình.
      Ôi Thánh
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "10."
      \override Lyrics.LyricText.font-shape = #'italic
      Sáng danh Chúa mãi tới ngàn đời vẫn hiển vinh,
      là Cha thánh, và Con Chúa với Thần Linh chí ái.
      đã xuống ơn cao trọng mà cứu rỗi,
      giữ gìn chúng con - - - - hoài.
      A -- men.
      Ôi
    }
  >>
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
  page-count = 6
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
    indent = 10
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
    indent = 10
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
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
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 10
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
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
    indent = 10
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

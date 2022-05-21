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
  \key c \major
  \time 2/4
  <<
    {
      g8 a g e |
      d4. c8 |
      a'4. g8 |
      d' d d d |
      c2 ~ |
      c4 \bar "|."
    }
    {
      e,8 f e c |
      b4. c8 |
      f4. e8 |
      f fs g g |
      e2 ~ |
      e4
    }
  >>
  \tuplet 3/2 { g8 a g } |
  e4. c8 |
  a'8. g16 \tuplet 3/2 { c8 c c } |
  b4 \tuplet 3/2 { a8 b a } |
  g8. d'16 \tuplet 3/2 { d8 e, f } | \break
  g2 ~ |
  g4 \tuplet 3/2 { d8 f e } |
  e8. e16 \tuplet 3/2 { b'8 b a } |
  a4 \tuplet 3/2 { f8 a g } |
  d8. b16 \tuplet 3/2 { d8 g c } |
  c2 \bar "||"
}

nhacMauChin = \relative c'' {
  \key c \major
  \time 2/4
  <<
    {
      e8. c16 d8 c |
      g4. a8 |
      a4. f8 |
      d8. g16 g8 g
    }
    {
      c8. a16 f8 f |
      e4. f8 |
      f4. d8 |
      b8. b16 b8 b
    }
  >>
  c2 ~ |
  \partial 4. c4 \bar "|."
  
  e16 e |
  f8 f f d |
  g4. g16 g |
  f8 e a16 g c8 |
  b4 r8 b |
  e8. e16 a,8 c |
  g8. a16 f8 e |
  d8. d16 d g b,8 |
  c4 \bar "||"
}

nhacMauMuoi = \relative c' {
  \key g \major
  \time 2/4
  \partial 8 d8 |
  <<
    {
      b'4 d8 d |
      g, a4 e8 |
      b'4. a8 |
      g4 \bar "|." \break
    }
    {
      g4 fs8 fs |
      e d4 c8 |
      d4. c8 |
      b4
    }
  >>
  g'8. g16 |
  g8 fs e4 ~ |
  e8 e c' b |
  d4 d8. c16 |
  b8 e a,4 ~ |
  a8 fs e d |
  g4 r8 \bar "||"
}

nhacMauMuoiMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 8 f16 e |
  <<
    {
      a4 \tuplet 3/2 { g8 f g } |
      g8 a f e
    }
    {
      f4 \tuplet 3/2 { e8 d e } |
      e f d c
    }
  >>
  d2 ~ |
  d4 r8 \bar "|."
  
  d16 d |
  d4. a8 |
  f'8. e16 \tuplet 3/2 { d8 e g } |
  a4. bf16 g |
  a4 \tuplet 3/2 { g8 f bf } |
  e,4 e16 (f) e8 |
  d4 \tuplet 3/2 { f8 e e } |
  a4 r8 f16 f |
  g4 \tuplet 3/2 { f8 e a }  |
  d,2 ~ |
  d4 r8 \bar "||"
}

nhacMauMuoiHai = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 g |
  f4. g8 |
  d d bf' bf |
  a4 r8 d, |
  bf'4. g8 |
  c c c4 ~ |
  c8 bf16 (c) d8 f, |
  g2 ~ |
  g4 r8 \bar "|." \break
  
  g16 g |
  f4. g8 |
  ef4. c8 |
  c ef4 ef8 |
  d4 r8 d |
  g4. bf16 a |
  a4. a16 a |
  a8. a16 \tuplet 3/2 { c8 d bf } |
  g4 \bar "||"
}

nhacMauMuoiBa = \relative c' {
  \key c \major
  \time 2/4
  e8 g4 ( a8 [b g] g4 a8 [g])
  g4 (a8 [b g])
  g4 (a8 g [c a b] a4 g) \bar "||"
}

nhacMauMuoiBon = \relative c' {
  f8 g a f4 g8 \hide ([a]) g f e4 (c8) f g \hide ([a]) g4 f \bar "||"
}

nhacMauMuoiLam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 8 a16 g |
  a4 \tuplet 3/2 { f8 f g } |
  e4. d8 |
  d a'16 a f8 f |
  g4 r8 \once \stemUp c16
  <<
    {
      \voiceOne
       bf16
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #-1.6
      \tweak font-size #-2
      \parenthesize
      c16
    }
  >>
  \oneVoice
  \stemNeutral
  bf8 g c a16 (g) |
  d4. c8 |
  c g'16 g e8 e |
  f4 r8 \bar "||"
}

nhacMauMuoiSau = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 c8 a |
  a4. g8 |
  f g d16 (f) a8 |
  g8. a16 f8 bf |
  bf4 bf8 d |
  c c f, (g) |
  a8. bf16 bf8 a |
  g2 ~ |
  g8 f f g |
  d d e (d) |
  c2 ~ |
  c8 c e g |
  f2 \bar "|." \break
  
  a8 e e (g) |
  a2 ~ |
  a8 d, d f |
  g4. f8 |
  a f g e |
  d2 ~ |
  d8 c g' g |
  f4 \bar "||"
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
  Con sẽ ca tụng Ngài, lạy Chúa vì Chúa đã cứu thoát con.
  <<
    {
      \set stanza = "1."
      Con tán dương Ngài, lạy Chúa, vì Chúa đã cứu con,
      không để quân thù đắc chí nhạo cười con.
      Từ cõi âm ty Ngài đã kéo con lên,
      tưởng đã xuống mồ mà Ngài thương cứu sống.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Ai tín trung hoài cùng Chúa, nào hát kính Thánh Danh,
      qua phút nổi giận, giáng phúc cả đời liên.
      Lệ có tuôn rơi chập tối tới canh khuya,
      hừng sáng lên rồi là hò reo múa hát.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Xin lắng nghe lời, lạy Chúa và ghé mắt xót thương.
      Xin Đấng con thờ giúp đỡ phù trợ con.
      Đổi khúc bi ca thành vũ khúc hân hoan.
      Xin đến muôn đời ngợi ca danh Chúa mãi.
    }
  >>
}

loiMauChin = \lyricmode {
  Các bạn hãy vui mừng múc nước tận nguồn suối Đấng Cứu Độ.
  <<
    {
      \set stanza = "1."
      Đây Thiên Chúa, Đấng cứu độ tôi,
      tôi tin tưởng và không sợ hãi chi.
      Vì Chúa chính là sức mạnh, Đấng tôi ca mừng,
      Ngài từng cứu độ tôi.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Hân hoan tới múc nước tận suối Đấng cứu độ
      và cảm tạ Chúa đi.
      Cầu khấn Chúa và tỏ bày giữa muôn dân rằng:
      Sự nghiệp Chúa huyền siêu.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Uy công Chúa hãy hát mừng luôn.
      Cao rao để trần gian cùng ngắm trông.
      Vì Đấng Thánh thật vĩ đại của Is -- ra -- el,
      Si -- on hãy hò reo.
    }
  >>
}

loiMauMuoi = \lyricmode {
  Lạy Chúa, Chúa có lời ban sự sống muôn đời.
  <<
    {
      \set stanza = "1."
      Mệnh lệnh Chúa thiện toàn bồi dưỡng hồn vía.
      Thánh chỉ Ngài vững bền giúp ta học khôn.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Lề luật Chúa chân thực sảng khoái lòng trí.
      Huấn lệnh Ngài sáng ngời chiếu soi thị quan.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Lòng sợ Chúa thanh vẹn bên vững ngàn kiếp.
      Phán định Ngài xác thực mãi luôn thẳng ngay.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Thật là quý hơn vàng, vàng khối thuần chất,
      giống như mật thắm ngọt tiết tự tàng ong.
    }
  >>
}

loiMauMuoiMot = \lyricmode {
  Ôi lạy Chúa, xin tạo cho con trái tim trong sạch.
  <<
    {
      \set stanza = "1."
      Ban cho con, lạy Chúa, cõi lòng thực trong trắng,
      Phú vào con tinh thần vững mạnh,
      Chớ xua từ con khỏi mặt Chúa,
      Đừng biệt con khỏi Thần Trí Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Cho con vui được thấy ơn Ngài thương cứu rỗi,
      Đỡ vực con theo lòng quảng đại,
      Lối đi Ngài con sẽ dạy dỗ để tội nhân trở lại với Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đâu ra chi, lạy Chúa, phẩm vật con dâng tiến.
      Lễ toàn thiêu đâu ngài có cần.
      Lễ dâng Ngài, tâm thần dập nát,
      Ngài chẳng chê cõi lòng nát dập.
    }
  >>
}

loiMauMuoiHai = \lyricmode {
  Như nai rừng mong tìm về suối nước trong,
  lạy Chúa hồn con trông mong được tới gần Ngài.
  <<
    {
      \set stanza = "1."
      Những khát mong Chúa Trời,
      thật là Chúa vĩnh sinh,
      Hồn con tới khi nao được tìm về,
      được ra trước nhan Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Nhớ những khi trẩy hội về đền thánh Chúa xưa,
      Hòa muôn tiếng reo vui,
      từng đoàn người cùng nao nức tưng bừng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chúa đoái thương phái gửi sự thật với ánh quang
      hầu soi dẫn con đi về đền thờ và lên núi thánh Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Tiến bước lên tế đàn,
      được gần Chúa, xiết vui,
      Đàn lên, xướng ca lên cảm tạ Ngài là Thiên Chúa con thờ.
    }
  >>
}

loiMauMuoiBa = \lyricmode {
  Al -- le -- lu -- ia.
}

loiMauMuoiBon = \lyricmode {
  Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

loiMauMuoiLam = \lyricmode {
<<
    {
      \set stanza = "1."
      Chúc tụng Chúa vì Ngài nhân từ,
      ngàn đời Chúa vẫn trọn tình thương.
      Is -- ra -- el hãy nói lên rằng:
      Ngàn đời Chúa vẫn trọn tình thương.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Cánh tay Chúa vận dụng uy lực,
      Kìa là cánh tay hữu Nagif vùng cao.
      Thoát vong thân để sống loan truyền
      sự nghiệp Chúa trót cả đời tôi.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đó viên đá thợ nề đã loại
      lại thành đá góc tường rồi đây.
      Đó \markup { \italic "chính" } công trình Chúa đã làm
      kỳ diệu trước mắt mọi phàm nhân.
    }
  >>
}

loiMauMuoiSau = \lyricmode {
  Đức Ki -- tô, Chiên Vượt Qua của chúng ta đã bị sát tế.
  Vậy chúng ta hãy mừng lễ với bánh khôn men
  là lòng tinh tuyền và chân thật,
  al -- le -- lu -- ia.
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
      Chính đây tảng đá thợ nề loại ra
      rầy Chúa làm cho trở thành là đá góc tường.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chính trong ngày thánh mà Ngài dựng nên,
      nào hãy cùng nhau tưng bừng đàn hát sướng vui.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Cánh tay của Chúa vận dụng uy phong
      tạo tác kỳ công muôn vàn, trần thế ngắm trông.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Tiếng reo khởi thắng từ trại hiền nhân:
      Kìa Chúa vung tay uy lực mạnh mẽ biết bao.
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
  page-count = 10
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
      instrumentName = \markup { \bold "Đáp" }} <<
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

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "hoặc" }} <<
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

%\pageBreak

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
  "Sau bài đọc 4:" \bold "Tv. 29"
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
  "Sau bài đọc 5:" \bold "Is. 12"
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
  "Sau bài đọc 6:" \bold "Tv. 18"
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

\markup {
  \vspace #2
  "Sau bài đọc 7:" \bold "Tv. 50"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
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
  "Hoặc:" \bold "Tv. 41, 42"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
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
  \column {
    \left-align {
      \line {
        \italic "Sau bài Thánh Thư, Linh mục xướng ALLELUIA (3 lần, cao giọng dần)"
      }
      \line {
        \italic "và Cộng đoàn lặp lại:"
      }
    }
  }
}

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBa
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh vịnh Đáp ca: Tv. 117"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBon
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

\score {
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiLam
    >>
  >>
  \layout {
    %indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Ca hiệp lễ"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp:" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiSau
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

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Chúa Nhật Lễ Lá"
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
  \key c \major
  \time 2/4
  \partial 8
  <<
    {
      g8 |
      g4 \tuplet 3/2 { g8 g g } |
      a4. a8 |
      f4 \tuplet 3/2 { a8 c a } |
      g4.
    }
    {
      e8 |
      e4 \tuplet 3/2 {e8 e e } |
      f4. f8 |
      d4 \tuplet 3/2 { f8 a f } |
      e4.
    }
  >>
  \oneVoice
  g8 |
  c, f d d |
  e4 r8
  <<
    {
      a8 |
      a4 g8 d' |
      d d
    }
    {
      f,8 |
      f4 e8 f |
      g g
    }
  >>
  \oneVoice
  <<
    {
      \voiceOne
      e'16 _(d) c8 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f, f |
    }
  >>
  \oneVoice
  <<
    {
      c2 ~ |
      c4 \bar "|." \break
    }
    {
      e2 ~ |
      e4
    }
  >>
  
  \tuplet 3/2 { e8 d c } |
  f4 \tuplet 3/2 { d8 d f } |
  g4. f8 |
  a f g e |
  d4 \tuplet 3/2 { d8 f e } |
  e4 r8 \bar "||"
}

nhacMauHai = \relative c'' {
  \key c \major
  \time 2/4
  \partial 8 g8 |
  c, (d) e e |
  f4 d8 a' |
  g (f) e4 |
  e8 g f (e) |
  d4 r8
  <<
    {
      g |
      g8. g16 g8 g |
      a4. c8 |
      g4 e'8 c |
      d4 b8 b |
      c4 r8 \bar "|."
    }
    {
      b,8 |
      c8. d16 e8 e |
      f4. e8 |
      e4 g8 a |
      f4 g8 g |
      e4 r8
    }
  >>
  \oneVoice
  c'8 |
  a g e8. f16 |
  g8 a r a |
  d, e f8. e16 |
  d8 g4 g8 |
  c c16 c g8 e |
  a4 r8 d,16 d |
  f8 g e d |
  c4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key f \major
  \time 2/4
  \partial 8 a8 |
  d, (e) f (g) |
  a4. g8 |
  \time 3/4
  a [c] c ([a]) c d |
  \time 2/4
  d4. f,8 |
  g g g (f) |
  e4. g8 |
  \time 3/4
  g4 e8 [f] e ([d]) |
  \time 2/4
  d4 \bar "|."
  
  a'16 (c) f,8 |
  d8. c16 d8 f16 (g) |
  a8 f a16 (c) a8 |
  g4. f8 |
  bf8. bf16 g8 g16 (bf) |
  c2 ~ |
  c4 a8 a |
  g8. c16 d,8 (f) |
  g4. f8 |
  bf8. bf16 g8 g |
  c4 r8 f, |
  bf8. a16 g8 c |
  f,4 r8 \bar "||"
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  r8 d f g |
  g4 a8 a |
  e2 |
  r8 g g g |
  f8. d16 d8 d |
  f e f (g) |
  a2 |
  r8
  <<
    {
      bf
    }
    {
      g8
    }
  >>
  \oneVoice
  <<
    {
      \voiceOne
      g8 g16 (a) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e8 e
    }
  >>
  \oneVoice
  <<
    {
      d'8 d cs d |
      e4. a,8 |
      f'2 |
    }
    {
      f,8 g a bf |
      a4. \skip 8 |
      d2 |
    }
  >>
  <<
    {
      \voiceOne
      e2 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <d \=1^( g, \=2(>4 <cs \=1) a \=2)>
    }
  >>
  \oneVoice
  <d f, d>2 ~ |
  <d f, d>4 r8 \bar "|." \break
  
  a |
  g a c b! |
  a4. d,8 |
  g f e g |
  a4. f8 |
  g a g (f) |
  e4. f8 |
  c g' e e |
  e (f d4) \bar "||"
}

nhacMauNam = \relative c' {
  \key c \major
  \time 2/4
  \partial 8 e8 |
  f d d (e) |
  g2 |
  a8 a g g |
  a4. a8 |
  b g
  <<
    {
      a (b) |
      c4. c8 |
      b b e16 (f) e8 |
      d2 |
      d8 d r d
    }
    {
      f, (d) |
      e4. a8 |
      g g c16 (d) c8 |
      g2 |
      f8 f r fs
    }
  >>
  <<
    {
      \voiceOne
      e'8 _(d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  <<
    {
      c4 |
      c2 ~ |
      c4 \bar "||"
    }
    {
      d,4 |
      e2 ~ |
      e4
    }
  >>
  e8 e |
  f e d4 |
  a'16 (b) g8 a b |
  c4. b8 |
  c a b (a) |
  g4.
  <<
    {
      c8 |
      b b e16 (f) e8 |
      d2 |
      d8 d r d
    }
    {
      e,8 |
      g g c16 (d) c8 |
      g2 |
      f8 f r fs
    }
  >>
  <<
    {
      \voiceOne
      e'8 _(d)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  <<
    {
      c4 |
      c2 ~ |
      c4 \bar "|."
    }
    {
      d,4 |
      e2 ~ |
      e4
    }
  >>
}

nhacMauSau = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 (a) |
  d,4. g8 |
  c, f d4 |
  e2 |
  r8 e f d |
  d8. f16 g8 g |
  g4 g8 g |
  e e f (e) |
  d2 |
  d8 e16 (d) c8 g' |
  <<
    {
      a4. g8 |
      c c b4 |
      b r8 a |
      a a
    }
    {
      f4. e8 |
      a a d,4 |
      e4 r8 c |
      f f
    }
  >>
  <<
    {
      \voiceOne
      b16 (a) g8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f8 f
    }
  >>
  \oneVoice
  <<
    {
      g2 |
      b16 (c) a8 d g, |
      e'4 e8 a,
    }
    {
      e2 |
      g16 (a) f8 f e |
      g4 g8 c,
    }
  >>
  <<
    {
      \voiceOne
      g'8 _([b a])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f4.
    }
  >>
  \oneVoice
  <<
    {
      g8 |
      c2 ~ |
      c4 \bar "|."
    }
    {
      f,8 |
      e2 ~ |
      e4
    }
  >>
  c'8 e, |
  f8. a16 a8 d, |
  e4 e8 e |
  f8. f16 e (e) c8 |
  g'4. e16 (f) g8 g f e |
  a4 r8 c |
  c b16 (e) a,8 a |
  b2 |
  r8 g g f |
  d4. c8 |
  f f f d |
  g4 \bar "||"
}

nhacMauBay = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a8 a |
  bf (a) g g |
  a4. f8 |
  e a a, (c) |
  d2 \bar "|."
  
  f8 (e) d a' |
  a4. a8 |
  d d b! (a) |
  fs8. g16 b!8 a |
  a4 r8 g16 f |
  g8 a g f |
  e4 f8 e |
  d4. c16 c |
  d8 g4 f16 (g) |
  a4 \bar "||"
}

nhacMauTam = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 bf8 a |
  a d, bf' (a) |
  g4. g8 |
  f d f g |
  g4. g8 |
  bf a g (c) |
  d2 ~ |
  d4 d, |
  <<
    {
      bf'4. a8 |
      bf bf a a |
      g4 f8 f |
      ef ef f (ef) |
      d4. d8 |
      g f
    }
    {
      g4. fs8 |
      g g d d |
      ef4 d8 d |
      c c d (c) |
      bf4. bf8 |
      ef d
    }
  >>
  <<
    {
      \voiceOne
      a' (bf)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,4
    }
  >>
  \oneVoice
  <g' bf,>2
}

nhacMauChin = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  d d8 b!16 (a) |
  g8. g16 f (g) e8 |
  d2 ~ |
  d8 a'16 (bf) g8 g |
  a4. a,8 |
  e' e f (e) |
  d2 ~ |
  d4 \bar "|." \break
  
  e8 f |
  e8 d16 (e) g8 g |
  a4. g8 |
  f g e4 |
  d4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Hoan hô Con Vua Đa -- bít,
  chúc tụng Vua Is -- ra -- el, Đấng ngự đến nhân danh Chúa.
  Hoan hô (nào) hoan hô trên các tầng trời.
  <<
    {
      \set stanza = "1."
      Hãy xưng tụng Chúa vì Ngài hảo tâm,
      vì đức từ bi của Ngài bền vững muôn đời.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Đá thợ nề đã từng loại bỏ đi
      rầy đích thực đã trở thành Tảng Đá góc tường.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đó công việc Chúa thực kỳ diệu thay
      mà mắt của ta nay được nhìn thấy rõ ràng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Chúa thương dọi chiếu rạng ngời trên ta,
      cầm lá cành ta reo mừng về thánh cung Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Chúa ta thờ kính, nào cùng ngợi ca,
      mừng Chúa nào ta chung lời mà tán dương hoài.
    }
  >>
}

loiMauHai = \lyricmode {
  Các trẻ em Do Thái trải áo trên đường
  và chúc tụng rằng: Hoan hô Con Vua Đa -- vít,
  chúc tụng Đấng ngự đến nhân danh Chúa.
  <<
    {
      \set stanza = "1."
      Vỗ tay đi nào muôn dân hỡi,
      tán tụng Thiên Chúa, mau hò reo,
      vì Chúa Đấng Tối Cao khả úy
      là đại vương thống trị địa cầu.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Chúa ra lệnh truyền muôn dân nước,
      đến cùng suy bái quy phục ta.
      Ngài đã chiếm giúp cơ nghiệp đó,
      mở mặt Gia -- cop kẻ yêu vì.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chúa đi lên, ngàn câu hoan chúc,
      Chúa ngự lên giữa điệu kèn vang,
      Đàn hát hãy tấu vang mừng Chúa
      và hòa ca kính vua ta thờ.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Đức Vua cai trị cả thế giới,
      tiến Ngài muôn khúc ca tuyệt luân.
      Này Chúa vẫn thống trị vạn quốc,
      hằng ngự trên thánh ngai của Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Tiến lên, vương hầu muôn dân nước,
      với thần dân Chúa Ap -- bra -- ham.
      Thủ lãnh khắp thế giới thuộc Chúa.
      Ngài thực cao sáng muôn muôn trùng.
    }
  >>
}

loiMauBa = \lyricmode {
  Các trẻ Do Thái cầm cành ô -- liu đi đón Chúa
  và hân hoan ca tụng: Hoan hô trên các tầng trời.
  <<
    {
      \set stanza = "1."
      Chúa chủ trị toàn thể trái đất và khắp dương gian,
      vạn dân muôn vật ở đó
      Do tay Ngài tác tạo nên, đặt móng giữa lòng biển lớn,
      củng cố giữa sông nước rộng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Hỏi ai người được trèo lên núi của Chúa cao quang,
      và ai cư ngụ đền thánh?
      Ai tay sạch với lòng thanh, chẳng mê theo bả phù vân,
      chẳng tính mưu đồ phỉnh gạt.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chính họ được là được Thiên Chúa rộng rãi thi ân,
      được Chúa cứu độ thưởng phúc.
      Đó chính là những tử tôn,
      dòng dõi những kẻ tìm Chúa,
      tìm kiếm Chúa Gia -- cop hoài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Hởi cửa đền, cử đền cổ kính hãy cất cao lên
      để Vua vinh hiển ngự quá.
      Vua vinh hiển đó là ai?
      Là Chúa thế lực quyền uy, thật dũng mãnh khi xuất trận.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Hỡi cửa đền, cửa đền cổ kính hãy cất cao lên
      để Vua vinh hiển ngự quá.
      Vua vinh hiển đó là ai?
      Là chính Chúa tể càn khôn, là chính Đức Vua hiển trị.
    }
  >>
}

loiMauBon = \lyricmode {
  Lạy Vua Ki -- tô, Đấng Cứu Chuộc, vinh quang, danh dự
  và lời ngợi ca là của Chúa, Đấng mà trẻ thơ tưng bừng ca hát:
  Thánh kính tung hô.
  <<
    {
      \set stanza = "1."
      Chúa là Vua Is -- ra -- el, là Thái Tử nhà Đa -- vít,
      lạy Vua đáng chúc tụng, Đấng ngự đến nhân danh Chúa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Chư thần, chư thánh thiên cung và các thụ tạo dương thế,
      phàm nhân kiếp mỏng giòn, hãy hợp tiếng tôn vinh Chúa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Xưa người Do Thái mang theo cành lá để chào đón Chúa,
      giờ đây chúng con về khấn nguyện tán dương danh Chúa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Xưa họ cung chúc tôn vinh rồi Chúa dâng mình chịu chết,
      giờ đây Chúa hiển trị, kết lời chúng con ca hát.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Mong Ngài ưng ý như xưa mà khấng nhận lòng tôn kính,
      lạy Vua rất nhân lành những việc tốt luôn tâm đắc.
    }
  >>
}

loiMauNam = \lyricmode {
  Khi Chúa vào thành thánh,
  các thiếu nhi Do Thái loan báo sự phục sinh
  tay cầm cành lá ca vang:
  Hoan hô trên các tầng trời.
  Nghe tin Chúa Giê -- su đến Giê -- ru -- sa -- lem,
  dân chúng ra đón Người,
  tay cầm cành là ca vang:
  Hoan hô trên các tầng trời.
}

loiMauSau = \lyricmode {
  Sáu ngày trước đại lễ Vượt Qua,
  khi Chúa vào thành Giê -- ru -- sa -- lem,
  các thiếu nhi ra đón Người,
  tay vẫy cành thiên tuế và lớn tiếng ca vang:
  Hoan hô trên các tầng trời.
  Chúc tụng Đấng ngự đến với lượng cả từ bi.
  Các cửa ơi hãy cất đầu lên,
  vươn cao nữa hỡi cửa ngàn thu,
  để Vua vinh hiển ngự giá.
  Vua vinh hiển này là ai?
  <<
    {
      \set stanza = "1."
      Vua vinh hiển này là chính Chúa các đạo binh.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Vua vinh hiển này là Chúa dũng mãnh quyền uy.
    }
  >>
}

loiMauBay = \lyricmode {
  Ôi Thiên Chúa, ôi Thiên Chúa, sao Ngài nỡ bỏ con?
  <<
    {
      \set stanza = "1."
      Bao người nhiếc mắng,
      vừa thấy bóng con là họ đã chê bai:
      Tên này luôn kính tin Chúa Trời,
      nếu thương tình hẳn là Ngài lo giải thoát.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Ác thù xấn tới tựa lũ chó vây chặt,
      đâm thấu chân tay, xương xẩu con đếm xem vằn dài,
      mắt căm hờn, nhìn chòng chọc con nhạo báng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Chia phần áo khoác,
      còn chiếc áo trong họ cũng bắt thăm luôn.
      Ôi lạy Thiên Chúa con nương nhờ,
      Cứu con cùng, Ngài đừng lìa xa, bỏ thí
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Con nguyện mãi mãi truyền bá thánh danh Ngài
      cho khắp anh em.
      Xin được lên tiếng nơi công hội,
      tiến dâng Ngài một bài ngợi ca mừng kính.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Ai sợ kính Chúa nào cất tiếng lên mà cung chúc tôn vinh.
      Miêu duệ Gia -- cóp mau ca mừng,
      Ích -- diên nào thần phục quyền uy của Chúa.
    }
  >>
}

loiMauTam = \lyricmode {
  Chúa Ki -- tô vì chúng ta đã vâng lời cho đến chết
  và chết trên Thập giá.
  Vì thế Thiên Chúa đã tôn vinh Người,
  ban cho Người một danh hiệu vượt trên mọi danh hiệu.
}

loiMauChin = \lyricmode {
  Lạy Cha, nếu chén này không thể qua được nếu con không uống,
  thì xin vâng ý Cha.
  <<
    {
      \set stanza = "1."
      Tôi vững tin cả khi tôi nói:
      Ôi nhục nhã ê chề.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Tôi lấy chi để dâng lên Chúa?
      Cảm tạ phúc ân Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đây chén cứu độ xin dâng tiến,
      kêu cầu thánh danh Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Đoan hữa chi là tôi tuân giữ ngay ở trước dân Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Nơi thánh nhan, kẻ kiên trung chết,
      ôi thực rất cao trọng.
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
  page-count = 9
}

\markup {
  \vspace #2
  "Khi Linh mục tiến ra chỗ làm phép là, cộng đoàn hát:"
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
  "Khi kiệu lá, có thể hát " \bold "Thánh Vịnh 48" \normal-text ":"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }} <<
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
  "Hoặc:" \bold "Thánh Vịnh 23" \normal-text ":"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  "Hoặc" \bold "Ca Vãn" \normal-text "sau đây:"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  "Khi đám rước tiến vào nhà thờ, cộng đoàn hát:"
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Ca Nhập Lễ"
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh Vịnh Đáp Ca: Tv. 21"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Đáp" }} <<
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
  \bold "Câu xướng trước Tin Mừng:"
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thứ Năm Tuần Thánh"
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
  \key bf \major
  \time 2/4
  bf8 a d, f |
  g4 g8 d |
  <<
    {
      bf'4. bf8 |
      a a a4 |
      a c8 c |
      bf2 ~ |
      bf4
    }
    {
      g4. g8 |
      c, c c4 |
      d a'8 a |
      g2 ~ |
      g4
    }
  >>
  c8 d |
  g,4. d8 |
  bf'8. g16 g8 g |
  a4 g16 (a) bf8 |
  a (g) f g |
  d4 r8 d |
  d4.
  <<
    {
      bf'8 |
      a g bf (c)
    }
    {
      g |
      f ef d (f) 
    }
  >>
  <<
    {
      \voiceOne
      d'2 ~ |
      d8 a
    }
    \new Voice = "splitpart" {
      \voiceTwo
      bf4. (a8 |
      g) g
    }
  >>
  \oneVoice
  <<
    {
      a8 d |
    }
    {
      fs,8 fs
    }
  >>
  g2 ~ |
  g4 \bar "|." \break
  
  a8 bf |
  a4 d,8 bf' |
  bf a bf (a) |
  g4 g8 d |
  bf'4 a8 bf |
  a4. c8 |
  bf bf a (c) |
  d2 ~ |
  d4 r \bar "||"
}

nhacMauHai = \relative c'' {
  \key g \major
  \time 2/4
  \partial 4 b8 b16 (a) |
  g8. fs16 g8 a |
  d,4.
  <<
    {
      b'8 |
      b a
    }
    {
      g |
      g c,
    }
  >>
  <<
    {
      \voiceOne
      g' (fs)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d4
    }
  >>
  \oneVoice
  \partial 4 <g b,>4 \bar "|." \break
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  \partial 8 bf16 bf |
  a4 \tuplet 3/2 { g8 g a } |
  f4. d16 d |
  g4 \tuplet 3/2 { a8 bf g } |
  a4 r8 c16 c |
  c4 \tuplet 3/2 { bf8 c d } |
  a4. fs16 fs |
  a4 \tuplet 3/2 { c8 d bf } |
  g4 \bar "||"
}

nhacMauBa = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  a4. (g16 f) |
  d8 a' a c |
  a8. g16 a8 c |
  d2 |
  a8 d b! (a) |
  fs8 (g) a b! |
  a4. g16 (f) |
  d2 |
  c8 e f f |
  d2 ~ |
  d4 \bar "|."
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \partial 4 f8 (g) |
  a2 |
  r8 a d, d16 (f) |
  g4 g8 g |
  g2 |
  a8 (bf) g g |
  a4. d8 |
  g, a a16 (c) b!8 |
  a4. f8 |
  g g f (e) |
  c c e (f) |
  d2 ~ |
  d4 \bar "|."
  a'8 a |
  a16 (bf) a8 g g |
  g4. f8 |
  g g16 (f) d8 (c) |
  d4 \bar "||"
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \break
  
  d8 d |
  d4. f8 |
  e4 g8 g |
  \slashedGrace { f16 (g } a2) |
  g8 g f (e) |
  c4 (d ~ |
  d) \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4. d8 d c |
  f8. f16 f8 e |
  d4 bf'8 a |
  a4. f16 (g) |
  g4 g8 a |
  f4. e8 |
  a2 |
  r8 a g a |
  f2 ~ |
  f8 e g f |
  a4 e8 e |
  e8. f16 c8 c |
  d2 ~ |
  d4 d8 d |
  g g bf4 |
  a4 f16 (g) a8 |
  g8. a16 e8 f |
  d2 \bar "|."
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 d \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  d4. c8 |
  d d f (g) |
  a4. bf8 |
  g2 |
  f8 g f e |
  d4 <a' f>8 <d bf> |
  <c a>4 <c g e>8 <c g e> |
  <d f, d>2 ~ <d f, d>4 \bar "|." \break
  a16 (bf) a8 |
  g4. a8 |
  a a g (f) |
  e4 f8 d \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacMauBay = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 d8 (f) |
  g4.
  <<
    {
      bf8 |
      bf bf a4 |
      g bf8 (c) |
      d4 ef8 c |
      d2 ~ |
      d4 \bar "|."
    }
    {
      g,8 |
      g g fs4 |
      \skip 4 g8 (a) |
      bf4 g8 g |
      fs2 ~ |
      fs4
    }
  >>
  \break
  r8 d |
  g g bf a |
  a4. c8 |
  bf d c bf |
  g2 |
  fs8 a b! a16 (g) |
  e!4. e8 |
  g a fs (e!) |
  d4 \bar "||"
}

nhacMauTam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  a2 |
  g8 (f) d d |
  d4. c8 |
  f e e g |
  f2 |
  f8 e a a |
  d,2 |
  bf'8 a16 (g) bf8 c |
  c4 r8 bf |
  g4. g8 |
  a4. a8 |
  g a d, d |
  d4 c8 c16 (d) |
  a'4. a16 (g) |
  f4 r8 \bar "|."
  
  f8 |
  g g e g |
  a4 g8 g |
  c c a (g) |
  d2 ~ |
  d8 c g' e |
  f4 \bar "||"
}

nhacMauChin = \relative c'' {
  \key c \major
  \time 2/4
  a8 g bf \hide ([a]) g f g a4 f8 a
  g f g \hide ([f]) e d4 \bar "|" d8 e f \hide ([e]) d f g a4 \bar "|"
  f8 e c e f e d4 \bar "|" a'8 b!? c c b \hide ([a]) g \bar "|"
  a4 a8 bf a g f \hide ([g f]) e d4 \bar "||"
  d8 \hide ([c e f]) d4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Chúng ta được vinh quang nơi Thập Giá Đức Giê -- su Ki -- tô,
  Chúa chúng ta.
  Ơn cứu độ, sự sống và sự phục sinh của chúng ta ở nơi Người.
  Nhờ Người chúng ta được giải thoát và được cứu độ.
  <<
    {
      \set stanza = "1."
      Xin Chúa thương và chúc phúc cho chúng con.
      Xin dọi chiếu trên chúng con ánh tôn nhan của Chúa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Trong thế gian, đường lối Chúa nay quán thông,
      Ơn giải thoát Thiên Chúa ban khắp nơi nơi hiểu biết.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Nay các dân được chính Chúa cai quản luôn,
      nay vạn quốc Thiên Chúa ta sẽ công minh xử xét.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Vui hát lên, vạn quốc hãy vui hát lên reo mừng Chúa,
      Thiên Chúa ta sẽ quang vinh ngự đến.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Nay Chúa thương tặng các nước muôn phúc ân,
      mong trần thế, muôn sắc dân sẽ luôn tôn sợ Chúa.
    }
  >>
}

loiMauHai = \lyricmode {
  Chén chúc tụng và sự thông hiệp Máu thánh Đức Ki -- tô
  <<
    {
      \set stanza = "1."
      Biết lấy chi dâng lên đáp đền
      vì hồng ân chan chứa Ngài ban?
      Tôi xin nâng này chén cứu độ
      và cầu xin danh thánh của Ngài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Chúa vẫn luôn tôn dương quý trọng
      người bầy tôi trung hiếu tử vong.
      Thân con đây là con nữ tỳ
      được Ngài thương cởi tháo xích xiềng.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Hiến lễ đây dâng lên cảm tạ
      và cầu xin danh thánh Ngài liên.
      Con ghi tâm lời xưa khấn nguyện
      và thực thi ngay trước dân Ngài.
    }
  >>
}

loiMauBa = \lyricmode {
  Chúa nói: Thầy ban cho các con một điều răn mới
  là các con hãy thương mến nhau
  như Thầy đã thương mến các con.
}

loiMauBon = \lyricmode {
  Lạy Chúa, Chúa mà rửa chân cho con sao?
  Chúa Giê -- su đáp:
  Nếu Thầy không rửa chân con, thì con không được
  dự phần với Thầy.
  Chúa đến chỗ Si -- mon Phê -- rô và ông thưa Người rằng:
  
  Việc Thầy làm bây giờ con không hiểu, nhưng sau sẽ hiểu.
}

loiMauNam = \lyricmode {
  Sau khi dùng bữa với các môn đệ,
  Chúa Giê -- su rửa chân cho các ông và nói:
  Các con có hiểu việc Ta là Chúa và là Thầy mới vừa làm không?
  Thầy làm gương cho các con, để các con cũng làm như vậy.
}

loiMauSau = \lyricmode {
  Nơi điều này mà mọi người nhận biết các con là môn đệ của Thầy:
  là các con yêu thương nhau.
  Chúa Giê -- su nói với các môn đệ;
  Nơi điều
}

loiMauBay = \lyricmode {
  Ở đâu có đức ái chân thật, ở đấy có Thiên Chúa.
  <<
    {
      \set stanza = "1."
      Tình yêu thương Chúa Ki -- tô quy tụ chúng ta nên một,
      nào ta hãy reo mừng và hoan hỷ trong Người.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \stanzaReminderOff
      Hãy luôn tôn kính tin yêu nơi một Chúa muôn muôn đời,
      và ta hãy tâm thành mà thương mến nhau hoài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Vậy khi ta đến nơi đây quy tụ với nhau nên một,
      thì luôn nhớ canh phòng đừng chia rẽ tinh thần.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \stanzaReminderOff
      \override Lyrics.LyricText.font-shape = #'italic
      Dẹp bao tranh chấp đôi co, bao là ghét ghen tỵ hiềm.
      Nguyện xin Chúa Ki -- tô ngự giữa chúng ta hoài.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Nguyện xin cho chúng ta đây mau cùng thánh nhân trên trời
      được chiêm ngắm muôn đời thần nhan hiển vinh Người.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \stanzaReminderOff
      Được luôn chiêm ngắm Thiên Nhan, ôi hồng phúc bao tinh tuyền,
      niềm vui sướng khôn cùng ngàn muôn kiếp.
      A -- men.
    }
  >>
}

loiMauTam = \lyricmode {
  Chúa nói: Đây là Mình Thầy bị trao nộp vì các con.
  Đây là chén Máu Thầy, Máu của Giao Ước mới,
  Mỗi khi ăn uống các con hãy làm việc này
  mà tưởng nhớ đến Thầy.
  <<
    {
      \set stanza = "1."
      Tôi biết lấy gì dâng Chúa
      để đền đáp những ân lộc Ngài đã tặng ban.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Nâng chén cứu độ dâng tiến,
      miệng cầu khấn thánh danh Ngài, hòa tiếng ngợi ca.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Tôi vẫn hết lòng tuân giữ lời thề hứa trước dân Ngài,
      và tín thành luôn.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Dâng hiến lễ tạ ơn Chúa,
      miệng thầm nhắc thánh danh Ngài mà khấn nguyện liên.
    }
  >>
}

loiMauChin = \lyricmode {
  <<
    {
      \set stanza = "1."
      Lưỡi tôi hãy dâng lời ca hát Mình Máu vinh hiển rất nhiệm mầu
      mà Vua thống trị muôn dân nước
      Sinh bởi Mẹ trinh khiết cao sang
      đà nên giá cứu độ trần gian,
      khi Máu thiêng tuôn đổ chan hòa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      \override Lyrics.LyricText.font-shape = #'italic
      Sinh hạ để ban tặng ta đó,
      bởi Nữ Trinh thật rất tinh tuyền.
      Người đã sống thật nơi dương thế,
      rắc gieo Lời Thiên Chúa nơi nơi.
      Bằng nghi lễ biết bao kỳ diệu,
      chung kết bao năm ở gian trần.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Đêm từ giã, trong tiệc sau hết,
      cùng với anh em lúc chung bàn,
      và khi đã thực thi chu tất
      thức ăn được nghi thức ghi xưa,
      Người trao hiến chính thân mình đây
      nên của ăn cho các Tông Đồ.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "4."
      \override Lyrics.LyricText.font-shape = #'italic
      Ngôi Lời đã mang phận nhân thế,
      quyền phép thay vừa phán một lời
      làm cho bánh thành Mình Con Chúa,
      khiến rượu thành Máu Đức Ki -- tô.
      Dù không thấy giác quan nhận ra,
      đem đức tin kiên định tâm thành.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "5."
      Đây nhiệm tích vô cùng cao quý,
      nào chúng ta phục bái tôn thờ,
      Và dấu tích ngàn xưa lưu ký,
      phải kính nhường nghi lễ mới đây.
      Ta hãy lấy đức tin bù lại,
      nếu giác quan không cảm thấy gì.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "6."
      \override Lyrics.LyricText.font-shape = #'italic
      Dâng về Chúa Cha và Con Chúa,
      lời tán dương mừng chúc vang hòa
      cùng vinh phúc quyền năng, danh giá,
      tựa khói trầm bay tỏa ngát hương,
      cùng tiến Chúa Thánh Linh từ hậu
      khúc tán dương cảm tạ suốt đời.
      A -- men.
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
  page-count = 7
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh Vịnh Đáp ca: Tv. 115:"
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #1.5
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \vspace #2
  \bold "Câu xướng trước Tin Mừng:"
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Khi Rửa Chân:"
  \normal-text "có thể hát các Điệp ca sau đây:"
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
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
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 10
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \vspace #2
  \bold "Phụng Vụ Thánh Thể"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \vspace #2
  \bold "Ca Hiệp lễ:"
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \vspace #2
  \column {
      \left-align {
        \line {
          \bold "Khi kiệu Thánh Thể"
        }
        \line {
          \normal-text \italic "Hát lại 4 câu đầu 1-4 khi cuộc rước còn tiếp diễn."
        }
        \line {
          \normal-text \italic "Khi linh mục đã đặt Mình Thánh lên bàn thờ, hát câu 5, 6:"
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

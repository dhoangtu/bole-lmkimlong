% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thánh Lễ"
  %subtitle = "Ca Nhập Lễ và Hiệp Lễ"
  %subsubtitle = \markup { \huge "I. Lễ an táng" }
  %composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacMauMot = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g4 |
  d'4. c8 |
  c d c (bf) |
  a2 |
  a8 a16 (c) bf8 a |
  g4. d8 |
  g bf bf g |
  a4. c8 |
  bf4 a8 bf |
  a4. g8 |
  d'2 ~ |
  d4 \bar "|."
}

nhacMauHai = \relative c' {
  \key bf \major
  \time 2/4
  \partial 8 d8 |
  f4 g |
  bf8 g bf a16 (g) |
  d4 g8 a |
  a4. g8 |
  f bf c c |
  c4 bf16 (c) d8 |
  a4 a8 c |
  c8 ([d bf])  f8 |
  g2 ~ |
  g4 \bar "||"
}

nhacMauBa = \relative c' {
  \key bf \major
  \time 2/4
  \partial 8 d8 |
  bf' a g g |
  a4 f8 g |
  d4 d8 d |
  bf'8. a16 d8 d |
  g,2 ~ |
  g4 \bar  "||"
}

nhacMauBon = \relative c' {
  \key bf \major
  \time 2/4
  \partial 8 d8 |
  d (f) g4 |
  f8 f a bf |
  g4. g8 |
  c bf a c |
  d2 ~ |
  d4 \bar "||"
}

nhacMauNam = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 8 bf8 |
  a f f g16 (a) |
  d,8. d16 a'8 bf |
  g2 |
  r8 g bf a16 (g) |
  a8. a16 a8 a |
  d2 ~ |
  d4 \bar "||"
}

nhacMauSau = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 8 a8 |
  bf g g4 ~ |
  g8 bf a g |
  \slashedGrace { ef16 ( } d4) d8 d |
  bf' a16 (bf) d8 f, |
  g2 ~ |
  g4 \bar "||"
}

nhacMauBay = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 (g) |
  a2
  <<
    {
      a8 a bf a |
      g4 g8 bf |
      a4
    }
    {
      f8 f g f |
      e4 e8 d |
      f4
    }
  >>
  <<
    {
      \voiceOne
      g4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8 ^(bf)
    }
  >>
  \oneVoice
  <f' a,>2 ~ |
  <f a,>4 \bar "|."
}

nhacMauTam = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 (g) |
  a8. a16 a8 bf |
  g4. f8 |
  g e g4 |
  a2 |
  r8 e e16 (f) d8 |
  g4. f8 |
  g a e f |
  d4 \bar "||"
}

nhacMauChin = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 e |
  f8. e16 d8 g |
  a2 |
  r8 a g (a) |
  bf8. bf16 e,8 e |
  g (a) a f16 (e) |
  d4 \bar "||"
}

nhacMauMuoi = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 g |
  c,8. f16 d8 g |
  f4 e8 (f) |
  a2 |
  g8 d d e |
  f8. e16 c (d) e8 |
  d4 \bar "||"
}

nhacMauMuoiMot = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  d8 f f8. d16 |
  g4 a8 a |
  a4 f8 bf |
  a g g8. f16 |
  g8 f e (c) |
  d4 \bar "||"
}

nhacMauMuoiHai = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f4 |
  bf8 bf g4 ~ |
  g8 a g f |
  e4. a,8 |
  a c d d |
  d2 ~ |
  d4 \bar "||"
}

nhacMauMuoiBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 c, |
  c16 (d) e8 f e |
  d2 ~ |
  d8 d16 (f)
  <<
    {
      g8 a |
      e4.
    }
    {
      e8 d |
      c4.
    }
  >>
  <<
    {
      \voiceOne
      g'16 _(a)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8
    }
  >>
  \oneVoice
  <g' b,>4
  <<
    {
      \voiceOne
      g16 (a) g8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,8 f
    }
  >>
  \oneVoice
  <c' e,>2 ~ |
  <c e,>4 \bar "|."
}

nhacMauMuoiBon = \relative c'' {
  \key c \major
  \time 2/4
  g8 c, c (d) |
  e4. e8 |
  a4 a |
  d,2 |
  d8 d d f |
  g4. d8 |
  f4 e8 (d) |
  c4 \bar "||"
}

nhacMauMuoiLam = \relative c' {
  \key c \major
  \time 2/4
  e8 d e4 |
  e8 f d c |
  a'2 |
  a8 a a (c) |
  g2 ~ |
  g8 b, b16 (c) d8 |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiSau = \relative c'' {
  \key c \major
  \time 2/4
  r8 g e e |
  f4. a8 |
  g g e16 (d) b8 |
  c4 \bar "||"
}

nhacMauMuoiBay = \relative c'' {
  \key c \major
  \time 2/4
  r8 g e e |
  f4. a8 |
  g e16 (d) b8 c |
  c4 \bar "||"
}

nhacMauMuoiTam = \relative c'' {
  \key c \major
  \time 2/4
  r8 g c, (e) |
  d4 g8 g |
  a4. e8 |
  f g b, b |
  c2 ~ |
  c4 \bar "||"
}

nhacMauMuoiChin = \relative c'' {
  \key c \major
  \time 2/4
  g8 c, f (e) |
  d4. d8 |
  a' g g (f) |
  e4 r8 f |
  d4 g8 b, |
  c4 \bar "||"
}

nhacMauHaiMuoi = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g4 |
  d'4. c8 |
  c d d g, |
  a4. bf8 |
  a a bf16 (a) g8 |
  d4. d8 |
  bf' bf bf g |
  d'4 c16 (d) bf8 |
  a4. d,8 |
  bf'4 a8 bf16 (a) |
  g4 \bar "|."
}

nhacMauHaiMuoiMot = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 f8 f |
  g8. g16 g8 g |
  d4 bf8 (c) |
  d4 d8 (g) |
  a4. a8 |
  a a bf (a) |
  g4 \bar "||"
}

nhacMauHaiMuoiHai = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 bf8 a |
  bf8. bf16 bf8 (a) |
  a4 f8 f |
  g4. g8 |
  d4 \bar "||"
}

nhacMauHaiMuoiBa = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 d4 |
  bf'8. bf16 bf8 bf |
  g4. bf8 |
  a4 r8 a |
  c4. d8 |
  d2 ~ |
  d4 \bar "||"
}

nhacMauHaiMuoiBon = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 d8 ef |
  ef8. c16 d8 g |
  a4 bf8 d |
  c8. a16 bf8 f |
  g4 \bar "||"
}

nhacMauHaiMuoiLam = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 d4 |
  bf' bf8 bf |
  a4. a8 |
  d2 |
  r8 bf c c |
  bf (a) g f |
  g4 r8 d |
  g g fs (g) |
  a4 \bar "||"
}

nhacMauHaiMuoiSau = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 g8 a |
  bf8. a16 f8 d |
  g4 a8 a |
  a4. c8 |
  bf4 a |
  d2 ~ |
  d4 \bar "||"
}

nhacMauHaiMuoiBay = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 d16 (ef) d8 |
  bf'8. g16 g8 g |
  a4 a8 d |
  d8. d,16 a'8 bf |
  g4 \bar "||"
}

nhacMauHaiMuoiTam = \relative c'' {
  \key bf \major
  \time 2/4
  \partial 4 d4 |
  g,4. bf8 |
  bf d, bf' a |
  a4. bf8 |
  a a16 (c) d8 f, |
  g2 ~ |
  g4 \bar "||"
}

nhacMauHaiMuoiChin = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4. g8 a g |
  c4. e,8 |
  e g f (e) |
  d2 |
  r8 g e e |
  f4 d8 d |
  a'4. g8 |
  c2 ~ |
  c4 \bar "|."
}

nhacMauBaMuoi = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 f |
  f8. d16 g8 e |
  a2 ~ |
  a8 a g g |
  d' e e16 (d) b8 |
  c2 ~ |
  c8 \bar "||"
}

nhacMauBaMuoiMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 c16 c |
  e8 f d e |
  g4. e8 |
  a8. d,16 d8 g |
  c,2 ~ |
  c8 \bar "||"
}

nhacMauBaMuoiHai = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 c,16 c |
  d4. d8 |
  c16 (d) e8 e e |
  g4. d8 |
  g b, b (d) |
  c2 ~ |
  c8 \bar "||"
}

nhacMauBaMuoiBa = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 c, |
  c4 e16 (f) e8 |
  d4 d8 g |
  g g b, b16 (d) |
  c2 ~ |
  c8 \bar "||"
}

nhacMauBaMuoiBon = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e4 |
  e4. a8 |
  g f g g16 (e) |
  d4 d8 d |
  e4 e16 (f) d8 |
  g4. g8 |
  g2 ~ |
  g8 \bar "||"
}

nhacMauBaMuoiLam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 (f) |
  d4 d8 f |
  f f f g |
  d4 e16 (f) d8 |
  g4. b,8 |
  c2 ~ |
  c8 \bar "||"
}

nhacMauBaMuoiSau = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 (f) |
  d8 c g'4 ~ |
  g8 g g g |
  e4 e8 d |
  d f g d |
  c2 ~ |
  c8 \bar "||"
}

nhacMauBaMuoiBay = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g4 |
  <<
    {
      c2 ~ |
      c8 e, f g |
      g4 e8 d |
      g4. e8 |
      a4
    }
    {
      e2 ~ |
      e8 c d d |
      e4 b8 c |
      b4. c8 |
      f4
    }
  >>
  <<
    {
      \voiceOne
      g8 (a)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      e4
    }
  >>
  \oneVoice
  <c' e,>2 ~ |
  <c e,>4 \bar "|."
}

nhacMauBaMuoiTam = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 f |
  f8. d16 c8 d |
  e4 e8 f |
  f d f a |
  g4 \bar "||"
}

nhacMauBaMuoiChin = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 g |
  g8. g16 e8 g |
  a4 a8 d, |
  d4. d8 |
  f4 a16 (c) a8 |
  g4 \bar "||"
}

nhacMauBonMuoi = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 d |
  e8. e16 e8 c |
  \slashedGrace { e16 ( } f2) ~ |
  f8 d a' a |
  a8. f16 d8 g |
  g4 \bar "||"
}

nhacMauBonMuoiMot = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 e16 (f) |
  d8. g16 g8 a |
  a2 ~ |
  a8 e f d |
  g4. b,8 |
  c4 \bar "||"
}

nhacMauBonMuoiHai = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 e8 e |
  f8. d16 g8 g |
  a4 g8 f |
  d8. d16 g8 b, |
  c4 \bar "||"
}

nhacMauBonMuoiBa = \relative c' {
  \key c \major
  \time 2/4
  \partial 4 c4 |
  g'8. e16 e8 e |
  f4. f8 |
  d g e16 (d) b8 |
  c4 \bar "||"
}

nhacMauBonMuoiBon = \relative c'' {
  \key c \major
  \time 2/4
  \partial 4 g8 g |
  g8. f16 a8 d, |
  d2 ~ |
  d8 d16 (f) e8 d |
  c4. e8 |
  g4 \bar "||"
}

% Lời
loiMauMot = \lyricmode {
  Lạy Chúa, xin cho các linh hồn được nghỉ yên muôn đời
  và cho ánh sáng ngàn thu chiếu soi trên các linh hồn ấy.
}

loiMauHai = \lyricmode {
  Lạy Thiên Chúa, Chúa thật đáng ca tụng tại Si -- on,
  và từ Giê -- ru -- sa -- lem phải giữ trọn lời khấn hứa cùng Ngài.
}

loiMauBa = \lyricmode {
  Ngài lắng nghe lời nguyện xin.
  Vì mang tội, mọi phàm nhân sẽ đến với Ngài.
}

loiMauBon = \lyricmode {
  Vì tội ác đè nặng trên chúng con,
  Ngài vẫn thương tình tha thứ.
}

loiMauNam = \lyricmode {
  Phúc thay người được Chúa chọn và cho đến gần,
  Họ sẽ ở nơi tiền đình nhà Chúa.
}

loiMauSau = \lyricmode {
  Ân phúc nhà Ngài, chúng con no thỏa,
  và đầy dư lộc thánh đền Ngài.
}

loiMauBay = \lyricmode {
  Lạy Chúa, xin cho các linh hồn được nghỉ ngơi muôn đời.
}

loiMauTam = \lyricmode {
  Lạy Chúa, xin thương xót con vì con tàn hơi sức,
  xin chữa lành con vì xương cốt con rã rời.
}

loiMauChin = \lyricmode {
  Linh hồn con rụng rời kinh hãi,
  nhưng lạy Chúa, Chúa còn trì hoãn đến bao giờ.
}

loiMauMuoi = \lyricmode {
  Xin đoái lại cứu mạng sống con,
  lạy Chúa, theo lượng từ bi Chúa,
  xin giải thoát con.
}

loiMauMuoiMot = \lyricmode {
  Vì trong cõi chết nào ai nhớ đến Chúa,
  và giữa chốn âm ty nào ai ca tụng Ngài.
}

loiMauMuoiHai = \lyricmode {
  Ngài đã lắng nghe tiếng con van nài
  và nhậm lời con kêu xin.
}

loiMauMuoiBa = \lyricmode {
  Hãy mở cửa công chính cho tôi
  để tôi tiến vào,
  tiến vào cảm tạ Chúa.
}

loiMauMuoiBon = \lyricmode {
  Hãy cảm tạ Chúa vì Chúa tốt lành,
  vì lượng từ bi Chúa bền vững muôn đời.
}

loiMauMuoiLam = \lyricmode {
  Trong gian truân tôi đã kêu cầu Chúa,
  Chúa đã đoái nghe và giải thoát tôi.
}

loiMauMuoiSau = \lyricmode {
  Náu thân nơi Chúa tốt hơn tin tưởng người đời.
}

loiMauMuoiBay = \lyricmode {
  Náu thân nơi Chúa tốt hơn cậy nhờ vua quan.
}

loiMauMuoiTam = \lyricmode {
  Chúng đẩy tôi, xô cho ngã, nhưng Chúa đã phù trợ tôi.
}

loiMauMuoiChin = \lyricmode {
  Chúa là sức mạnh, là Đấng tôi ca ngợi,
  chính Ngài cứu độ tôi.
}

loiMauHaiMuoi = \lyricmode {
  Lạy Chúa, xin cho ánh sáng ngàn thu chiếu soi trên các linh hồn
  cùng với các thánh của Chúa đến muôn đời,
  vì Chúa hay xót thương.
}

loiMauHaiMuoiMot = \lyricmode {
  Từ vực sâu con kêu lên Ngài,
  lạy Chúa, lạy Chúa, xin thương nghe tiếng con.
}

loiMauHaiMuoiHai = \lyricmode {
  Dám xin Chúa hãy lắng tai nhậm lời con van nài.
}

loiMauHaiMuoiBa = \lyricmode {
  Lạy Chúa, nếu Chúa chấp tội, Chúa ơi,
  nào ai đứng vững.
}

loiMauHaiMuoiBon = \lyricmode {
  Nhưng Chúa vẫn rộng lòng thứ tha để chúng con luôn kính sợ Ngài.
}

loiMauHaiMuoiLam = \lyricmode {
  Lạy Chúa, con trông cậy vào Chúa,
  Hồn con trông cậy ở lời Ngài.
  Hồn con mong đợi Chúa.
}

loiMauHaiMuoiSau = \lyricmode {
  Hơn lính gác mong trời rạng đông,
  Is -- ra -- el hãy mong đợi Chúa.
}

loiMauHaiMuoiBay = \lyricmode {
  Bởi vì Chúa rộng lượng từ bi
  và Chúa rất giàu ơn cứu độ.
}

loiMauHaiMuoiTam = \lyricmode {
  Chính Ngài sẽ cứu chuộc Is -- ra -- el khỏi mọi tội ác họ phạm.
}

loiMauHaiMuoiChin = \lyricmode {
  Tôi đã nghe tiếng từ trời phán bảo rằng:
  Phúc cho ai chết mà được chết trong Chúa.
}

loiMauBaMuoi = \lyricmode {
  Tôi ngước mắt nhìn lên rặng núi,
  ơn phù trợ tôi sẽ đến từ đâu?
}

loiMauBaMuoiMot = \lyricmode {
  Ơn phù trợ tôi đến từ nơi Chúa
  là Đấng tạo dựng đất trời.
}

loiMauBaMuoiHai = \lyricmode {
  Đấng bảo vệ ngươi không để chân ngươi xiêu té,
  Ngài cũng chẳng ngủ quên.
}

loiMauBaMuoiBa = \lyricmode {
  Đấng bảo vệ Is -- ra -- el không thiếp giấc
  cũng chẳng ngủ say.
}

loiMauBaMuoiBon = \lyricmode {
  Mặt trời sẽ không hại ngươi ban ngày
  và mặt trăng chẳng hại ngươi ban đêm.
}

loiMauBaMuoiLam = \lyricmode {
  Chúa bảo vệ ngươi khỏi mọi điều tai họa.
  Chúa gìn giữ hồn ngươi.
}

loiMauBaMuoiSau = \lyricmode {
  Chúa che chở ngươi khi đi khi về,
  bây giờ và cho đến muôn đời.
}

loiMauBaMuoiBay = \lyricmode {
  Lạy Chúa, phần của riêng con trong miền đất dành cho kẻ sống
}

loiMauBaMuoiTam = \lyricmode {
  Tôi cất tiếng kêu gào lên Chúa,
  tôi cất tiếng cầu khẩn Chúa thương
}

loiMauBaMuoiChin = \lyricmode {
  Lời than vãn thân trình lên Chúa,
  nỗi ngặt nghèo bày tỏ trước Tôn Nhan.
}

loiMauBonMuoi = \lyricmode {
  Khi hồn con tiêu hao mòn mỏi,
  Ngài đã thấu suốt nẻo đường con đi.
}

loiMauBonMuoiMot = \lyricmode {
  Trên quãng đường con đang tiến bước,
  người ta gài bẫy rình chờ.
}

loiMauBonMuoiHai = \lyricmode {
  Xin đưa mắt nhìn qua bên hữu,
  không kẻ nào nhìn biết gì con.
}

loiMauBonMuoiBa = \lyricmode {
  Lạy Chúa, con kêu lên Chúa,
  Chúa là chốn con ẩn thân.
}

loiMauBonMuoiBon = \lyricmode {
  Đưa con ra khỏi chốn ngục tù,
  để con xưng tụng danh Chúa.
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
        \italic "Sách GRADUALE SIMPLEX ghi một só Đối ca Nhập lễ"
      }
      \line {
        \italic "và Hiệp lễ với những câu Thánh vịnh kèm theo để sử dụng"
      }
      \line {
        \italic "trong các LỄ CẦU HỒN"
      }
    }
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ 1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauMot
        }
      \new Lyrics \lyricsto beSop \loiMauMot
    >>
  >>
  \layout {
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauHai
        }
      \new Lyrics \lyricsto beSop \loiMauHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override LyricHyphen.minimum-distance = #2
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBa
        }
      \new Lyrics \lyricsto beSop \loiMauBa
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBon
        }
      \new Lyrics \lyricsto beSop \loiMauBon
    >>
  >>
  \layout {
    indent = 17
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauNam
        }
      \new Lyrics \lyricsto beSop \loiMauNam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauSau
        }
      \new Lyrics \lyricsto beSop \loiMauSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ 2" }} <<
        \clef treble
        \new Voice = beSop {
          \nhacMauBay
        }
      \new Lyrics \lyricsto beSop \loiMauBay
    >>
  >>
  \layout {
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\pageBreak

\markup {
  \line {
    \bold "Thánh vịnh 6"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauTam
        }
      \new Lyrics \lyricsto beSop \loiMauTam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauChin
        }
      \new Lyrics \lyricsto beSop \loiMauChin
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauMuoi
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiMot
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Nhập lễ 3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBa
    >>
  >>
  \layout {
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \line {
    \bold "Thánh Vịnh 117"
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBon
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiLam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiBay
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiBay
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiTam
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiTam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "6" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauMuoiChin
        }
      \new Lyrics \lyricsto beSop \loiMauMuoiChin
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ 1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoi
    >>
  >>
  \layout {
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh Vịnh 129"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiMot
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiBa
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiBon
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiLam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "6" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "7" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiBay
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiBay
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "8" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiTam
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiTam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ 2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauHaiMuoiChin
        }
      \new Lyrics \lyricsto beSop \loiMauHaiMuoiChin
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh Vịnh 120"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoi
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiMot
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiBa
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiBon
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "6" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiLam
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiLam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "7" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiSau
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiSau
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "Hiệp lễ 3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiBay
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiBay
    >>
  >>
  \layout {
    indent = 20
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Thánh Vịnh 141"
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiTam
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiTam
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBaMuoiChin
        }
      \new Lyrics \lyricsto beSop \loiMauBaMuoiChin
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBonMuoi
        }
      \new Lyrics \lyricsto beSop \loiMauBonMuoi
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBonMuoiMot
        }
      \new Lyrics \lyricsto beSop \loiMauBonMuoiMot
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBonMuoiHai
        }
      \new Lyrics \lyricsto beSop \loiMauBonMuoiHai
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "6" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBonMuoiBa
        }
      \new Lyrics \lyricsto beSop \loiMauBonMuoiBa
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "7" }}<<
        \clef treble
        \new Voice = beSop {
          \nhacMauBonMuoiBon
        }
      \new Lyrics \lyricsto beSop \loiMauBonMuoiBon
    >>
  >>
  \layout {
    indent = 17
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

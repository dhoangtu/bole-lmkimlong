% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Thứ Năm Tuần Thánh"
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

%
#(define (add-grob-definition grob-name grob-entry)
     (set! all-grob-descriptions
           (cons ((@@ (lily) completize-grob-entry)
                  (cons grob-name grob-entry))
                 all-grob-descriptions)))

#(add-grob-definition
    'StanzaNumberSpanner
    `((direction . ,LEFT)
      (font-series . bold)
      (padding . 1)
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

stanzaReminderOn =
\undo \stanzaReminderOff
%

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
      c c c4 |
      d a8 a |
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
  \partial 4 <g b,>4 \bar "|."
  
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
  
}

nhacMauBon = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 (g) |
  a2 |
  
}

nhacMauNam = \relative c' {
  \key f \major
  \time 2/4
  d8 d c |
  
}

nhacMauSau = \relative c' {
  \key f \major
  \time 2/4
  \partial 4 f8 d \bar "||"
  
}

nhacMauBay = \relative c' {
  \key bf \major
  \time 2/4
  \partial 4 d8 (f) |
  
}

nhacMauTam = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 a4 |
  
}

nhacMauChin = \relative c'' {
  \key c \major
  \time 2/4
  a8 g bf (a) g f
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
  
}

loiMauBon = \lyricmode {
  
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

% Đổi kích thước nốt cho bè phụ
notBePhu =
#(define-music-function (font-size music) (number? ly:music?)
   (for-some-music
     (lambda (m)
       (if (music-is-of-type? m 'rhythmic-event)
           (begin
             (set! (ly:music-property m 'tweaks)
                   (cons `(font-size . ,font-size)
                         (ly:music-property m 'tweaks)))
             #t)
           #f))
     music)
   music)

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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
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
    indent = 15
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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.7
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

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
    indent = 15
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    ragged-last = ##f
  }
}

\markup {
  \vspace #2
  \bold "Khi kiệu Thánh Thể"
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \set Score.defaultBarType = ""
    \set Score.barAlways = ##t
    ragged-last = ##f
  }
}

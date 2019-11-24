\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new Staff \with{
        \remove "Time_signature_engraver"
        \hide Stem
    }
    {
        \time 4/4
        \key d \major

        <<
        \new Voice = "one" {
            fis'4 fis''4 f'4 f''4 cis'4 cis''4 c'4 c''4
        }

        \new Lyrics \lyricsto "one" \lyricmode {
			\override Lyrics.LyricSpace.minimum-distance = #5.0
			\override LyricText.font-size = #-1
			\markup{F\sharp} \markup{F\sharp} F F
			\markup{C\sharp} \markup{C\sharp} C C
        }
        >>

    }
}

\version "2.18.2"

\header {
    tagline = ##f
}

\score {
    \new Staff \with{
        \remove "Clef_engraver"
    }
    {
        \time 4/4

        <<
        \new Voice = "one" {
			a'1 a'2 a'4 a'8 a'16
        }

        \new Lyrics \lyricsto "one" \lyricmode {
			\override Lyrics.LyricSpace.minimum-distance = #1.0
			\override LyricText.font-size = #-3
			{Whole_note} {Half_note} {Quarter_note} {Eighth_note} {Sixteenth_note}
        }
        >>
    }
}


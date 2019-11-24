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
		a'1
		a'2 a'4 a'4

        \time 3/4
		a'4 a'4 a'4
		a'2 a'4

		\time 6/8
		a'8 a'8 a'8 a'8 a'8 a'8
		a'8 a'8 a'4 a'8 a'8


    }
}


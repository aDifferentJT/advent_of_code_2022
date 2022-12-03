#! /usr/local/bin/apl -f

INPUT ← ⎕FIO[49]'./input.txt'

∇ RES ← OPP SCORE MY
RES ← (3|(MY - 1)) + 1 + ((3|((MY - OPP) + 1)) × 3)
∇

∇ RES ← EVAL_LINE LINE
OPP ← ↑('ABC' ⍳ (1⌷LINE))
MY ← ↑('XYZ' ⍳ (3⌷LINE))
RES ← OPP SCORE MY
∇

+/ EVAL_LINE¨INPUT

∇ RES ← EVAL_LINE2 LINE
OPP ← ↑('ABC' ⍳ (1⌷LINE))
MY ← (↑('XYZ' ⍳ (3⌷LINE)) - 2) + OPP
RES ← OPP SCORE MY
∇

+/ EVAL_LINE2¨INPUT


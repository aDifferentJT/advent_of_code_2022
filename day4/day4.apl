#! /usr/local/bin/apl -f

INPUT ← ⎕FIO[49]'./input.txt'

∇ RES ← PARSE_LINE LINE
MATCHES ← '^(\d*)-(\d*),(\d*)-(\d*)$' ⎕RE LINE
X1 ← ⍎↑(2 ⌷ MATCHES)
X2 ← ⍎↑(3 ⌷ MATCHES)
Y1 ← ⍎↑(4 ⌷ MATCHES)
Y2 ← ⍎↑(5 ⌷ MATCHES)
RES ← ((X1 ≥ Y1) ∧ (X2 ≤ Y2)) ∨ ((X1 ≤ Y1) ∧ (X2 ≥ Y2))
∇

+/ PARSE_LINE¨INPUT

∇ RES ← PARSE_LINE2 LINE
MATCHES ← '^(\d*)-(\d*),(\d*)-(\d*)$' ⎕RE LINE
X1 ← ⍎↑(2 ⌷ MATCHES)
X2 ← ⍎↑(3 ⌷ MATCHES)
Y1 ← ⍎↑(4 ⌷ MATCHES)
Y2 ← ⍎↑(5 ⌷ MATCHES)
RES ← ~((X2 < Y1) ∨ (X1 > Y2))
∇

+/ PARSE_LINE2¨INPUT


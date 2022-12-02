#! /usr/local/bin/apl -f

TEXT ← ⎕FIO[49]'./input.txt'
NUMS ← (⍎¨)¨(((↑¨⍴¨TEXT) > 0) ⊂ TEXT)
SUMS ← (+/)¨NUMS

⌈/SUMS

+/SUMS[3↑⍒SUMS]

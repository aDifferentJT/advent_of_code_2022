#! /usr/local/bin/apl -f

INPUT ← ⎕FIO[49]'./input.txt'

PRIORITIES ← 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

∇ RES ← PRIORITY_RUCKSACK LINE
LEN ← (⍴LINE) ÷ 2
RES ← +/ (PRIORITIES ⍳ ∪((LEN ↑ LINE) ∩ (LEN ↓ LINE)))
∇

+/ PRIORITY_RUCKSACK¨INPUT

+/ PRIORITIES ⍳ ↑¨∪¨∩/(((↑⍴INPUT) ÷ 3) 3 ⍴ INPUT)


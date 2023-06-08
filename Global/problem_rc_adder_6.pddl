(define (problem test)  (:domain Quantum)
  (:objects
  ;; logical qubits
  l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 - lqubit
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
  ;; layer depth
  d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d13 d15 d17 d18 d20 d22 d24 d25 d27 d29 d31 d32 d34 d36 d38 d39 d42 d44 d46 d47 d49 d51 d53 d55 d57 d58 d59 d61 d63 d64 d65 d67 d69 d70 d71 d73 d75 d76 d77 d79 d80 d82 d83 - depth
  )
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
  ;; current depth is d0
  (current_depth d0)
  ;; connectivity graph
  (connected p1 p0)
  (connected p1 p2)
  (connected p2 p3)
  (connected p4 p3)
  (connected p4 p10)
  (connected p5 p4)
  (connected p5 p6)
  (connected p5 p9)
  (connected p6 p8)
  (connected p7 p8)
  (connected p9 p8)
  (connected p9 p10)
  (connected p11 p3)
  (connected p11 p10)
  (connected p11 p12)
  (connected p12 p2)
  (connected p13 p1)
  (connected p13 p12)
  (connected p0 p1)
  (connected p2 p1)
  (connected p3 p2)
  (connected p3 p4)
  (connected p10 p4)
  (connected p4 p5)
  (connected p6 p5)
  (connected p9 p5)
  (connected p8 p6)
  (connected p8 p7)
  (connected p8 p9)
  (connected p10 p9)
  (connected p3 p11)
  (connected p10 p11)
  (connected p12 p11)
  (connected p2 p12)
  (connected p1 p13)
  (connected p12 p13)
  ;; depths
  (next_depth d0 d1)
  (next_depth d1 d2)
  (next_depth d2 d3)
  (next_depth d3 d4)
  (next_depth d4 d5)
  (next_depth d5 d6)
  (next_depth d6 d7)
  (next_depth d7 d8)
  (next_depth d8 d9)
  (next_depth d9 d10)
  (next_depth d10 d13)
  (next_depth d13 d15)
  (next_depth d15 d17)
  (next_depth d17 d18)
  (next_depth d18 d20)
  (next_depth d20 d22)
  (next_depth d22 d24)
  (next_depth d24 d25)
  (next_depth d25 d27)
  (next_depth d27 d29)
  (next_depth d29 d31)
  (next_depth d31 d32)
  (next_depth d32 d34)
  (next_depth d34 d36)
  (next_depth d36 d38)
  (next_depth d38 d39)
  (next_depth d39 d42)
  (next_depth d42 d44)
  (next_depth d44 d46)
  (next_depth d46 d47)
  (next_depth d47 d49)
  (next_depth d49 d51)
  (next_depth d51 d53)
  (next_depth d53 d55)
  (next_depth d55 d57)
  (next_depth d57 d58)
  (next_depth d58 d59)
  (next_depth d59 d61)
  (next_depth d61 d63)
  (next_depth d63 d64)
  (next_depth d64 d65)
  (next_depth d65 d67)
  (next_depth d67 d69)
  (next_depth d69 d70)
  (next_depth d70 d71)
  (next_depth d71 d73)
  (next_depth d73 d75)
  (next_depth d75 d76)
  (next_depth d76 d77)
  (next_depth d77 d79)
  (next_depth d79 d80)
  (next_depth d80 d82)
  (next_depth d82 d83)
  ;; listing required cnots
  (rcnot l4 l3 d1)
  (rcnot l6 l5 d1)
  (rcnot l8 l7 d1)
  (rcnot l10 l9 d1)
  (rcnot l12 l11 d1)
  (rcnot l4 l2 d2)
  (rcnot l6 l4 d3)
  (rcnot l1 l2 d4)
  (rcnot l8 l6 d4)
  (rcnot l3 l4 d5)
  (rcnot l10 l8 d5)
  (rcnot l0 l2 d6)
  (rcnot l5 l6 d6)
  (rcnot l12 l10 d6)
  (rcnot l7 l8 d7)
  (rcnot l12 l13 d7)
  (rcnot l1 l2 d8)
  (rcnot l9 l10 d8)
  (rcnot l11 l13 d9)
  (rcnot l0 l2 d10)
  (rcnot l2 l4 d13)
  (rcnot l3 l4 d15)
  (rcnot l2 l4 d17)
  (rcnot l2 l3 d18)
  (rcnot l4 l6 d20)
  (rcnot l5 l6 d22)
  (rcnot l4 l6 d24)
  (rcnot l4 l5 d25)
  (rcnot l6 l8 d27)
  (rcnot l7 l8 d29)
  (rcnot l6 l8 d31)
  (rcnot l6 l7 d32)
  (rcnot l8 l10 d34)
  (rcnot l9 l10 d36)
  (rcnot l8 l10 d38)
  (rcnot l8 l9 d39)
  (rcnot l10 l13 d42)
  (rcnot l11 l13 d44)
  (rcnot l10 l13 d46)
  (rcnot l10 l11 d47)
  (rcnot l8 l10 d49)
  (rcnot l9 l10 d51)
  (rcnot l8 l10 d53)
  (rcnot l6 l8 d55)
  (rcnot l9 l10 d55)
  (rcnot l7 l8 d57)
  (rcnot l12 l10 d58)
  (rcnot l6 l8 d59)
  (rcnot l12 l11 d59)
  (rcnot l4 l6 d61)
  (rcnot l7 l8 d61)
  (rcnot l5 l6 d63)
  (rcnot l10 l8 d64)
  (rcnot l4 l6 d65)
  (rcnot l10 l9 d65)
  (rcnot l2 l4 d67)
  (rcnot l5 l6 d67)
  (rcnot l3 l4 d69)
  (rcnot l8 l6 d70)
  (rcnot l2 l4 d71)
  (rcnot l8 l7 d71)
  (rcnot l1 l2 d73)
  (rcnot l3 l4 d73)
  (rcnot l0 l2 d75)
  (rcnot l6 l4 d76)
  (rcnot l1 l2 d77)
  (rcnot l6 l5 d77)
  (rcnot l0 l2 d79)
  (rcnot l1 l0 d80)
  (rcnot l4 l2 d82)
  (rcnot l4 l3 d83)
)
(:goal
  (and
  ;; depth 0, initial mapping
  (occupied_lqubit l0)
  (occupied_lqubit l1)
  (occupied_lqubit l2)
  (occupied_lqubit l3)
  (occupied_lqubit l4)
  (occupied_lqubit l5)
  (occupied_lqubit l6)
  (occupied_lqubit l7)
  (occupied_lqubit l8)
  (occupied_lqubit l9)
  (occupied_lqubit l10)
  (occupied_lqubit l11)
  (occupied_lqubit l12)
  (occupied_lqubit l13)
  ;; listing negated required cnots
 (not (rcnot l4 l3 d1))
 (not (rcnot l6 l5 d1))
 (not (rcnot l8 l7 d1))
 (not (rcnot l10 l9 d1))
 (not (rcnot l12 l11 d1))
 (not (rcnot l4 l2 d2))
 (not (rcnot l6 l4 d3))
 (not (rcnot l1 l2 d4))
 (not (rcnot l8 l6 d4))
 (not (rcnot l3 l4 d5))
 (not (rcnot l10 l8 d5))
 (not (rcnot l0 l2 d6))
 (not (rcnot l5 l6 d6))
 (not (rcnot l12 l10 d6))
 (not (rcnot l7 l8 d7))
 (not (rcnot l12 l13 d7))
 (not (rcnot l1 l2 d8))
 (not (rcnot l9 l10 d8))
 (not (rcnot l11 l13 d9))
 (not (rcnot l0 l2 d10))
 (not (rcnot l2 l4 d13))
 (not (rcnot l3 l4 d15))
 (not (rcnot l2 l4 d17))
 (not (rcnot l2 l3 d18))
 (not (rcnot l4 l6 d20))
 (not (rcnot l5 l6 d22))
 (not (rcnot l4 l6 d24))
 (not (rcnot l4 l5 d25))
 (not (rcnot l6 l8 d27))
 (not (rcnot l7 l8 d29))
 (not (rcnot l6 l8 d31))
 (not (rcnot l6 l7 d32))
 (not (rcnot l8 l10 d34))
 (not (rcnot l9 l10 d36))
 (not (rcnot l8 l10 d38))
 (not (rcnot l8 l9 d39))
 (not (rcnot l10 l13 d42))
 (not (rcnot l11 l13 d44))
 (not (rcnot l10 l13 d46))
 (not (rcnot l10 l11 d47))
 (not (rcnot l8 l10 d49))
 (not (rcnot l9 l10 d51))
 (not (rcnot l8 l10 d53))
 (not (rcnot l6 l8 d55))
 (not (rcnot l9 l10 d55))
 (not (rcnot l7 l8 d57))
 (not (rcnot l12 l10 d58))
 (not (rcnot l6 l8 d59))
 (not (rcnot l12 l11 d59))
 (not (rcnot l4 l6 d61))
 (not (rcnot l7 l8 d61))
 (not (rcnot l5 l6 d63))
 (not (rcnot l10 l8 d64))
 (not (rcnot l4 l6 d65))
 (not (rcnot l10 l9 d65))
 (not (rcnot l2 l4 d67))
 (not (rcnot l5 l6 d67))
 (not (rcnot l3 l4 d69))
 (not (rcnot l8 l6 d70))
 (not (rcnot l2 l4 d71))
 (not (rcnot l8 l7 d71))
 (not (rcnot l1 l2 d73))
 (not (rcnot l3 l4 d73))
 (not (rcnot l0 l2 d75))
 (not (rcnot l6 l4 d76))
 (not (rcnot l1 l2 d77))
 (not (rcnot l6 l5 d77))
 (not (rcnot l0 l2 d79))
 (not (rcnot l1 l0 d80))
 (not (rcnot l4 l2 d82))
 (not (rcnot l4 l3 d83))
  )
)
)
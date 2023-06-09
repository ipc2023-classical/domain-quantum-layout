(define (problem test)  (:domain Quantum)
  (:objects
  ;; logical qubits
  l0 l1 l2 l3 l4 l5 l6 - lqubit
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
  ;; layer depth
  d2 d4 d6 d7 d9 d11 d13 d15 d16 d18 d20 d22 d24 d26 d29 d31 d33 d35 d37 d39 d40 d42 d45 d47 d49 d51 d53 d55 d57 d60 d62 d64 d65 d67 - depth
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
  ;; depths
  (next_depth d0 d2)
  (next_depth d2 d4)
  (next_depth d4 d6)
  (next_depth d6 d7)
  (next_depth d7 d9)
  (next_depth d9 d11)
  (next_depth d11 d13)
  (next_depth d13 d15)
  (next_depth d15 d16)
  (next_depth d16 d18)
  (next_depth d18 d20)
  (next_depth d20 d22)
  (next_depth d22 d24)
  (next_depth d24 d26)
  (next_depth d26 d29)
  (next_depth d29 d31)
  (next_depth d31 d33)
  (next_depth d33 d35)
  (next_depth d35 d37)
  (next_depth d37 d39)
  (next_depth d39 d40)
  (next_depth d40 d42)
  (next_depth d42 d45)
  (next_depth d45 d47)
  (next_depth d47 d49)
  (next_depth d49 d51)
  (next_depth d51 d53)
  (next_depth d53 d55)
  (next_depth d55 d57)
  (next_depth d57 d60)
  (next_depth d60 d62)
  (next_depth d62 d64)
  (next_depth d64 d65)
  (next_depth d65 d67)
  ;; listing required cnots
  (rcnot l5 l6 d2)
  (rcnot l3 l6 d4)
  (rcnot l5 l6 d6)
  (rcnot l3 l5 d7)
  (rcnot l3 l5 d9)
  (rcnot l4 l5 d11)
  (rcnot l2 l5 d13)
  (rcnot l4 l5 d15)
  (rcnot l2 l4 d16)
  (rcnot l2 l4 d18)
  (rcnot l1 l4 d20)
  (rcnot l0 l4 d22)
  (rcnot l1 l4 d24)
  (rcnot l0 l4 d26)
  (rcnot l4 l5 d29)
  (rcnot l2 l5 d31)
  (rcnot l4 l5 d33)
  (rcnot l5 l6 d35)
  (rcnot l3 l6 d37)
  (rcnot l5 l6 d39)
  (rcnot l3 l5 d40)
  (rcnot l3 l5 d42)
  (rcnot l4 l5 d45)
  (rcnot l2 l5 d47)
  (rcnot l4 l5 d49)
  (rcnot l1 l4 d51)
  (rcnot l0 l4 d53)
  (rcnot l1 l4 d55)
  (rcnot l0 l4 d57)
  (rcnot l4 l5 d60)
  (rcnot l2 l5 d62)
  (rcnot l4 l5 d64)
  (rcnot l2 l4 d65)
  (rcnot l2 l4 d67)
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
  ;; listing negated required cnots
 (not (rcnot l5 l6 d2))
 (not (rcnot l3 l6 d4))
 (not (rcnot l5 l6 d6))
 (not (rcnot l3 l5 d7))
 (not (rcnot l3 l5 d9))
 (not (rcnot l4 l5 d11))
 (not (rcnot l2 l5 d13))
 (not (rcnot l4 l5 d15))
 (not (rcnot l2 l4 d16))
 (not (rcnot l2 l4 d18))
 (not (rcnot l1 l4 d20))
 (not (rcnot l0 l4 d22))
 (not (rcnot l1 l4 d24))
 (not (rcnot l0 l4 d26))
 (not (rcnot l4 l5 d29))
 (not (rcnot l2 l5 d31))
 (not (rcnot l4 l5 d33))
 (not (rcnot l5 l6 d35))
 (not (rcnot l3 l6 d37))
 (not (rcnot l5 l6 d39))
 (not (rcnot l3 l5 d40))
 (not (rcnot l3 l5 d42))
 (not (rcnot l4 l5 d45))
 (not (rcnot l2 l5 d47))
 (not (rcnot l4 l5 d49))
 (not (rcnot l1 l4 d51))
 (not (rcnot l0 l4 d53))
 (not (rcnot l1 l4 d55))
 (not (rcnot l0 l4 d57))
 (not (rcnot l4 l5 d60))
 (not (rcnot l2 l5 d62))
 (not (rcnot l4 l5 d64))
 (not (rcnot l2 l4 d65))
 (not (rcnot l2 l4 d67))
  )
)
)
(define (problem test)  (:domain Quantum)
  (:objects
  ;; logical qubits
  l0 l1 l2 l3 l4 - lqubit
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
  ;; layer depth
  d1 d2 d3 d4 d5 d6 d8 d9 d10 d13 d14 d15 d17 d18 d19 d21 d22 d23 d24 d26 d27 d28 d31 d32 d33 d35 d36 d37 d38 - depth
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
  (next_depth d6 d8)
  (next_depth d8 d9)
  (next_depth d9 d10)
  (next_depth d10 d13)
  (next_depth d13 d14)
  (next_depth d14 d15)
  (next_depth d15 d17)
  (next_depth d17 d18)
  (next_depth d18 d19)
  (next_depth d19 d21)
  (next_depth d21 d22)
  (next_depth d22 d23)
  (next_depth d23 d24)
  (next_depth d24 d26)
  (next_depth d26 d27)
  (next_depth d27 d28)
  (next_depth d28 d31)
  (next_depth d31 d32)
  (next_depth d32 d33)
  (next_depth d33 d35)
  (next_depth d35 d36)
  (next_depth d36 d37)
  (next_depth d37 d38)
  ;; listing required cnots
  (rcnot l4 l0 d1)
  (rcnot l2 l3 d2)
  (rcnot l4 l1 d3)
  (rcnot l0 l4 d4)
  (rcnot l1 l0 d5)
  (rcnot l1 l4 d6)
  (rcnot l0 l4 d8)
  (rcnot l1 l0 d9)
  (rcnot l4 l1 d10)
  (rcnot l4 l2 d13)
  (rcnot l3 l4 d14)
  (rcnot l3 l2 d15)
  (rcnot l4 l2 d17)
  (rcnot l3 l4 d18)
  (rcnot l2 l3 d19)
  (rcnot l2 l3 d21)
  (rcnot l4 l1 d21)
  (rcnot l0 l4 d22)
  (rcnot l1 l0 d23)
  (rcnot l1 l4 d24)
  (rcnot l0 l4 d26)
  (rcnot l1 l0 d27)
  (rcnot l4 l1 d28)
  (rcnot l4 l2 d31)
  (rcnot l3 l4 d32)
  (rcnot l3 l2 d33)
  (rcnot l4 l2 d35)
  (rcnot l3 l4 d36)
  (rcnot l2 l3 d37)
  (rcnot l0 l4 d38)
)
(:goal
  (and
  ;; depth 0, initial mapping
  (occupied_lqubit l0)
  (occupied_lqubit l1)
  (occupied_lqubit l2)
  (occupied_lqubit l3)
  (occupied_lqubit l4)
  ;; listing negated required cnots
 (not (rcnot l4 l0 d1))
 (not (rcnot l2 l3 d2))
 (not (rcnot l4 l1 d3))
 (not (rcnot l0 l4 d4))
 (not (rcnot l1 l0 d5))
 (not (rcnot l1 l4 d6))
 (not (rcnot l0 l4 d8))
 (not (rcnot l1 l0 d9))
 (not (rcnot l4 l1 d10))
 (not (rcnot l4 l2 d13))
 (not (rcnot l3 l4 d14))
 (not (rcnot l3 l2 d15))
 (not (rcnot l4 l2 d17))
 (not (rcnot l3 l4 d18))
 (not (rcnot l2 l3 d19))
 (not (rcnot l2 l3 d21))
 (not (rcnot l4 l1 d21))
 (not (rcnot l0 l4 d22))
 (not (rcnot l1 l0 d23))
 (not (rcnot l1 l4 d24))
 (not (rcnot l0 l4 d26))
 (not (rcnot l1 l0 d27))
 (not (rcnot l4 l1 d28))
 (not (rcnot l4 l2 d31))
 (not (rcnot l3 l4 d32))
 (not (rcnot l3 l2 d33))
 (not (rcnot l4 l2 d35))
 (not (rcnot l3 l4 d36))
 (not (rcnot l2 l3 d37))
 (not (rcnot l0 l4 d38))
  )
)
)
(define (problem test)  (:domain Quantum)
  (:objects
  ;; logical qubits
  l0 l1 l2 l3 l4 - lqubit
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
  ;; layer depth
  d1 d3 d4 d5 d6 d8 d9 d10 d11 d12 - depth
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
  (next_depth d1 d3)
  (next_depth d3 d4)
  (next_depth d4 d5)
  (next_depth d5 d6)
  (next_depth d6 d8)
  (next_depth d8 d9)
  (next_depth d9 d10)
  (next_depth d10 d11)
  (next_depth d11 d12)
  ;; listing required cnots
  (rcnot l0 l2 d1)
  (rcnot l1 l3 d1)
  (rcnot l3 l2 d3)
  (rcnot l4 l3 d4)
  (rcnot l2 l4 d5)
  (rcnot l2 l3 d6)
  (rcnot l4 l3 d8)
  (rcnot l2 l4 d9)
  (rcnot l3 l2 d10)
  (rcnot l2 l3 d11)
  (rcnot l3 l4 d12)
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
 (not (rcnot l0 l2 d1))
 (not (rcnot l1 l3 d1))
 (not (rcnot l3 l2 d3))
 (not (rcnot l4 l3 d4))
 (not (rcnot l2 l4 d5))
 (not (rcnot l2 l3 d6))
 (not (rcnot l4 l3 d8))
 (not (rcnot l2 l4 d9))
 (not (rcnot l3 l2 d10))
 (not (rcnot l2 l3 d11))
 (not (rcnot l3 l4 d12))
  )
)
)
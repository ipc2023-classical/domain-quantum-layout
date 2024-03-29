(define (problem test)
  (:domain Quantum)
  (:objects
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
)
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
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
  ;; listing required cnots
  (rcnot l1_l3_i2)
  (rcnot l0_l3_i5)
  (rcnot l4_l0_i8)
  (rcnot l3_l4_i10)
  (rcnot l3_l0_i11)
  (rcnot l4_l0_i15)
  (rcnot l3_l4_i16)
  (rcnot l0_l3_i17)
  (rcnot l2_l3_i19)
  (rcnot l4_l2_i23)
  (rcnot l3_l4_i25)
  (rcnot l3_l2_i26)
  (rcnot l4_l2_i30)
  (rcnot l3_l4_i31)
  (rcnot l2_l3_i32)
  (rcnot l3_l4_i34)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l1_l3_i2))
 (not (rcnot l0_l3_i5))
 (not (rcnot l4_l0_i8))
 (not (rcnot l3_l4_i10))
 (not (rcnot l3_l0_i11))
 (not (rcnot l4_l0_i15))
 (not (rcnot l3_l4_i16))
 (not (rcnot l0_l3_i17))
 (not (rcnot l2_l3_i19))
 (not (rcnot l4_l2_i23))
 (not (rcnot l3_l4_i25))
 (not (rcnot l3_l2_i26))
 (not (rcnot l4_l2_i30))
 (not (rcnot l3_l4_i31))
 (not (rcnot l2_l3_i32))
 (not (rcnot l3_l4_i34))
  )
)
)
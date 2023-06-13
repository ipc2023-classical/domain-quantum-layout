(define (problem test)
  (:domain Quantum)
  (:objects
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 - pqubit
)
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
 ;; connectivity graph
  (connected p0 p1)
  (connected p0 p5)
  (connected p1 p0)
  (connected p1 p2)
  (connected p1 p6)
  (connected p1 p7)
  (connected p2 p1)
  (connected p2 p6)
  (connected p3 p8)
  (connected p4 p8)
  (connected p4 p9)
  (connected p5 p0)
  (connected p5 p6)
  (connected p5 p10)
  (connected p5 p11)
  (connected p6 p1)
  (connected p6 p2)
  (connected p6 p5)
  (connected p6 p7)
  (connected p6 p10)
  (connected p6 p11)
  (connected p7 p1)
  (connected p7 p6)
  (connected p7 p8)
  (connected p7 p12)
  (connected p8 p3)
  (connected p8 p4)
  (connected p8 p7)
  (connected p8 p9)
  (connected p8 p12)
  (connected p8 p13)
  (connected p9 p4)
  (connected p9 p8)
  (connected p10 p5)
  (connected p10 p6)
  (connected p10 p11)
  (connected p10 p15)
  (connected p11 p5)
  (connected p11 p6)
  (connected p11 p10)
  (connected p11 p12)
  (connected p11 p16)
  (connected p11 p17)
  (connected p12 p7)
  (connected p12 p8)
  (connected p12 p11)
  (connected p12 p13)
  (connected p12 p16)
  (connected p13 p8)
  (connected p13 p12)
  (connected p13 p14)
  (connected p13 p18)
  (connected p13 p19)
  (connected p14 p13)
  (connected p14 p18)
  (connected p14 p19)
  (connected p15 p10)
  (connected p15 p16)
  (connected p16 p11)
  (connected p16 p12)
  (connected p16 p15)
  (connected p16 p17)
  (connected p17 p11)
  (connected p17 p16)
  (connected p17 p18)
  (connected p18 p13)
  (connected p18 p14)
  (connected p18 p17)
  (connected p19 p13)
  (connected p19 p14)
  ;; listing required cnots
  (rcnot l0_l2_i0)
  (rcnot l1_l3_i2)
  (rcnot l3_l2_i4)
  (rcnot l4_l3_i8)
  (rcnot l2_l4_i9)
  (rcnot l2_l3_i11)
  (rcnot l4_l3_i15)
  (rcnot l2_l4_i16)
  (rcnot l3_l2_i17)
  (rcnot l2_l3_i18)
  (rcnot l3_l4_i20)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l0_l2_i0))
 (not (rcnot l1_l3_i2))
 (not (rcnot l3_l2_i4))
 (not (rcnot l4_l3_i8))
 (not (rcnot l2_l4_i9))
 (not (rcnot l2_l3_i11))
 (not (rcnot l4_l3_i15))
 (not (rcnot l2_l4_i16))
 (not (rcnot l3_l2_i17))
 (not (rcnot l2_l3_i18))
 (not (rcnot l3_l4_i20))
  )
)
)
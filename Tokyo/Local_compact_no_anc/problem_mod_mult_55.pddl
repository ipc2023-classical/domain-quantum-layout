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
  ;; listing required cnots
  (rcnot l0_l7_i2)
  (rcnot l2_l7_i4)
  (rcnot l0_l7_i6)
  (rcnot l2_l7_i8)
  (rcnot l2_l0_i9)
  (rcnot l2_l0_i12)
  (rcnot l7_l6_i15)
  (rcnot l1_l6_i17)
  (rcnot l7_l6_i19)
  (rcnot l1_l6_i21)
  (rcnot l1_l7_i22)
  (rcnot l6_l5_i25)
  (rcnot l6_l3_i26)
  (rcnot l1_l7_i30)
  (rcnot l2_l8_i33)
  (rcnot l0_l8_i35)
  (rcnot l2_l8_i37)
  (rcnot l0_l8_i39)
  (rcnot l8_l7_i42)
  (rcnot l7_l3_i43)
  (rcnot l8_l6_i45)
  (rcnot l1_l6_i47)
  (rcnot l8_l6_i49)
  (rcnot l1_l6_i51)
  (rcnot l1_l8_i52)
  (rcnot l6_l4_i55)
  (rcnot l1_l8_i57)
  (rcnot l1_l3_i58)
  (rcnot l7_l3_i60)
  (rcnot l1_l3_i62)
  (rcnot l5_l8_i66)
  (rcnot l1_l5_i68)
  (rcnot l7_l5_i70)
  (rcnot l1_l5_i72)
  (rcnot l7_l5_i74)
  (rcnot l2_l8_i79)
  (rcnot l0_l8_i81)
  (rcnot l2_l8_i83)
  (rcnot l0_l8_i86)
  (rcnot l5_l8_i90)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l0_l7_i2))
 (not (rcnot l2_l7_i4))
 (not (rcnot l0_l7_i6))
 (not (rcnot l2_l7_i8))
 (not (rcnot l2_l0_i9))
 (not (rcnot l2_l0_i12))
 (not (rcnot l7_l6_i15))
 (not (rcnot l1_l6_i17))
 (not (rcnot l7_l6_i19))
 (not (rcnot l1_l6_i21))
 (not (rcnot l1_l7_i22))
 (not (rcnot l6_l5_i25))
 (not (rcnot l6_l3_i26))
 (not (rcnot l1_l7_i30))
 (not (rcnot l2_l8_i33))
 (not (rcnot l0_l8_i35))
 (not (rcnot l2_l8_i37))
 (not (rcnot l0_l8_i39))
 (not (rcnot l8_l7_i42))
 (not (rcnot l7_l3_i43))
 (not (rcnot l8_l6_i45))
 (not (rcnot l1_l6_i47))
 (not (rcnot l8_l6_i49))
 (not (rcnot l1_l6_i51))
 (not (rcnot l1_l8_i52))
 (not (rcnot l6_l4_i55))
 (not (rcnot l1_l8_i57))
 (not (rcnot l1_l3_i58))
 (not (rcnot l7_l3_i60))
 (not (rcnot l1_l3_i62))
 (not (rcnot l5_l8_i66))
 (not (rcnot l1_l5_i68))
 (not (rcnot l7_l5_i70))
 (not (rcnot l1_l5_i72))
 (not (rcnot l7_l5_i74))
 (not (rcnot l2_l8_i79))
 (not (rcnot l0_l8_i81))
 (not (rcnot l2_l8_i83))
 (not (rcnot l0_l8_i86))
 (not (rcnot l5_l8_i90))
  )
)
)
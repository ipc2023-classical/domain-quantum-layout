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
  (rcnot l2_l3_i1)
  (rcnot l1_l3_i3)
  (rcnot l2_l3_i4)
  (rcnot l1_l3_i6)
  (rcnot l1_l2_i7)
  (rcnot l2_l3_i8)
  (rcnot l0_l3_i9)
  (rcnot l2_l3_i11)
  (rcnot l0_l3_i13)
  (rcnot l5_l6_i17)
  (rcnot l4_l6_i19)
  (rcnot l5_l6_i20)
  (rcnot l4_l6_i22)
  (rcnot l4_l5_i23)
  (rcnot l5_l6_i24)
  (rcnot l3_l6_i25)
  (rcnot l5_l6_i27)
  (rcnot l3_l6_i29)
  (rcnot l8_l9_i36)
  (rcnot l7_l9_i38)
  (rcnot l8_l9_i39)
  (rcnot l7_l9_i41)
  (rcnot l7_l8_i42)
  (rcnot l8_l9_i43)
  (rcnot l6_l9_i44)
  (rcnot l8_l9_i46)
  (rcnot l6_l9_i48)
  (rcnot l6_l8_i49)
  (rcnot l5_l6_i52)
  (rcnot l3_l6_i53)
  (rcnot l5_l6_i55)
  (rcnot l4_l5_i56)
  (rcnot l3_l6_i58)
  (rcnot l5_l6_i59)
  (rcnot l4_l6_i61)
  (rcnot l5_l6_i62)
  (rcnot l3_l5_i63)
  (rcnot l2_l3_i66)
  (rcnot l0_l3_i67)
  (rcnot l2_l3_i69)
  (rcnot l1_l2_i70)
  (rcnot l0_l3_i72)
  (rcnot l2_l3_i73)
  (rcnot l1_l3_i75)
  (rcnot l2_l3_i76)
  (rcnot l0_l2_i77)
  (rcnot l1_l3_i79)
  (rcnot l1_l2_i80)
  (rcnot l4_l6_i83)
  (rcnot l4_l5_i84)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l2_l3_i1))
 (not (rcnot l1_l3_i3))
 (not (rcnot l2_l3_i4))
 (not (rcnot l1_l3_i6))
 (not (rcnot l1_l2_i7))
 (not (rcnot l2_l3_i8))
 (not (rcnot l0_l3_i9))
 (not (rcnot l2_l3_i11))
 (not (rcnot l0_l3_i13))
 (not (rcnot l5_l6_i17))
 (not (rcnot l4_l6_i19))
 (not (rcnot l5_l6_i20))
 (not (rcnot l4_l6_i22))
 (not (rcnot l4_l5_i23))
 (not (rcnot l5_l6_i24))
 (not (rcnot l3_l6_i25))
 (not (rcnot l5_l6_i27))
 (not (rcnot l3_l6_i29))
 (not (rcnot l8_l9_i36))
 (not (rcnot l7_l9_i38))
 (not (rcnot l8_l9_i39))
 (not (rcnot l7_l9_i41))
 (not (rcnot l7_l8_i42))
 (not (rcnot l8_l9_i43))
 (not (rcnot l6_l9_i44))
 (not (rcnot l8_l9_i46))
 (not (rcnot l6_l9_i48))
 (not (rcnot l6_l8_i49))
 (not (rcnot l5_l6_i52))
 (not (rcnot l3_l6_i53))
 (not (rcnot l5_l6_i55))
 (not (rcnot l4_l5_i56))
 (not (rcnot l3_l6_i58))
 (not (rcnot l5_l6_i59))
 (not (rcnot l4_l6_i61))
 (not (rcnot l5_l6_i62))
 (not (rcnot l3_l5_i63))
 (not (rcnot l2_l3_i66))
 (not (rcnot l0_l3_i67))
 (not (rcnot l2_l3_i69))
 (not (rcnot l1_l2_i70))
 (not (rcnot l0_l3_i72))
 (not (rcnot l2_l3_i73))
 (not (rcnot l1_l3_i75))
 (not (rcnot l2_l3_i76))
 (not (rcnot l0_l2_i77))
 (not (rcnot l1_l3_i79))
 (not (rcnot l1_l2_i80))
 (not (rcnot l4_l6_i83))
 (not (rcnot l4_l5_i84))
  )
)
)
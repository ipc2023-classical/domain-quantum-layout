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
  (rcnot l5_l6_i3)
  (rcnot l3_l6_i5)
  (rcnot l5_l6_i7)
  (rcnot l3_l5_i8)
  (rcnot l3_l5_i10)
  (rcnot l4_l5_i12)
  (rcnot l2_l5_i14)
  (rcnot l4_l5_i16)
  (rcnot l2_l4_i17)
  (rcnot l2_l4_i19)
  (rcnot l1_l4_i21)
  (rcnot l0_l4_i23)
  (rcnot l1_l4_i25)
  (rcnot l0_l4_i27)
  (rcnot l4_l5_i30)
  (rcnot l2_l5_i32)
  (rcnot l4_l5_i34)
  (rcnot l5_l6_i36)
  (rcnot l3_l6_i38)
  (rcnot l5_l6_i40)
  (rcnot l3_l5_i41)
  (rcnot l3_l5_i43)
  (rcnot l4_l5_i46)
  (rcnot l2_l5_i48)
  (rcnot l4_l5_i50)
  (rcnot l1_l4_i52)
  (rcnot l0_l4_i54)
  (rcnot l1_l4_i56)
  (rcnot l0_l4_i58)
  (rcnot l4_l5_i61)
  (rcnot l2_l5_i63)
  (rcnot l4_l5_i65)
  (rcnot l2_l4_i66)
  (rcnot l2_l4_i68)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l5_l6_i3))
 (not (rcnot l3_l6_i5))
 (not (rcnot l5_l6_i7))
 (not (rcnot l3_l5_i8))
 (not (rcnot l3_l5_i10))
 (not (rcnot l4_l5_i12))
 (not (rcnot l2_l5_i14))
 (not (rcnot l4_l5_i16))
 (not (rcnot l2_l4_i17))
 (not (rcnot l2_l4_i19))
 (not (rcnot l1_l4_i21))
 (not (rcnot l0_l4_i23))
 (not (rcnot l1_l4_i25))
 (not (rcnot l0_l4_i27))
 (not (rcnot l4_l5_i30))
 (not (rcnot l2_l5_i32))
 (not (rcnot l4_l5_i34))
 (not (rcnot l5_l6_i36))
 (not (rcnot l3_l6_i38))
 (not (rcnot l5_l6_i40))
 (not (rcnot l3_l5_i41))
 (not (rcnot l3_l5_i43))
 (not (rcnot l4_l5_i46))
 (not (rcnot l2_l5_i48))
 (not (rcnot l4_l5_i50))
 (not (rcnot l1_l4_i52))
 (not (rcnot l0_l4_i54))
 (not (rcnot l1_l4_i56))
 (not (rcnot l0_l4_i58))
 (not (rcnot l4_l5_i61))
 (not (rcnot l2_l5_i63))
 (not (rcnot l4_l5_i65))
 (not (rcnot l2_l4_i66))
 (not (rcnot l2_l4_i68))
  )
)
)
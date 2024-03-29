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
  (rcnot l4_l3_i0)
  (rcnot l4_l2_i1)
  (rcnot l1_l2_i3)
  (rcnot l0_l2_i5)
  (rcnot l1_l2_i7)
  (rcnot l0_l2_i9)
  (rcnot l6_l5_i12)
  (rcnot l6_l4_i13)
  (rcnot l3_l4_i15)
  (rcnot l2_l4_i17)
  (rcnot l3_l4_i19)
  (rcnot l2_l4_i21)
  (rcnot l2_l3_i22)
  (rcnot l8_l7_i25)
  (rcnot l8_l6_i26)
  (rcnot l5_l6_i28)
  (rcnot l4_l6_i30)
  (rcnot l5_l6_i32)
  (rcnot l4_l6_i34)
  (rcnot l4_l5_i35)
  (rcnot l10_l9_i38)
  (rcnot l10_l8_i39)
  (rcnot l7_l8_i41)
  (rcnot l6_l8_i43)
  (rcnot l7_l8_i45)
  (rcnot l6_l8_i47)
  (rcnot l6_l7_i48)
  (rcnot l12_l11_i51)
  (rcnot l12_l10_i53)
  (rcnot l9_l10_i55)
  (rcnot l8_l10_i57)
  (rcnot l9_l10_i59)
  (rcnot l8_l10_i61)
  (rcnot l8_l9_i65)
  (rcnot l12_l13_i66)
  (rcnot l11_l13_i68)
  (rcnot l10_l13_i70)
  (rcnot l11_l13_i72)
  (rcnot l10_l13_i74)
  (rcnot l10_l11_i75)
  (rcnot l8_l10_i80)
  (rcnot l9_l10_i82)
  (rcnot l8_l10_i84)
  (rcnot l6_l8_i87)
  (rcnot l7_l8_i89)
  (rcnot l6_l8_i91)
  (rcnot l4_l6_i93)
  (rcnot l5_l6_i95)
  (rcnot l4_l6_i97)
  (rcnot l2_l4_i99)
  (rcnot l3_l4_i101)
  (rcnot l2_l4_i103)
  (rcnot l1_l2_i105)
  (rcnot l0_l2_i107)
  (rcnot l1_l2_i109)
  (rcnot l0_l2_i111)
  (rcnot l1_l0_i112)
  (rcnot l3_l4_i116)
  (rcnot l5_l6_i120)
  (rcnot l7_l8_i124)
  (rcnot l9_l10_i127)
  (rcnot l12_l10_i130)
  (rcnot l10_l8_i131)
  (rcnot l10_l9_i132)
  (rcnot l12_l11_i133)
  (rcnot l8_l6_i134)
  (rcnot l6_l4_i135)
  (rcnot l4_l2_i136)
  (rcnot l4_l3_i137)
  (rcnot l6_l5_i138)
  (rcnot l8_l7_i139)
)
(:goal
  (and
 ;; initial mapping
  ;; listing negated required cnots
 (not (rcnot l4_l3_i0))
 (not (rcnot l4_l2_i1))
 (not (rcnot l1_l2_i3))
 (not (rcnot l0_l2_i5))
 (not (rcnot l1_l2_i7))
 (not (rcnot l0_l2_i9))
 (not (rcnot l6_l5_i12))
 (not (rcnot l6_l4_i13))
 (not (rcnot l3_l4_i15))
 (not (rcnot l2_l4_i17))
 (not (rcnot l3_l4_i19))
 (not (rcnot l2_l4_i21))
 (not (rcnot l2_l3_i22))
 (not (rcnot l8_l7_i25))
 (not (rcnot l8_l6_i26))
 (not (rcnot l5_l6_i28))
 (not (rcnot l4_l6_i30))
 (not (rcnot l5_l6_i32))
 (not (rcnot l4_l6_i34))
 (not (rcnot l4_l5_i35))
 (not (rcnot l10_l9_i38))
 (not (rcnot l10_l8_i39))
 (not (rcnot l7_l8_i41))
 (not (rcnot l6_l8_i43))
 (not (rcnot l7_l8_i45))
 (not (rcnot l6_l8_i47))
 (not (rcnot l6_l7_i48))
 (not (rcnot l12_l11_i51))
 (not (rcnot l12_l10_i53))
 (not (rcnot l9_l10_i55))
 (not (rcnot l8_l10_i57))
 (not (rcnot l9_l10_i59))
 (not (rcnot l8_l10_i61))
 (not (rcnot l8_l9_i65))
 (not (rcnot l12_l13_i66))
 (not (rcnot l11_l13_i68))
 (not (rcnot l10_l13_i70))
 (not (rcnot l11_l13_i72))
 (not (rcnot l10_l13_i74))
 (not (rcnot l10_l11_i75))
 (not (rcnot l8_l10_i80))
 (not (rcnot l9_l10_i82))
 (not (rcnot l8_l10_i84))
 (not (rcnot l6_l8_i87))
 (not (rcnot l7_l8_i89))
 (not (rcnot l6_l8_i91))
 (not (rcnot l4_l6_i93))
 (not (rcnot l5_l6_i95))
 (not (rcnot l4_l6_i97))
 (not (rcnot l2_l4_i99))
 (not (rcnot l3_l4_i101))
 (not (rcnot l2_l4_i103))
 (not (rcnot l1_l2_i105))
 (not (rcnot l0_l2_i107))
 (not (rcnot l1_l2_i109))
 (not (rcnot l0_l2_i111))
 (not (rcnot l1_l0_i112))
 (not (rcnot l3_l4_i116))
 (not (rcnot l5_l6_i120))
 (not (rcnot l7_l8_i124))
 (not (rcnot l9_l10_i127))
 (not (rcnot l12_l10_i130))
 (not (rcnot l10_l8_i131))
 (not (rcnot l10_l9_i132))
 (not (rcnot l12_l11_i133))
 (not (rcnot l8_l6_i134))
 (not (rcnot l6_l4_i135))
 (not (rcnot l4_l2_i136))
 (not (rcnot l4_l3_i137))
 (not (rcnot l6_l5_i138))
 (not (rcnot l8_l7_i139))
  )
)
)
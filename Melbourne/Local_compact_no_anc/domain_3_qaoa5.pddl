(define (domain Quantum)
(:requirements :strips :typing :negative-preconditions)
(:types pqubit lqubit gateid - object
)
(:constants l0_l1_i2 l0_l1_i4 l1_l2_i7 l1_l2_i9 l2_l3_i12 l2_l3_i14 l3_l4_i17 l3_l4_i19  - gateid
  ;; logical qubits
  l0 l1 l2 l3 l4 - lqubit)
(:predicates    (occupied_pqubit ?p - pqubit)
		(mapped ?l - lqubit ?p - pqubit)
		(connected ?p1 - pqubit ?p2 - pqubit)
		;; required cnot(control_gate,target_gate) at some depth
		(rcnot ?g - gateid)
)
(:action swap
:parameters (?l1 - lqubit ?l2 - lqubit ?p1 - pqubit ?p2 - pqubit)
:precondition (and  (mapped ?l1 ?p1) (mapped ?l2 ?p2) (connected ?p1 ?p2))
:effect       (and (not (mapped ?l1 ?p1)) (not (mapped ?l2 ?p2)) (mapped ?l1 ?p2) (mapped ?l2 ?p1))
)
(:action apply_cnot_l0_l1_i2
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and  (not (occupied_pqubit ?p1)) (not (occupied_pqubit ?p2)) (rcnot l0_l1_i2) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i2)) (mapped l0 ?p1) (occupied_pqubit ?p1) (mapped l1 ?p2) (occupied_pqubit ?p2))
)
(:action apply_cnot_l0_l1_i4
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l1_i2)) (mapped l0 ?p1) (not (rcnot l0_l1_i2)) (mapped l1 ?p2) (rcnot l0_l1_i4) (connected ?p1 ?p2))
:effect (and (not (rcnot l0_l1_i4)))
)
(:action apply_cnot_l1_l2_i7
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l0_l1_i4)) (mapped l1 ?p1) (not (occupied_pqubit ?p2)) (rcnot l1_l2_i7) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i7)) (mapped l2 ?p2) (occupied_pqubit ?p2))
)
(:action apply_cnot_l1_l2_i9
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i7)) (mapped l1 ?p1) (not (rcnot l1_l2_i7)) (mapped l2 ?p2) (rcnot l1_l2_i9) (connected ?p1 ?p2))
:effect (and (not (rcnot l1_l2_i9)))
)
(:action apply_cnot_l2_l3_i12
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l1_l2_i9)) (mapped l2 ?p1) (not (occupied_pqubit ?p2)) (rcnot l2_l3_i12) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i12)) (mapped l3 ?p2) (occupied_pqubit ?p2))
)
(:action apply_cnot_l2_l3_i14
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i12)) (mapped l2 ?p1) (not (rcnot l2_l3_i12)) (mapped l3 ?p2) (rcnot l2_l3_i14) (connected ?p1 ?p2))
:effect (and (not (rcnot l2_l3_i14)))
)
(:action apply_cnot_l3_l4_i17
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l2_l3_i14)) (mapped l3 ?p1) (not (occupied_pqubit ?p2)) (rcnot l3_l4_i17) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i17)) (mapped l4 ?p2) (occupied_pqubit ?p2))
)
(:action apply_cnot_l3_l4_i19
:parameters (?p1 - pqubit ?p2 - pqubit)
:precondition (and (not (rcnot l3_l4_i17)) (mapped l3 ?p1) (not (rcnot l3_l4_i17)) (mapped l4 ?p2) (rcnot l3_l4_i19) (connected ?p1 ?p2))
:effect (and (not (rcnot l3_l4_i19)))
)
)

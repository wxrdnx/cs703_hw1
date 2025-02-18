(set-logic QF_LRA)

(declare-const a_l Real)
(declare-const a_r Real)
(declare-const b_l Real)
(declare-const b_r Real)
(declare-const c_l Real)
(declare-const c_r Real)
(declare-const d_l Real)
(declare-const d_r Real)

(assert (< 0 a_l))
(assert (< a_l a_r))
(assert (< a_r 1))

(assert (< 0 b_l))
(assert (< b_l b_r))
(assert (< b_r 1))

(assert (< 0 c_l))
(assert (< c_l c_r))
(assert (< c_r 1))

(assert (< 0 d_l))
(assert (< d_l d_r))
(assert (< d_r 1))

(assert (and (< a_l b_r) (< b_l a_r)))
(assert (not (and (< a_l c_r) (< c_l a_r))))
(assert (and (< a_l d_r) (< d_l a_r)))
(assert (and (< b_l c_r) (< c_l b_r)))
(assert (not (and (< b_l d_r) (< d_l b_r))))
(assert (and (< c_l d_r) (< d_l c_r)))

(check-sat)

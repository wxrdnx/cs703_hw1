(set-logic ALL)

; Lines beginning with semicolons are comments.
; Fix colors 0, 1, 2
; The following line declares a propositional atom
; representing whether node 0 has the color 0

(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)

(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)

(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)

(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)

(declare-const p40 Bool)
(declare-const p41 Bool)
(declare-const p42 Bool)

; More nodes and colors. Copy-paste is your friend.
; Write constraints below representing
; what a three-coloring of the given graph is
; in terms of the above propositions

; All nodes should have exactly one color
(assert (or (and p00 (not p01) (not p02)) (and (not p00) p01 (not p02)) (and (not p00) (not p01) p02)))
(assert (or (and p10 (not p11) (not p12)) (and (not p10) p11 (not p12)) (and (not p10) (not p11) p12)))
(assert (or (and p20 (not p21) (not p22)) (and (not p20) p21 (not p22)) (and (not p20) (not p21) p22)))
(assert (or (and p30 (not p31) (not p32)) (and (not p30) p31 (not p32)) (and (not p30) (not p31) p32)))
(assert (or (and p40 (not p41) (not p42)) (and (not p40) p41 (not p42)) (and (not p40) (not p41) p42)))

; Adjacent nodes should not share color

(assert (and (not (and p00 p10)) (not (and p01 p11)) (not (and p02 p12))))
(assert (and (not (and p00 p20)) (not (and p01 p21)) (not (and p02 p22))))
(assert (and (not (and p10 p20)) (not (and p11 p21)) (not (and p12 p22))))
(assert (and (not (and p10 p30)) (not (and p11 p31)) (not (and p12 p32))))
(assert (and (not (and p10 p40)) (not (and p11 p41)) (not (and p12 p42))))
(assert (and (not (and p20 p30)) (not (and p21 p31)) (not (and p22 p32))))
(assert (and (not (and p20 p40)) (not (and p21 p41)) (not (and p22 p42))))

(check-sat)

(get-model)

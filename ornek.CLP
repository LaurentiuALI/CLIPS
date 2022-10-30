(deffacts families
	(father tom john)
	(mother susan john)
	(father george tom)
)

(defrule parent-rule
	(or (father ?x ?y) (mother ?x ?y))
=>
	(assert (parent ?x ?y)))

(defrule grandparent-rule
	(and (parent ?x ?y) (parent ?y ?z))
=>
	(assert (grandparent ?x ?z)))

(defrule grandfather-rule
	(and (father ?x ?y) (parent ?y ?z))
=>
	(assert (grandfather ?x ?z)))

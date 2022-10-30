(defrule is-it-a-duck
	(animal-has webbed-feet)
	(animal-has feather)
	=>
	(assert (animal-is duck))
)

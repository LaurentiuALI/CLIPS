(deftemplate student "a student record"
	(slot name (type STRING))
	(slot age (type NUMBER) (default 18))
)

(deffacts students
	(student (name John) (age 20))
	(student (name Steve) (age 19)))
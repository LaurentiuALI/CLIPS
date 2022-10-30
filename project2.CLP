(deftemplate square
	(slot id) 
	(slot side-length)
)
(deftemplate rectangle
	(slot id)
	(slot width)
	(slot height)
)
(deftemplate circle
	(slot id)
	(slot radius)
)

(deffacts test-8-8
	(square (id A) (side-length 3))
	(square (id B) (side-length 5))
	(rectangle (id C) (width 5) (height 7))
	(circle (id D) (radius 2))
	(circle (id E) (radius 6)))

(defrule computeAreaSquare
	(square (id ?id) (side-length ?side-length))
=> 
	(printout t "area of square with id " ?id " is "  (* ?side-length ?side-length) crlf)
)

(defrule computeAreaRectangle
	(rectangle (id ?id) (width ?width) (height ?height))
=> 
	(printout t "Area of rectangle with id " ?id " is " (* ?width ?height) crlf)
)

(defrule computeAreaCircle
	(circle (id ?id) (radius ?radius))
=> 
	(printout t "Area of circle with id " ?id " is " (* 3.1415 ?radius ?radius ) crlf)
)

(defrule computePerimeterSquare
	(square (id ?id) (side-length ?side-length))
=>
	(printout t "perimeter of square with id " ?id " is " (* 4 ?side-length) crlf)
)

(defrule computePerimeterRectangle
	(rectangle (id ?id) (width ?width) (height ?height))
=>
	(printout t "perimeter of rectangle with id " ?id " is " (+ ?width ?width ?height ?height) crlf)
)
(defrule computePerimeterCircle
	(circle(id ?id) (radius ?radius))
=>
	(printout t "perimeter of circle with id " ?id " is " (* 2 3.1415 ?radius) crlf)
)


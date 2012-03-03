(defun cl(l1 m)
	(cond
		((null l1) NIL)
		((eq (first l1) m) t)
		(t (if (cl (rest l1) m) (print "g") (append (list m) l1)))
	)
)

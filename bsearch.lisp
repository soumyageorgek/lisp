(defun b_search(l m low high)
  (setf mid (floor (/ (+ low high) 2)))
  (print "mid is")
  (cond
    ((> low high) (print "not found"))
    ((> (nth mid l) m) (b_search l m low (- mid 1)))
    ((< (nth mid l) m) (b_search l m (+ mid 1) high))
    ((= (nth mid l) m) (print "mid end"))
  )
  
)

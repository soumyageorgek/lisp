(defun is(l1 l2)
  (cond
    ((> (length l1) 1) (append (is (list (first l1)) l2) (is (rest l1) l2))) 
    ((> (length l2) 1) (append (is l1 (list (first l2))) (is l1 (rest l2))))
    ((= (first l1) (first l2)) (list (first l1)))
  )
)

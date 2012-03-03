(defun rotate (l1 m)
  (cond 
    ((null l1) ())
    ((eq m 'nil) (append (last l1) (rotate (rest l1) (first l1))))
    (t (cons m (rotate (rest l1) (first l1))))
  )
)


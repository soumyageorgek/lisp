(defun is_member (e l)
  (cond
   ((null l)          nil)   
   ((eq e (first l))  t)     
   (t                 (is_member e (rest l)))
  )
)
(defun main_fn (e l) 
  (if (is_member e l)
    l
    (cons e l)
  )
)

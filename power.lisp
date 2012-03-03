(defun power(m n)
  (if (= n 0)
    1
    (* m (power m (- n 1)))
  )
)

(defun partition(l down up)
  (setf lower down) 
  (setf el (aref l lower))
  (loop while (<= down up) do
    (cond
      ((>= el (aref l down)) (setf down (+ down 1)))
      ((< el (aref l up)) (setf up (- up 1)))
      (t (rotatef (aref l down) (aref l up))) 
    )
  )
  (setf (aref l lower) (aref l up))
  (setf (aref l up) el)
  (print l)
  up
)

(defun qsort(l begin end)
  (cond ((< begin end)
    (setf j (partition l begin end))
    (qsort l begin (- j 1))
    (qsort l (+ j 1) end)
  ))
  l
)

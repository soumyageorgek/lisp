(defun list-member (E L)
  "Test if E is a member of L."
  (cond
   ((null L)          nil)   
   ((eq E (first L))  t)     
   (t                 (list-member E (rest L))))) 

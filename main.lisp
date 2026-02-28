(defun div (lst num)
  (if (< (length lst) num)
  (list lst)
  (append 
    (list (subseq lst 0 (- num 1)))
    (if (< (length (subseq lst num (length lst))) num)
    (list (subseq lst num (length lst)))
    (div 
      (subseq lst num (length lst)) 
      (- (- (length lst) 1) num))))))

(defun separate-by-year (lst)
  (div lst 12))

(defun calc-buy-order (lst)
  (prin1 "result: ")
  (terpri)
  (prin1
    (separate-by-year lst))
)

(defun main () 
  (prin1 (String "Supply chain calculator"))
  (terpri)
  (prin1 (string "Enter a sales list from a product in three years: "))
  (finish-output)
  (calc-buy-order (read))
  )
(main)
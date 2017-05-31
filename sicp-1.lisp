
;; SICP Chapter 1 - Exercises

* 1.1
10
12
8
3
6
a
b
19
#f
4
16
6
16

* 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))
(/ (- 15 (/ 1 5)) -60)

* 1.3
(defun my-sum (a b c) 
(cond ((and (<= a b) (<= a c)) (+ (* b b) (* c c)))
      ((and (<= b a) (<= b c)) (+ (* a a) (* c c)))
      (t (+ (* b b) (* a a)))))

* 1.4
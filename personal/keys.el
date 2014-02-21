;; proper ctrl arrow keys for paredit and such
;(define-key input-decode-map "\e[1;5A" [C-up])
;(define-key input-decode-map "\e[1;5B" [C-down])
;(define-key input-decode-map "\e[1;5C" [C-right])
;(define-key input-decode-map "\e[1;5D" [C-left])

;; addicted to the => macro in textmate
(global-set-key (kbd "<f5>") 'recenter)

(fset 'eqgt
      " => ")
(global-set-key (kbd "C-l") 'eqgt)

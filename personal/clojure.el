;; Clojure related stuff
;;

;; Let's try smartparens
(prelude-require-package 'smartparens)

(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))

;; Cider
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq cider-repl-pop-to-buffer-on-connect t)
(setq cider-popup-stacktraces t)
(setq cider-repl-popup-stacktraces t)
(setq cider-auto-select-error-buffer t)
(setq nrepl-hide-special-buffers t)
(setq cider-repl-result-prefix ";; => ")
(setq cider-interactive-eval-result-prefix ";; => ")
(setq cider-repl-wrap-history t)
(setq cider-repl-history-file "~/.emacs.d/cider-history")
(add-hook 'cider-repl-mode-hook 'subword-mode) ; CamelCase support
;; (add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;; general prelude customisations

;; additional packages
(prelude-require-packages '(ag haml-mode js3-mode mustache-mode cyberpunk-theme))

;; aspell lives here
(setq-default ispell-program-name "/usr/local/bin/aspell")

;; no flyspell
(setq prelude-flyspell nil)

;; just warn for guru
(setq guru-warn-only t)

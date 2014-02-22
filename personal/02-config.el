;; General emacs setup

; determine our emacs version
;; true if we're under XEmacs (www.xemacs.org)
(setq version-xemacs    (string-match "XEmacs\\|Lucid" emacs-version))

;; true if we're under regular emacs
(setq version-emacs     (not version-xemacs))

;; true if we're running under anything other than a text terminal
(setq version-not-term  (not (not window-system)))

;; true under regular emacs and X windows
(setq version-emacs-x   (and (not version-xemacs) (equal window-system 'x)))

;; Me
(setq user-mail-address (concat "james@" "totaltechshop" ".com"))
(setq user-full-name "James Peterson")
(setq calendar-location-name "Whitefish, MT")
(setq calendar-latitude 48.41)
(setq calendar-longitude -114.34)
(setq initial-frame-alist '((width . 145) (height . 43)))

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

;; fancy streching cursor
(setq x-stretch-cursor t)

;; use CUA for rectangle selection only
(cua-selection-mode t)

;; Flyspell often slows down editing so it's turned off
(remove-hook 'text-mode-hook 'turn-on-flyspell)

;; hippie expand - don't try to complete with file names
(setq hippie-expand-try-functions-list (delete 'try-complete-file-name hippie-expand-try-functions-list))
(setq hippie-expand-try-functions-list (delete 'try-complete-file-name-partially hippie-expand-try-functions-list))

;; appearance
(when window-system
  (scroll-bar-mode -1)
  (setq set-fringe-style 'left-only)
  (tooltip-mode -1)
  (setq tooltip-use-echo-area t)
  (menu-bar-mode 1)

  ;; Improve scolling a bit
  (require 'smooth-scrolling)
  (setq scroll-preserve-screen-position t)
  (setq default-input-method "MacOSX")

  ;; Make mouse wheel / trackpad scrolling less jerky
  (setq mouse-wheel-scroll-amount '(0.001))
  (setq mouse-wheel-progressive-speed nil)
  (tool-bar-mode -1)

  ;; set initial position
  (setq default-frame-alist '(
                              (height . 42) (width . 140)
                              (top . 25) (left . 4)
                              ))
  (setq initial-frame-alist '((top . 25) (left . 4)))
  )

(blink-cursor-mode t)
(show-paren-mode t)
(setq show-paren-style 'expression)
(column-number-mode t)
(delete-selection-mode t)

;; font
;; (set-frame-font "Menlo-14")
(set-frame-font "Inconsolata-14")

;; theme
;(load-theme 'cyberpunk t)

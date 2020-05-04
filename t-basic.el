;; basic configuration

;; basic
(setq-default
 blink-cursor-delay 0
 blink-cursor-interval 0.4
 case-fold-search t
 column-number-mode t
 compilation-scroll-output t
 indent-tabs-mode nil
 line-spacing 0.2
 show-trailing-whitespace t
 truncate-lines nil
 truncate-partial-width-windows nil)

;; set visual active
(transient-mark-mode t)

;; To enable in all programming-related modes (Emacs 24+):
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

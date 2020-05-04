;; set cursor type to bar
(setq-default cursor-type 'bar)

;; hightlight symbol
(use-package! highlight-symbol
  :config
  (setq highlight-symbol-idle-delay 0.5)
  (global-set-key (kbd "M-0") 'highlight-symbol)
  (highlight-symbol-mode t))

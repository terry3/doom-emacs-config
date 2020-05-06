;;'M-w' copies the current line when the region is not active
;;'C-w' deletes it.
(use-package whole-line-or-region
  :init
  (whole-line-or-region-mode t))

(setq kill-whole-line t)

(map! "C-0" 'er/expand-region)

;; Rectangle selections, and overwrite text when the selection is active
;; for rectangles, CUA is nice
(cua-selection-mode t)

;; set mark
(map! "RET" 'newline)
(map! "C-j" 'cua-set-mark)

;; ace jump
(use-package ace-jump-mode
  :init
  (map! "C-," 'ace-jump-mode))

;; display file path & and
(map! "<f12>" (lambda() (interactive) (message (buffer-file-name))))
;; revert current buffer
;; (map! "<f5>" 'revert-buffer)

;; key bindings
(map! "M-i" 'terry3/insert-next-line)
(map! "M-u" 'terry3/insert-prev-line)
;; comment current line
(map! "M-l" 'terry3/toggle-comment-current-line)

;; revert buffer no confirm
;; (map! "<f5>"
;;       (lambda (&optional force-reverting)
;;         "Interactive call to revert-buffer. Ignoring the auto-save
;;  file and not requesting for confirmation. When the current buffer
;;  is modified, the command refuses to revert it, unless you specify
;;  the optional argument: force-reverting to true."
;;         (interactive "P")
;;         ;;(message "force-reverting value is %s" force-reverting)
;;         (if (or force-reverting (not (buffer-modified-p)))
;;             (progn
;;               (revert-buffer :ignore-auto :noconfirm)
;;               (message "revert file %s" (buffer-file-name)))
;;           (error "The buffer has been modified"))))

(provide 't-edit)
;;; t-edit ends here

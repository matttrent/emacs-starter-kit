;; org-mode
(add-to-list 'load-path (concat dotfiles-dir "/vendor/org-mode" ))

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Functions
(defun timestamp-for-org ()
  "Insert string for the current time formatted like '2011-01-01 Thu 13:54'."
  (interactive)
  (end-of-line)
  (insert (format-time-string "<%Y-%m-%d %a %H:%M>")))

;; Override
(add-hook 'org-mode-hook
          (lambda()
            (local-set-key [(control meta return)] 'org-insert-heading)
            (local-set-key [(control shift left)]  'previous-buffer)
            (local-set-key [(control shift right)] 'next-buffer)
            (local-set-key [(super shift right)]   'ido-switch-buffer)
            (local-set-key [(super shift left)]    'magit-status)
            (local-set-key [(control shift t)]     'timestamp-for-org)
            ))

;; (defun org-mode-reftex-setup ()
;; (load-library "reftex")
;; (and (buffer-file-name)
;;      (file-exists-p (buffer-file-name))
;; (reftex-parse-all))
;; (define-key org-mode-map (kbd "C-c )") 'reftex-citation)
;; )
;; (add-hook 'org-mode-hook 'org-mode-reftex-setup)

(setq org-log-done t)

(provide 'topfunky/org)

(ido-mode t)
(ido-everywhere t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-max-prospects 10)
(defun ido-complete-hook ()
  (define-key ido-completion-map [tab] 'ido-complete))
(add-hook 'ido-setup-hook 'ido-complete-hook)

(provide 'init-ido)
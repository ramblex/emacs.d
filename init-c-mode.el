(require 'google-c-style)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'google-set-c-style)

(defun flymake-mode-if-makefile ()
  (interactive)
  (if (and (file-exists-p "Makefile")
	   (file-contains-p "Makefile" "check-syntax"))
      (flymake-mode)))

(add-hook 'c-mode-hook 'flymake-mode-if-makefile)
(add-hook 'c++-mode-hook 'flymake-mode-if-makefile)

(provide 'init-c-mode)
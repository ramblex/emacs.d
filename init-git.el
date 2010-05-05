(autoload 'magit-status "magit" "A git interface")
(defun magit-tab ()
  (local-set-key [tab] 'magit-toggle-section))
(add-hook 'magit-mode-hook 'magit-tab)

(provide 'init-git)
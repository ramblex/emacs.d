(autoload 'magit-status "magit" "A git interface")
(defun magit-tab ()
  (local-set-key (kbd "C-c TAB") 'magit-toggle-section))
(add-hook 'magit-mode-hook 'magit-tab)

(provide 'init-git)
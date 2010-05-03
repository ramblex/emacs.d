(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets")
(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))


(defun run-hippie-expand ()
  (interactive)
  (if (minibufferp (current-buffer))
      (minibuffer-complete)
    (ignore-errors (hippie-expand nil))))

(global-set-key [tab] 'run-hippie-expand)

;; Hippie expand
(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand
        indent-for-tab-command
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
;       try-complete-lisp-symbol-partially
;       try-complete-lisp-symbol
        ))

;;; Autopair
(require 'autopair)
(autopair-global-mode)
(setq autopair-autowrap t)
(setq autopair-blink nil)

(add-hook 'eshell-mode-hook
          #'(lambda ()
              (push '(?< . ?>)
                    (getf autopair-extra-pairs :code))))

(add-hook 'eshell-mode-hook
         #'(lambda ()
             (modify-syntax-entry ?* "\"")))

(provide 'init-completion)
(add-to-list 'load-path "~/.emacs.d/site-lisp/prolog")
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(setq prolog-system 'swi)
(add-to-list 'auto-mode-alist '("\\.pl$" . prolog-mode))
(setenv "EPROLOG" "/opt/local/bin/swipl")
(setq prolog-program-name "swipl")

(provide 'init-prolog)
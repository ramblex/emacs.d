(when *is-a-mac*
  (setq mac-pass-command-to-system nil)
  (setq ns-alternate-modifier (quote none))
  (setq ns-command-modifier (quote meta))
  (setenv "PATH" (concat (getenv "PATH") 
                       ":/sw/bin:/usr/local/bin:/usr/texbin"
                       ":/Users/alexduller/dmd/osx/bin"))
  (setq exec-path (append exec-path '("/sw/bin" 
				      "/usr/local/bin" 
				      "/opt/local/bin"
				      "/usr/texbin"
				      "/Users/alexduller/dmd/osx/bin")))

  (defun growl-notification (title message &optional sticky)
    "Send a Growl notification"
    (do-applescript
     (format "tell application \"GrowlHelperApp\"
              notify with name \"Emacs Notification\" title \"%s\" description \"%s\" application name \"Emacs.app\" sticky %s
           end tell"
	     title
	     (replace-regexp-in-string "\"" "''" message)
	     (if sticky "yes" "no"))))
)


(when (fboundp 'ns-toggle-fullscreen)
  (global-set-key [f11] 'ns-toggle-fullscreen))

(provide 'init-macbook)
(when *is-a-mac*
  (setq mac-pass-command-to-system nil)
  (setq ns-alternate-modifier (quote none))
  (setq ns-command-modifier (quote meta)))

(when (fboundp 'ns-toggle-fullscreen)
  (global-set-key [f11] 'ns-toggle-fullscreen))

(provide 'init-macbook)
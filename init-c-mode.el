(require 'google-c-style)
(add-hook 'c-mode-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'google-set-c-style)

(provide 'init-c-mode)
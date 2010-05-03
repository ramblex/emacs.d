;; Window size and features
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq default-indicate-empty-lines t)
;(global-hl-line-mode 1)
(setq ring-bell-function (lambda () t))
(setq inhibit-startup-message t)

(setq auto-save-default nil)
(setq make-backup-files nil)

(normal)

(provide 'init-gui-frames)
(defvar *window-system-color-theme* 'color-theme-sanityinc-dark
  "Color theme to use in window-system frames")
(defvar *tty-color-theme* 'color-theme-terminal
  "Color theme to use in TTY frames")

(require 'color-theme-autoloads)

(autoload 'color-theme-zenburn "zenburn" "A low contrast colour theme" t)
(autoload 'color-theme-tango-2 "color-theme-tango-2" "A dark colour theme" t)
(autoload 'color-theme-ir-black "color-theme-ir-black" "A dark colour theme" t)
(autoload 'color-theme-sanityinc-dark "color-theme-sanityinc" "A dark colour theme" t)
(autoload 'color-theme-alex "color-theme-alex" "A dark colour theme" t)
(autoload 'color-theme-zen-and-art "zen-and-art" "A dark colour theme" t)

(color-theme-initialize)

(defun color-theme-terminal ()
  (interactive)
  (color-theme-sanityinc-dark))

(defun apply-best-color-theme-for-frame-type (frame)
  (let ((prev-frame (selected-frame)))
    (select-frame frame)
    (prog1
        (if window-system
	    (funcall *window-system-color-theme*)
          (funcall *tty-color-theme*))
      (select-frame prev-frame))))

(defun reapply-color-themes ()
  (interactive)
  (mapcar 'apply-best-color-theme-for-frame-type (frame-list)))

(defun light ()
  (interactive)
  (setq *window-system-color-theme* 'color-theme-sanityinc-light)
  (reapply-color-themes))

(defun dark ()
  (interactive)
  (setq *window-system-color-theme* 'color-theme-sanityinc-dark)
  (reapply-color-themes))

(set-variable 'color-theme-is-global nil)
(add-hook 'after-make-frame-functions 'apply-best-color-theme-for-frame-type)
(apply-best-color-theme-for-frame-type (selected-frame))

(provide 'init-color-theme)
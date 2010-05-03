(setq *is-a-mac* t)
(setq *is-ubuntu* nil)
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

(require 'cl)

;; Load path
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/.emacs.d/site-lisp/")
           (default-directory my-lisp-dir))
      (progn
        (setq load-path (cons my-lisp-dir load-path))
        (normal-top-level-add-subdirs-to-load-path))))
(setq load-path (cons (expand-file-name "~/.emacs.d") load-path))

;; System-specific stuff
(require 'init-macbook)
(require 'init-ubuntu)

;; Packages that are bundled with this repo
(require 'init-utils)
(require 'init-key-bindings)
(require 'init-ido)
(require 'init-color-theme)
(require 'init-completion)

(require 'init-gui-frames)

;; Packages which need to be initialised using git submodule update --init
(autoload 'magit-status "magit" "A git interface" t)

;; Allow access from emacsclient
(server-start)

;; Variables configure via the interactive 'customize' interface
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;;; color-theme-alex.el
;; -*- mode: elisp -*-
;; Copyright (c) 2008-2009 Will Farrington <wcfarrington@gmail.com>
;; Copyright (c) 2010 Alex Duller <alexduller@gmail.com>
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA
;;

(defun color-theme-alex ()
  "A color theme based on Tango Palette."
  (interactive)
  (color-theme-install
   '(color-theme-alex
     ((background-color . "#121212")
      (background-mode . dark)
      (border-color . "#888a85")
      (foreground-color . "#eeeeec")
      (mouse-color . "#333333"))
     ((help-highlight-face . underline)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-constant-face ((t (:foreground "#6d9cbe"))))
     (font-lock-doc-face ((t (:foreground "#888a85"))))
     (font-lock-function-name-face ((t (:foreground "#729fcf"))))
     (font-lock-keyword-face ((t (:foreground "#949c8b"))))
     (font-lock-string-face ((t (:foreground "YellowGreen"))))
     (font-lock-type-face ((t (:foreground "SteelBlue1"))))
     (font-lock-variable-name-face ((t (:foreground "LightGoldenrod1"))))
     (font-lock-warning-face ((t (:bold t :foreground "#cc0000"))))

     (cursor ((t (:background "firebrick"))))
     (border ((t (:background "#888a85"))))
     (fringe ((t (:background "#111111"))))
     (highlight ((t (:background "#444444"))))
     (mode-line ((t (:foreground "#eeeeec" :background "grey14"
				 :box (:color "grey14" :line-width 3)))))
     (mode-line-inactive ((t (:foreground "grey17" :background "#111111"
				 :box (:color "#111111" :line-width 3)))))
     (region ((t (:background "#555753"))))

     ;; ido-mode
     (ido-subdir ((t (:foreground "#888a85"))))

     (flyspell-duplicate ((t (:foreground "#fcaf3e"))))
     (flyspell-incorrect ((t (:foreground "#cc0000"))))

     (org-date ((t (:foreground "LightSteelBlue" :underline t))))
     (org-hide ((t (:foreground "#2e3436"))))
     (org-todo ((t (:inherit font-lock-keyword-face :bold t))))
     (org-level-1 ((t (:inherit font-lock-function-name-face))))
     (org-level-2 ((t (:inherit font-lock-variable-name-face))))
     (org-level-3 ((t (:inherit font-lock-keyword-face))))
     (org-level-4 ((t (:inherit font-lock-string-face))))
     (org-level-5 ((t (:inherit font-lock-constant-face))))

     (comint-highlight-input ((t (:italic t :bold t))))
     (comint-highlight-prompt ((t (:foreground "#8ae234"))))
     (isearch ((t (:background "#f57900" :foreground "#2e3436"))))
     (isearch-lazy-highlight-face ((t (:foreground "#2e3436" :background "#e9b96e"))))
     (paren-face-match ((t (:inherit show-paren-match-face))))
     (paren-face-match-light ((t (:inherit show-paren-match-face))))
     (paren-face-mismatch ((t (:inherit show-paren-mismatch-face))))
     (persp-selected-face ((t (:foreground "#729fcf"))))
     (show-paren-match-face ((t (:background "#729fcf" :foreground "#eeeeec"))))
     (show-paren-mismatch-face ((t (:background "#ad7fa8" :foreground "#2e3436"))))
     (minibuffer-prompt ((t (:foreground "#729fcf"))))
     (info-xref ((t (:foreground "#729fcf"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))

     ;; Magit
     (magit-item-highlight ((t (:background "gray20"))))
     (magit-diff-add ((t (:foreground "yellowgreen"))))
     (magit-diff-del ((t (:foreground "firebrick3"))))
     )))
(provide 'color-theme-alex)
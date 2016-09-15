;;; monokai-theme.el --- REQUIRES EMACS 24: Monokai Color Theme for Emacs.

;; Copyright (C) 2012 Lorenzo Villani.
;;
;; Author: Lorenzo Villani <lorenzo@villani.me>
;; URL: https://github.com/lvillani/el-monokai-theme
;;
;; Copyright (C) 2014-2016 Étienne Deparis.
;;
;; Author: Étienne Deparis <etienne@depar.is>
;; URL: https://github.com/milouse/el-monokai-theme
;; Version: 0.0.13
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, version 3 of the License.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.

(when (< emacs-major-version 24)
  (error "monokai-theme requires Emacs 24 or later."))

(deftheme monokai
  "Monokai color theme")

(let ((monokai-blue-light "#89BDFF")
      (monokai-gray "#595959")
      (monokai-gray-dark "#272822")
      (monokai-gray-darker "#383830")
      (monokai-gray-darkest "#141411")
      (monokai-gray-lightest "#595959")
      (monokai-gray-light "#E6E6E6")
      (monokai-green "#68F922")
      (monokai-green-light "#A6E22A")
      (monokai-magenta "#F92672")
      (monokai-purple "#AE81FF")
      (monokai-purple-light "#FD5FF1")
      (monokai-yellow "#E6DB74")
      (monokai-yellow-dark "#75715E")
      (monokai-yellow-light "#F8F8F2")
      (monokai-orange "#FD971F"))
  (custom-theme-set-faces
   'monokai
   ;; Frame
   `(default ((t (:foreground ,monokai-yellow-light :background ,monokai-gray-dark))))
   `(cursor ((t (:background ,monokai-yellow-light :foreground ,monokai-magenta :inverse-video t))))
   `(mouse ((t (:background ,monokai-yellow-light :foreground ,monokai-magenta :inverse-video t))))
   `(hl-line ((t (:background ,monokai-gray-darkest))))
   `(highlight ((t (:background ,monokai-gray-darkest))))
   `(minibuffer-prompt ((t (:foreground ,monokai-blue-light))))
   `(modeline ((t (:background ,monokai-gray-lightest :foreground ,monokai-gray-light))))
   `(region ((t (:background ,monokai-gray-darker))))
   `(fringe ((t (:background ,monokai-gray-dark))))
   `(show-paren-match-face ((t (:background ,monokai-gray-lightest))))
   `(scroll-bar ((t (:foreground ,monokai-gray-light :background ,monokai-gray-dark))))
   `(popup-scroll-bar-background-face ((t (:background ,monokai-gray-dark))))
   `(popup-scroll-bar-foreground-face ((t (:foreground ,monokai-gray-light))))
   `(link ((t (:foreground ,monokai-blue-light :underline t))))
   `(link-visited ((t (:foreground ,monokai-blue-light :underline t :slant italic))))
   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,monokai-purple))))
   `(font-lock-comment-face ((t (:foreground ,monokai-yellow-dark))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,monokai-yellow-dark))))
   `(font-lock-constant-face ((t (:foreground ,monokai-green-light))))
   `(font-lock-doc-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-doc-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,monokai-green-light))))
   `(font-lock-keyword-face ((t (:foreground ,monokai-magenta))))
   `(font-lock-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-type-face ((t (:foreground ,monokai-blue-light :slant italic))))
   `(font-lock-variable-name-face ((t (:foreground ,monokai-orange))))
   `(font-lock-warning-face ((t (:foreground ,monokai-purple-light :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,monokai-green-light))))
   ;; CUA
   `(cua-rectangle ((t (:background ,monokai-gray-darkest))))
   ;; IDO
   `(ido-first-match ((t (:foreground ,monokai-purple))))
   `(ido-only-match ((t (:foreground ,monokai-green-light))))
   `(ido-subdir ((t (:foreground ,monokai-blue-light))))
   ;; ECB
   `(ecb-default-highlight-face ((t (:foreground ,monokai-green-light))))
   ;; tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,monokai-magenta))))
   `(tuareg-font-lock-operator-face ((t (:foreground ,monokai-gray-light))))
   ;; helm
   `(helm-source-header ((t (:foreground ,monokai-purple :background ,monokai-gray-darkest :height 1.2))))
   `(helm-visible-mark ((t (nil))))
   `(helm-header ((t (nil))))
   `(helm-candidate-number ((t (:underline t :foreground ,monokai-purple :background nil))))
   `(helm-selection ((t (:foreground ,monokai-green-light :background ,monokai-gray-darker))))
   `(helm-separator ((t (:background ,monokai-gray-darkest))))
   `(helm-action ((t (nil))))
   ;; helm find file
   `(helm-ff-prefix ((t (nil))))
   `(helm-ff-executable ((t (:foreground ,monokai-magenta))))
   `(helm-ff-directory ((t (:foreground ,monokai-blue-light :background nil))))
   `(helm-ff-symlink ((t (:foreground ,monokai-purple-light))))
   `(helm-ff-invalid-symlink ((t (:foreground nil :background ,monokai-yellow))))
   `(helm-ff-file ((t (:inherit default))))
   ;; Jabber
   `(jabber-activity-personal-face ((t (:foreground ,monokai-blue-light :weight bold))))
   `(jabber-chat-prompt-local ((t (:foreground ,monokai-blue-light :weight bold))))
   `(jabber-roster-user-away ((t (:foreground ,monokai-gray-dark :slant italic))))
   `(jabber-roster-user-chatty ((t (:foreground ,monokai-green-light :weight bold))))
   `(jabber-roster-user-online ((t (:foreground ,monokai-blue-light :slant normal))))
   `(jabber-title-large ((t (:inherit variable-pitch
                                      :weight bold :height 2.0
                                      :width ultra-expanded))))
   `(jabber-title-medium ((t (:inherit variable-pitch
                                       :weight bold :height 1.5
                                       :width expanded))))
   ;; Message (used by mu4e too)
   `(message-header-name ((t (:foreground ,monokai-green :weight bold))))
   `(mu4e-header-marks-face ((t (:foreground ,monokai-green :weight bold))))
   `(message-header-to ((t (:foreground ,monokai-orange))))
   `(message-header-cc ((t (:foreground ,monokai-orange))))
   `(message-header-subject ((t (:foreground ,monokai-yellow))))
   `(message-header-newsgroups ((t (:foreground ,monokai-yellow))))
   `(message-header-other ((t (:foreground ,monokai-yellow))))
   `(message-header-xheader ((t (:foreground ,monokai-yellow))))
   `(message-separator ((t (:foreground ,monokai-blue-light))))
   ;; Whitespace
   `(whitespace-space ((t (:foreground ,monokai-gray))))
   `(trailing-whitespace ((t (:foreground ,monokai-purple-light))))
   ;; Yasnippet
   `(yas/field-highlight-face ((t (:background ,monokai-gray-darker))))
   ;; zencoding uses this
   `(tooltip ((t (:background ,monokai-yellow-light :foreground ,monokai-yellow-dark))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  ;; add theme folder to `custom-theme-load-path' when installing over MELPA
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'monokai)

;; test for each frame or console
(defun switch-to-term-color-if-necessary (frame)
  (set-variable 'color-theme-is-global nil)
  (select-frame frame)
  (load-theme 'monokai t)
  (when (not window-system)
    (custom-theme-set-faces 'monokai `(default ((t (:background nil)))))))
;; hook on after-make-frame-functions
(add-hook 'after-make-frame-functions 'switch-to-term-color-if-necessary)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monokai-theme.el ends here

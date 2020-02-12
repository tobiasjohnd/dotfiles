;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Toby Dickenson"
      user-mail-address "tbdickenson@googlemail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "fira code" :size 14))

(setq doom-theme 'doom-dark+)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)

; START TABS CONFIG
;; preferred tab width
(setq custom-tab-width 2)

(defun disable-tabs () (setq indent-tabs-mode nil))
(defun enable-tabs  ()
  (local-set-key (kbd "TAB") 'tab-to-tab-stop)
  (setq indent-tabs-mode t)
  (setq tab-width custom-tab-width))

;; Enable tabs for programming mode
(add-hook 'prog-mode-hook 'enable-tabs)
;; Disable tabs for lisp and elisp because lisp doesnt like tabs
(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode-hook 'disable-tabs)

;;stop indenting the preveous line on enter
;(setq-default electric-indent-inhibit t)

;; treat double spaces like tabs
(setq backward-delete-char-untabify-method 'hungry)

;; keep the << and >> functions consistant with custom-tab-width
(setq-default evil-shift-width custom-tab-width)

;; Show tabs with verticle bar
(setq whitespace-style '(face tab-mark trailing))
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#636363")))))
(setq whitespace-display-mappings
  '((tab-mark 9 [9474 9] [124 9])))
(global-whitespace-mode)
; END TABS CONFIG

;; Here are some additional functions/macros that could help you configure Doom:
;;death
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their fdefinition and see how
;; they are implemented.

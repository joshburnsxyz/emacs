;;; init.el --- configuration entry point

;;; Commentary:

;;; Code:

;; QoL
(setq inhibit-startup-message t)  ; No splash screen
(setq visible-bell t)            ; Flash when the bell rings
(setq make-backup-files nil) ; stop creating ~ files
(auto-save-mode -1) ; disable auto saves

(setq custom-file (concat user-emacs-directory "custom.el"))

;; Enable electric pair mode
(electric-pair-mode 1)

;; Load modules
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'ui)
(require 'packages)
(require 'snippets)
(require 'keybinds)
(require 'language-support)

;; Load custom.el
(when (file-exists-p custom-file)
  (load custom-file))

;;; init.el ends here

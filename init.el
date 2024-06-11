;;; init.el --- configuration entry point

;;; Commentary:

;;; Code:

;; QoL
(setq inhibit-startup-message t)  ; No splash screen
(setq visible-bell nil)            ; Flash when the bell rings
(setq make-backup-files nil) ; stop creating ~ files
(auto-save-mode -1) ; disable auto saves
(setq x-select-enable-clipboard-manager nil) ;; More debian shit wtf

;; Electric pair mode
(electric-pair-mode 1)

(setq custom-file (concat user-emacs-directory "custom.el"))

;; Load modules
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

;; Package.el setup
(require 'packages)

;; Plugin and config layers (~/.emacs.d/lisp)
(require 'ui)
(require 'vim)
(require 'git)
(require 'projects)
(require 'language-support)
(require 'snippets)

;; Custom plugins and scripts (~/.emacs.d/site-lisp)
(require 'reindent-buffer)
(require 'emacs-proc-helpers)
(require 'org-extensions)
(require 'helm-extensions)

;; Keybindings
(require 'keybinds)

;; Load custom.el
(when (file-exists-p custom-file)
  (load custom-file))

;;; init.el ends here

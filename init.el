;; QoL
(setq inhibit-startup-message t)  ; Comment at end of line!
(setq visible-bell t)            ; Flash when the bell rings
(setq make-backup-files nil) ; stop creating ~ files
(auto-save-mode -1) ; disable auto saves

(setq custom-file (concat user-emacs-directory "custom.el"))

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

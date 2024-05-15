;;; ui.el --- Configure editor UI elements

;;; Commentary:

;;; Code:

;; Turn off some unneeded UI elements
(menu-bar-mode -1)  ; Leave this one on if you're a beginner!
(tool-bar-mode -1)

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; Disable theme safety checks
(setq custom-safe-themes t)

;; UI Theme
(use-package modus-themes
  :ensure t
  :init
  (load-theme 'modus-vivendi t))

;; Modeline
(use-package telephone-line
  :ensure t
  :init
  (telephone-line-mode 1))

;; Helm
(use-package helm
  :ensure t
  :init
  (global-set-key (kbd "M-x") 'helm-M-x)
  (setq helm-display-buffer-height 20))

;; Theme interface with helm
(use-package helm-themes
  :ensure t)

;; Dired overhaul
(use-package dirvish
  :ensure t
  :init
  (dirvish-override-dired-mode))

;; Neotree
(use-package neotree
  :ensure t
  :init
  (setq neo-show-hidden-files t))

;; Which-key
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  (which-key-setup-side-window-bottom))

;; FlyCheck
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

;; Git status at a glance
(use-package git-gutter
  :ensure t
  :init
  (global-git-gutter-mode +1))

;; Highlight TODO/FIXME comments
(use-package hl-todo
  :ensure t
  :init
  (global-hl-todo-mode))

;; Company mode
(use-package company
  :ensure t
  :config
  (global-company-mode))
(use-package company-box
  :ensure t
  :hook (global-company-mode . company-box-mode))

;; Disable warnings
(setq warning-minimum-level :emergency)

(provide 'ui)

;;; ui.el ends here

;;; packages.el --- Install and setup packages

;;; Commentary:

;;; Code:


; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
                         ("melpa" . "https://melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

;; UI Theme
(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-nova t))

;;; UNDO
;; Vim style undo
(use-package undo-fu
  :ensure t)

;;; Vim Bindings
(use-package evil
  :ensure t
  :bind (("<escape>" . keyboard-escape-quit))
  :init
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-fu)
  (setq evil-want-integration t)
  :init
  (evil-mode 1))

;;; Vim Bindings Everywhere else
(use-package evil-collection
  :ensure t
  :after evil
  :init
  (evil-collection-init))

;; General.el --- Keybinding engine
(use-package general
  :ensure t
  :config
  (general-evil-setup t))

;; Modeline
(use-package telephone-line
  :ensure t
  :init
  (telephone-line-mode 1))

;; Helm
(use-package helm
  :ensure t
  :init
  (global-set-key (kbd "M-x") 'helm-M-x))

;; Company mode
(use-package company
  :ensure t
  :config
  (global-company-mode))
(use-package company-box
  :ensure t
  :hook (global-company-mode . company-box-mode))

;; Neotree
(use-package neotree
  :ensure t)

;; Projectile
(use-package projectile
  :ensure t)
(use-package helm-projectile
  :ensure t
  :config
  (projectile-mode 1)
  (helm-projectile-on))

;; Magit
(use-package magit
  :ensure t)

;; Which-key
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  (which-key-setup-side-window-bottom))

;; Evil NERD commenter
(use-package evil-nerd-commenter
  :ensure t)

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


(provide 'packages)

;;; packages.el ends here

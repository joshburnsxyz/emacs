;;; vim.el --- packages and configurations that enable vim keybindings

;;; Commentary:

;;; Code:


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

;; Evil NERD commenter
(use-package evil-nerd-commenter
  :ensure t)

;; Multiple Cursors
(use-package evil-multiedit :ensure t)


(provide 'vim)

;;; vim.el ends here

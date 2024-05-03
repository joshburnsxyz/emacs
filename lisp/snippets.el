;;; snippets.el --- Install yas-snippet and the snippets package

;;; Commentary:

;;; Code:

(use-package yasnippet
  :ensure t
  :init
  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets"))
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)

(provide 'snippets)

;;; snippets.el ends here

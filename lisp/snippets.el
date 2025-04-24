;;; snippets.el --- Install yas-snippet and the snippets package

;;; Commentary:

;;; Code:

(use-package yasnippet-snippets :ensure t)
(use-package yasnippet
  :ensure t
  :init
  (yas-reload-all)
  (yas-global-mode 1))

(use-package emmet-mode
  :ensure t
  :init
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))

(provide 'snippets)

;;; snippets.el ends here

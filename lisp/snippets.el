;;; snippets.el --- Install yas-snippet and the snippets package

;;; Commentary:

;;; Code:

(use-package yasnippet
  :ensure t
  :init
  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets"))
  (yas-global-mode 1))

(use-package emmet-mode
  :ensure t
  :init
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))

;; Download yasnippet-snippets if ~/.emacs.d/snippets does not exists
(if (not (file-directory-p "~/.emacs.d/snippets"))
    (shell-command "git clone https://github.com/AndreaCrotti/yasnippet-snippets ~/.emacs.d/snippets"))

(provide 'snippets)

;;; snippets.el ends here

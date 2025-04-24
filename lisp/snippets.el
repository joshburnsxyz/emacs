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
  :ensure t
  :config
  (yas-reload-all))

(use-package emmet-mode
  :ensure t
  :init
  (add-hook 'sgml-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook 'emmet-mode)
  (setq emmet-move-cursor-between-quotes t))

;; Download yasnippet-snippets if ~/.emacs.d/snippets does not exists
(unless (file-directory-p "~/.emacs.d/snippets")
  (shell-command "git clone https://github.com/AndreaCrotti/yasnippet-snippets ~/.emacs.d/snippets-tmp")
  (rename-file "~/.emacs.d/snippets-tmp/snippets" "~/.emacs.d/snippets")
  (delete-directory "~/.emacs.d/snippets-tmp" 'recursive)
  (message "Fetched snippets from GitHub"))

(provide 'snippets)

;;; snippets.el ends here

;;; language-support.el --- Configure programming language support features

;;; Commentary:

;;; Code:

;; LSP
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
	 (python-mode . lsp)
	 (rust-mode . lsp)
	 (go-mode . lsp)

	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; Tabnine
(use-package tabnine
  :commands (tabnine-start-process)
  :hook (prog-mode . tabnine-mode)
  ;;:straight t
  :diminish "⌬"
  :custom
  (tabnine-wait 1)
  (tabnine-minimum-prefix-length 0)
  :hook (kill-emacs . tabnine-kill-process)
  :config
  (add-to-list 'completion-at-point-functions #'tabnine-completion-at-point)
  (tabnine-start-process)
  :bind
  (:map  tabnine-completion-map
	 ("<tab>" . tabnine-accept-completion)
	 ("TAB" . tabnine-accept-completion)
	 ("M-f" . tabnine-accept-completion-by-word)
	 ("M-<return>" . tabnine-accept-completion-by-line)
	 ("C-g" . tabnine-clear-overlay)
	 ("M-[" . tabnine-previous-completion)
	 ("M-]" . tabnine-next-completion)))

;; Web HTML/CSS/JS stuff
(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

;; Markdown
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;; Python
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; Go
(use-package go-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode)))

;; Rust
(use-package rust-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode)))
(use-package flycheck-rust
  :ensure t
  :config
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

;; Dockerfile Syntax Highlight
(use-package dockerfile-mode
  :ensure t
  :config)

;; Docker compose Syntax Highlight
(use-package docker-compose-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.docker-compose\\.yml\\'" . docker-compose-mode)))

;; General YAML support
(use-package yaml-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))

(provide 'language-support)

;;; language-support.el ends here

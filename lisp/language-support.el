;;; language-support.el --- Configure programming language support features

;;; Commentary:

;;; Code:

;; LSP
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :custom
  (lsp-rust-analyzer-diagnostics-disabled '("unlinked-file"))
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  :hook (
	 (python-mode . lsp)
	 (rust-mode . lsp)
	 (go-mode . lsp)

	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; Copilot
(use-package editorconfig :ensure t)
(use-package jsonrpc :ensure t)
(use-package copilot
  :quelpa (copilot :fetcher github
                   :repo "copilot-emacs/copilot.el"
                   :branch "main"
                   :files ("*.el"))
  :config
  ;;(add-hook 'prog-mode-hook 'copilot-mode)
  (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
  (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion))

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

(use-package ess
  :ensure t)

(provide 'language-support)

;;; language-support.el ends here

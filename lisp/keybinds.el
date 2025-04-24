;;; keybinds.el --- Describe and define Evil keybinds

;;; Commentary:

;;; Code:

;; Text size control
(global-set-key (kbd "C-<") 'text-scale-decrease)
(global-set-key (kbd "C->") 'text-scale-increase)

;; Multiple Cursors
;;; VIM keybinds
(evil-define-key '(normal visual) 'global
  "gzm" #'evil-multiedit-match-all
  "gzn" #'evil-multiedit-match-and-next
  "gzp" #'evil-multiedit-match-and-prev
  "gzz" #'evil-multiedit-toggle-marker-here)
;;; Match navigation with M-d/M-D
(define-key evil-visual-state-map (kbd "M-d") 'evil-multiedit-match-and-next)
(define-key evil-normal-state-map (kbd "M-d") 'evil-multiedit-match-and-next)
(define-key evil-insert-state-map (kbd "M-d") 'evil-multiedit-toggle-marker-here)
(define-key evil-normal-state-map (kbd "M-D") 'evil-multiedit-match-and-prev)
(define-key evil-visual-state-map (kbd "M-D") 'evil-multiedit-match-and-prev)

;; Global leader mapping with SPC
(general-define-key
 :states 'normal
 :keymaps 'override
 :prefix "SPC"

 ;; Global M-x Shortcut
 "SPC" 'helm-M-x

 ;; Commenter
 "/" 'evilnc-comment-or-uncomment-lines

 ;; Shortcuts / Qol
 "q" '(:ignore t :which-key "QoL Shortcuts")
 "qf" 'helm-find-files
 "qt" 'helm-themes
 "qa" 'global-copilot-mode
 "qr" 'reindent-buffer
 
 ;; Window
 "w" '(:ignore t :which-key "Window")
 "wh" 'evil-window-left
 "wj" 'evil-window-down
 "wk" 'evil-window-up
 "wl" 'evil-window-right

 ;; Buffer
 "b" '(:ignore t :which-key "Buffer")
 "bb" 'helm-buffers-list
 "bl" 'next-buffer
 "bk" 'kill-buffer
 "be" 'eval-buffer
 "bf" 'flycheck-buffer

 ;; Project Management
 "p" '(:ignore t :which-key "Project")
 "pp" 'helm-projectile-switch-project
 "pa" 'projectile-add-known-project
 "pt" 'neotree-toggle
 "pf" 'helm-projectile-find-file
 "pd" 'helm-projectile-find-dir
 "pb" 'helm-projectile-switch-to-buffer
 "pg" 'helm-projectile-grep

 ;; Git
 "g" '(:ignore t :which-key "Git")
 "gg" 'magit-status
 "gs" 'magit-stage-buffer-file
 "gc" 'magit-commit

 ;; Snippets
 "s" '(:ignore t :which-key "Snippets")
 "ss" 'yas-insert-snippet
 "se" 'yas-expand
 )

(provide 'keybinds)

;;; keybinds.el ends here

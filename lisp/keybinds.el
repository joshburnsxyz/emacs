(general-define-key
    :states 'normal
    :keymaps 'override
    :prefix "SPC"

    ;; Global M-x Shortcut
    "SPC" 'helm-M-x

    ;; Shortcuts / Qol
    "q" '(:ignore t :which-key "QoL Shortcuts")
    "qf" 'helm-find-files

    ;; Window
    "w" '(:ignore t :which-key "Window")
    "wh" 'evil-window-left
    "wj" 'evil-window-down
    "wk" 'evil-window-up
    "wl" 'evil-window-right

    ;; Buffer
    "b" '(:ignore t :which-key "Buffer")
    "bb" 'helm-buffer
    "bl" 'next-buffer
    "bk" 'kill-buffer
    "be" 'eval-buffer

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
 )

(provide 'keybinds)

(general-define-key
    :states 'normal
    :keymaps 'override
    :prefix "SPC"

    ;; Shortcuts / Qol
    "SPC" 'helm-M-x
    "ff" 'helm-find-files

    ;; Window Movement
    "wh" 'evil-window-left
    "wj" 'evil-window-down
    "wk" 'evil-window-up
    "wl" 'evil-window-right

    ;; Buffer movement
    "bb" 'helm-buffer
    "bl" 'next-buffer
    "bk" 'kill-buffer

    ;; Project Management
    "pp" 'helm-projectile-switch-project
    "pa" 'projectile-add-known-project
    "pt" 'neotree-toggle
    "pf" 'helm-projectile-find-file
    "pd" 'helm-projectile-find-dir
    "pb" 'helm-projectile-switch-to-buffer
    "pg" 'helm-projectile-grep
 )

(provide 'keybinds)

;;; project.el --- Project management

;;; Commentary:

;;; Code:

;; Projectile
(use-package projectile
  :ensure t)

;; Helm plugin for projectile
(use-package helm-projectile
  :ensure t
  :config
  (projectile-mode 1)
  (helm-projectile-on))

(provide 'packages)

;;; project.el ends here

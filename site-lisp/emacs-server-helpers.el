;;; emacs-proc-helpers.el --- Shortcuts for managing emacs processes

;; Copyright (C) 2024  Josh Burns <@joshburnsxyz>.

;; Author: Josh Burns <@joshburnsxyz>
;; Keywords: extensions

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;;; Commentary:

;;; Code:

(defun kill-emacs-system ()
  "Kill emacs daemon and related processes"
  (interactive)
  (message "Killing emacs server")
  (kill-emacs))

(defun reload-emacs-config ()
  "Reload emacs config"
  (interactive)
  (message "Restarting...")
  (load-file user-init-file))

(provide 'emacs-proc-helpers)
;;; emacs-proc-helpers.el ends here

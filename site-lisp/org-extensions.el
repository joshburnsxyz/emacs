;;; org-extensions.el --- Extensions for org-mode

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

(defun add-src-elements ()
  "Quickly add a source code block to an org-mode document"
  (interactive)
  (insert "#+BEGIN_SRC\n#+END_SRC")
  (forward-line -1)
  (evil-append-line 1)
  (insert " "))

(provide 'org-extensions)
;;; org-extensions.el ends here

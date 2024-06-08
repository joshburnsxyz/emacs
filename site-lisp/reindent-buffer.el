;;; reindent-buffer.el --- Quickly re-format buffer contents

;; Copyright (C) 2021  Josh Burns <@joshburnsxyz>.

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

;; This plugin provides a command that will (regardless of major-mode) 
;; mark the whole buffer and run the indent-region command. Automatically
;; reformatting the contents in relation to how the major mode and your
;; other settings like tab-stops etc. are setup.

;;; Code:

(defun reindent-buffer ()
  "Mark whole buffer, then indent the region."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))

(provide 'reindent-buffer)
;;; reindent-buffer.el ends here

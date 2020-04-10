;;; common-lisp.el --- CommonLisp support            -*- lexical-binding: t; -*-

;; Copyright (C) 2020  amirreza

;; Author: amirreza <amirreza@nobody.invalid>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:


(use-package sly
	     :hook lisp-mode)

(use-package paredit
	     :hook ((emacs-lisp-mode clojure-mode) . paredit-mode))


(use-package parinfer
	     :hook ((emacs-lisp-mode clojure-mode) . parinfer-mode))

(use-package rainbow-delimiters
	     :hook ((prog-mode) . rainbow-delimiters-mode))


(provide 'hans-common-lisp)
;;; common-lisp.el ends here
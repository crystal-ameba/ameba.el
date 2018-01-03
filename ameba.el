;;; ameba.el --- An Emacs interface to [Ameba](https://github.com/veelenga/ameba)

;; Copyright © 2018 Vitalii Elenhaupt <velenhaupt@gmail.com>
;; Author: Vitalii Elenhaupt
;; URL: https://github.com/veelenga/ameba.el
;; Keywords: convenience
;; Version: 0.1.0
;; Package-Requires: ((emacs "24.4") (dash "2.12.0") (request "0.2.0"))

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; [Ameba](https://github.com/veelenga/ameba) is a static code analysis tool
;; for [Crystal](https://crystal-lang.org/).
;;
;; This package allows you to use this tool directly in Emacs.
;;
;; ### Features:
;;
;; * Allows to run Ameba on the entire project
;; * Allows to prompt from a directory on which to run Ameba
;; * Allows to run Ameba on the currently visited file
;;
;; ### Usage
;;
;; Run one of the predefined interactive functions.
;;
;; See [Function Documentation](#function-documentation) for details.

;;; Code:

(defgroup ameba nil
  "An Emacs interface to Ameba"
  :prefix "ameba-"
  :group 'convenience
  :group 'tools
  :link '(url-link :tag "GitHub" "https://github.com/veelenga/ameba.el"))

(defcustom ameba-project-root-files
  '(".projectile" ".git" ".hg" ".ameba.yml")
  "A list of files considered to mark the root of a project."
  :type '(repeat string))

(defcustom ameba-check-command
  "ameba --format flycheck"
  "The command used to run Ameba checks."
  :type 'string)

(provide 'ameba)
;;; ameba.el ends here

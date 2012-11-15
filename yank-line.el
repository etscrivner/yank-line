;;;
;;; yank-line
;;; Author: Eric Scrivner <eric@grapheffect.com>
;;;
;;; About:
;;;
;;;  Mode which can be used to yank a line by line number.
;;;

(defun yl/yank-line (arg)
  "Yank the line with the given number or the current line if none is provided"
  (interactive "P")
  (save-excursion
    (if arg
        (goto-line arg))
    (back-to-indentation)
    (let ((start (point)))
      (end-of-line)
      (copy-region-as-kill start (point)))))

(provide 'yank-line)

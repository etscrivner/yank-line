;;;
;;; yank-line
;;; Author: Eric Scrivner <eric@grapheffect.com>
;;;
;;; About:
;;;
;;;  Mode which can be used to yank a line by line number.
;;;

(defun yl/copy-line-as-kill (arg)
  "Copy the line with the given number or the current line if none is provided"
  (save-excursion
    (if arg
        (goto-line arg))
    (back-to-indentation)
    (let ((start (point)))
      (end-of-line)
      (copy-region-as-kill start (point)))))

(defun yl/copy-line (arg)
  (interactive "P")
  (yl/copy-line-as-kill arg))

(defun yl/yank-line (arg)
  (interactive "P")
  (yl/copy-line-as-kill arg)
  (yank))

(provide 'yank-line)

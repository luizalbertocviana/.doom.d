;;; ../github/.doom.d/eshell-changes.el -*- lexical-binding: t; -*-

(defun eshell-clear ()
  "clears eshell repl"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(map! :mode eshell-mode
      :ni "C-l" 'eshell-clear)

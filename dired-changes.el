;;; ../github/.doom.d/dired-changes.el -*- lexical-binding: t; -*-

;; dired keybindings
(map! :after dired :mode dired-mode
      :n "M" 'dired-unmark
      :n "h" (lambda () (interactive) (find-alternate-file ".."))
      :n "l" 'dired-find-alternate-file
      :n "o" 'browse-url-of-dired-file
      :n "y" 'dired-copy-filename-as-kill)
(map! :after dired :localleader :mode dired-mode
      "D" 'dired-diff
      "S" 'dired-do-symlink
      "T" 'dired-toggle-marks
      "U" 'dired-upcase
      "Z" 'dired-do-compress
      "c" 'wdired-change-to-wdired-mode
      "d" 'dired-do-delete
      "g" 'dired-do-chgrp
      "i" (lambda () (interactive) (image-dired "./"))
      "l" 'dired-downcase
      "m" 'dired-do-chmod
      "n" 'dired-create-directory
      "o" 'dired-do-chown
      "p" 'dired-do-print
      "r" 'dired-do-rename
      "s" 'dired-do-isearch-regexp
      "t" 'dired-do-async-shell-command
      "y" 'dired-do-copy
      "z" 'dired-do-compress-to)
(map! :after dired :mode archive-mode
      :n "j" 'archive-next-line
      :n "k" 'archive-previous-line
      :n "l" 'archive-extract
      :n "m" 'archive-flag-deleted)
(map! :after dired :localleader :mode archive-mode
      "g" 'archive-chgrp-entry
      "m" 'archive-chmod-entry
      "o" 'archive-chown-entry
      "d" 'archive-expunge
      "r" 'archive-rename-entry)

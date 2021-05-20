;;; keybindings.el -*- lexical-binding: t; -*-

;; some keychords
(setq key-chord-one-key-delay 0.3)
(setq key-chord-two-keys-delay 0.3)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "qq" "/")
(key-chord-define evil-insert-state-map "ww" "?")
(key-chord-define evil-insert-state-map "''" "\"")
(key-chord-define evil-insert-state-map "11" "!")
(key-chord-define evil-insert-state-map "22" "@")
(key-chord-define evil-insert-state-map "33" "#")
(key-chord-define evil-insert-state-map "44" "$")
(key-chord-define evil-insert-state-map "55" "%")
(key-chord-define evil-insert-state-map "77" "&")
(key-chord-define evil-insert-state-map "88" "*")
(key-chord-define evil-insert-state-map "99" "(")
(key-chord-define evil-insert-state-map "00" ")")
(key-chord-define evil-insert-state-map "--" "_")
(key-chord-define evil-insert-state-map "==" "+")
(key-chord-define evil-insert-state-map ",," "<")
(key-chord-define evil-insert-state-map ".." ">")
(key-chord-define evil-insert-state-map ";;" ":")
(key-chord-define evil-insert-state-map "[[" "{")


;; some minor additions to leader key keybindings
(map! :leader
      :desc "Switch to last buffer"
      "TAB" (lambda () (interactive) (switch-to-buffer (other-buffer)))
      :desc "Open current directory"
      "f o" (lambda () (interactive) (dired "./"))
      "P" 'list-processes
      "a" 'counsel-linux-app
      "e" 'eshell)

;; easy cursor moving in insert mode
(map! :e
      "C-h" 'backward-char
      "C-j" 'next-line
      "C-k" 'previous-line
      "C-l" 'forward-char)

;; text menu
(map! :leader
      (:prefix-map ("T" . "Text")
       "A" 'align-regexp
       "S" 'sort-fields
       "a" 'align
       "c" 'capitalize-dwim
       "f" 'fill-paragraph
       "l" 'downcase-dwim
       "r" 'reverse-region
       "s" 'sort-lines
       "u" 'upcase-dwim
       (:prefix ("t" . "table")
        "C" 'table-capture
        "R" 'table-recognize
        "S" 'table-generate-source
        "a" 'table-justify
        "i" 'table-insert
        "m" 'table-span-cell
        "s" 'table-split-cell
        (:prefix ("c" . "columns")
         "d" 'table-delete-column
         "i" 'table-insert-column)
        (:prefix ("r" . "rows")
         "d" 'table-delete-row
         "i" 'table-insert-row))))

;; dired keybindings
(map! :mode dired-mode :n
      "M" 'dired-unmark)
(map! :mode dired-mode :n
      "h" (lambda () (interactive) (find-alternate-file "..")))
(map! :mode dired-mode :n
      "l" 'dired-find-alternate-file)
(map! :mode dired-mode :n
      "o" 'browse-url-of-dired-file)
(map! :mode dired-mode :n
      "y" 'dired-copy-filename-as-kill)
(map! :localleader :mode dired-mode
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

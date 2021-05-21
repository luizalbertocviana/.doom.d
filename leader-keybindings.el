;;; keybindings.el -*- lexical-binding: t; -*-

;; some minor additions to leader key keybindings
(map! :leader
      :desc "Switch to last buffer"
      "TAB" (lambda () (interactive) (switch-to-buffer (other-buffer)))
      :desc "Open current directory"
      "f o" (lambda () (interactive) (dired "./"))
      "P" 'list-processes
      "a" 'counsel-linux-app
      "e" 'eshell)

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

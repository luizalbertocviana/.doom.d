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


(map! :leader
      :desc "Open current directory"
      "f o" (lambda () (interactive) (dired "./")))

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

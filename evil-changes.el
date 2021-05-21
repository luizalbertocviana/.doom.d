;;; ../github/.doom.d/evil-changes.el -*- lexical-binding: t; -*-

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

;; easy cursor moving in insert mode
(map! :map evil-insert-state-map
      "C-h" 'backward-char
      "C-j" 'next-line
      "C-k" 'previous-line
      "C-l" 'forward-char)

(map! :map (evil-normal-state-map)
      "s" 'evil-ex-search-forward)

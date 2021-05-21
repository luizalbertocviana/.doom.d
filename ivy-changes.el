;;; ../github/.doom.d/ivy-changes.el -*- lexical-binding: t; -*-

(setq ivy-posframe-display-functions-alist
      '((t . ivy-posframe-display-at-frame-center)))

(ivy-posframe-mode 1)

(map! :map (ivy-minibuffer-map ivy-switch-buffer-map)
      "C-a" 'ivy-dispatching-done
      "C-b" 'ivy-occur
      "C-h" 'keyboard-escape-quit
      "C-i" 'ivy-insert-current
      "C-j" 'ivy-next-line
      "C-k" 'ivy-previous-line
      "C-l" 'ivy-alt-done
      "M-j" 'ivy-next-history-element
      "M-k" 'ivy-previous-history-element
      "RET" 'ivy-immediate-done)

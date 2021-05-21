;;; ../github/.doom.d/calendar-changes.el -*- lexical-binding: t; -*-

(map! :mode calendar-mode
      :n "." 'calendar-goto-today
      :n "H" 'calendar-backward-month
      :n "J" 'calendar-forward-year
      :n "K" 'calendar-backward-year
      :n "L" 'calendar-forward-month
      :n "g" 'calendar-goto-date
      :n "h" 'calendar-backward-day
      :n "j" 'calendar-forward-week
      :n "k" 'calendar-backward-week
      :n "l" 'calendar-forward-day
      :n "q" 'calendar-exit)

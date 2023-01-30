(general-create-definer leader-def
			:states 'motion
			:keymaps 'override
			:prefix "SPC")

(general-create-definer comma-def
			:states 'motion
			:keymaps 'override
			:prefix ",")

(leader-def
 "f" '(:ignore t :which-key "file")
 "f f" '(counsel-find-file :which-key "find file"))

(leader-def
  "q" 'evil-save-modified-and-close)

(leader-def
  "s" '(:ignore t :which-key "search")
  "/" 'counsel-rg)

(leader-def
  "k" '(:ignore t :which-key "sexp")
  "k (" '(sp-wrap-round :which-key "wrap ()")
  "k [" '(sp-wrap-square :which-key "wrap []")
  "k {" '(sp-wrap-curly :which-key "wrap {}")
  "k s" '(sp-forward-slurp-sexp :which-key "slurp-sexp"))

(leader-def
  "w" '(:ignore t :which-key "window")
  "w /" '(split-window-right :which-key "split right")
  "w -" '(split-window-below :which-key "split below")
  "w m" '(delete-other-windows :which-key "maximize window")
  "w d" '(delete-window :which-key "delete window")
  "w k" '(evil-window-up :which-key "focus up")
  "w l" '(evil-window-right :which-key "focus right")
  "w j" '(evil-window-down :which-key "focus down")
  "w h" '(evil-window-left :which-key "focus down")
  "w f" '(toggle-frame-fullscreen :which-key "fullscreen"))

(general-define-key
 :keymaps 'ivy-mode-map
 "C-j" 'ivy-next-line
 "C-k" 'ivy-previous-line)

(general-define-key
 :keymaps 'company-mode-map
 "C-j" 'company-select-next
 "C-l" 'company-select-previous)

(comma-def
  :keymaps 'emacs-lisp-mode-map
  "e" '(:ignore t :which-key "eval")
  "e e" 'eval-last-sexp
  "e b" 'eval-buffer)

(comma-def
  :keymaps 'clojure-mode-map
  "e" '(:ignore t :which-key "eval")
  ", e (" 'cider-eval-list-at-point
  ", e f" 'cider-eval-defun-at-point
  ", e f" 'cider-eval-buffer)

(leader-def
  "b" '(:ignore t :which-key "buffer")
  "b b" '(ivy-switch-buffer :which-key "switch buffer")
  (kbd "<tab>") '(evil-switch-to-windows-last-buffer :which-key "last buffer")
  "f r" '(counsel-recentf :which-key "recent files"))

(leader-def
  "p" '(:ignore t :which-key "project")
  "p f" '(projectile-find-file :which-key "find file"))

(general-define-key
 "<escape>" 'keyboard-escape-quit)

(leader-def
  "SPC" '(execute-extended-command :which-key "M-x"))

(setq which-key-idle-delay 0.5) 
(setq which-key-idle-secondary-delay 0) 

(provide '99-bindings)
;;; 99-bindings.el ends here

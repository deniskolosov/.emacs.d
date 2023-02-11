(general-create-definer leader-def
			:states 'motion
			:keymaps 'override
			:prefix "SPC")


(leader-def
 "f" '(:ignore t :which-key "file")
 "f f" '(counsel-find-file :which-key "find file")
 "f t" '(treemacs :which-key "neotree"))

(leader-def
 "g" '(:ignore t :which-key "magit")
 "g s" '(magit-status :which-key "status"))

(leader-def
  ";" 'evil-commentary/org-comment-or-uncomment-region)

(leader-def
  "l d" 'lsp-find-definition
  "l f" 'lsp-find-references
  "l a" 'lsp-execute-code-action
  "l r" 'lsp-rename)

(leader-def
  "q" 'evil-save-modified-and-close)

(leader-def
  "s" '(:ignore t :which-key "search")
  "/" 'counsel-rg)

(leader-def
  "k" '(:ignore t :which-key "sexp")
  "k w" '(sp-wrap-round :which-key "wrap ()")
  "k [" '(sp-wrap-square :which-key "wrap []")
  "k {" '(sp-wrap-curly :which-key "wrap {}")
  "k e" '(sp-end-of-sexp :which-key "end of sexp")
  "k f" '(sp-forward-sexp :which-key "forward sexp")
  "k b" '(sp-beginning-of-sexp :which-key "beginning of sexp")
  "k v" '(sp-select-next-thing :which-key "sel next thing")
  "k )" '(sp-up-sexp :which-key "up sexp")
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

(leader-def
  "b" '(:ignore t :which-key "buffer")
  "b b" '(ibuffer-list-buffers :which-key "list buffers")
  "b d" '(kill-buffer :which-key "kill buffer"))

(general-define-key
 :keymaps 'ivy-mode-map
 "C-j" 'ivy-next-line
 "C-k" 'ivy-previous-line)

(general-define-key
 :keymaps 'company-mode-map
 "C-j" 'company-select-next
 "C-l" 'company-select-previous)

(leader-def
  :keymaps 'emacs-lisp-mode-map
  "e" '(:ignore t :which-key "eval")
  "e e" 'eval-last-sexp
  "e b" 'eval-buffer)

(leader-def
  :keymaps 'clojure-mode-map
  "e" '(:ignore t :which-key "eval")
  "e (" 'cider-eval-list-at-point
  "e r" 'cider-eval-region
  "e f" 'cider-eval-defun-at-point
  "h" 'cider-doc
  "i" 'cider-inspect-last-result
  "e ;" 'cider-eval-defun-to-comment
  "e b" 'cider-eval-buffer)

(leader-def
  "b" '(:ignore t :which-key "buffer")
  "b b" '(ivy-switch-buffer :which-key "switch buffer")
  (kbd "<tab>") '(evil-switch-to-windows-last-buffer :which-key "last buffer")
  "f r" '(counsel-recentf :which-key "recent files"))

(leader-def
  "p" '(:ignore t :which-key "project")
  "p f" '(projectile-find-file :which-key "find file")
  "p o" '(org-projectile-goto-location-for-project :which-key "todos"))

(general-define-key
 "<escape>" 'keyboard-escape-quit)

(leader-def
  "SPC" '(execute-extended-command :which-key "M-x"))

(setq which-key-idle-delay 0.5) 
(setq which-key-idle-secondary-delay 0) 

(provide '99-bindings)
;;; 99-bindings.el ends here

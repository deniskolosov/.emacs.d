;; UI
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(setq scroll-step 1)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(setq visible-bell t)   

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; Setup
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))


(provide '00-ui)
;; 00-ui.el ends here

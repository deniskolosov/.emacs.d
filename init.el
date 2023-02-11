;; Import Emacs package manager
(require 'package)

;; Initialize Emacs package manager
(package-initialize)

;; Add Melpa
(add-to-list 'package-archives
	     '("melpa"."http://melpa.org/packages/"))

;; Pull package list on first Emacs start
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
 
;; turn on global company mode
(add-hook 'after-init-hook 'global-company-mode)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((sql . t)))

(defun my-org-confirm-babel-evaluate (lang body)
  (not (member lang '("sql"))))

(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)


;; Read and execute all .el files in .emacs.d/subconf
(let* ((stuff-dir (concat (file-name-directory load-file-name) "/subconf"))
       (load-it (lambda (f) (load-file (concat (file-name-as-directory stuff-dir) f)))))
      (mapc load-it (directory-files stuff-dir nil "\\el$")))

(display-time-mode 1)

 
(provide 'init)
;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode -1)
 '(package-selected-packages
   '(lsp-treemacs treemacs-tab-bar treemacs-magit treemacs-projectile treemacs-evil treemacs evil-commentary org-projectile evil-collection doom-modeline general company flycheck projectile cider smartparens which-key counsel ivy magit evil zenburn-theme all-the-icons use-package))
 '(tool-bar-mode nil))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

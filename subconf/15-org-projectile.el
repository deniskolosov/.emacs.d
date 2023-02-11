(use-package org-projectile
  :config
  (require 'org-projectile)
  (org-projectile-per-project)
  (setq org-projectile-per-project-filepath "TODOs.org")
  (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
  :ensure t)

(provide '15-org-projectile.el)
;;; 15-org-projectile.el ends here

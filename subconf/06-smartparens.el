(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  :hook ((clojure-mode emacs-lisp-mode) . smartparens-mode))

(provide '06-smartparens.el)
;; 06-smartparens ends here

(use-package lsp-mode
  :ensure t
  :init
  :config
(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      company-minimum-prefix-length 1
      ; lsp-enable-indentation nil ; uncomment to use cider indentation instead of lsp
      ; lsp-enable-completion-at-point nil ; uncomment to use cider completion instead of lsp
      )
:hook ((clojure-mode clojurescript-mode-hook) . lsp))



(provide '12-lsp)
;;; 12-lsp.el ends here

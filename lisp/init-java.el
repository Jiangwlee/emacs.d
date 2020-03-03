;;; init-java.el --- Support for Java and derivatives -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(maybe-require-package 'cc-mode)
(maybe-require-package 'lsp-mode)
(maybe-require-package 'lsp-ui)
(maybe-require-package 'yasnippet)
(maybe-require-package 'projectile)
(maybe-require-package 'company-lsp)
(maybe-require-package 'which-key)
(maybe-require-package 'gradle-mode)

;; lsp-mode
(after-load 'lsp-mode
  (setq-default lsp-keymap-prefix "C-l")
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

(when (maybe-require-package 'lsp-java)
  (add-hook 'java-mode-hook #'lsp)
  (add-hook 'java-mode-hook #'lsp-ui-mode)
  ;;(add-hook 'java-mode-hook #'company-lsp)
  (add-hook 'java-mode-hook #'yas-minor-mode)
  (add-hook 'java-mode-hook #'gradle-mode)
)

(provide 'init-java)
;;; init-java.el ends here

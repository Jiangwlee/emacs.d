;;; init-evil.el --- Use global evil mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code

(when (maybe-require-package 'evil)
  (setq evil-want-C-u-scroll t)
  (add-hook 'after-init-hook 'evil-mode))

(provide 'init-evil)
;;; init-evil.el ends here

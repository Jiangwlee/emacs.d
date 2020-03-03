;;; init-ace.el --- Completion with ace -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'ace-jump-mode)
  (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
  (after-load 'evil
    (define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)))

(when (maybe-require-package 'ace-window)
  (define-key global-map (kbd "M-o") 'ace-window))

(provide 'init-ace)
;;; init-ace.el ends here

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(load-theme 'firecode)

(add-hook 'after-init-hook #'global-flycheck-mode)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(menu-bar-mode -1)
(tool-bar-mode -1)
(which-function-mode 1)

(require 'ido)
(ido-mode t)

;;This sets .cc.fsm files to use c++-mode
(setq auto-mode-alist (cons '("\\.cc.fsm$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h.fsm$" . c++-mode) auto-mode-alist))

;;I don't want those pesky backup files everywhere
(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" default)))
 '(ido-enable-flex-matching t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

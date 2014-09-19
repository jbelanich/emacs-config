(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(menu-bar-mode -1)
(tool-bar-mode -1)
(which-function-mode 1)


;;This sets .cc.fsm files to use c++-mode
(setq auto-mode-alist (cons '("\\.cc.fsm$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h.fsm$" . c++-mode) auto-mode-alist))

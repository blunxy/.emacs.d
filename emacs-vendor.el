;; emacs-vedor.el - general purpose modes to extend emacs
(load-lib-dir "vendor")

;; Interactively Do Things (ido) emacs is more fun with ido fo real
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Unbound - describe-unbound-keys
(require 'unbound)

;; Textmate mode
(textmate-mode t)

(global-set-key (kbd "M-RET") 'textmate-next-line)
;;(global-set-key (kbd "M-/") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "M-t") 'textmate-goto-file)
(global-set-key (kbd "M-T") 'textmate-goto-symbol)

(global-set-key (kbd "M-F") 'ack)
(global-set-key (kbd "C-x g") 'magit-status)

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))

;; Textile
(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode/markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))

;; Javascript (espresso)
(autoload 'espresso-mode "espresso" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))
(setq espresso-indent-level 2)

;; Cheat - for using cheat.errtheblog.com for some reference
(require 'cheat)

;; Coffeescript
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)

;; scss mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor"))
 (autoload 'scss-mode "scss-mode")
 (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))


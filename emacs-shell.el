;; set emacs path
(setq path "/bin:/usr/local/bin:/usr/bin:/usr/sbin:~/.gem/ruby/1.8/bin")
(setenv "PATH" path)
(push "/usr/local/bin" exec-path)

;; autocomplete
(setq eshell-cmpl-cycle-completions nil)
(setq eshell-cmpl-dir-ignore "\\`\\(\\.\\.?\\|CVS\\|\\.svn\\|\\.git\\)/\\'")

;; history
(setq eshell-save-history-on-exit t)

;; dont write over prompt
(setq comint-prompt-read-only)

;; scroll to bottom on output, more like a terminal
(setq eshell-scroll-to-bottom-on-output t)
(setq eshell-scroll-show-maximum-output t)
 
;; colorful shell
(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
 
;; escape the shell
(add-hook 'eshell-mode-hook
  '(lambda nil (local-set-key "\C-u" 'eshell-kill-input)))

;; provides 'clear' command
(defun eshell/clear ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
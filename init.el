;; init.el - from which all other configuration flows

(require 'cl)
(require 'ansi-color)
(require 'recentf)

(defvar root-dir "~/.emacs.d/")
(defun load-lib (name)
  (load (concat root-dir name ".el")))
(defun load-lib-dir (path)
  (add-to-list 'load-path (concat root-dir path)))

(load-lib-dir root-dir)

(setq autoload-file (concat root-dir "loaddefs.el"))
(setq custom-file (concat root-dir "custom.el"))

;; load elpa before anything else
(load-lib "emacs-elpa")

(load-lib "emacs-defaults")
(when window-system (load-lib "emacs-gui"))
(load-lib "emacs-functions")
(load-lib "emacs-vendor")
(load-lib "emacs-rails")
(load-lib "emacs-shell")

(load custom-file 'noerror)

;; Load user config and system config
(setq system-specific-config (concat root-dir system-name ".el")
      user-specific-config (concat root-dir user-login-name ".el"))

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))

(set-frame-size-according-to-resolution)

(setenv "PATH"
        (concat
         "/Users/jordan/.rvm/gems/ruby-1.9.2-p290/gems/sass-3.1.12/bin" ":"
         (getenv "PATH");
)
)


(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
 ;; init.el end

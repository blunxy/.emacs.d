;; emacs-elpa.el - loading and configuring the emacs list package archive

(load-lib "package")
(load-lib-dir "elpa")
(require 'package)
(setq package-user-dir (concat root-dir "elpa"))
(package-initialize)

;; these packages will install when you first start emacs-rails-kit
(defvar auto-install-packages (list 
                               'css-mode
                               'full-ack
                               'ruby-mode 
                               'rinari 
                               'rspec-mode
                               'textmate 
                               'yaml-mode
                               'yasnippet-bundle)
  "Libraries that should be installed by default.")

(defun starter-kit-elpa-install ()
  "Install all starter-kit packages that aren't installed."
  (interactive)
  (dolist (package auto-install-packages)
    (unless (or (member package package-activated-list)
                (functionp package))
      (message "Installing %s" (symbol-name package))
      (package-install package))))
      
(unless package-archive-contents (package-refresh-contents))
(starter-kit-elpa-install)
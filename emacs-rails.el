;; emacs-rails.el - config that will make working with rails seriously fun

;; Ruby
(require 'ruby-mode)
(require 'ruby-electric)
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

(global-set-key (kbd "M-r") 'ruby-compilation-this-buffer)

;; Rhtml
(load-lib-dir "vendor/rhtml")
(require 'rhtml-mode)

;; Over-ride M-s in rhtml mode
(define-key rhtml-mode-map (kbd "M-s") 'save-buffer)

;; Cucumber
(load-lib-dir "vendor/cucumber")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; C-l inserts a hash mark
(eval-after-load 'ruby-mode 
  '(progn
     (define-key ruby-mode-map (kbd "C-l") " => ")))
(eval-after-load 'rhtml-mode
  '(progn
     (define-key rhtml-mode-map (kbd "C-l") " => ")))
(eval-after-load 'rhtml-mode
  '(progn
     (define-key rhtml-mode-map (kbd "C->") 'rinari-insert-erb-skeleton)
     (define-key rhtml-mode-map (kbd "C-M->") (lambda () 
                                                (interactive) 
                                                (rinari-insert-erb-skeleton 0)))))

(require 'yasnippet)
(yas/initialize)
(yas/load-directory
 (concat (file-name-directory (or load-file-name buffer-file-name))
   "vendor/yasnippets-rails/rails-snippets/"))

;;; rspec-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (rspec-buffer-is-spec-p rspec-mode) "rspec-mode"
;;;;;;  "rspec-mode.el" (20371 19061))
;;; Generated autoloads from rspec-mode.el

(autoload (quote rspec-mode) "rspec-mode" "\
Minor mode for rSpec files

\(fn &optional ARG)" t nil)

(autoload (quote rspec-buffer-is-spec-p) "rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(eval-after-load (quote ruby-mode) (quote (add-hook (quote ruby-mode-hook) (lambda nil (when (rspec-buffer-is-spec-p) (rspec-mode))))))

(eval-after-load (quote ruby-mode) (quote (add-hook (quote ruby-mode-hook) (lambda nil (local-set-key (kbd "C-c ,v") (quote rspec-verify)) (local-set-key (kbd "C-c ,a") (quote rspec-verify-all)) (local-set-key (kbd "C-c ,t") (quote rspec-toggle-spec-and-target))))))

(eval-after-load (quote ruby-mode) (quote (add-hook (quote rails-minor-mode-hook) (lambda nil (local-set-key (kbd "C-c ,v") (quote rspec-verify)) (local-set-key (kbd "C-c ,a") (quote rspec-verify-all)) (local-set-key (kbd "C-c ,t") (quote rspec-toggle-spec-and-target))))))

(eval-after-load (quote ruby-mode) (quote (add-hook (quote rspec-mode-hook) (lambda nil (merge-abbrev-tables rspec-mode-abbrev-table local-abbrev-table)))))

;;;***

;;;### (autoloads nil nil ("rspec-mode-pkg.el") (20371 19061 894507))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; rspec-mode-autoloads.el ends here

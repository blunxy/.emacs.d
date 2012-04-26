;;; full-ack-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ack-find-file ack-find-same-file ack ack-same)
;;;;;;  "full-ack" "full-ack.el" (20371 19059))
;;; Generated autoloads from full-ack.el

(autoload (quote ack-same) "full-ack" "\
Run ack with --type matching the current `major-mode'.
The types of files searched are determined by `ack-mode-type-alist' and
`ack-mode-extension-alist'.  If no type is configured the buffer's file
extension is used for the search.
PATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by `ack-search-regexp'.
A prefix arg toggles that value.
DIRECTORY is the root directory.  If called interactively, it is determined by
`ack-project-root-file-patterns'.  The user is only prompted, if
`ack-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload (quote ack) "full-ack" "\
Run ack.
PATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by `ack-search-regexp'.
A prefix arg toggles that value.
DIRECTORY is the root directory.  If called interactively, it is determined by
`ack-project-root-file-patterns'.  The user is only prompted, if
`ack-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload (quote ack-find-same-file) "full-ack" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload (quote ack-find-file) "full-ack" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil nil ("full-ack-pkg.el") (20371 19059 957147))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; full-ack-autoloads.el ends here

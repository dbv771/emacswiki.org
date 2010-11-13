;;; mon-utils.el --- common utilities and BIG require for other of MON packages
;; -*- mode: EMACS-LISP; -*-
;;; ================================================================
;; Copyright © 2008-2010 MON KEY. All rights reserved.
;;; ================================================================

;; FILENAME: mon-utils.el
;; AUTHOR: MON KEY
;; MAINTAINER: MON KEY
;; CREATED: 2008-09
;; VERSION: 1.0.0
;; COMPATIBILITY: Emacs23.*
;; KEYWORDS: development, extensions, convenience, environment,

;;; ================================================================

;;; COMMENTARY: 

;; =================================================================
;; DESCRIPTION:
;; Provides common utilities and BIG require for other of MON's packages.
;;
;; FUNCTIONS:►►►
;; `mon-after-mon-utils-loadtime', `mon-recover-nil-t-default-plist',
;;
;; `mon-booleanp', `mon-zero-or-onep',
;; `mon-booleanp-to-binary', `mon-string-or-null-and-zerop',
;; `mon-string-not-null-nor-zerop', `mon-char-code',
;; `mon-function-object-p', `mon-sequence-mappable-p',
;; `mon-equality-or-predicate', `mon-equality-for-type'
;; `mon-image-verify-type', 
;;
;; `mon-generate-prand-seed',  `mon-generate-prand-id',  `mon-generate-WPA-key', 
;; `mon-gensym-counter-randomizer', `mon-make-random-state', `mon-next-almost-prime', 
;;
;; `mon-bool-vector-pp', `mon-get-bit-table',
;;
;; `mon-quote-sexp', `mon-maybe-cons',
;;
;; `mon-delq-dups', `mon-delq-cons',  
;; `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt', 
;; `mon-list-make-unique', `mon-list-filter',
;; `mon-list-reorder', `%mon-list-reorder', 
;; `mon-list-add-non-nil',
;;
;; `mon-list-nshuffle',  `mon-list-shuffle-safe',
;;
;; `mon-list-flatten-rotated', `mon-flatten', 
;; `mon-list-merge', `mon-combine', 
;; `mon-transpose',  `mon-recursive-apply', 
;;
;; `mon-list-proper-p', `mon-list-match-tails',
;; `mon-list-string-longest',
;;
;; `mon-subseq', `mon-list-last',
;; `mon-sublist', `mon-sublist-gutted', 
;;
;; `mon-member-if', `mon-delete-if', `mon-remove-if-not', `mon-union',
;; `mon-set-difference', `mon-mismatch', `mon-intersection' `mon-remove-if',
;;
;; `mon-map1', `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan',
;; `mon-mapcon', `mon-maptree', `mon-map-append',
;;
;;
;; `mon-inhibit-read-only', `mon-toggle-read-only-point-motion',
;; `mon-inhibit-modification-hooks',  `mon-inhibit-point-motion-hooks',
;;
;; `mon-get-buffer-hidden', `mon-print-buffer-object-readably',
;; `mon-get-buffer-window-if',  `mon-map-windows->plist', 
;; `mon-buffer-exists-so-kill', `mon-buffer-narrowed-p',
;; `mon-buffer-empty-p', 
;; `mon-buffer-sub-no-prop', `mon-buffer-sub-no-prop-check',
;; `mon-g2be', 
;; `mon-line-end-or-code-end', `mon-line-get-next',
;;
;; `mon-view-help-source', `mon-index-elisp-symbol',
;; `mon-map-obarray-symbol-plist-props', 
;;
;; `mon-line-test-content', `mon-get-syntax-class-at', 
;; `mon-looking-back-p', `mon-match-at-point',
;;
;; `mon-word-get-list-in-buffer', `mon-word-get-next',
;; `mon-word-reverse-region', `mon-word-iterate-over',
;; `mon-word-count-analysis', `mon-word-count-occurrences',
;; `mon-word-count-region', `mon-word-count-chars-region',
;;
;; `mon-region-position', `mon-region-length',
;; `mon-region-unfill', `mon-region-indent-refill', 
;; `mon-region-capitalize', `mon-region-reverse',
;; `mon-sha1-region', 
;; 
;; `mon-spacep', `mon-spacep-not-bol', `mon-spacep-is-bol',
;; `mon-spacep-is-after-eol', `mon-spacep-is-after-eol-then-graphic',
;; `mon-spacep-at-eol', `mon-spacep-first', `mon-line-bol-is-eol',
;; `mon-line-previous-bol-is-eol', `mon-line-next-bol-is-eol',
;; `mon-line-eol-is-eob',
;; 
;; `mon-line-count-region', `mon-line-count-matchp', `mon-line-length-max', 
;; `mon-line-count-buffer', `mon-line-find-duplicates', 
;; 
;; `mon-is-digit', `mon-is-letter', `mon-is-alphanum', `mon-is-digit-simp',
;; `mon-is-letter-simp', `mon-is-alphanum-simp', 
;;
;; `mon-string-sort-descending', `mon-string-has-suffix',
;; `mon-string-upto-index', `mon-string-after-index', `mon-string-index',
;; `mon-string-position',
;; 
;; `mon-symbol-to-string',  `mon-string-to-symbol', 
;; `mon-string-alpha-list', `mon-string-ify-list',
;; `mon-string-to-hex-list', `mon-string-to-hex-string',
;; `mon-string-to-hex-list-cln-chars',  `mon-string-wonkify',
;; `mon-string-to-sequence', `mon-string-from-sequence',
;; `mon-string-chop-spaces', `mon-string-split-on-regexp',
;; `mon-string-split-commas', `mon-string-split',
;; `mon-string-sub-old->new',`mon-string-replace-char', 
;; `mon-string-spread', 
;;
;; `mon-string-ify-current-line',  `mon-string-split-line', 
;;
;; `mon-string-justify-left', `mon-string-fill-to-col', 
;; 
;; `mon-line-strings-indent-to-col', `mon-line-indent-from-to-col', 
;; `mon-line-strings-pipe-bol', `mon-line-strings-pipe-to-col', 
;; `mon-line-strings', `mon-line-strings-region',
;; `mon-line-string-insert-chars-under',
;; `mon-line-strings-one-list',  `mon-line-strings-to-list',
;; `mon-line-string-rotate-name', `mon-line-string-unrotate-namestrings',
;; `mon-line-string-rotate-namestrings', 
;; `mon-line-string-rotate-namestrings-combine',
;; 
;; `mon-rectangle-columns', `mon-rectangle-sum-column',
;; `mon-rectangle-operate-on', `mon-rectangle-apply-on-region-points',
;; `mon-rectangle-downcase', `mon-rectangle-upcase', `mon-rectangle-capitalize',
;;
;; `mon-escape-lisp-string-region', `mon-unescape-lisp-string-region',
;; `mon-line-strings-bq-qt-sym-bol', `mon-line-strings-qt-region',
;; `mon-escape-string-for-cmd', `mon-princ-cb',
;; `mon-pretty-print-sexp-at-point',
;;
;; `mon-eval-sexp-at-point', `mon-eval-print-last-sexp',
;; `mon-eval-expression', `mon-toggle-eval-length', 
;;
;; `mon-extend-selection', `mon-semnav-up', 
;; `mon-wrap-selection', `mon-wrap-text', `mon-wrap-with',
;;
;; `mon-dump-object-to-file', `mon-byte-compile-and-load', 
;; `mon-compile-when-needed', `mon-load-or-alert'
;;
;; `mon-nuke-and-eval', `mon-unbind-defun', `mon-unbind-symbol',
;; `mon-unbind-function', `mon-unbind-command', `mon-unbind-variable',
;;
;; `mon-get-env-vars-symbols', `mon-get-env-vars-emacs',
;; `mon-get-env-vars-strings', `mon-get-emacsd-paths', `mon-get-proc-w-name',
;; `mon-get-sys-proc-list', `mon-insert-sys-proc-list',
;; `mon-get-process', `mon-get-system-specs', `mon-async-du-dir', 
;; `mon-cmd', `mon-terminal', `mon-make-shell-buffer', `mon-shell', 
;;
;; `mon-scratch', `switch-to-messages', `mon-kill-completions', 
;; `mon-toggle-trunc', `mon-toggle-menu-bar', `mon-choose-from-menu',
;; `mon-postion-for-x-popup-menu',
;; `scroll-up-in-place', `scroll-down-in-place',
;; `mon-line-move-n', `mon-line-move-prev', `mon-line-move-next'
;; `mon-flip-windows', `mon-twin-horizontal', `mon-twin-vertical',
;;
;; `mon-rotate-ascii-cursor',
;;
;; `mon-test-keypresses', `mon-read-keys-as-string', `mon-read-multiple'
;;
;; `mon-abort-recursive-edit', `mon-abort-autosave-when-fucked',
;; 
;; `mon-append-to-register', `mon-append-to-buffer',
;; `mon-kill-appending', `mon-buffer-name->kill-ring', 
;;
;; FUNCTIONS:◄◄◄
;; 
;; MACROS:
;; `mon-foreach', `mon-for',  `mon-loop', `mon-moveq',
;; `mon-line-dolines', `defconstant', `defparameter',
;; `mon-with-buffer-undo-disabled', `mon-get-face-at-posn',
;; `mon-buffer-exists-p', `mon-check-feature-for-loadtime',
;; `mon-with-inhibit-buffer-read-only', `mon-gensym',
;; `mon-with-gensyms',  `mon-nshuffle-vector', `mon-mapcar-mac',
;; `mon-list-sift', `mon-with-print-gensyms', `mon-equality-for-type',
;;
;; METHODS:
;;
;; CLASSES:
;;
;; CONSTANTS:
;;
;; VARIABLES:
;; `*mon-utils-post-load-requires*', `*mon-recover-nil-t-default-plist*',
;; `*mon-bit-table*', 
;; `*mon-equality-or-predicate-function-types*', `*mon-function-object-types*',
;; `*mon-special-forms-types*', `*mon-non-mappable-object-types*', 
;; `*mon-default-comment-start*', `*mon-ascii-cursor-state*',
;; `*mon-popup-pos-x-offset*'
;;
;; :GROUPS
;; `mon-base'
;;
;; ALIASED:
;; :NOTE Aliases defined in :FILE mon-aliases.el
;;
;; <UNQUALIFIED-ALIAS>                  <PREFIX>-<NON-CORE-SYMBOL>
;; `proper-list-p'                   -> `mon-list-proper-p'
;; `next-almost-prime'               -> `mon-next-almost-prime'
;; `nshuffle-vector'                 -> `mon-nshuffle-vector'
;; `delq-dups'                       -> `mon-delq-dups' 
;; `buffer-exists-p'                 -> `mon-buffer-exists-p'
;; `with-gensyms'                    -> `mon-with-gensyms'
;; `get-buffer-window-if'            -> `mon-get-buffer-window-if'
;; `buffer-narrowed-p'               -> `mon-buffer-narrowed-p'
;; `zerop-or-one'                    -> `mon-zero-or-onep'
;; `string-or-null-and-zerop'        -> `mon-string-or-null-and-zerop'
;; `stringp-and-zerop-or-null'       -> `mon-string-or-null-and-zerop'
;; `string-not-null-nor-zerop'       -> `mon-string-not-null-nor-zerop'
;; `with-print-gensyms'              -> `mon-with-print-gensyms'
;;
;; <PREFIX>-<QUALIFIED>                 <CORE-SYMBOL>
;; `mon-string-combine-and-quote'    -> `combine-and-quote-strings'
;; `mon-string-split-and-unquote'    -> `split-string-and-unquote'
;; `mon-line-keep-match'             -> `keep-lines'
;; `mon-line-delete-match'           -> `flush-lines'
;; `mon-line-count-match'            -> `how-many'
;; `mon-string-set-char-at-idx'      -> `store-substring'     
;; `mon-string-insert-string-at-idx' -> `store-substring'
;; `mon-delq-alist'                  -> `assq-delete-all'
;; `mon-line-join-previous'          -> `delete-indentation'
;;
;; <PREFIX>-<QUALIFIED>                 <PREFIX>-<CORE-SYMBOL>
;; `mon-sort-alist'                  -> `edebug-sort-alist'
;; `mon-skip-whitespace'             -> `edebug-skip-whitespace'
;; `mon-list-chop'                   -> `ido-chop'
;; `mon-string-prefix-p'             -> `vc-string-prefix-p'
;;
;;  <PREFIX>-<QUALIFIED>                <PREFIX>-<NON-CORE-SYMBOL>
;; `mon-0-or-1-p'                    -> `mon-zero-or-onep'
;; `mon-1-or-0-p'                    -> `mon-zero-or-onep'
;; `mon-append-next-kill'            -> `mon-kill-appending' 
;; `mon-bit-table-bits'              -> `mon-get-bit-table'
;; `mon-bool-vector-to-list'         -> `mon-bool-vector-pp'
;; `mon-boolean-to-binary'           -> `mon-booleanp-to-binary'
;; `mon-boolean-vector-to-list'      -> `mon-bool-vector-pp'
;; `mon-buffer-append-to'            -> `mon-append-to-buffer'
;; `mon-buffer-end'                  -> `mon-g2be'
;; `mon-buffer-get-hidden'           -> `mon-get-buffer-hidden'
;; `mon-buffer-get-messages'         -> `mon-switch-to-messages'
;; `mon-buffer-get-scratch'          -> `mon-scratch'
;; `mon-buffer-get-shell'            -> `mon-shell'
;; `mon-buffer-get-w-mode'           -> `mon-get-buffer-w-mode'
;; `mon-buffer-get-word-count'       -> `mon-word-count-occurrences'
;; `mon-buffer-kill-completions'     -> `mon-kill-completions' 
;; `mon-buffer-make-shell'           -> `mon-make-shell-buffer'
;; `mon-buffer-name-print-readably'  -> `mon-print-buffer-object-readably'
;; `mon-byte-table-bits'             -> `mon-get-bit-table'
;; `mon-delete-dups-eql'             -> `mon-deleql-dups'
;; `mon-false-to-zero'               -> `mon-booleanp-to-binary'
;; `mon-flatten'                     -> `mon-list-flatten'
;; `mon-generate-wonky'              -> `mon-string-wonkify'
;; `mon-get-hidden-buffers'          -> `mon-get-buffer-hidden'
;; `mon-get-next-almost-prime'       -> `mon-next-almost-prime'
;; `mon-get-window-plist'            -> `mon-map-windows->plist'
;; `mon-help-hidden-buffers'         -> `mon-get-buffer-hidden'
;; `mon-indent-lines-from-to-col'    -> `mon-line-indent-from-to-col'
;; `mon-indent-refill-region'        -> `mon-region-indent-refill'
;; `mon-indent-region-refill'        -> `mon-region-indent-refill'
;; `mon-kill-ring-save-w-props'      -> `mon-get-text-properties-region-to-kill-ring'                  
;; `mon-lisp-escape-region'          -> `mon-escape-lisp-string-region'
;; `mon-lisp-unescape-region'        -> `mon-unescape-lisp-string-region'
;; `mon-list-all-booleanp'           -> `mon-sequence-all-booleanp'
;; `mon-list-combine'                -> `mon-combine' 
;; `mon-list-deleql-dups'            -> `mon-deleql-dups'
;; `mon-list-delete-first'           -> `mon-delete-first'
;; `mon-list-delete-if'              -> `mon-delete-if'
;; `mon-list-delq-dups'              -> `mon-delq-dups'
;; `mon-list-flatten-rotated'        -> `mon-rotate-flatten-list'
;; `mon-list-ify-bool-vector'        -> `mon-bool-vector-pp' 
;; `mon-list-intersect'              -> `mon-intersection'
;; `mon-list-mappable-p'             -> `mon-seqeunce-mappable-p'
;; `mon-list-member-if'              -> `mon-member-if'
;; `mon-list-nqueue'                 -> `mon-moveq'
;; `mon-list-recurse-apply'          -> `mon-recursive-apply'
;; `mon-list-remove-dups'            -> `mon-remove-dups'
;; `mon-list-remove-if'              -> `mon-remove-if'
;; `mon-list-remove-if-not'          -> `mon-remove-if-not'
;; `mon-list-set-diff'               -> `mon-set-difference'
;; `mon-list-union'                  -> `mon-union'
;; `mon-list-union'                  -> `mon-union'
;; `mon-map-combine'                 -> `mon-combine'
;; `mon-mappable-sequence-p'         -> `mon-seqeunce-mappable-p'
;; `mon-merge-list'                  -> `mon-list-merge'
;; `mon-nil-to-0'                    -> `mon-booleanp-to-binary'
;; `mon-one-or-zerop'                -> `mon-zero-or-onep'
;; `mon-proper-list-p'               -> `mon-list-proper-p'
;; `mon-read-keys-last-event'        -> `mon-test-keypresses'
;; `mon-region-refill-indent'        -> `mon-region-indent-refill'
;; `mon-region-reverse-chars'        -> `mon-region-reverse'
;; `mon-region-reverse-words'        -> `mon-word-reverse-region'
;; `mon-region-wrap'                 -> `mon-wrap-selection'
;; `mon-register-append'             -> `mon-append-to-register'
;; `mon-remove-char-in-string'       -> `mon-string-replace-char'
;; `mon-reorder-vector'              -> `mon-list-reorder'
;; `mon-replace-char-in-string'      -> `mon-string-replace-char'
;; `mon-reverse-region-words'        -> `mon-word-reverse-region'
;; `mon-seq->string'                 -> `mon-string-from-sequence'
;; `mon-seqeunce-reorder'            -> `mon-list-reorder'
;; `mon-sequence-to-string'          -> `mon-string-from-sequence'
;; `mon-split-string'                -> `mon-string-split'
;; `mon-string->symbol'              -> `mon-string-to-symbol'
;; `mon-string-escape-lisp-region'   -> `mon-escape-lisp-string-region'
;; `mon-string-from-keybard-input'   -> `mon-read-keys-as-string'
;; `mon-string-from-symbol'          -> `mon-symbol-to-string'
;; `mon-string-unescape-lisp-region' -> `mon-unescape-lisp-string-region'
;; `mon-string<-symbol'              -> `mon-symbol-to-string'
;; `mon-symbol->string'              -> `mon-symbol-to-string'
;; `mon-t-to-1'                      -> `mon-booleanp-to-binary'
;; `mon-true-to-one'                 -> `mon-booleanp-to-binary'
;; `mon-window-flip'                 -> `mon-flip-windows'
;; `mon-window-get-if-buffer'        -> `mon-get-buffer-window-if'
;; `mon-window-map-active-to-plist'  -> `mon-map-windows->plist'
;; `mon-window-split-horiz'          -> `mon-twin-horizontal'
;; `mon-window-split-vert'           -> `mon-twin-vertical'
;; `mon-zerop-or-one'                -> `mon-zero-or-onep'
;; `mon-buffer-do-with-undo-disabled'  -> `mon-with-buffer-undo-disabled'
;; `mon-capitalize-region'             -> `mon-region-capitalize'
;; `mon-rectangle-kill-w-longest-line' -> `mon-kill-rectangle-w-beer-belly'
;; `mon-get-text-properties-region->kill-ring' -> `mon-get-text-properties-region-to-kill-ring'
;;
;; DEPRECATED:
;; `mon-string-from-sequence2' ;; :REMOVED
;;
;; RENAMED:
;; `mon-make-a-pp'                   -> `mon-pretty-print-sexp-at-point'
;; `mon-trunc'                       -> `mon-toggle-truncate-line'
;; `mon-stringify-list'              -> `mon-string-ify-list'
;; `mon-split-string-line'           -> `mon-string-split-line'
;; `mon-what-face'                   -> `mon-get-face-at-point'
;; `mon-line-strings-to-list-*test*' -> `mon-line-strings-to-list-TEST'
;; `scroll-up-in-place'              -> `mon-scroll-up-in-place'
;; `scroll-down-in-place'            -> `mon-scroll-down-in-place'
;; `mon-kill-ring-save-w-props'      -> `mon-get-text-properties-region-to-kill-ring'
;; `boxcutter-verify-image-type'     -> `mon-image-verify-type'
;;
;; MOVED:
;; `mon-coerce->char'                             -> mon-empty-registers.el
;; `mon-decode-meta-key-event'                    -> mon-empty-registers.el
;; `mon-catch-meta-key'                           -> mon-empty-registers.el
;; `mon-index-elisp-symbol'                       -> mon-doc-help-utils.el
;; `mon-cmd'                                      <- default-start-loads.el
;; `mon-terminal'                                 <- default-start-loads.el
;; `boxcutter-verify-image-type'                  <- mon-boxcutter.el
;; `mon-list-flatten-rotated'                     <- mon-name-utils.el
;; `mon-list-all-properties-in-buffer'            <- mon-text-property-utils.el
;; `mon-get-text-properties-region-to-kill-ring'  <- mon-text-property-utils.el
;; `mon-nuke-text-properties-buffer'              <- mon-text-property-utils.el
;; `mon-remove-text-property'                     <- mon-text-property-utils.el 
;; `mon-get-face-at-posn'                         <- mon-text-property-utils.el
;; `mon-get-face-at-point'                        <- mon-text-property-utils.el
;; `mon-remove-single-text-property'              <- mon-text-property-utils.el
;; `mon-nuke-text-properties-region'              <- mon-text-property-utils.el
;; `mon-get-text-properties-category'             <- mon-text-property-utils.el
;; `mon-nuke-overlay-buffer'                      <- mon-text-property-utils.el
;; `mon-plist-keys'                               <- mon-plist-utils.el
;; `mon-plist-remove!'                            <- mon-plist-utils.el
;; `mon-plist-remove-consing'                     <- mon-plist-utils.el
;; `mon-plist-remove-if'                          <- mon-plist-utils.el
;; `mon-list-nshuffle-TEST'                       -> mon-testme-utils.el
;; `mon-gensym-counter-randomizer-TEST'           -> mon-testme-utils.el
;; `mon-line-strings-to-list-TEST'                -> mon-testme-utils.el
;; `mon-with-inhibit-buffer-read-only-TEST'       -> mon-testme-utils.el
;; `mon-line-dolines-TEST'                        -> mon-testme-utils.el
;; `mon-line-dolines-setup-TEST'                  -> mon-testme-utils.el
;; `mon-with-buffer-undo-disabled-TEST'           -> mon-testme-utils.el
;; `mon-with-inhibit-buffer-read-only-PP-TEST'    -> mon-testme-utils.el
;; `mon-string-split-TEST'                        -> mon-testme-utils.el
;; `mon-line-strings-bq-qt-sym-bol-TEST'          -> mon-testme-utils.el
;; `*mon-alphabet-as-type-generate*'              -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-type'                         -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-defun'                        -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-bc'                           -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-map-bc'                       -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-doc-loadtime'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-map-fun-prop'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-unintern-fun'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-keyU->num'               -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-keyD->num'               -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-symU->num'               -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-symD->num'               -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-stringU->num'            -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-stringD->num'            -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-keyU->stringU'           -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-cons-keyD->stringD'           -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-plistU->stringU'              -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-plistD->stringD'              -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-plistU->num'                  -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-plistD->num'                  -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-list-stringU'                 -> mon-alphabet-list-utils.el 
;; `mon-alphabet-as-list-stringD'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-list-symbolU'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-list-symbolD'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-stringU-w-nl'                 -> mon-alphabet-list-utils.el  
;; `mon-alphabet-as-stringD-w-nl'                 -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-stringU-w-spc'                -> mon-alphabet-list-utils.el
;; `mon-alphabet-as-stringD-w-spc'                -> mon-alphabet-list-utils.el
;; `*mon-default-comment-start*'                  <- mon-time-utils.el
;; `mon-read-multiple'                            <- mon-dir-utils.el
;;
;; REQUIRES:
;;
;; TODO:
;;
;; NOTES:
;; `mon-maptree' uses `flet' cl--every                  -> `every'
;; `mon-get-process' uses `flet' cl--find-if            -> `find-if'
;; `mon-combine' uses `flet' cl--mapcan                 -> `mapcan'
;;
;; SNIPPETS:
;;
;; THIRD PARTY CODE:
;; Following functions were sourced from Steel Bank Common Lisp
;; :FILE sblc/src/code/list.lisp circa SBCL 1.0.42.*
;; :RENAMED-TO      :FROM
;; `mon-map1'    <- MAP1 
;; `mon-mapl'    <- MAPL
;; `mon-maplist' <- MAPLIST
;; `mon-mapcar'  <- MAPCAR 
;; `mon-mapcan'  <- MAPCAN
;; `mon-mapcon'  <- MAPCON
;; While some minor modifications were made w/re namespacing w/ additional Emacs
;; lispification to `mon-map1' the SBCL license is still applicable.  
;; :SEE (URL `http://www.sbcl.org/history.html')
;; :SEE (URL `http://sbcl.cvs.sourceforge.net/*checkout*/sbcl/sbcl/COPYING?revision=HEAD')
;;
;; The SBCL CREDITS file notes that much of the list.lisp functions can be
;; traced to Skef Wholey and the CMU SPICE lisp with additional code descending
;; from Joe Ginder and Carl Ebeling). It is unclear how much has changed since
;; that time.
;;
;; URL: http://www.emacswiki.org/emacs/mon-utils.el
;; FIRST-PUBLISHED: AUGUST 2009
;;
;; EMACS-WIKI: (URL `http://www.emacswiki.org/emacs/MonUtils')
;; FIRST-PUBLISHED: <Timestamp: #{2009-12-22T03:43:27-05:00Z}#{09522} - by MON>
;;
;; FILE-CREATED:
;; <Timestamp: 2008-09 - by MON KEY>
;;
;; =================================================================

;;; LICENSE:

;; =================================================================
;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;; =================================================================
;; Permission is granted to copy, distribute and/or modify this
;; document under the terms of the GNU Free Documentation License,
;; Version 1.3 or any later version published by the Free Software
;; Foundation; with no Invariant Sections, no Front-Cover Texts,
;; and no Back-Cover Texts. A copy of the license is included in
;; the section entitled ``GNU Free Documentation License''.
;; 
;; A copy of the license is also available from the Free Software
;; Foundation Web site at:
;; (URL `http://www.gnu.org/licenses/fdl-1.3.txt').
;;; ===================================
;; Copyright © 2008-2010 MON KEY 
;;; ===================================

;;; CODE:
;;; mon-alphabet-list-utils, mon-alphabet-as-type
;;; ==============================


;;; ==============================
(eval-when-compile (require 'cl))
;;
;; (eval-when-compile (require 'mon-cl-compat nil t))

(unless (and (intern-soft "*IS-MON-OBARRAY*")
             (bound-and-true-p *IS-MON-OBARRAY*))
(setq *IS-MON-OBARRAY* (make-vector 17 nil)))

;;; ==============================
;;; :NOTE before :FILE mon-error-utils.el mon-text-property-utils.el
;;; :CHANGESET 2171
;;; :CREATED <Timestamp: #{2010-10-02T11:32:40-04:00Z}#{10396} - by MON KEY>
(defgroup mon-base nil
  "Top level group from which other mon related packages and groups inherit.\n
:SEE-ALSO .\n►►►"
  :prefix "mon-"
  :prefix "*mon-"
  :link '(url-link 
          :tag ":EMACSWIKI-FILE" "http://www.emacswiki.org/emacs/mon-utils.el")
  :link '(emacs-library-link "mon-utils.el")
  :link '(custom-group-link mon-doc-help-utils-faces)
  :link '(custom-group-link mon-doc-help-utils)
  :link '(custom-group-link mon-error-warn)
  :group 'local)

(require 'mon-error-utils)
(require 'mon-text-property-utils) ; requires mon-plist-utils.el
(require 'edebug)
(require 'easymenu)
(require 'bytecomp)
(require 'macroexp)

(declare-function w32-shell-execute "w32fns.c")

;;; ==============================
;;; :NOTE The :CONSTANT `IS-MON-SYSTEM-P' is bound in:
;;; :FILE mon-default-start-loads.el
;;; If this is not present on your system these MON features won't load.
;;; To fix this, you can do one of the following:
;;;   a) Load mon-default-start-loads.el
;;;   b) Bind `IS-MON-SYSTEM-P' to t here
;;;   c) Replace "(when IS-MON-SYSTEM-P" with "(when t"
;;;   d) Remove  "(when IS-MON-SYSTEM-P" and comment out unwanted features
;;; The preferred solution is `a' as it provides other system conditionals you
;;; will most likely need anyway with most of the `mon-*.el' packages.
;; (when (and (intern-soft "IS-MON-SYSTEM-P" obarray)
;;            (bound-and-true-p IS-MON-SYSTEM-P))

;;; ==============================
;;; :TODO extend this list into an alist with elements containing 
;;; plist keys :requires :required-by :optional etc.
;;; :CHANGESET 2112
;;; :CREATED <Timestamp: #{2010-09-06T16:54:51-04:00Z}#{10361} - by MON KEY>
(defvar *mon-utils-post-load-requires* nil
  "*List of features loaded by feature mon-utils.el\n
:CALLED BY `mon-utils-require-features-at-loadtime'\n
:SEE-ALSO `mon-after-mon-utils-loadtime'.\n►►►")
;;
(unless (and (intern-soft "*mon-utils-post-load-requires*" obarray)
             (bound-and-true-p *mon-utils-post-load-requires*))
  (setq *mon-utils-post-load-requires*
        '(mon-alphabet-list-utils
          mon-regexp-symbols
          mon-time-utils
          ;; :FILE mon-replacement-utils.el :BEFORE :FILE mon-dir-utils.el mon-insertion-utils.el
          mon-replacement-utils 
          ;; :FILE mon-dir-utils.el :LOADS mon-dir-locals-alist.el 
          ;; :REQUIRES  mon-hash-utils.el, mon-replacement-utils.el, 
          ;;            mon-css-color.el, mon-rename-image-utils.el
          mon-dir-locals-alist
          mon-dir-utils
          mon-dir-utils-local
          mon-button-utils
          mon-cifs-utils
          mon-insertion-utils
          naf-mode-insertion-utils
          ;; :FILE mon-get-mon-packages.el :AFTER-LOAD :FILE mon-wget-utils.el
          mon-wget-utils 
          mon-url-utils
          mon-hash-utils
          mon-doc-help-utils
          mon-doc-help-CL
          mon-tramp-utils
          naf-skeletons
          ;; :NOTE `naf-mode` already have been pulled in by 
          ;; :FILE mon-default-start-loads.el
          naf-mode 
          ebay-template-mode
          mon-empty-registers
          mon-iptables-vars
          mon-iptables-regexps
          mon-mysql-utils
          )))

;;; ==============================
;;; :CHANGESET 2299
;;; :CREATED <Timestamp: #{2010-11-11T17:01:49-05:00Z}#{10454} - by MON KEY>
(defvar *mon-special-forms-types*
  '(setq quote let let* 
    and or if cond while
    progn prog1 prog2 unwind-protect catch condition-case 
    defun defmacro function defconst defvar
    setq-default
    interactive 
    save-excursion  save-restriction save-current-buffer save-window-excursion
    with-output-to-temp-buffer
    track-mouse
    ;; :NOTE The manual says that following are special-forms:
    ;;  `eval-and-compile' `eval-when-compile' `with-no-warnings'
    ;; but `describe-function' says they are defined in:
    ;; :FILE lisp/emacs-lisp/byte-run.el
    ;; eval-and-compile eval-when-compile with-no-warnings
    )
  "List of Emacs' special forms.\n
:NOTE List does not include following symbols:\n
 `eval-and-compile' `eval-when-compile' `with-no-warnings'\n
These are defined in :FILE lisp/emacs-lisp/byte-run.el\n
:SEE info node `(elisp)Special Forms'\n
:SEE-ALSO `*mon-function-object-types*',
`*mon-equality-or-predicate-function-types*', `*mon-non-mappable-object-types*',
`*mon-help-subrs*', `*mon-help-side-effect-free*',
`*mon-help-side-effect-and-error-free*', `*mon-help-pure-functions*',
`*mon-help-permanent-locals*', `*mon-function-object-types*',
`*mon-equality-or-predicate-function-types*', `*mon-non-mappable-object-types*',
`*mon-help-risky-local-variables*', `mon-help-symbol-functions'.\n►►►")

;;; ==============================
;;; :CHANGESET 2211
;;; :CREATED <Timestamp: #{2010-10-27T15:06:17-04:00Z}#{10433} - by MON KEY>
(defvar *mon-non-mappable-object-types* 
  '(compiled-function subr
    hash-table char-table 
    integer marker float
    buffer overlay 
    frame window window-configuration
    process
    font-entity font-object font-spec
    ;; :NOTE  Don't be tempted to add `symbol` to this list! 
    ;; `type-of' returns 'symbol for the empty list: (type-of '()) 
    ;; Its `mon-sequence-mappable-p's job to check for this, so let her do it.
    ;;
    ;; :NOTE Leave `t' as last elt. It isn't mappable, and its nice to have it
    ;; as the _only_ elt when return value from `memq' e.g.:
    ;;  (memq t *mon-non-mappable-object-types*)
    ;;  (car (memq t *mon-non-mappable-object-types*))
    t)
  "List of Emacs object types which are not mappable.\n
A \"mappable\" object is one which by can occur as a SEQUENCE arge to:\n
 `mapc' `mapcar' `mapconcat'\n
:EXAMPLE\n\n\(memq 'process *mon-non-mappable-object-types*\)\n
\(not \(memq 'cons *mon-non-mappable-object-types*\)\)\n
:NOTE Objects of type `hash-table' are mappable with `maphash'.\n
:NOTE For `nil' and empty list `type-of' returns `symbol' which is why it isn't
provided by the current list.\n
:SEE info node `(elisp)Type Predicates'
:SEE info node `(elisp) Lisp Data Types'\n
:SEE-ALSO `mon-sequence-mappable-p', `mon-list-proper-p', `mon-booleanp',
`*mon-equality-or-predicate-function-types*', `*mon-function-object-types*',
`*mon-special-forms-types*', `*mon-help-emacs-errors*', `*mon-help-side-effect-free*',
`*mon-help-side-effect-and-error-free*', `*mon-help-pure-functions*',
`*mon-help-permanent-locals*', `*mon-help-byte-optimizer-vals*',
`*mon-help-permanent-locals*', `*mon-help-risky-local-variables*',
`byte-boolean-vars', `mon-map-obarray-symbol-plist-props',
`mon-help-byte-optimizer-find'.\n►►►")

;;; ==============================
;;; :CHANGESET 2178
;;; :CREATED <Timestamp: #{2010-10-04T22:30:10-04:00Z}#{10401} - by MON KEY>
(defcustom *mon-equality-or-predicate-function-types* 
  '(eq eql equal 
    memq memql member
    member-ignore-case
    > < <= >= =
    assq assoc rassq rassoc
    assoc-default assoc-ignore-representation
    string-equal string-lessp 
    string-match-p string-prefix-p
    equal-including-properties
    subregexp-context-p
    time-less-p
    file-attributes-lessp
    ;; 
    version-list-< version-list-=
    version-list-<= version< version<= version=
    face-equal internal-lisp-face-equal-p
    facemenu-color-equal
    ;; cl
    equalp subsetp tailp typep)
  "List of predicates or two argument predicate-like functions.\n
For use with `mon-equality-or-predicate'.\n
:EXAMPLE\n\n\(memq 'equalp *mon-equality-or-predicate-function-types*\)\n
\(not \(memq 'subrp *mon-equality-or-predicate-function-types*\)\)\n
:SEE info node `(elisp)Type Predicates'\n
:SEE-ALSO `mon-equality-for-type',`*mon-function-object-types*',
`*mon-special-forms-types*', `*mon-non-mappable-object-types*',
`*mon-help-side-effect-free*' `*mon-help-side-effect-and-error-free*',
`*mon-help-pure-functions*', `*mon-help-permanent-locals*',
`*mon-help-byte-optimizer-vals*', `*mon-help-permanent-locals*',
`*mon-help-risky-local-variables*', `*mon-help-emacs-errors*', `mon-booleanp',
`byte-boolean-vars', `mon-map-obarray-symbol-plist-props',
`mon-help-byte-optimizer-find'.\n►►►"
  :type  '(repeat symbol)
  :group 'mon-base)

;;; ==============================
;;; :CREATED <Timestamp: #{2009-10-24T14:12:12-04:00Z}#{09436} - by MON KEY>
(defcustom  *mon-default-comment-start* ";;; "
  "*Comment prefix for `mon-comment-divider-w-len'.\n
This is a cheap work around so we don't have to deal with `comment-start' with
`mon-comment-*' functions which might rely on or calculate a string/substring
inidex per the value of this var.\n
Default is \";;; \"\n
:EXAMPLE\n\n(symbol-value '*mon-default-comment-start*)\n
\(let \(\(*mon-default-comment-start* \"%% \"\)\)
  *mon-default-comment-start*\)\n
 \(mon-comment-divider-w-len 36\)\n
:SEE-ALSO `*mon-default-comment-divider*', `mon-set-buffer-local-comment-start',
`mon-set-buffer-local-comment-start-init', `mon-comment-divider-to-col',
`mon-comment-divider-to-col-four', `mon-comment-divider-w-len',
`mon-comment-lisp-to-col'.\n►►►"
  ;; :TODO :type key should have required match.
  :type  'string
  :group 'mon-base)
;;
;; (unless (bound-and-true-p *mon-default-comment-start*)
;;         (setq *mon-default-comment-start* ";;; "))

;;; ==============================
;;; :CREATED <Timestamp: #{2009-10-24T12:07:10-04:00Z}#{09436} - by MON KEY>
(defcustom *mon-default-comment-divider* (mon-comment-divider-w-len 30)
  "*Preferred mon-comment-divider for lisp source sectioning.\n
:CALLED-BY `mon-comment-divider', `mon-comment-divider-to-col'\n
:SEE-ALSO `mon-comment-divider-w-len', `mon-comment-divider-to-col'\n►►►"
  ;; :TODO :type key should have required match.
  :type  'string  
  :group 'mon-base)
;;
;;;(progn (makunbound '*mon-default-comment-divider*)
;;;       (unintern "*mon-default-comment-divider*" obarray) )

;;; ==============================
;;; :TODO Factor this var away.
;;; :CREATED <Timestamp: Saturday July 18, 2009 @ 11:59.08 AM - by MON KEY>
(defcustom *mon-timestamp-cond* nil
  "A list of filenames which get alternative timestamp name strings.\n
car is a filename and must be a string without whitespace, delimiters or punctuation.\n
cadr is a username to insert when timestamping in a file matching car.\n
These values are used to inform calling functions according to some heuristic.\n
:NOTE Used for file based conditional timestamps and obfuscating files/source.
:SEE-ALSO `mon-timestamp', `mon-accessed-time-stamp', `mon-accessed-stamp',
`naf-mode-timestamp-flag'.\n►►►"
  :type '(repeat (list string string))
  :group 'mon-base)


;;; ==============================
;;; :CHANGESET 2291
;;; :CREATED <Timestamp: #{2010-11-09T22:26:44-05:00Z}#{10452} - by MON KEY>
(defcustom *mon-popup-pos-x-offset* 
  (or (and (eq window-system 'x) 40)
      (and (eq window-system 'w32) 110) 
      0 ;; terminal
      )
  "Position for top place an `x-popup-menu'.\n
:EXAMPLE\n\n
:SEE-ALSO `*css-complete-popup-pos-x-offset*'.\n►►►"
  :type  'integer
  :group 'mon-base)

;; 

;;; ==============================
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T15:39:13-04:00Z}#{10381} - by MON>
(defvar *mon-recover-nil-t-default-plist* nil
  "Bound at loadtime to the default plists of `nil' and `t'.\n
Recover plists with `mon-recover-nil-t-default-plist' if they become corrupted.\n
:EXAMPLE\n\n*mon-recover-nil-t-default-plist*\n
\(memq :nil-default-plist *mon-recover-nil-t-default-plist*\)\n
\(memq :t-default-plist *mon-recover-nil-t-default-plist*\)\n
:SEE-ALSO `setplist', `symbol-plist', `mon-after-mon-utils-loadtime',
`mon-run-post-load-hooks'.\n►►►")

;;; ==============================
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T16:01:23-04:00Z}#{10381} - by MON KEY>
(defun mon-recover-nil-t-default-plist (&optional intrp)
  "Recover the default loadtime plists value of `nil' and `t'.\n
When called at loadtime and `*mon-recover-nil-t-default-plist*' is void bind it.\n
Called in a post-loadtime environement restores the plist values stored in
`*mon-recover-nil-t-default-plist*' keys :nil-default-plist :t-default-plist.\n
:EXAMPLE\n\n\(mon-recover-nil-t-default-plist t\)\n
:SEE-ALSO `setplist', `symbol-plist', `mon-after-mon-utils-loadtime', 
`mon-run-post-load-hooks'.\n►►►"
  (interactive "p")
  (if (and (intern-soft "*mon-recover-nil-t-default-plist*" obarray)
           (bound-and-true-p *mon-recover-nil-t-default-plist*))
      (let ((nval (cadr (memq :nil-default-plist *mon-recover-nil-t-default-plist*)))
            (tval (cadr (memq :t-default-plist *mon-recover-nil-t-default-plist*))))
        (if intrp 
            (when (y-or-n-p (format 
                             (concat 
                              ":FUNCTION `mon-recover-nil-t-default-plist' --\n"
                              "Current plist for `nil' is:\n %S\n"
                              "Loadtime plist for `nil' was:\n %S\n"
                              "Current plist for `t' is:\n %S\n"
                              "Loadtime plist for `t' was:\n %S\n"
                              "Rebind plists of `t' and `nil' to default loadtime values?: ")
                             (symbol-plist nil) nval (symbol-plist t) tval))
              (setplist nil nval)
              (setplist t   tval)
              (minibuffer-message (concat 
                                   ":FUNCTION `mon-recover-nil-t-default-plist' "
                                   "-- rebound plists of `t' and `nil' to default loadtime values")))
          (and (setplist nil nval)
               (setplist t   tval)
               t)))
    (progn
      (setq *mon-recover-nil-t-default-plist*
            `(:nil-default-plist ,(symbol-plist nil) :t-default-plist  ,(symbol-plist t)))
      (message (concat ":FUNCTION `mon-recover-nil-t-default-plist' "
                       "-- :VARIALBE `*mon-recover-nil-t-default-plist*' bound at loadtime")))))

;;; ==============================
;;; :NOTE `mon-get-mon-emacsd-paths' is an interpreted function in:
;;; :FILE mon-default-start-loads.el
;;; :MOVED into `mon-utils-require-features-at-loadtime'
;; (when (fboundp 'mon-get-mon-emacsd-paths)
;;   (fset 'mon-get-emacsd-paths 
;;         (byte-compile
;;          (indirect-function 'mon-get-mon-emacsd-paths)))
;;   (message 
;;    "`byte-compile'd :FUNCTION `mon-get-mon-emacsd-paths' at loadtime"))

;;; ==============================
;;; :PREFIX "mcffl-"
;;; :NOTE Adding an optional arg W-SIGNAL-ERROR doesn't really make sense as the
;;; check for filename is made explicit with this marcro.
;;; :CREATED <Timestamp: #{2010-02-24T15:15:25-05:00Z}#{10083} - by MON KEY>
(defmacro mon-check-feature-for-loadtime (feature-as-symbol &optional req-w-filname)
  "Test if library FEATURE-AS-SYMBOL is in load path. If so, require feature.\n
The arg FEATURE-AS-SYMBOL is a quoted symbol.\n
When optional arg REQ-W-FILNAME is non-nil second arg to `require' will given as
the filename of feature FEATURE-AS-SYMBOL when it is in loadpath.\n
:EXAMPLE\n\n\(pp-macroexpand-expression 
          '\(mon-check-feature-for-loadtime 'mon-test-feature-fl\)\)\n
:SEE-ALSO `mon-run-post-load-hooks', `mon-purge-cl-symbol-buffers-on-load',
`mon-after-mon-utils-loadtime', `mon-unbind-command', `mon-unbind-symbol',
`mon-unbind-function', `mon-unbind-variable', `mon-unbind-defun',
`mon-compile-when-needed' `mon-load-or-alert', `mon-byte-compile-and-load',
`mon-dump-object-to-file', `mon-nuke-and-eval'.\n►►►"
  (declare (indent 2) (debug t))
  (let ((mcffl-lcl (make-symbol "mcffl-lcl"))
        (mcffl-chk (make-symbol "mcffl-chk")))
    `(let (,mcffl-lcl ,mcffl-chk)
       (setq ,mcffl-lcl (locate-library (format "%s" ,feature-as-symbol)))
       (if ,mcffl-lcl
           (unless (featurep ,feature-as-symbol)
             (if ,req-w-filname
                 (require ,feature-as-symbol ,mcffl-lcl t) ;;,(if w-signal-error nil t))
               (require ,feature-as-symbol nil t))) ;;,(if w-signal-error t nil))))
         (error 
          (concat ":MACRO `mon-check-feature-for-loadtime' "
                  "-- arg FEATURE-AS-SYMBOL does not find a feature or file, got: %s")
          ,feature-as-symbol)))))
;;
;; (put 'mon-check-feature-for-loadtime 'lisp-indent-function <INT>) 
;;
;;
;;; :TEST-ME (pp-macroexpand-expression 
;;;           '(mon-check-feature-for-loadtime 'mon-test-feature-fl))
;;; :TEST-ME (pp-macroexpand-expression 
;;;           '(mon-check-feature-for-loadtime 'mon-test-feature-fl t))
;; 
;;; :TEST-ME 
;;; (let ((mtff (concat default-directory "mon-test-feature-fl.el")))
;;;   (unwind-protect   
;;;        (progn
;;;          (with-temp-file mtff
;;;            (insert 
;;;             (concat 
;;;              "\(defvar *mon-test-feature-var* t\n"
;;;              "\"Docstring present if `mon-test-feature-fl' is feature in environment.\"\)\n"
;;;              "\(provide 'mon-test-feature-fl\)"))
;;;            (mon-check-feature-for-loadtime 'mon-test-feature-fl)
;;;            (message (documentation-property '*mon-test-feature-var* 'variable-documentation))
;;;            (sit-for 4))
;;;          (progn (unload-feature 'mon-test-feature-fl) (delete-file mtff)))))

;;; ==============================
;;; :PREFIX "murfal-"
;;; :CHANGESET 2112
;;; :CREATED <Timestamp: #{2010-09-06T17:05:28-04:00Z}#{10361} - by MON KEY>
(defun mon-utils-require-features-at-loadtime ()
  "Evaluated as the last form in mon-utils.el\n
Evaluates macro `mon-check-feature-for-loadtime' for each feature listed in
varaible `*mon-utils-post-load-requires*'\n
:SEE-ALSO `mon-after-mon-utils-loadtime', `mon-run-post-load-hooks'.\n►►►"
  ;; (when (and (intern-soft "IS-MON-SYSTEM-P" obarray)
  ;; 	       (bound-and-true-p IS-MON-SYSTEM-P))
  (let (murfal-did-rqr)
    (dolist (murfal-D-1 *mon-utils-post-load-requires*)
      (let ((murfal-D-1-lcl-rqrd (mon-check-feature-for-loadtime murfal-D-1)))
        (when murfal-D-1-lcl-rqrd 
          (push (symbol-name murfal-D-1-lcl-rqrd) murfal-did-rqr))))
    (when (consp murfal-did-rqr)
      (mapc #'(lambda (murfal-L-1) 
                (message 
                 (concat ":FUNCTION `mon-utils-require-features-at-loadtime' "
                         "-- :FEATURE mon-utils :REQUIRED :FEATURE " murfal-L-1 " on load")))
            murfal-did-rqr)))
  (when (and (intern-soft "IS-MON-SYSTEM-P" obarray)
             (bound-and-true-p IS-MON-SYSTEM-P))
    ;; Load here instead of from :FILE naf-mode.el
    (require 'naf-mode-sql-skeletons nil t)))

;;; ==============================
;;; :TODO Build additional fncn/macro to populate docstrings at loadtime.
;;; :CREATED <Timestamp: #{2010-02-24T15:15:09-05:00Z}#{10083} - by MON KEY>
(defun mon-after-mon-utils-loadtime ()
  "List of packages and functions to load or eval.\n
These are brought into the current environment after mon-utils.el is loaded.\n
Called with \(eval-after-load \"mon-utils\" '\(mon-after-mon-utils-loadtime\)\)\n
Evaluated in :FILE mon-post-load-hooks.el\n
Evaluates the following functions per feature:\n
 `mon-alphabet-as-doc-loadtime'        <- mon-alphabet-list-utils
 `mon-bind-nefs-photos-at-loadtime'    <- mon-dir-utils-local
 `mon-bind-cifs-vars-at-loadtime'      <- mon-cifs-utils
 `mon-tramp-utils-loadtime'            <- mon-tramp-utils
 `mon-set-register-tags-loadtime'      <- mon-empty-registers
 `mon-help-utils-loadtime'             <- mon-doc-help-utils
 `mon-help-utils-CL-loadtime'          <- mon-doc-help-CL
 `mon-bind-mon-help-CL-pkgs-loadtime'  <- mon-doc-help-CL
 `mon-CL-cln-colon-swap'               <- mon-cl-compat-regexps
 `mon-bind-mysql-help-table-loadtime'  <- mon-mysql-utils
 `mon-bind-iptables-vars-at-loadtime'  <- mon-iptables-regexps
 `mon-bind-doc-help-proprietery-vars-at-loadtime' <- mon-doc-help-proprietary
 `mon-css-complete-loadtime'           <- mon-css-complete\n
Adds feature requirements:\n
 mon-get-mon-packages <- :AFTER mon-wget-utils
 mon-boxcutter
 google-define-redux
 mon-bzr-utils
 mon-eight-bit-raw-utils\n
Peforms loadtime evaluation of functions defined in mon-utils.el:\n
 `mon-recover-nil-t-default-plist'
 `mon-get-bit-table'\n
:SEE-ALSO `after-load-alist', `mon-check-feature-for-loadtime',
`mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-run-post-load-hooks',
`mon-purge-cl-symbol-buffers-on-load', `mon-unbind-defun',
`mon-after-mon-utils-loadtime', `mon-compile-when-needed' `mon-load-or-alert',
`mon-byte-compile-and-load', `mon-dump-object-to-file', `mon-nuke-and-eval',
`mon-cl-compat-loadtime'.\n►►►"
  (progn 
    (mon-recover-nil-t-default-plist)
    (mon-get-bit-table)
    (mon-alphabet-as-doc-loadtime 
      (mon-alphabet-as-map-bc *mon-alphabet-as-type-generate*))
    ;; :NOTE `mon-get-mon-emacsd-paths' is an interpreted function in:
    ;; :FILE mon-default-start-loads.el
    (when (and (intern-soft "mon-get-mon-emacsd-paths" obarray)
               (fboundp (intern-soft "mon-get-mon-emacsd-paths" obarray)))
      (fset 'mon-get-emacsd-paths 
            (byte-compile
             (indirect-function 'mon-get-mon-emacsd-paths)))
      (message (concat ":FUNCTION `mon-after-mon-utils-loadtime'"
                       "`byte-compile'd `mon-get-mon-emacsd-paths' at loadtime")))
    (eval-after-load "naf-mode-faces"     '(mon-bind-naf-face-vars-loadtime t))
    ;; (eval-after-load "mon-dir-utils"      '(mon-bind-nefs-photos-at-loadtime))
    (eval-after-load "mon-dir-utils-local" '(mon-bind-nefs-photos-at-loadtime))
    (eval-after-load "mon-replacement-utils" '(mon-make-iso-latin-1-approximation-loadtime))
    (eval-after-load "mon-doc-help-utils" '(mon-help-utils-loadtime t))
    ;; :NOTE Moved (mon-help-utils-CL-loadtime t) -> `mon-run-post-load-hooks'
    (eval-after-load "mon-doc-help-CL"    '(mon-bind-mon-help-CL-pkgs-loadtime t))
    ;; :NOTE See docs `mon-bind-cifs-vars-at-loadtime' and notes at BOF
    ;; mon-cifs-utils.el for alternative application with args 
    ;; NO-MISC-PATH NO-MAP-MOUNT-POINTS e.g.: 
    ;; (eval-after-load 'mon-cifs-utils '(mon-bind-cifs-vars-at-loadtime nil t)) 
    (eval-after-load "mon-cifs-utils"           '(mon-bind-cifs-vars-at-loadtime))
    (eval-after-load "mon-cl-compat-regexps"    '(mon-CL-cln-colon-swap t))    
    (eval-after-load "mon-empty-registers"      '(mon-set-register-tags-loadtime t))
    (eval-after-load "mon-tramp-utils"          '(mon-tramp-utils-loadtime))
    (eval-after-load "mon-iptables-regexps"     '(mon-bind-iptables-vars-at-loadtime t))
    (eval-after-load "mon-doc-help-proprietary" 
      '(progn
         (unless (bound-and-true-p *mon-help-w32-CMD-commands-TEMP*)
           (load-library "mon-doc-help-proprietary"))
         (mon-bind-doc-help-proprietery-vars-at-loadtime *mon-help-w32-CMD-commands-TEMP*)))
    (eval-after-load "mon-wget-utils" 
      '(mon-check-feature-for-loadtime    'mon-get-mon-packages))
    (eval-after-load "mon-css-complete"   '(mon-css-complete-loadtime t))
    (eval-after-load "mon-mysql-utils"    '(mon-bind-mysql-help-table-loadtime t))
    (mon-check-feature-for-loadtime       'google-define-redux)
    (mon-check-feature-for-loadtime       'mon-bzr-utils)
    (mon-check-feature-for-loadtime       'mon-eight-bit-raw-utils)
    (mon-check-feature-for-loadtime       'mon-drive-transfer-utils)
    (mon-check-feature-for-loadtime       'mon-jg-directory-creator)
    (mon-check-feature-for-loadtime       'mon-color-utils)
    (eval-after-load "mon-boxcutter" '(boxcutter-mkdir-loadtime))
    (mon-check-feature-for-loadtime   'mon-boxcutter)
    (mon-check-feature-for-loadtime   'thumbs)
    (mon-check-feature-for-loadtime   'mon-aliases)))

;;; ==============================
;;; <Timestamp: #{2010-07-28T19:49:04-04:00Z}#{10303} - by MON KEY>
;;; :TODO Abstract following to a macro for use with all for all loadtime
;;; functions that bind big lists.
;;
;; (let ((old-msgs (get-buffer-create "*OLD-MESSAGES*"))
;;       (msgs (get-buffer-create "*Messages*")))
;;   (unwind-protect 
;;       (progn
;;         (with-current-buffer (get-buffer msgs)
;;           (buffer-swap-text old-msgs))
;;         (setq <SOME-BIG-VAR-VALUE> <SOME-BIG-VALUE-IN-MESSAGES>)
;;         (with-current-buffer (get-buffer old-msgs)
;;           (buffer-swap-text msgs)))
;;     (with-current-buffer (get-buffer old-msgs)
;;       (kill-buffer (current-buffer)))))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-cl.el :LICENSE LGPL
;;; :NOTE Could prop just defalias this but...
;;; :DOCSTRING is same as `defconstant'
;;; :CREATED <Timestamp: #{2010-01-15T15:46:09-05:00Z}#{10025} - by MON KEY>
(defmacro defconstant (symbol initvalue &optional docstring)
  `(defconst ,symbol ,initvalue ,docstring))
;;
;; Now, tack on some docs.
(eval-when (compile) ;; (compile load)
  (let ((defcon-d (replace-regexp-in-string "^(fn.*)$" "" (documentation 'defconst))))
    (setq defcon-d
          (concat defcon-d
                  (mapconcat 
                   #'identity
                   '(":NOTE This is a CL compatibility feature, it macro-expands to elisp's `defconst'.\n"
                     ":EXAMPLE\n\n(pp-macroexpand-expression '(defconstant bubba-consistently \"doin' the bubba\" \"undocd\"\)\)\n"
                     ":SEE info node `(CL)Porting Common Lisp'.\n"
                     ":SEE-ALSO `defparameter', `defvar', `defcustom', `set-variable',"
                     "`make-local-variable', `make-variable-buffer-local', `make-symbol', `intern',"
                     "`intern-soft', `obarray', `boundp', `bound-and-true-p', `makunbound', `unintern'."
                     "►►►") "\n")))
    (put 'defconstant 'function-documentation defcon-d)))

;; (put 'defconstant 'lisp-indent-function <INT>) 

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-cl.el :LICENSE LGPL
;;; :DOCSTRING paraphrased from dpansr3.
;;; :NOTE Could prop just defalias this but...
;;; :CREATED <Timestamp: #{2010-01-15T15:46:09-05:00Z}#{10025} - by MON KEY>
(defmacro defparameter (param-name &optional initial-value docstring)
  "Unconditionally assign the INITIAL-VALUE to the dynamic variable named NAME.\n
In contrast to `defvar' the defparameter macro assigns INITIAL-VALUE (if
supplied) to the dynamic variable named NAME only if NAME is not already bound.\n
If no INITIAL-VALUE is supplied, `defvar' leaves the value cell of the dynamic
variable named NAME undisturbed; if NAME was previously bound, its old value
persists, and if it was previously unbound, it remains unbound.\n
If DOCSTRING is supplied, it is attached to NAME as a documentation
string of kind variable.\n
:EXAMPLE\n\n\(pp-macroexpand-expression '\(defparameter \"tt-\"\)\)
:NOTE This is a CL compatibility feature and expands to elisp's defvar.\n
:SEE info node `(elisp)Defining Variables'\n
:SEE-ALSO `defconstant', `defconst', `defcustom', `set-variable', 
`make-local-variable', `make-variable-buffer-local', `user-variable-p',
`make-symbol', `intern', `intern-soft', `obarray', `boundp', `bound-and-true-p',
`makunbound', `unintern'.\n►►►"
  ;; (let ((dp-name "dp-name"))
  ;;   `(let ((,dp-name ,param-name))
  `(progn
     (defvar ,param-name nil ,docstring)
     (setq   ,param-name ,initial-value)))
;;
;; (put 'defparameter 'lisp-indent-function <INT>) 
;;
;; ,---- :UNCOMMENT-TO-TEST
;; | (progn
;; |   (defparameter *bubba* "bubba")
;; |   (let* ((bub-s '*bubba*)
;; |          (bub-n (symbol-name bub-s))
;; |          (bub-v (symbol-value bub-s))
;; |          (msg (format (concat 
;; |                        "We just made %S the value of parameter %s.\n"
;; |                        "Now, say goodbye to %s and his %S.")
;; |                       bub-v bub-n bub-n bub-v)))
;; |     (makunbound '*bubba*) (unintern '*bubba*)
;; |     (message msg)))
;; `----

;;; ==============================

;;; PREFIX "meft-"
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-11-05T22:11:35-04:00Z}#{10445} - by MON KEY>
(defmacro mon-equality-for-type (thing)
  "Return preferred equality predicate for thing.\n
:EXAMPLE\n\n\(mon-equality-for-type 3.3\)
\(pp-macroexpand-expression '\(mon-equality-for-type \"string\"\)\)
:SEE-ALSO `mon-equality-or-predicate',
`*mon-equality-or-predicate-function-types*'
`mon-get-text-properties-parse-prop-val-type-chk', `deftype'.\n►►►"
  (declare (indent 0) (debug t))
  (let ((meft-thing (make-symbol "meft-thing")))
    `(let ((,meft-thing (type-of ,thing)))
       (or 
        (and (memq ,meft-thing '(integer symbol buffer
                                 frame window marker char-table
                                 hash-table subr ))
             'eq)
        (and (memq ,meft-thing '(cons string vector bool-vector char-table)) 'equal))
       ;; (get 'eql 'byte-compile) (get 'eql 'cl-compiler-macro)
       (and (eq ,meft-thing 'float) 'eql))
    ;; window-configuration
    ;; frame-configuration
    ;; overlay
    ;; compiled-function
    ;; `cl-make-type-test' has:
    ;; ((eq type 'real) `(numberp ,val))
    ;; ((eq type 'fixnum) `(integerp ,val))
    ;; (face `face-equal', `internal-lisp-face-equal-p'
    ))

;; (put 'mon-equality-for-type 'lisp-indent-function <INT>) 

;;; ==============================
;;; :PREFIX "mnsv-"
;;; :NOTE A macro'd version of `shuffle-vector' :FILE lisp/play/cookie1.el
;;; :CREATED <Timestamp: #{2010-07-31T11:34:53-04:00Z}#{10306} - by MON>
(defmacro mon-nshuffle-vector (mixup-vector)
  "Destructive random permutation of MIXUP-VECTOR elts, return MIXUP-VECTOR.\n
All permutations are equally likely.\n
:EXAMPLE\n\n\\(pp-macroexpand-expression 
 '\(mon-nshuffle-vector [37 41 43 47 53 59]\)\)\n
:ALIASED-BY `nshuffle-vector'\n
:SEE-ALSO `mon-list-nshuffle', `mon-list-shuffle-safe',`shuffle-vector',
`slime-shuffle-list'.\n►►►"
  ;; :NOTE This is called repeatedly by `mon-*-gensym' procedures so we
  ;; need to gensym the local vars by hand.
  (declare (indent 0) (debug t))
  (let ((mnsv-vec    (make-symbol "mnsv-vec"))
        (mnsv-incr   (make-symbol "mnsv-incr"))
        (mnsv-rndmz  (make-symbol "mnsv-rndr"))
        (mnsv-temp   (make-symbol "mnsv-temp"))
        (mnsv-len    (make-symbol "mnsv-len")))
    `(let ((,mnsv-vec ,mixup-vector)
           (,mnsv-incr 0)
           (,mnsv-len (length ,mixup-vector))
           ,mnsv-rndmz
           ,mnsv-temp)
       (while (< ,mnsv-incr ,mnsv-len)
         (setq ,mnsv-rndmz (+ ,mnsv-incr (random (- ,mnsv-len ,mnsv-incr))))
         (setq ,mnsv-temp (aref ,mnsv-vec ,mnsv-incr))
         (aset ,mnsv-vec ,mnsv-incr (aref ,mnsv-vec ,mnsv-rndmz))
         (aset ,mnsv-vec ,mnsv-rndmz ,mnsv-temp)
         (setq ,mnsv-incr (1+ ,mnsv-incr)))
       ,mnsv-vec)))

;; (put 'mon-nshuffle-vector 'lisp-indent-function <INT>) 
;;
;;; (pp-macroexpand-expression '(mon-nshuffle-vector [37 41 43 47 53 59]))

;;; ==============================
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-11-05T21:46:49-04:00Z}#{10445} - by MON KEY>
(defmacro mon-with-print-gensyms (&rest body)
  "Evaluate body with `print-gensym' bound `non-nil'.\n
:EXAMPLE\n
\(save-excursion
  \(mon-with-inhibit-buffer-read-only
      \(newline\) \(newline\)
      \(mon-with-print-gensyms
        \(princ
         \(pp-to-string
          `\(let \(was-sym\)
             \(prog2 
                 \(setq was-sym
                       \(symbol-name 
                        \(car '\(,\(make-symbol 
                                 \(format \"not-a-sym-%d\" \(random\)\)\)\)\)\)\)
                 \(and \(not \(intern-soft was-sym obarray\)\)
                      \(not \(unintern was-sym obarray\)\)\)\)\)\)
         \(current-buffer\)\)\)\)\)\n
\(pp-macroexpand-expression 
 '\(mon-with-print-gensyms
   \(let \(hld-buba\)
     \(setq hld-buba `\(,\(make-symbol \(format \"not-a-sym-%d\" \(random\)\)\)\)\)
     \(prin1 hld-buba \(current-buffer\)\)\)\)\)\n
:ALIASED-BY `with-print-gensyms'\n
:SEE-ALSO `mon-gensym', `print-circle', `read-circle'.\n►►►"
  (declare (indent 0) (debug t))
  `(let ((print-gensym t))
     ,@body))
;;
;; (put 'mon-with-print-gensyms 'lisp-indent-function <INT>) 

;;; ==============================
;;; :PREFIX "mgs-"
;;; :CREATED <Timestamp: #{2010-07-29T15:07:15-04:00Z}#{10304} - by MON>
(defmacro mon-gensym (&optional prefix counter)
  "Generate a new uninterned symbol.\n
When optional arg PREFIX (a string) return a symbol-name by appending the value
of `*gensym-counter*' to PREFIX. The default prefix is \"M\".\n
When optional arg COUNTER satisfies the predicate `integerp' and PREFIX
satisfies the predicate `stringp' it is appended to PREFIX instead of
`*gensym-counter*'s value.\n
Like the `gensym' function in CL package but defined as a macro instead.\n
:EXAMPLE\n\n\(pp-macroexpand-expression '\(mon-gensym\)\)\n
\(pp-macroexpand-expression '\(mon-gensym \"EG\" 666\)\)\n
:NOTE `edebug-gensym' is identical to the `gensym' but doesn't sigal a
byte-compiler warning.\n
:SEE-ALSO `mon-gensym-counter-randomizer', `mon-with-gensyms',
`mon-gensym-counter-randomizer-TEST', `edebug-gensym'
`easy-menu-make-symbol', `easy-menu-item-count'.\n►►►"
  (declare (indent 0) (debug t))
  (let ((mgs-pfix (make-symbol "mgs-pfix"))
        (mgs-num  (make-symbol "mgs-num"))) ;; (print-gensym t))
    `(let ((,mgs-pfix (cond ((and ,prefix (stringp ,prefix)) ,prefix)
                           ((and ,prefix (not (stringp ,prefix)))
                            (symbol-name ,prefix))
                           (t "M")))
           (,mgs-num  (if (and ,prefix ,counter (integerp ,counter))
                         ,counter
                       (prog1 
                           edebug-gensym-index ;; :WAS *gensym-counter* 
                         (incf edebug-gensym-index))))) ;; :WAS *gensym-counter*)))))
       (make-symbol (format "%s%d" ,mgs-pfix ,mgs-num)))))
;;
;;; (put 'mon-gensym 'lisp-indent-function <INT>) 

;;; ==============================
;;; :PREFIX "mgcr-"
;;; :CREATED <Timestamp: #{2010-07-29T17:45:55-04:00Z}#{10304} - by MON>
(defun mon-gensym-counter-randomizer (randomize-sym/str)
  "Generate a semi-randomized integer from RANDOMIZE-SYM/STR.\n
Helper function for `mon-with-gensyms'.\n
:EXAMPLE\n\n(mon-gensym-counter-randomizer-TEST \"bubba\" 10000\)\n
\(mon-gensym-counter-randomizer-TEST 'bu  10000\)\n
:NOTE On average this function will return ~45-60 duplicates per 10,000
invocations per seed symbol. IOW one might create an average of ~9948 unique
`bubba's if we batched inside a procedure capable of accounting for collisions.\n
:SEE-ALSO `mon-gensym', `mon-gensym-counter-randomizer-TEST'.\n►►►"
  (let ((mgcr-pr1
         [37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131
             137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227
             229 233 239 241 251 257 263 269 271 277 281 283 293 307 311 313 317
             331 337 347 349 353 359 367 373 379 383 389 397 401 409 419 421 431
             433 439 443 449 457 461 463 467 479 487 491 499 503 509 521 523 541])
        (mgcr-pr2 (make-vector 6 0)) ;; 6th elt of is length randomize-sym/str
        (mgcr-pr3 (make-vector 6 0)) ;; 6th elt of is string-bytes randomize-sym/str
        (mgcr-merp [3 5 7 13 17 19]) 
        (mgcr-rtn randomize-sym/str))
    ;; Fill vectors mgcr-pr2 and mgcr-pr3 with primes from mgcr-pr1 
    (dolist (mgcr-shfv '(mgcr-pr2 mgcr-pr3))
      (mon-nshuffle-vector mgcr-pr1)
      (dotimes (mgcr-mkv 5)
        (aset (symbol-value mgcr-shfv) mgcr-mkv (aref mgcr-pr1 mgcr-mkv))))
    ;; :DEBUGGING  `(,mgcr-pr2 ,mgcr-pr3) 
    ;;
    ;; Put randomize-sym/str on a sub section of the shuffled mgcr-pr1 vector.
    ;; This assures we get at least 5 non-null char values when 
    ;; (< (length mgcr-rtn) 5) Then we add at least one more char for variance.
    (let* ((mgcr-rndmz-sym/str (or (and (stringp mgcr-rtn) mgcr-rtn)
                                   (format "%s" mgcr-rtn)))
           (mgcr-rndmz-len  (length mgcr-rndmz-sym/str))
           (mgcr-rndmz-trunc-len (- mgcr-rndmz-len 6))
           (mgcr-subv1 (if (or (zerop mgcr-rndmz-trunc-len) (natnump mgcr-rndmz-trunc-len)) 
                           ;; Only get 1 extra value in range 0-88 e.g. (1- (length mgcr-pr1)).
                           (random 87) 
                         ;; Its negative, get the difference.
                         (+ 88 mgcr-rndmz-trunc-len))) 
           (mgcr-subv2  (if (or (zerop mgcr-rndmz-trunc-len) (natnump mgcr-rndmz-trunc-len))
                            (1+ mgcr-subv1) 
                          (- mgcr-subv1 mgcr-rndmz-trunc-len))))
      (aset mgcr-pr2 5 mgcr-rndmz-len)
      (aset mgcr-pr3 5 (string-bytes mgcr-rndmz-sym/str))
      (setq mgcr-pr1
            (vconcat
             (substring
              (concat 
               (substring (concat (mon-nshuffle-vector mgcr-pr1) "") mgcr-subv1 mgcr-subv2)
               (if (zerop mgcr-rndmz-trunc-len) 
                   (substring mgcr-rndmz-sym/str 0 5)
                 mgcr-rndmz-sym/str))
              -6))))
    (mon-nshuffle-vector mgcr-pr1)
    ;; :DEBUGGING (concat (mon-gensym-counter-randomizer "bubba") "")
    ;;
    ;; Shuffle the hell out of it then maximize the list vals.
    (setq mgcr-rtn 
          (mapcar #'(lambda (mgcr-stl-char)
                      (mon-nshuffle-vector mgcr-pr2) 
                      (mon-nshuffle-vector mgcr-pr3)
                      (mon-nshuffle-vector mgcr-merp)
                      (let (mgcr-gthr)
                        (dotimes (i 5 
                                    (setq mgcr-gthr (lsh (apply '+ mgcr-gthr) 
                                                         (- (aref mgcr-merp 0) (aref mgcr-merp 1)))))
                          (push (* (aref mgcr-pr2 i) (aref mgcr-pr3 i) mgcr-stl-char) mgcr-gthr))))
                  mgcr-pr1))
    (setq mgcr-rtn (apply '+ mgcr-rtn))
    ;; Shift it around but keep it signed.
    (setq mgcr-rtn (abs (ash mgcr-rtn (- (aref mgcr-merp 2) (aref mgcr-merp 3)))))
    ;; Make sure we have a value over 10000 else recurse
    (if (or (null mgcr-rtn)
            (< mgcr-rtn 10000)
            (= mgcr-rtn 0))
        (mon-gensym-counter-randomizer randomize-sym/str)
      mgcr-rtn)))
;;
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |
;; | (mon-gensym-counter-randomizer-TEST "bubba" 10000)
;; | 
;; | (mon-gensym-counter-randomizer-TEST 'bu  10000)
;; | 
;; | (progn (garbage-collect) 
;; |        (benchmark 10000 '(mon-gensym-counter-randomizer "bubba")))
;; | 
;; | (progn (garbage-collect) 
;; |        (benchmark 10000 '(mon-gensym-counter-randomizer 'bu)))
;; |
;; `----

;;; ==============================
;;; :NOTE This appears to work similiarly to Lars Brinkhoff's version but
;;;  without the CL requirements for `assert' `every' and `mapcar*'.
;;; :SEE (URL `http://www.emacswiki.org/emacs/macro-utils.el')
;;;   (assert (every #'symbolp symbols))
;;;    `(let ,(mapcar* #'list symbols '#1=((mon-gensym) . #1#))
;;;      ,@body))
;;; :CREATED <Timestamp: #{2010-07-29T20:09:35-04:00Z}#{10304} - by MON>
(defmacro mon-with-gensyms (w-syms &rest body)
  "Execute BODY in a context where the variables in W-SYMS are bound to
freshly allocated uninterned symbol as returned by `mon-gensym'.\n
:EXAMPLE\n\n\(unwind-protect
    \(progn
      \(defmacro tt--mgs \(arg1 arg2 arg3\)
        \(mon-with-gensyms 
          \(somea someb somec get-some\)
          `\(let \(\(,somea ,arg1\)
                 \(,someb ,arg2\)
                 \(,somec ,arg3\)
                 \(,get-some \(\)\)\)
             \(dolist \(q \(list ,somea ,someb ,somec\)
                        \(setq ,get-some 
                              \(mapconcat 'identity \(nreverse ,get-some\) \"\\n\"\)\)\)
               \(push \(concat \"a name: \" q \) ,get-some\)\)
             \(and \(null \(fboundp 'tt--mgs\)\)
                  \(equal ,get-some \"a name: bubba\\na name: sally\\na name: suzy\"\)\)\)\)\)
       \(pp-macroexpand-expression '\(tt--mgs \"bubba\" \"sally\" \"suzy\"\)\)\)
  \(progn \(fmakunbound 'tt--mgs\) \(unintern 'tt--mgs\)\)\)\n
:NOTE `edebug-gensym' is identical to the `gensym' but doesn't sigal a CL
byte-compiler warning.\n
:ALIASED-BY `with-gensyms'\n
:SEE-ALSO `mon-gensym-counter-randomizer', `mon-gensym'.\n"
  (declare (indent 0) (debug t))
  `(let ,(mapcar #'(lambda (mwg-mks) 
                     `(,mwg-mks (mon-gensym 
                                  ,(symbol-name mwg-mks) ;;,(format "%s" mks)
                                  ,(mon-gensym-counter-randomizer mwg-mks)))) w-syms)
     ,@body))
;;
;;; (put 'mon-with-gensym 'lisp-indent-function <INT>)
;;
;;,---- :UNCOMMENT-BELOW-TO-TEST
;;|
;;| (unwind-protect
;;|     (progn
;;|       (defmacro tt--mgs (arg1 arg2 arg3)
;;|         (mon-with-gensyms 
;;|           (somea someb somec get-some)
;;|           `(let ((,somea ,arg1)
;;|                  (,someb ,arg2)
;;|                  (,somec ,arg3)
;;|                  (,get-some ()))
;;|              (dolist (q (list ,somea ,someb ,somec)
;;|                         (setq ,get-some 
;;|                               (mapconcat 'identity (nreverse ,get-some) "\n")))
;;|                (push (concat "a name: " q ) ,get-some))
;;|              (and (null (fboundp 'tt--mgs))
;;|                   (equal ,get-some "a name: bubba\na name: sally\na name: suzy")))))
;;|        (pp-macroexpand-expression '(tt--mgs "bubba" "sally" "suzy")))
;;|   (progn (fmakunbound 'tt--mgs) (unintern 'tt--mgs)))
;;|
;;`----

;;; ==============================
;;; :PREFIX "mmc-"
;;; :COURTESY :FILE gnus/gnus-util.el :WAS `gnus-mapcar'
;;; :CHANGESET 2112
;;; :CREATED <Timestamp: #{2010-09-06T16:36:17-04:00Z}#{10361} - by MON KEY>
(defmacro mon-mapcar-mac (function seq1 &rest seqs2_n)
  "Apply FUNCTION to each element of SEQ1 and make a list of the results.\n
If there are several &rest  sequences, FUNCTION is called with that many arguments.
Mapping terminates with the shortest sequence.\n
With just one sequence, this is like `mapcar'.\n
With several, it is like the Common Lisp `mapcar' function extended to arbitrary
sequence types.\n
:EXAMPLE\n\n\(mon-mapcar-mac 'list '\(a b c\) '\(1 2 3\) '\(d e f\) '\(4 5 6\)\)\n
\(mon-mapcar-mac 'cons '\(a b c\) '\(1 2 3\)\)\n
\(pp-macroexpand-expression '\(mon-mapcar-mac 'cons '\(a b c\) '\(1 2 3\)\)\)\n
\(let* \(\(tmp-alst '\(\(KEY-D D0 D1 D2\)\)\)
       \(tmp-keys '\(KEY-A KEY-B KEY-C\)\)
       \(tmp-vals '\(\(A0 A1 A2\) \(B0 B1 B2\) \(C0 C1 C2\)\)\)
       \(rtn-mon-mapcar tmp-alst\)
       rtn-pairlis\)
  \(setq rtn-mon-mapcar \(nconc \(mon-mapcar #'cons tmp-keys tmp-vals\) tmp-alst\)\)
  \(setq rtn-pairlis \(pairlis tmp-keys tmp-vals tmp-alst\)\)
  `\(:TREE-EQUAL-MMC-PAIRL ,\(tree-equal rtn-mon-mapcar rtn-pairlis\)
    :MON-MAPCAR/PAIRLIS ,rtn-mon-mapcar :CL-PKG/PAIRLIS ,rtn-pairlis\)\)\n
:NOTE Last example is basically Emacs lisp's version of Common Lisp's `parilis'.\n
:SEE-ALSO `mon-mapcar', `mon-map1', `mon-mapcan', `mon-mapcon', `mon-mapl',
`mon-maplist', `mon-maptree', `mon-map-combine', `mon-map-append'.\n►►►"
  (if (not seqs2_n)
      `(mapcar ,function ,seq1)
    (let* ((mmc-seqs      (cons seq1 seqs2_n))
           (mmc-cnt       0)
           (mmc-heads     (mapcar 
                           ;; :NOTE arg MMC-L-1 prevents backquote expansion to: "(lambda nil"
                           #'(lambda (mmc-L-1) 
                               (make-symbol 
                                (concat "head" (number-to-string (setq mmc-cnt (1+ mmc-cnt))))))
                           mmc-seqs))
           (mmc-rslt      (make-symbol "mmc-rslt"))
           (mmc-rslt-tl   (make-symbol "mmc-rslt-tl")))
      `(let* ,(let* ((bindings  (cons nil nil))
                     (mmc-heads  mmc-heads))
                (nconc bindings (list (list mmc-rslt '(cons nil nil))))
                (nconc bindings (list (list mmc-rslt-tl mmc-rslt)))
                (while mmc-heads
                  (nconc bindings (list (list (pop mmc-heads) (pop mmc-seqs)))))
                (cdr bindings))
         (while (and ,@mmc-heads)
           (setcdr ,mmc-rslt-tl 
                   (cons 
                    (funcall ,function ,@(mapcar #'(lambda (mmc-L-2) 
                                                     (list 'car mmc-L-2))
                                                 mmc-heads)) 
                    nil))
           (setq ,mmc-rslt-tl (cdr ,mmc-rslt-tl)
                 ,@(apply 'nconc (mapcar #'(lambda (mmc-L-3) 
                                             (list mmc-L-3 (list 'cdr mmc-L-3))) 
                                         mmc-heads))))
         (cdr ,mmc-rslt)))))
;;
;;; (put 'mon-mapcar-mac 'lisp-indent-function <INT>) 

;;; ==============================
;;; :PREFIX "mwfb-"
;;; :COURTESY Raphael Van Dyck :HIS km-frames.el :WAS `with-file-buffer'
;;; :SEE (URL `http://www.algo.be/cl/KMgen/Free-KMgen.zip')
;;; :SEE (URL `http://www.algo.be/dev-logiciels.htm')
;;; :CREATED <Timestamp: #{2009-10-23T15:17:35-04:00Z}#{09435} - by MON KEY>
(defmacro mon-with-file-buffer (w-buffer-var w-file &rest body)
  "Evaluate BODY with W-BUFFER-VAR bound to buffer visiting W-FILE.\n
:EXAMPLE\n
\(let \(read-some\)
   \(with-file-buffer some-buffer some-file
    \(save-excursion
      \(set-buffer some-buffer\)
      \(mon-g2be -1\)
      \(setq read-some \(read some-buffer\)\)\)\)\)\n
:SEE-ALSO `mon-with-buffer-undo-disabled', `mon-buffer-exists-p',
`mon-buffer-written-p', `mon-buffer-exists-so-kill', `mon-print-in-buffer-if-p',
`mon-get-buffer-w-mode', `mon-get-buffer-parent-dir',
`mon-get-proc-buffers-directories', `mon-get-buffers-directories',
`mon-string-split-buffer-name', `mon-string-split-buffer-parent-dir',
`with-current-buffer', `with-temp-file', `with-temp-buffer',
`get-file-buffer', `find-buffer-visiting', `buffer-file-truename',
`mon-help-buffer-functions'.\n►►►"
  ;; :WAS (let ((file-var (make-symbol "file"))
  ;;        (buffer-already-there-p-var (make-symbol "buffer-already-there-p")))
  (let ((mwfb-fl-var (make-symbol "mwfb-fl-var")) 
        (mwfb-bfr-p  (make-symbol  "mwfb-bfr-p")))
    `(let* ((,mwfb-fl-var ,w-file)
            (,w-buffer-var (get-file-buffer ,mwfb-fl-var))
            (,mwfb-bfr-p ,w-buffer-var))
       (unless ,mwfb-bfr-p
         (setq ,w-buffer-var (find-file-noselect ,mwfb-fl-var)))
       (unwind-protect
            (progn ,@body)
         ;; If buffer was already visiting W-FILE don't kill.
         (unless ,mwfb-bfr-p
           (kill-buffer ,w-buffer-var))))))
;;
;;; (put 'mon-with-file-buffer 'lisp-indent-function <INT>) 

;;; ==============================
;;; :PREFIX "mbnkr-"
;;; :CREATED <Timestamp: #{2009-10-22T16:45:38-04:00Z}#{09434} - by MON>
(defun mon-buffer-name->kill-ring (&optional or-buffer insrtp)
  "Put buffer-name of current-buffer on kill-ring.\n
When OR-BUFFER is non-nil put that buffer's name on kill ring instead.
When INSRTP is non-nil or called-interactively with prefix arg insert 
buffer-name at point. Does not move point.\n
:EXAMPLE\\n(mon-buffer-name->kill-ring)\n
\(call-interactively 'mon-buffer-name->kill-ring)\n
:SEE-ALSO `mon-buffer-exists-p', `mon-buffer-exists-so-kill',
`mon-buffer-written-p', `mon-print-in-buffer-if-p', `mon-with-file-buffer',
`mon-with-buffer-undo-disabled', `mon-get-buffer-w-mode',
`mon-get-buffer-parent-dir', `mon-get-proc-buffers-directories',
`mon-get-buffers-directories', `mon-string-split-buffer-name',
`mon-string-split-buffer-parent-dir', `mon-help-buffer-functions'.\n►►►"
  (interactive "i\nP")
  (let ((mbnkr-kn (kill-new (format "%S" (buffer-name or-buffer)))))
    (if insrtp 
        (save-excursion (newline) (princ mbnkr-kn (current-buffer)))
      (princ mbnkr-kn))))


;;; ==============================
;;; :COURTESY anything.el :WAS `anything-empty-buffer-p'
;;; Added default to `current-buffer' and signal if BUFFER-OR-NAME is provided
;;; but doesn't exist.
;;; :CHANGESET 2299
;;; :CREATED <Timestamp: #{2010-11-11T21:35:35-05:00Z}#{10454} - by MON KEY>
(defun mon-buffer-empty-p (&optional buffer-or-name)
  "Return non-nil if buffer-size of current-buffer is zerop.\n
When optional arg BUFFER-OR-NAME is non-nil check that buffer instead if 
it satisfies `mon-buffer-exists-p' signal an error if not.\n
\(with-temp-buffer \(mon-buffer-empty-p\)\)\n
\(mon-buffer-empty-p\)\n
\(mon-buffer-empty-p \"bubbas-non-existent-buffer\"\)\n
:SEE-ALSO `mon-buffer-narrowed-p', `mon-buffer-exists-so-kill',
`mon-with-file-buffer', `mon-buffer-written-p', `mon-get-buffer-window-if'.\n►►►"
  (with-current-buffer
      (or (and buffer-or-name 
               (or (mon-buffer-exists-p buffer-or-name)
                   (error 
                    (concat ":FUNCTION `mon-buffer-empty-p' "
                            "-- arg BUFFER-OR-NAME not `mon-buffer-exists-p', got: %S")
                    buffer-or-name)))
          (current-buffer))
    (zerop (buffer-size))))


;;; ==============================
;;; :PREFIX "mbep-"
;;; :COURTESY :FILE gnus-util.el :WAS `gnus-buffer-exists-p'
;;; :ADDED let wrapper gensym for local var BUFF-P
;;; :CREATED <Timestamp: #{2010-02-04T14:17:59-05:00Z}#{10054} - by MON KEY>
(defmacro mon-buffer-exists-p (buffer-to-check &optional no-invert)
  "Return buffer-name of BUFFER-TO-CHECK if it exists.\n
When BUFFER-TO-CHECK is a buffer object return a string.\n
When BUFFER-TO-CHECK is a strin return a buffer object.\n
When optional arg NO-INVERT is non-nil the `type-of' BUFFER-TO-CHECK returned
without inversion.\n
:EXAMPLE\n\n\(mon-buffer-exists-p \(current-buffer\)\)\n
\(mon-buffer-exists-p \(buffer-name \(current-buffer\)\)\)\n
\(mon-buffer-exists-p \(current-buffer\) 'no-invert\)\n
\(mon-buffer-exists-p \(buffer-name \(current-buffer\)\) 'no-invert\)\n
\(with-temp-buffer \(mon-buffer-exists-p \(current-buffer\)\)\)\n
\(with-temp-buffer \(mon-buffer-exists-p \(current-buffer\) 'no-invert\)\)\n
\(pp-macroexpand-expression '\(mon-buffer-exists-p  \(current-buffer\)\)\)\n
\(prog2 \(get-buffer-create \"*BAD-IF-NOT-KILLED*\"\)
    \(mon-buffer-exists-p \"*BAD-IF-NOT-KILLED*\"\)
  \(kill-buffer \(mon-buffer-exists-p \"*BAD-IF-NOT-KILLED*\"\)\)\)\n
\(pp-macroexpand-expression '\(mon-buffer-exists-p \(buffer-name \(current-buffer\)\)\)\)\n
:ALIASED-BY `buffer-exists-p'\n
:SEE-ALSO `mon-buffer-exists-so-kill', `mon-with-file-buffer',
`mon-buffer-narrowed-p', `mon-buffer-sub-no-prop',
`mon-buffer-sub-no-prop-check', `mon-with-buffer-undo-disabled',
`mon-buffer-written-p', `mon-print-in-buffer-if-p',
`mon-buffer-name->kill-ring', `mon-get-buffer-w-mode',
`mon-get-buffer-parent-dir', `mon-get-proc-buffers-directories',
`mon-get-buffers-directories', `mon-string-split-buffer-name',
`mon-string-split-buffer-parent-dir', `with-current-buffer', `with-temp-file',
`with-temp-buffer'.\n►►►"
  (declare (indent 2) (debug t))
  (let ((mbep-bffr-p (make-symbol "mbep-bffr-p")))
    `(let ((,mbep-bffr-p ,buffer-to-check))
       (when (and ,mbep-bffr-p (buffer-live-p (get-buffer ,mbep-bffr-p)))
         (if ,no-invert ,mbep-bffr-p
           (case (type-of ,mbep-bffr-p)
             (string (get-buffer  ,mbep-bffr-p))
             (buffer (buffer-name ,mbep-bffr-p))))))))
;;
;;; (put 'mon-buffer-exists-p 'lisp-indent-function <INT>) 
;;
;;; :TEST-ME (mon-buffer-exists-p (current-buffer))
;;; :TEST-ME (mon-buffer-exists-p (buffer-name (current-buffer)))
;;; :TEST-ME (mon-buffer-exists-p (current-buffer) 'no-invert)
;;; :TEST-ME (mon-buffer-exists-p (buffer-name (current-buffer)) 'no-invert)
;;; :TEST-ME (prog2 (get-buffer-create "*BAD-IF-NOT-KILLED*") 
;;;                 (mon-buffer-exists-p "*BAD-IF-NOT-KILLED*")
;;;                 (kill-buffer (mon-buffer-exists-p "*BAD-IF-NOT-KILLED*")))

;;; ==============================
;;; :CREATED <Timestamp: #{2010-06-13T11:50:55-04:00Z}#{10237} - by MON>
(defmacro mon-with-buffer-undo-disabled (&rest body)
  "Evaluate BODY in an`buffer-disable-undo' set non-nil.\n
Arg BODY occurs inside an `unwind-protect' finishing with `buffer-enable-undo'.\n
:EXAMPLE\n
\(pp-macroexpand-expression
 '\(progn
    \(mon-with-buffer-undo-disabled
     \(save-excursion
       \(insert \"bubba\"\)\)
     \(kill-line\)
     \(if \(and buffer-undo-list \(atom buffer-undo-list\)\)
         \(message \"Toggled buffer-undo-list %S\" buffer-undo-list\)
       \(message \":BUFFER-UNDO-LIST -- fail!\" buffer-undo-list\)\)
     \(sit-for 2\)\)
    \(save-excursion \(insert \"I'm the bubba that got saved\"\)\)
    \(kill-line\)
    buffer-undo-list\)\)\n
\(mon-with-buffer-undo-disabled-TEST\)\n
\(mon-with-buffer-undo-disabled-TEST 'force-fail\)\n\n
:NOTE Useful for forms which programatically `erase-buffer' contents and the undo list
is not needed.\n
:ALIASED-BY `mon-buffer-do-with-undo-disabled'\n
:SEE-ALSO `mon-with-buffer-undo-disabled-TEST', `buffer-undo-list', 
`mon-buffer-exists-p', `mon-buffer-written-p', `mon-buffer-exists-so-kill',
`mon-buffer-narrowed-p', `mon-buffer-sub-no-prop', `mon-buffer-sub-no-prop-check',
`mon-print-in-buffer-if-p', `mon-get-buffer-w-mode',
`mon-get-buffer-parent-dir', `mon-get-proc-buffers-directories',
`mon-get-buffers-directories', `mon-string-split-buffer-name',
`mon-string-split-buffer-parent-dir', `with-current-buffer', `with-temp-file',
`with-temp-buffer', `mon-help-buffer-functions'.\n►►►"
  (declare (indent 2) (debug t))
  `(unwind-protect
       (progn
         (buffer-disable-undo)
         ,@body)
     (buffer-enable-undo)))
;;
;;; (put 'mon-buffer-exists-p 'mon-with-buffer-undo-disabled <INT>) 

;;; ==============================
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-29T19:16:42-04:00Z}#{10393} - by MON KEY>
(defun mon-get-buffer-window-if (buffer-or-name &optional frame)
  "Return window if BUFFER-OR-NAME exists and there is a window displaying it.\n
Optional arg FRAME is as per `get-buffer-window', it is one of:\n
 { visible | 0 | t | nil | <FRAME> }\n
When ommitted or nil the default is to search only the `selected-frame'.\n
:EXAMPLE\n\n\(mon-get-buffer-window-if \"*Help*\"\)\n
:ALIASED-BY `mon-window-get-if-buffer'
:ALIASED-BY `get-buffer-window-if'\n
:SEE-ALSO `mon-buffer-exists-p', `mon-print-buffer-object-readably',
`mon-get-buffer-w-mode', `mon-buffer-written-p', `mon-with-file-buffer',
`mon-window-map-active-to-plist'.\n►►►"
 (let ((myb-wdw (mon-buffer-exists-p buffer-or-name)))
   (when myb-wdw (get-buffer-window myb-wdw))))

;;; ==============================
;;; :PREFIX "mpbor-"
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-24T11:49:29-04:00Z}#{10385} - by MON KEY>
(defun mon-print-buffer-object-readably (buffer-or-name &optional as-form)
  "Return a form containing a printed representation of BUFFER-OR-NAME.\n
Output in a format output that `read' can handle as if by `prin1-to-string'.\n
Default is to return a lisp form for `eval'.\n
:EXAMPLE\n\n\(mon-print-buffer-object-readably \(current-buffer\)\)
\(mon-print-buffer-object-readably \(buffer-name\)\)
\(mon-print-buffer-object-readably \(current-buffer\) t\)
\(mon-print-buffer-object-readably \(buffer-name\) t\)
\(mon-print-buffer-object-readably 
 \(car \(mon-string-wonkify \"prob-not-a-buffer\" 1\)\) t\)
\(mon-print-buffer-object-readably 
 \(car \(mon-string-wonkify \"prob-not-a-buffer\" 1\)\)\)
:ALIASED-BY `mon-buffer-name-print-readably'
:SEE-ALSO `mon-buffer-exists-p', `mon-get-buffer-window-if'
`mon-buffer-narrowed-p', `mon-buffer-sub-no-prop',
`mon-buffer-sub-no-prop-check'.\n►►►"
  (let ((mpbor-get-bfr (mon-buffer-exists-p buffer-or-name)))
    (cond ((stringp mpbor-get-bfr)
           (or (and as-form
                    (prin1-to-string
                     `(get-buffer-create ,mpbor-get-bfr)))
               `(get-buffer-create ,mpbor-get-bfr)))
          ((bufferp mpbor-get-bfr)
           (setq mpbor-get-bfr
                 `(get-buffer-create ,(prin1-to-string mpbor-get-bfr t)))
           (or (and as-form (prin1-to-string mpbor-get-bfr))
               mpbor-get-bfr))
          (t (or (and as-form "(get-buffer \"\")")
                 `(get-buffer ""))))))

;;; ==============================
;;; :PREFIX "mbep-"
;;; :CREATED <Timestamp: #{2010-02-05T14:21:16-05:00Z}#{10055} - by MON KEY>
(defun mon-buffer-exists-so-kill (buffer-to-kill)
  "If BUFFER-TO-KILL exists kill it.\n
Return `#<killed buffer>' if buffered killed, else nil.\n
:EXAMPLE\n\n\(let \(\(not-much-longer \(get-buffer-create \"not-much-longer\"\)\)\)
  \(mon-buffer-exists-so-kill \(buffer-name not-much-longer\)\)\)\n
:SEE-ALSO `mon-buffer-exists-p', `mon-buffer-empty-p' `mon-with-file-buffer',
`mon-buffer-written-p', `mon-buffer-narrowed-p', `mon-buffer-sub-no-prop',
`mon-buffer-sub-no-prop-check', `mon-buffer-name->kill-ring',
`mon-print-in-buffer-if-p', `mon-with-buffer-undo-disabled',
`mon-get-buffer-w-mode', `mon-get-buffer-parent-dir',
`mon-get-proc-buffers-directories', `mon-get-buffers-directories',
`mon-string-split-buffer-name', `mon-string-split-buffer-parent-dir',
`with-current-buffer', `with-temp-file', `with-temp-buffer',
`mon-help-buffer-functions'.\n►►►"
  (let ((mbep-sok (mon-buffer-exists-p buffer-to-kill)))
    (if (when mbep-sok (kill-buffer mbep-sok))        
        (get-buffer mbep-sok))))

;;; ==============================
;;; :COURTESY :FILE slime.el :WAS `slime-recently-visited-buffer'
;;; :CHANGESET 1967
;;; :CREATED <Timestamp: #{2010-07-12T12:42:51-04:00Z}#{10281} - by MON KEY>
(defun mon-get-buffer-w-mode (w-mode &optional not-visible-only)
  "Return the most recently visited buffer whose major-mode is W-MODE.\n
When optional arg NOT-VISIBLE-ONLY is non-nil only considers buffers that are
not already visible. Default is to consider all buffers on all frames.\n
:EXAMPLE\n\n\(mon-get-buffer-w-mode 'help-mode 'not-visible-only\)\n
\(mon-get-buffer-w-mode 'fundamental-mode\)\n
:ALIASED-BY `mon-buffer-get-w-mode'\n
:SEE-ALSO `mon-buffer-exists-p', `mon-with-file-buffer', `mon-buffer-written-p',
`mon-buffer-narrowed-p', `mon-buffer-sub-no-prop',
`mon-buffer-sub-no-prop-check', `mon-buffer-name->kill-ring',
`mon-print-in-buffer-if-p', `mon-with-buffer-undo-disabled',
`mon-get-buffer-parent-dir', `mon-get-proc-buffers-directories',
`mon-get-buffers-directories', `mon-string-split-buffer-name',
`mon-string-split-buffer-parent-dir', `with-current-buffer', `with-temp-file',
`with-temp-buffer', `mon-help-buffer-functions'.\n►►►"
  (loop for buffer in (buffer-list)
        when (and (with-current-buffer buffer (eq major-mode w-mode))
                  (not (string-match "^ " (buffer-name buffer)))
                  (null (if not-visible-only
                            (get-buffer-window buffer 'visible)
                          (get-buffer-window buffer t))))
        return buffer
        finally (error (concat ":FUNCTION `mon-get-buffer-w-mode' "
                               "-- can not locate buffer W-MODE: %S") w-mode)))

;;; ==============================
;;; :NOTE The list of possible return values a moving target b/c:
;;; - Improving/adjusting it
;;; - Still working out what to do w/ compiled vs. interpretted 
;;; - Pending lexbind integration might change things...
;;; :CHANGESET 2211
;;; :CREATED <Timestamp: #{2010-10-26T16:50:41-04:00Z}#{10432} - by MON KEY>
(defvar *mon-function-object-types* '(function compiled-function 
                                      subr macro lambda autoload)
  "List of return values for `mon-function-object-p' which name function objects.\n
:EXAMPLE\n\n\(memq 'function *mon-function-object-types*\)\n
\(car \(memq \(mon-function-object-p 'mon-function-object-p\) 
           *mon-function-object-types*\)\)\n
:SEE-ALSO `functionp', `indirect-function', `symbol-function', `apropos-macrop',
`edebug-macrop', `commandp', `*mon-equality-or-predicate-function-types*',
`*mon-non-mappable-object-types*', `*mon-help-emacs-errors*'.\n►►►")


;;; ==============================
;;; :NOTE :FILE lisp/help-funs.el has this:
;;; ,---- 
;;; | ;; cl-hack-byte-compiler runs, after bytecomp is loaded.
;;; | (when (and (symbolp function)
;;; |            (eq (get function 'byte-compile) 'cl-byte-compile-compiler-macro)
;;; |            (princ "This function has a compiler macro")
;;; |            (let ((lib (get function 'compiler-macro-file)))
;;; `----
;;;
;;; (let (gthr-cmplr-macs)
;;;      (setq gthr-cmplr-macs (mon-map-obarray-symbol-plist-props 'byte-compile))
;;;      (setq gthr-cmplr-macs
;;;           (mapcar #'(lambda (bcd)
;;;      	   (when (eq (get bcd 'byte-compile) 'cl-byte-compile-compiler-macro)
;;;             bcd)) 
;;; 	    gthr-cmplr-macs)))
;;;
;;; :TODO This check: `ad-advice-p' is missing.
;;; :TODO Extend w/ `deftype'
;;; :TODO Build a test function once all issues finalized.
;;; :TODO This really isn't a predicate and should be renamed
;;; `mon-function-object-maybe' and add a new function that checks if the
;;; return-value is one of: 
;;; { function subr macro autoload compiled-function }
;;; But, first must decide how to handle return value for interpreted functions
;;; and macros. See comments below.
;;; :PREFIX "mfop-"
;;; :CHANGESET 2119 <Timestamp: #{2010-09-17T21:11:32-04:00Z}#{10375} - by MON KEY>
;;; <Timestamp: #{2010-09-16T17:43:19-04:00Z}#{10374} - by MON>
(defun mon-function-object-p (fncn-sym)
  "Test if FNCN-SYM is a function object.\n
Return non-nil if FNCN-SYM object is \"function-like\" which is any of the
following object types named in the variable `*mon-function-object-types*'.\n
When FNCN-SYM is a boolean return 'boolean.\n
When FNCN-SYM is not null and none of the above return value is per `type-of'
for the `indirect-function' value of FNCN-SYM.\n
:EXAMPLE\n\n\(mon-function-object-p 'mon-function-object-p\)\n
\(mon-function-object-p 'subrp\)\n
\(mon-function-object-p 'visible-mode\)\n
\(mon-function-object-p 'define-minor-mode\)\n
\(mon-function-object-p 'goto-next-locus\)\n
\(mon-function-object-p 'deactivate-mark\)\n
\(mon-function-object-p 'handwrite\)\n
\(mon-function-object-p '\(lambda \(x\) x\)\)\n
\(mon-function-object-p #'\(lambda \(x\) x\)\)\n
\(mon-function-object-p 't\)\n
\(mon-function-object-p nil\)\n
\(mon-function-object-p 'handwrite-13pt-numlines\)\n
:NOTE Following enumartes structures of the object types which
`indirect-function' may return.\n
A compiled function:\n
 #[ \( <ARG-LIST> \) 
      <BYTE-STR> 
    [ <CONSTANTS>* ]  
      <CONST-CNT-INT>    ;; :NOTE 0 indexed
      \( <PATHNAME-FILE> . <OFFSET>\) ]\n
A compiled macro:\n
 \(macro . #[ \( <ARG-LIST> \) 
               <BYTE-STR> 
              [ <CONSTANTS>* ]  
                <CONST-CNT-INT>  ;; :NOTE 0 indexed
              \( <PATHNAME-FILE> . <OFFSET>\) ] \)\n
A subr, primitive, or special operator:\n
 #<subr `SYMBOL-NAME`>\n
An interpreted function or lambda form:\n
 \(lambda \( <ARG-LIST> \) <DOCSTR> \( <MACRO-FORM> \)\)\n
An interpreted macro:\n
 \(macro lambda \( <ARG-LIST> \) <DOCSTR> \( <MACRO-FORM> \)\)\n
An autoload symbol, note <TYPE> may be a quoted symbol either macro or keymap:\n
 \(autoload  <FILENAME> <DOCSTRING-OFFSET> <INTERACTIVE> <TYPE> \)\n 
:ALIASED-BY `mon-functionp'\n
:SEE-ALSO `apropos-macrop', `edebug-macrop', `byte-code-function-p',
`subr-arity', `find-lisp-object-file-name', `describe-function-1', `functionp',
`commandp', `subr-name', `subr-arity', `interactive-form', `indirect-variable',
`user-variable-p', `custom-variable-p', `edebug-lookup-function',
`edebug-lambda-list-keywordp', `lambda-list-keywords', `help-function-arglist',
`ad-has-proper-definition', `ad-definition-type', `ad-lambda-p', `ad-macro-p',
`ad-compiled-p', `ad-subr-p', `ad-special-form-p', `mon-help-function-args',
`mon-help-function-arity', `mon-help-symbol-functions',
`mon-help-byte-compile-functions'.\n►►►"
  (or ;; Its a lambda form, e.g.: 
   ;; (indirect-function (lambda (x) x)) (indirect-function #'(lambda (x) x))
   (and (consp fncn-sym) 
        (eq (car-safe (indirect-function fncn-sym t)) 'lambda)
        'lambda)
   ;; Some other thing we can't stop now want and/or if we find what we want now.
   (car (memq (type-of fncn-sym) '(;; We special case `compiled-function` here b/c
                                   ;; its print syntax is #[{...}] which signals an
                                   ;; error in the the next branch b/c there we depend
                                   ;; on FNCN-SYM being a symbol-like but not
                                   ;; necessarily an `indirect-*' symbol.
                                   compiled-function
                                   subr
                                   ;; :NOTE Could branch on this and interrogate the
                                   ;; return value of an `intern-soft' on `stringp'
                                   ;; For example, could be a string naming a
                                   ;; function object or might be `facep':
                                   string 
                                   ;; Short circuit on stuff we know we don't want:
                                   integer float 
                                   marker buffer window frame
                                   ;; That is, hash-tables don't currently hold
                                   ;; function objects. Maybe they could?
                                   hash-table 
                                   char-table bool-vector
                                   overlay process
                                   ;; :NOTE Keep an eye on these they might
                                   ;; change in future GNU Emacsen:
                                   window-configuration  frame-configuration
                                   ;; `internal-lisp-face-p', `check-face', e.g.
                                   ;; (and (null (ignore-errors (check-face <thing>))) 'face)
                                   )))
   ;; Its `nil' or `t'
   (and (cadr (mon-booleanp fncn-sym)) 'boolean)
   ;; :NOTE It is very-important when interrogating byte-code-function objects
   ;; that we don't inadverdently attempt a direct access of  #[ ... ] objects. 
   ;; Doing so may (in some circumstances) _immediately_ segfault Emacs -- 
   ;; e.g. each of following will lose _badly_:
   ;;   (type-of #[abc])  (cdr (thing .  #[abc]))
   ;; At least when:  (<= 23.2.1 (emacs-version))
   ;; :SEE bug#6835: 23.2; eval'ing `type-of' with #[abc] as arg gets a Fatal error
   ;; (URL `http://lists.gnu.org/archive/html/bug-gnu-emacs/2010-08/msg00289.html')
   (let ((mfop-lkng (and fncn-sym ;; its a something
                         (and  
                          ;; Not a list but could evaluate to nil
                          (nlistp fncn-sym)
                          ;; Not a cons but could be a symbol evaluates evaluate to nil
                          (not (consp fncn-sym)) 
                          ;; Def. not a cons but maybe could evaluate to nil                              
                          (atom fncn-sym)        
                          ;; Def. not a nil
                          (not (null fncn-sym))
                          ;; Can't do fboundp/boundp on a #[....] but need to
                          ;; know if its function like and can't make the full
                          ;; determination without also taking the
                          ;; indirect-function of an indirect-function
                          ;; :NOTE Does this finally rule out a `cyclic-function-indirection`?
                          (or (and (or (and (symbolp fncn-sym)
                                            (fboundp fncn-sym))
                                       (and (symbolp fncn-sym) 
                                            (boundp fncn-sym)))
                                   (indirect-function fncn-sym t))
                              (indirect-function fncn-sym t)))))
         mfop-cot)
     ;; :NOTE What about `advice'?
     (unless (null mfop-lkng) ;; Prob can't happen
       (when (subrp mfop-lkng) (setq mfop-cot 'subr))
       (unless mfop-cot
         (when (or (byte-code-function-p mfop-lkng)
                   ;; There is a problem here. Interpreted functions have the format: 
                   ;; (lambda {...}
                   ;; Interpreted macros have the format: 
                   ;; (macro lambda {...}
                   ;; How do/should we distinguish between what are essentially
                   ;; both lambda forms? e.g. which set is best?
                   ;; 
                   ;; { 'lambda-function/'lambda-macro 'compiled-function/'compiled-macro }
                   ;; { 'lambda-function/'lambda-macro 'compiled-lambda-function/'compiled-lambda-macro }
                   ;; { 'function-interpreted/'macro-interpreted  'compiled-function/'compiled-macro }
                   ;; { 'interpreted-function/'interpreted-macro  'compiled-function/'compiled-macro }
                   ;;
                   (eq (car-safe mfop-lkng) 'lambda))
           (setq mfop-cot 'function)))
       (unless mfop-cot 
         ;; :TODO If we interrogate the list with `mon-proper-list-p'
         ;; we should be able to tell if the object is a compiled macro or
         ;; interpreted b/c a compile macro is a cons whereas an interpreted
         ;; macro is a proper list. But, right now we return 'macro. If we check
         ;; for a difference what should we return instead 'compiled-macro and
         ;; 'interpreted-macro 
         ;; likewise could do: 
         ;; (listp (cdr-safe (indirect-function 'some-compiled-macro)))
         ;; Also, what to do about autoload macros? e.g. `apropos-macrop'
         ;; 
         (when (eq (car-safe (indirect-function mfop-lkng t)) 'macro)
           ;; (if (mon-list-proper-p (indirect-function mfop-lkng))
           (setq mfop-cot 'macro)))
       ;; :TODO This could be an autoload macro! Add recursion.
       (unless mfop-cot 
         (when (eq (car-safe (indirect-function mfop-lkng t)) 'autoload)
           (setq mfop-cot 'autoload))))
     (or mfop-cot (type-of mfop-lkng)))))


;;; ==============================
;;; :PREFIX "meop-"
;;; :CHANGESET 2178
;;; :CREATED <Timestamp: #{2010-10-04T22:30:05-04:00Z}#{10401} - by MON KEY>
(defun mon-equality-or-predicate (predicate arg1 arg2)
  "Evaluate PREDICATE with ARG1 ARG2.\n
PREDICATE is function accepting two args and is either a member of
`*mon-equality-or-predicate-function-types*' or a symbol satisfying the predicate
`mon-function-object-p' including macros which are wrapped in a lambda form.\n
:EXAMPLE\n\n\(mon-equality-or-predicate 
 'memq 'eq '\(eq eql equal memq memql member\)\)\n
\(mon-equality-or-predicate 
 'member \"string\" '\(\"a\" \"b\" \"c\" \"string\"\)\)\n
\(mon-equality-or-predicate #'\(lambda \(q z\) 
                          \(and \(stringp q\) \(stringp z\)
                               \(compare-strings q 0 1 z 0 1\)\)\)
                       \"bubba\" \"babel\"\)\n
:SEE-ALSO `mon-equality-for-type', `mon-booleanp',
`mon-help-byte-optimizer-find', `byte-boolean-vars',
`mon-get-text-properties-parse-prop-val-type-ckh'.\n►►►"
  (let ((meop-chk-fun 
         (or (and (consp predicate)
                  (or (eq (car-safe predicate) 'lambda)
                      (error (concat ":FUNCTION `mon-equality-or-predicate' "
                                     "-- arg PREDICATE satisfies `consp' car not 'lambda "
                                     " - got: %S") predicate))
                  predicate)
             (and (symbolp predicate)
                  (memq predicate *mon-equality-or-predicate-function-types*)
                  predicate)
             (let ((meop-rly-chk (cons (car (memq (mon-function-object-p predicate)
                                             *mon-function-object-types*))
                                  predicate)))
               (and (car meop-rly-chk)
                    (or ;; if its a macro make it `funcall'/`apply'able
                     (and (eq (car meop-rly-chk) 'macro)
                          `(lambda (meop-L-1-arg1 meop-L-1-arg2)
                             (,(cdr meop-rly-chk) meop-L-1-arg1 meop-L-1-arg2)))
                     predicate))))))
    (if meop-chk-fun 
        (funcall meop-chk-fun arg1 arg2)
      (error (concat ":FUNCTION `mon-equality-or-predicate' "
                     "-- arg PREDICATE not applicable, got: %S") predicate))))

;;; ==============================
;;; :TODO Define a boolean type w/ `deftype'
;;; :SEE (URL `http://lists.gnu.org/archive/html/bug-gnu-emacs/2010-09/msg00488.html')
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-24T12:14:50-04:00Z}#{10385} - by MON KEY>
(defun mon-booleanp (putative-boolean)
  "Like `booleanp' but return two element list when PUTATIVE-BOOLEAN is either `t' or `nil'.\n
When PUTATIVE-BOOLEAN is any other value return nil.\n
:EXAMPLE\n\n
\(mon-booleanp \"bubba\"\)\n;=> (nil nil)\n
\(mon-booleanp t\)\n;=> \(t t\)\n
\(mon-booleanp nil\)\n;=> \(nil t\)\n
\(mon-booleanp \(\)\)\n;=> \(nil t\)\n
\(mon-booleanp '\(\)\)\n;=> \(nil t\)\n
\(mon-booleanp 't\)\n;=> ;=> \(t t\)   ; :NOTE Understands the quoted t and nil\n 
\(mon-booleanp 'nil\)\n;=> \(nil t\)\n
\(not \(eq :not-a-boolean \(unless \(cadr \(mon-booleanp nil\)\) :not-a-boolean\)\)\)\n
\(eq :not-a-boolean \(unless \(cadr \(mon-booleanp \"bubba\"\)\) :not-a-boolean\)\)\n
:NOTE Returning a two element list on success shares some similarity with
Common Lisp's multiple values which seem pertinent for special cases
like this one in that there is provision for reflection that is hard
to obtain with a uni-valued return, e.g. With `booleanp' when you ask:\n
\(let \(\(query-truth \(eq 8 3\)\)\)
     \(car \(booleanp query-truth\)\)\)\n;=> nil\n
It is hard to know if the thing being queried of was indeed a boolean.
Whereas with a two element proper list:\n
\(let \(\(query-truth \(eq 8 3\)\)\)
     \(and \(cadr \(booleanp query-truth\)\)
          \(not \(car \(booleanp query-truth\)\)\)\)\)\n
:SEE-ALSO `mon-zero-or-onep', `mon-string-or-null-and-zerop',
`mon-sequence-all-booleanp' `mon-equality-or-predicate',
`byte-boolean-vars'.\n►►►"
  ;; :WAS (or (and (eq putative-boolean t)   '(t t))
  ;;          (and (eq putative-boolean nil) '(nil t))
  ;;          '(nil nil)))
  (or (and (atom putative-boolean)
           (symbolp putative-boolean)
           (boundp putative-boolean)
           (or (and (nlistp putative-boolean)
                    (and putative-boolean)
                    (or (and (eq putative-boolean 't) '(t t))
                        (and (eq putative-boolean t)  '(t t))))
               (or (and (listp putative-boolean)
                        (not (consp putative-boolean))
                        (null putative-boolean)
                        (and (eq putative-boolean nil) '(nil t)))
                   (and (eq putative-boolean 'nil) '(nil t)))))
      '(nil nil)))

;;; ==============================
;;; :CHANGESET 2211
;;; :CREATED <Timestamp: #{2010-10-26T11:58:20-04:00Z}#{10432} - by MON KEY>
(defun mon-string-or-null-and-zerop (maybe-str-or-null-obj)
  "Return non-nil when both `string-or-null-p' and of `length' `zerop'.\n
Arg MAYBE-STR-OR-NULL-OBJ is an object to interrogate.\n
:EXAMPLE\n\n\(mon-string-or-null-and-zerop \"\"\)\n
\(mon-string-or-null-and-zerop \"longer than 0\"\)\n
\(mon-string-or-null-and-zerop nil\)\n
\(mon-string-or-null-and-zerop \(\)\)\n
\(mon-string-or-null-and-zerop 0\)\n
\(mon-string-or-null-and-zerop-TEST\)\n
:NOTE The need for this procedure is because of the following:\n
 \(and \(eq \(length nil\) \(length \"\"\)\) 
     \(apply 'string '\( 98 111 116 104  32 110 117 108 108 32
                      118  97 108 117 101  32  97 110 100 32
                       34  34  32  97 114 101  32  48  33\)\)\)\n
:ALIASED-BY `string-or-null-and-zerop'
:ALIASED-BY `stringp-and-zerop-or-null'\n
:SEE-ALSO `mon-string-not-null-nor-zerop', `string-or-null-p', `zerop',
`mon-zero-or-onep', `mon-booleanp', `mon-booleanp-to-binary',
`mon-sequence-all-booleanp'.\n►►►"
  (and (string-or-null-p maybe-str-or-null-obj)
       (zerop (length maybe-str-or-null-obj))))
;;
;;; :TEST-ME (mon-string-or-null-and-zerop-TEST)

;;; ==============================
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-11-03T11:48:37-04:00Z}#{10443} - by MON KEY>
(defun mon-string-not-null-nor-zerop (w-putative-string)
  "Return W-PUTATIVE-STRING if it is `stringp' and greater than `length' 0.\n
:EXAMPLE\n\n\(mon-string-not-null-nor-zerop \"I am a good string\"\)\n
\(equal \(mon-string-not-null-nor-zerop \"I am a good string\"\) \"I am a good string\"\)\n
\(mon-string-not-null-nor-zerop nil\)\n
\(mon-string-not-null-nor-zerop \"\"\)\n
\(mon-string-not-null-nor-zerop 'I-am-not-a-good-string\)\n
\(and \(not \(mon-string-not-null-nor-zerop 8\)\) \"got 8\"\)\n
:ALIASED-BY `string-not-null-or-zerop'\n
:SEE-ALSO `mon-string-or-null-and-zerop', `string-or-null-p', `zerop',
`mon-zero-or-onep', `mon-booleanp', `mon-booleanp-to-binary',
`mon-sequence-all-booleanp'.\n►►►"
  (and (not (mon-string-or-null-and-zerop w-putative-string))
       (stringp w-putative-string)
       w-putative-string))
;;
;;; :TEST-ME (equal (mon-string-not-null-nor-zerop "I am a good string") "I am a good string")
;;; :TEST-ME (and (not (mon-string-not-null-nor-zerop nil)) "value null")
;;; :TEST-ME (and (not (mon-string-not-null-nor-zerop "")) "empty string")
;;; :TEST-ME (and (not (mon-string-not-null-nor-zerop 'I-am-not-a-good-string)) "got symbol")


;;; ==============================
;;; :CHANGESET 2291
;;; :CREATED <Timestamp: #{2010-11-10T14:15:34-05:00Z}#{10453} - by MON KEY>
(defun mon-list-string-longest (check-string-lst)
  "Return length of longest string in sequence CHECK-STRING-LST.\n
Return value is two elt list, car is an integer, cadr is CHECK-STRING-LST.\n
If a string does not satisfy `mon-string-not-null-nor-zerop' signal an error.\n
:EXAMPLE\n\n\(mon-list-string-longest '\(\"EDITOR\" \"HOME\" \"LANG\"\)\)\n
\(= \(car \(mon-list-string-longest '\(\"EDITOR\" \"HOME\" \"LANG\"\)\)\) 6\)\n
\(and \(null \(ignore-errors 
             \(mon-list-string-longest '\(\"EDITOR\" \"HOME\" \"LANG\" 8\)\)\)\)
     \"errored successfully\"\)\n
\(let* \(\(vec-w-lngst \(mon-list-string-longest '\(\"EDITOR\" \"HOME\" \"LANG\"\)\)\)
       \(w-vec  \(make-vector \(car vec-w-lngst\) nil\)\)\)
  \(dotimes \(wv \(car vec-w-lngst\) 
               `\(,\(concat w-vec\) ,vec-w-lngst ,w-vec\)\)
    \(let \(\(w-str \(caadr vec-w-lngst\)\)\)
      \(aset w-vec wv \(aref w-str wv\)\)\)\)\)\n
:NOTE The error signalling is intended as a hard filter for functions which
coerce string elements to vectors.  By preventing null and zerop length strings,
a calling function which maps a sequence of strings can reuse an existing vector
rather than repeatedly instantiating a new vector with each iteration.\n
:SEE-ALSO `mon-sequence-mappable-p' ,`mon-list-string-reader',
`mon-string-or-null-and-zerop', `string-or-null-p'.\n►►►"
  (let ((mlsrca-lngst 0))
    (mapc #'(lambda (mlsr-L-1) 
              (or (and (mon-string-not-null-nor-zerop mlsr-L-1)
                       (setq mlsr-L-1 (length mlsr-L-1))
                       (or (and (> mlsr-L-1 mlsrca-lngst)
                                (setq mlsrca-lngst mlsr-L-1))
                           t))
                  (mon-error-string-err-format 
                   "mon-list-string-longest" "mlsr-L-1" mlsr-L-1 t)))
          check-string-lst)
    (list mlsrca-lngst check-string-lst)))

;;; ==============================
;;; :CHANGESET 2206
;;; :CREATED <Timestamp: #{2010-10-23T13:54:40-04:00Z}#{10426} - by MON KEY>
(defun mon-zero-or-onep (maybe-one-or-zero)
  "Return non-nil when arg MAYBE-ONE-OR-ZERO is and integer 0 or 1.\n
:EXAMPLE\n\n\(mon-zero-or-onep 0\)\n\n\(mon-zero-or-onep 1\)\n
\(mon-zero-or-onep #x1\)\n\n\(mon-zero-or-onep #o1\)\n
\(mon-zero-or-onep #x0\)\n\n\(mon-zero-or-onep #o0\)\n
\(mapcar  #'mon-zerop-or-one
         \(cadr \(memq :bin-table \(mon-bool-vector-pp \(make-bool-vector 8 t\)\)\)\)\)\n
\(mon-zero-or-onep \(length \(not \(not nil\)\)\)\)\n
\(mon-zero-or-onep \(with-temp-buffer \(point-min\)\)\)\n
\(not \(mon-zero-or-onep 
      \(with-temp-buffer \(insert \(make-string 8 32\)\)\(point-max\)\)\)\)\n
\(not \(mon-zero-or-onep 8\)\)\n\n\(not \(mon-zero-or-onep \"bubba\"\)\)\n
\(not \(mon-zero-or-onep []\)\)\n\n\(not \(mon-zero-or-onep '\(\)\)\)\n
\(not \(mon-zero-or-onep nil\)\)\n\n\(not \(mon-zero-or-onep \(not nil\)\)\)\n
:ALIASED-BY `zerop-or-one'
:ALIASED-BY `mon-zerop-or-one'
:ALIASED-BY `mon-one-or-zerop'
:ALIASED-BY `mon-1-or-0-p'
:ALIASED-BY `mon-0-or-1-p'\n
:SEE-ALSO `mon-string-or-null-and-zerop', `mon-booleanp-to-binary',
`mon-booleanp', `mon-sequence-all-booleanp', `mon-equality-or-predicate'.\n►►►"
  (and (wholenump maybe-one-or-zero)
       (or (zerop maybe-one-or-zero)
           (zerop (1- maybe-one-or-zero)))))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (and (mon-zero-or-onep 0) (mon-zero-or-onep 1)
;; |      (mon-zero-or-onep #x1)
;; |      (mon-zero-or-onep #o1)
;; |      (mon-zero-or-onep #x0)
;; |      (mon-zero-or-onep #o0)
;; |      (mon-zero-or-onep (length (not (not nil))))
;; |      (mon-zero-or-onep 
;; |       (with-temp-buffer (point-min)))
;; |      (not (mon-zero-or-onep 
;; |            (with-temp-buffer (insert (make-string 8 32))(point-max))))
;; |      (not (mon-zero-or-onep 8))
;; |      (not (mon-zero-or-onep "bubba"))
;; |      (not (mon-zero-or-onep [])) 
;; |      (not (mon-zero-or-onep '())) 
;; |      (not (mon-zero-or-onep nil)) 
;; |      (not (mon-zero-or-onep (not nil))))
;; `----
;;; ==============================
;;; :CHANGESET 2206
;;; :CREATED <Timestamp: #{2010-10-23T15:08:40-04:00Z}#{10426} - by MON KEY> 
(defun mon-booleanp-to-binary (maybe-a-boolean &optional return-if-not)
  "Convert a boolean value to 1 or 0.\n
When MAYBE-A-BOOLEAN satisfies `mon-booleanp' return 0 when `nil' 1 when `t'.\n
When optional arg RETURN-IF-NOT is non-nil and MAYBE-A-BOOLEAN is not a boolean
return MAYBE-A-BOOLEAN.\n
:EXAMPLE\n\n\(mon-booleanp-to-binary nil\)\n\n\(mon-booleanp-to-binary t\)\n
\(mon-booleanp-to-binary 0\)\n\n\(mon-booleanp-to-binary 1\)\n
\(mon-booleanp-to-binary #o1 t\) ;; :NOTE Handy if `wholenump' is already known\n
\(mon-zero-or-onep \(mon-booleanp-to-binary #x1 t\)\)\n
\(equal \(mon-booleanp-to-binary \"not-a-boolean\" t) \"not-a-boolean\"\)\n
\(not \(mon-booleanp-to-binary \"not-a-boolean\"\)\)\n
\(let \(\(mk-bvec \(make-bool-vector 64 t\)\)\)
  \(loop for z from 0 upto \(1- \(length mk-bvec\)\)
        do \(when \(evenp z\)
             \(aset mk-bvec z nil\)\)
        finally return 
        \(loop for bv across \(vconcat mk-bvec\)
              for i from 0
              collect \(if bv \(mon-booleanp-to-binary bv\) i\) into rtn
              finally return rtn\)\)\)\n
\(let \(\(mk-bvec  \(make-bool-vector 29 t\)\)
      \(not-true \(number-sequence 1 28 3\)\)
      rslts\)
  \(dolist \(tgl not-true mk-bvec\)
    \(unless \(eq tgl 28\)
      \(aset mk-bvec tgl nil\)\)\)
  \(setq rslts 
        \(mapcar #'mon-booleanp-to-binary
                \(cadr \(memq :true-table \(mon-bool-vector-pp mk-bvec\)\)\)\)\)
  \(nconc \(list :true-items \(apply '+ rslts\)\)
         \(list :not-true-at \(number-sequence 1 28 3\)\)
         \(list :true-table rslts\)\)\)\n
\(mon-booleanp-to-binary-TEST\)\n
:ALIASED-BY `mon-boolean-to-binary'
:ALIASED-BY `mon-t-to-1'
:ALIASED-BY `mon-nil-to-0'
:ALIASED-BY `mon-true-to-one'
:ALIASED-BY `mon-false-to-zero'\n
:SEE-ALSO `mon-one-or-zerop', `mon-string-or-null-and-zerop',
`mon-sequence-all-booleanp' `mon-bool-vector-pp', `byte-boolean-vars',
`fillarray'.\n►►►"
  (let ((myb-bool (mon-booleanp maybe-a-boolean)))
    (or (and (cadr myb-bool)
             (or (and (car myb-bool) 1)
                 (and (not (car myb-bool)) 0)))
        (when return-if-not maybe-a-boolean))))
;;
;;; :TEST-ME (mon-booleanp-to-binary-TEST)


;;; ==============================
;;; :CHANGESET 2291
;;; :CREATED <Timestamp: #{2010-11-10T20:05:57-05:00Z}#{10453} - by MON KEY>
(defun mon-sequence-all-booleanp (check-t-or-nil w-map-fun w-map-seq 
                                                 &optional w-type-on-fail)
  "Whether each elt in mapped sequence is `t' or `nil'.\n
According to value passed for CHECK-T-OR-NIL, return value has one of formats:\n
 t              => \(t  t\)    ; Arg was `t' and all mapped elts were eq `t'
 t              => \(t nil\)   ; Arg was `t' one a mapped elt is not eq `t'
 nil            => \(nil t\)   ; Arg was `nil' and all mapped elts were `null'
 nil            => \(nil nil\) ; Arg was `nil' and a mapped elt is `null'
 w-type-on-fail => \(\(<TYPE> . <POSN>\) <SEQ>\) ; See below\n
CHECK-T-OR-NIL is a boolean, either `t' or `nil' and should satisfy `mon-booleanp'.
An error is signaled if not.\n
W-MAP-FUN is a function object accepting one argument.
It is passed to `mapcar' and should and return some non-boolean value in W-MAP-SEQ.\n
W-MAP-SEQ is a mappaple sequence satisfying `mon-sequence-mappable-p'.
An error is signaled if not.\n
When W-TYPE-ON-FAIL is non-nil and a non-boolean is encountered inside the
mapped value of W-MAP-SEQ return value has the form:\n
 \(\( <TYPE> . <POSN> \) <SEQ> \)\n
The first elt of list is a consed pair.\n
The cdr, <POSN> is index into the mapped value of W-MAP-SEQ.\n
The car, <TYPE> is the non-booleans type.
It is indicated as if by `type-of', except when <TYPE> is `t' or `nil' in which
case <TYPE> is indicated as `boolean` and not `symobl` this is a deviation from
the return value for `type-of'.\n
The intent is that when a \"non-boolean\" is encountered which is in fact a
_boolean_ but not one `eq' CHECK-T-OR-NIL, calling functions might benefit by
not having to re-interrogate quite so vigorously the thing just looked at.\n
The cadr of return value, <SEQ> is the mapped value of W-MAP-SEQ.\n
It is therefor possible to invoke `elt' on `cadr' with the `cdar' of return
value to obtain the value of the offending non-boolean and to do so
according to some heuristic per the type indicated at `caar'.\n
:EXAMPLE\n
\(mon-sequence-all-booleanp t 'cadr '\(\(a t\) \(b t\) \(c t\)\)\)\n
\(mon-sequence-all-booleanp t 'cadr '\(\(a t\) \(b t\) \(c nil\)\)\)\n
\(mon-sequence-all-booleanp t 'cadr '\(\(a t\) \(b t\) \(c nil\)\) t\)\n 
\(mon-sequence-all-booleanp t 'car `\(\(t a\) \(t b\) \(\"I'm a string\" c\)\) t\)\n
\(mon-sequence-all-booleanp t 'cadr '[\(a t\) \(b t\) \(c t\)]\)\n
\(mon-sequence-all-booleanp t 'car '[\(t a\) \(nil b\) \(c nil\)]\)\n
\(mon-sequence-all-booleanp t 'caddr '[\(a 1 t\) \(b 2 t\) \(c 3 nil\)] t\)\n
\(mon-sequence-all-booleanp t 'caddr `[\(a 1 t\) \(b 2 t\) \(c 3 ,\(make-vector 3 '6\)\)] t\)\n
\(mon-sequence-all-booleanp nil 'cadr '\(\(a nil\) \(b nil\) \(c nil\)\)\)\n
\(mon-sequence-all-booleanp nil 'cadr '\(\(a nil\) \(b nil\) \(c t\)\)\)\n
\(mon-sequence-all-booleanp nil 'cadr '\(\(a nil\) \(b nil\) \(c t\)\) t\)\n
\(mon-sequence-all-booleanp nil 'car `\(\(nil a\) \(nil b\) \(,\(make-vector 3 '6\) c\)\) t\)\n
\(mon-sequence-all-booleanp nil 'cadr '[\(a nil\) \(b nil\) \(c nil\)]\)\n
\(mon-sequence-all-booleanp nil 'car '[\(nil a\) \(t b\) \(c t\)]\)\n
\(mon-sequence-all-booleanp nil 'caddr '[\(a 1 nil\) \(b 2 nil\) \(c 3 t\)] t\)\n
\(mon-sequence-all-booleanp nil 'car `\(\(nil a\) \(nil b\) \(\"I'm a string\" c\)\) t\)\n
;; Following succesfully fail:\n
\(mon-sequence-all-booleanp 'a #'identity '\(a b\)\)\n
\(mon-sequence-all-booleanp nil #'identity '\(a . b\)\)\n
\(mon-sequence-all-booleanp t  #'identity \(current-buffer\)\)\n
\(mon-sequence-all-booleanp-TEST t\)\n
:ALIASED-BY `mon-list-all-booleanp'\n
:SEE-ALSO `mon-booleanp', `mon-booleanp-to-binary', `mon-zero-or-onep', `facemenu-iterate'.\n►►►"
  (let ((msab-args (mon-booleanp check-t-or-nil)))
    (and (or (and (cadr msab-args) (progn (setq check-t-or-nil (car msab-args)) t))
             (error (concat ":FUNCTION `mon-sequence-all-booleanp' "
                            "-- arg CHECK-T-OR-NIL not `mon-booleanp', got: %S type-of: %s")
                    check-t-or-nil (type-of check-t-or-nil)))
         ;; :NOTE Reusing MSAB-ARGS. Now holding `mon-sequence-mappable-p'
         (setq msab-args (mon-sequence-mappable-p w-map-seq nil t))
         (or (car msab-args)
             (error (concat ":FUNCTION `mon-sequence-all-booleanp' "
                            "-- arg W-MAP-SEQ not `mon-sequence-mappable-p', got: %S type-of: %s")
                    w-map-seq (cdr msab-args)))
         ;;
         ;; :NOTE Check if `w-map-fun' is applicable/funcallable and signal/coerce if not? e.g.:
         ;; (or (memq (mon-function-object-p w-map-fun) (remq 'macro *mon-function-object-types*)) 
         ;;
         ;; Reusing MSAB-ARGS. Reset to nil for use below, but don't kick out of the conditional.
         (progn (setq msab-args) t))
    (catch 'failed-at
      (and w-type-on-fail (setq w-type-on-fail 0))
      (setq msab-args 
            (mapcar #'(lambda (msab-L-1)
                        ;; Convert elt to 1 or 0 if it is `t' or `nil'
                        (setq msab-L-1 (mon-booleanp-to-binary msab-L-1 t) 
                              ;; Establish an idx if W-TYPE-ON-FAIL
                              w-type-on-fail (and w-type-on-fail (1+ w-type-on-fail)))
                        (or  (and 
                              w-type-on-fail 
                              (mon-zero-or-onep msab-L-1) 
                              (or (and (not check-t-or-nil) 
                                       (or (= msab-L-1 0) 
                                           ;; Invert it back to `t' b/c we're gonna throw
                                           (progn (setq msab-L-1 t) nil)))
                                  (and check-t-or-nil 
                                       (or (= msab-L-1 1)
                                           ;; Invert it back to `nil' b/c we're gonna throw
                                           (setq msab-L-1 nil))))
                              msab-L-1)
                             (and (not w-type-on-fail) (mon-zero-or-onep msab-L-1) msab-L-1)
                             (throw 'failed-at ;; ((<TYPE> . <POSN>) <SEQ>) 
                                    (or (and w-type-on-fail 
                                             (prog1
                                                 (setq w-type-on-fail
                                                       ;; Report `t' and `nil' as 'boolean not 'symbol!
                                                       `((,(or (and (cadr (mon-booleanp msab-L-1)) 'boolean)
                                                               (type-of msab-L-1)) .  ,w-type-on-fail) ,msab-args))
                                               (setq msab-args nil)))
                                        (progn
                                          (setq w-type-on-fail (list check-t-or-nil nil)
                                                msab-args nil)
                                          w-type-on-fail)))))
                    (setq msab-args (mapcar w-map-fun w-map-seq))))
      ;; If CHECK-T-OR-NIL is `t' and sum is = length MSAB-ARGS all elts were `t'.
      ;; If it is `nil' we want 0 e.g.: (= (reduce '+ '(0 0 0)) 0)
      (or (and msab-args 
               (setq msab-args `(,check-t-or-nil 
                                 ,(= (apply '+ msab-args) 
                                     (or (and check-t-or-nil (length msab-args)) 0)))))
          w-type-on-fail))))
;;
;;; :TEST-ME (mon-sequence-all-booleanp)

;;; ==============================
;;; Following does image extension type checking. Can be used elsewhere as well.
;;; :REQUIRES `image-type-available-p', `image-type-from-file-name' in :FILE image.el
;;; :RENAMED `boxcutter-verify-image-type' -> `mon-image-verify-type'
;;; :MODIFICATIONS <Timestamp: #{2010-05-28T13:40:43-04:00Z}#{10215} - by MON>
;;; :CREATED <Timestamp: #{2009-10-17T17:58:20-04:00Z}#{09426} - by MON>
(defun mon-image-verify-type (verify-image-type)
  "Verify that image-type VERIFY-IMAGE-TYPE can be manipulated with ImageMagick's convert.\n
Return a canonical representation for VERIFY-IMAGE-TYPE.\n
Valid VERIFY-IMAGE-TYPE args are:\n
 {jpg png gif tiff jpeg xpm xbm pbm bmp psd}\n
:NOTE VERIFY-IMAGE-TYPE is not case sensitive, can be a string or symbol, and
any leading `.' in the file extension will be stripped away.\n
:EXAMPLE\n\(mon-image-verify-type 'jpg\)
\(mon-image-verify-type '.jpg\)
\(mon-image-verify-type \"jpg\"\)
\(mon-image-verify-type \".jpg\"\)
\(mon-image-verify-type \"I WILL FAIL with nil\"\)
\(mon-image-verify-type '\(I WILL FAIL with error\)\)\n
:NOTE Any potentially any file format that is RW by ImageMagick's 
convert command could be supported. For a complete list of formats supported:
:SEE (URL `http://www.imagemagick.org/script/formats.php')
:CALLED-BY `boxcutter-big-n-small'\n
:ALIASED-BY `boxcutter-verify-image-type' \(when \(and \(featurep 'mon-boxcutter\)\)\)\n
:SEE-ALSO `mon-check-image-type', `*boxcutter-conversion-program*',
`image-type-available-p', `image-type-from-file-name',
`image-file-name-extensions', `image-type-file-name-regexps',
`image-file-name-regexps'.\n►►►"
  (eval-when-compile (require 'image))
  (let ((v-type verify-image-type))
    (car (member
          (cond ((stringp v-type)
                 (if (image-type-from-file-name
                      (let* ((v-type-str v-type)
                             (chk-ftyp (string-match-p "\\." v-type-str)))
                        (if chk-ftyp
                            v-type-str
                          (setq v-type-str (concat "." v-type-str)))))
                     (let* ((ext-is-str (downcase v-type)) ;we still need to check for leading `.'
                            (ext-seq (mon-string-to-sequence ext-is-str)))
                       (mon-string-to-symbol
                        (if (eq (elt ext-seq 0) 46)
                            (mon-string-from-sequence (cdr ext-seq))
                          ext-is-str)))))
                ((symbolp v-type)
                 (let* ((f-sym-str (mon-string-from-symbol v-type))
                        (chk-ftyp (string-match-p "\\." f-sym-str)))
                   (if chk-ftyp
                       (if (<= chk-ftyp 1)
                           f-sym-str
                         (setq f-sym-str (concat "." f-sym-str)))
                     f-sym-str)
                   (if (image-type-available-p
                        (image-type-from-file-name f-sym-str))
                       (mon-string-to-symbol
                        (mon-string-after-index f-sym-str "."))
                     v-type)))
                ((or (listp v-type) (vectorp v-type)
                     (and (stringp v-type) (arrayp v-type)))
                 (error (concat ":FUNCTION `mon-image-verify-type' "
                                "-- %s is a %s - not a valid arg for `verify-image-type'")
                        v-type (type-of v-type)))
                (t (error (concat  ":FUNCTION `mon-image-verify-type' "
                                   "-- this argument sux no further type checking try again"))))
          '(jpg png gif tiff jpeg xpm xbm pbm bmp)))))
;;
;;; :TEST-ME (mon-image-verify-type 'jpg)
;;; :TEST-ME (mon-image-verify-type '.jpg)
;;; :TEST-ME (mon-image-verify-type "jpg")
;;; :TEST-ME (mon-image-verify-type ".jpg")
;;; :TEST-ME (mon-image-verify-type "I WILL FAIL with nil")
;;; :TEST-ME (mon-image-verify-type '(I WILL FAIL with error))

;;; ==============================
;;; :PREFIX "mgss-"
;;; :CREATED <Timestamp: #{2009-12-09T11:54:07-05:00Z}#{09503} - by MON>
(defun mon-get-system-specs (&optional insrtp intrp)
  "Return the output of shell-command 'uname -a'.\n
When called-interactively or INSRTP is non-nil insert at point.\n
Does not move point.\n
:EXAMPLE\n\n\(mon-get-system-specs\)\n
:SEE-ALSO `system-name', `mon-get-env-vars-strings', `mon-get-env-vars-symbols',
`mon-get-env-vars-emacs', `mon-get-proc-w-name', `mon-get-sys-proc-list',
`mon-insert-sys-proc-list', `read-envvar-name'.\n►►►"
  (interactive "i\np")
  (if (executable-find "uname")
      (let ((mgss-unm (shell-command-to-string "uname -a")))
        (setq mgss-unm (replace-regexp-in-string "[[:blank:]]+" " " mgss-unm))
        (if (or insrtp intrp)
            (save-excursion 
              (newline)
              (princ mgss-unm (current-buffer)))
          mgss-unm))
    (when (eq system-type 'windows-nt)
      (message "The command `uname -a' is not available"))))
;;
;;; :TEST-ME (mon-get-system-specs)
;;; :TEST-ME (mon-get-system-specs t)

;;; ==============================
;;; :PREFIX "mgevsym-"
;;; :CREATED <Timestamp: #{2010-01-18T20:20:35-05:00Z}#{10032} - by MON>
(defun mon-get-env-vars-symbols ()
  "Return a list of symbols for current-process' environmental-variables.\n
like `mon-get-env-vars-strings' but returns symbols instead of strings.\n
:EXAMPLE\n\n(mon-get-env-vars-symbols)\n
:SEE-ALSO `mon-get-env-vars-strings', `mon-get-system-specs', 
`mon-help-emacs-introspect', `process-environment', `initial-environment',
`getenv', `setenv', `read-envvar-name'.\n►►►"
  (interactive) 
  (let ((mgevsym-proc-env process-environment)
        mgevsym-gthr)
    (dolist (mgevsym-D-1 mgevsym-proc-env mgevsym-gthr)
      (when (string-match "\\(.*\\)=.*" mgevsym-D-1)
        (push 
         (car (read-from-string mgevsym-D-1 (match-beginning 0) (match-end 1)))
         mgevsym-gthr)))))

;;; ==============================
;;; :PREFIX "mgevs-"
;;; :COURTESY :FILE emacs/lisp/env.el :WAS `read-envvar-name' 
;;; :CREATED <Timestamp: #{2009-10-16T15:29:37-04:00Z}#{09425} - by MON KEY>
(defun mon-get-env-vars-strings (&optional as-strings insrtp intrp)
  "Return a list strings for the current process' enviromental variables.
When AS-STRINGS is non-nil or called with a prefix-arg return as strings.
When insrtp or called-interactively insert returned vars at point.\n
:EXAMPLE\(mon-get-env-vars-strings\)\n
:SEE-ALSO `mon-get-env-vars-symbols', `mon-get-env-vars-emacs',
`mon-get-system-specs', `mon-help-emacs-introspect', `process-environment',
`initial-environment', `setenv', `getenv', `read-envvar-name'.\n►►►"
  (interactive "P\ni\np")
  (let ((mgevs-getenvs
         (mapcar #'(lambda (mgevs-L-1)
                     (let ((mgevs-L-1-str 
                            (substring mgevs-L-1 0 (string-match-p "=" mgevs-L-1))))
                       (if (multibyte-string-p mgevs-L-1-str)
                           (decode-coding-string mgevs-L-1-str locale-coding-system t)
                         mgevs-L-1-str)))
                 ;; :NOTE Why did this use append here?
                 (append process-environment))))
    (setq mgevs-getenvs (sort mgevs-getenvs #'string<))
    (when as-strings
      (setq mgevs-getenvs (concat "\"" (mapconcat #'identity mgevs-getenvs "\"\n\"") "\"")))
    (cond ((or insrtp intrp)
           ;; (mapc (lambda (x) (prin1 x (current-buffer))) mgevs-getenvs)
           (if as-strings
               (prin1 mgevs-getenvs (current-buffer))
             (princ mgevs-getenvs (current-buffer))))
          (t (if as-strings
                 (prin1 mgevs-getenvs)
               mgevs-getenvs)))))
;;
;;; :TEST-ME (mon-get-env-vars-strings)
;;; :TEST-ME (mon-get-env-vars-strings t)
;;; :TEST-ME (mon-get-env-vars-strings nil nil)
;;; :TEST-ME (mon-get-env-vars-strings  t t)
;;; :TEST-ME (mon-get-env-vars-strings  nil t)
;;; :TEST-ME (princ (mon-get-env-vars-strings t) (current-buffer))
;;; :TEST-ME (prin1 (mon-get-env-vars-strings t) (current-buffer))

;;; ==============================
;;; :PREFIX "mgeve-"
;;; :CREATED <Timestamp: #{2010-01-22T16:29:45-05:00Z}#{10035} - by MON>
(defun mon-get-env-vars-emacs (&optional insrtp intrp)
  "Return an list of the current environmental variables of the running Emacs.\n
Alist Keys have the form:\n
 \(:ENV-VAR \"VALUE-STRING\"\)
 \(ENV_VAR \"VALUE-STRING\"\)\n
For each colon prefixed :ENV-VAR key there is an equivalent symbol key. Each has
an identical value.\n
:EXAMPLE\n\n\(mon-get-env-vars-emacs\)\n
\(mapcar 'car \(mon-get-env-vars-emacs\)\)\n
:NOTE MON stores some local variables in `*mon-misc-path-alist*'. When this
symbol is present values associated with the key ``the-emacs-vars'' will also included
when generating the return value.\n
When called-interactively pretty-print return value in buffer named
\"*MON-EMACS-ENV-VARS*\".\n
:SEE info node `(emacs)General Variables'.\n
:SEE-ALSO `mon-get-env-vars-strings', `mon-get-env-vars-symbols'
`mon-get-system-specs', `mon-insert-sys-proc-list',
`mon-get-sys-proc-list', `mon-get-proc-w-name', `mon-get-process',
`mon-help-process-functions', `mon-help-emacs-introspect', `emacs-pid',
`process-environment', `initial-environment', `getenv', `setenv'.\n►►►"
  (interactive "i\np")
  (let ((mgeve-vars (mon-intersection 
                         (mon-get-env-vars-symbols)
                         (append 
                          ;; MON-LOCAL-VARS                          
                          (when (bound-and-true-p *mon-misc-path-alist*)
                            (cadr (assq 'the-emacs-vars *mon-misc-path-alist*)))
                          (do* ((i '(;; :LENNART-EMACS-W32-VARS
                                     EMACSCLIENT_STARTING_SERVER EMACS_SERVER_FILE
                                     ;; :GNUS-MAIL
                                     ;; MH NNTPSERVER REPLYTO SAVEDIR SMTPSERVER  MAIL
                                     ;; ORGANIZATION VERSION_CONTROL HISTFILE EMAIL EMACS_UNIBYTE CDPATH
                                     ;; :STANDARD-EMACS-VARS 
                                     emacs_dir INFOPATH ESHELL  INCPATH
                                     EMACSLOADPATH EMACSDATA EMACSPATH EMACSDOC SHELL TERM)   i)
                                (j (pop i) (pop i))
                                (k))
                               ((null j) (nreverse k))
                            (when (getenv (format "%s" j))(push j k))))
                         nil t))
        gthr-env-vars)
    (dolist (mgeve-D-1 mgeve-vars (setq gthr-env-vars (nreverse gthr-env-vars)))
      (let ((mgeve-D-lcl-is-var (car (memq mgeve-D-1 mgeve-vars)))
            mgeve-D-lcl-var-prs)
        (unless (null mgeve-D-lcl-is-var)
          (let* ((mgeve-D-lcl2-frmt-var (upcase (format "%s" mgeve-D-lcl-is-var)))
                 (mgeve-D-lcl2-get-var (file-truename (getenv mgeve-D-lcl2-frmt-var))))
            (push `(,(car (read-from-string (subst-char-in-string 95 45 (concat ":" mgeve-D-lcl2-frmt-var))))
                    . ,mgeve-D-lcl2-get-var)
                  mgeve-D-lcl-var-prs)
            (push `(,(car (read-from-string mgeve-D-lcl2-frmt-var)) . ,mgeve-D-lcl2-get-var)
                  mgeve-D-lcl-var-prs)))
        (setq mgeve-D-lcl-var-prs (nreverse mgeve-D-lcl-var-prs))
        (push (car mgeve-D-lcl-var-prs) gthr-env-vars)
        (push (cadr mgeve-D-lcl-var-prs) gthr-env-vars)))
    insrtp ;; Not currently evaluating INSRTP.
    (when intrp 
      (let ((mgeve-get-bfr (get-buffer-create "*MON-EMACS-ENV-VARS*")))
        (with-current-buffer (buffer-name mgeve-get-bfr)
          (erase-buffer)
          (pp-display-expression gthr-env-vars (buffer-name mgeve-get-bfr))
          (mon-g2be -1) 
          (insert ";; :MON-EMACS-ENV-VARS output from:\n;; (mon-get-env-vars-emacs nil t)\n;;\n"))))))
;;
;;; :TEST-ME (mon-get-env-vars-emacs)
;;; :TEST-ME (mapcar 'car (mon-get-env-vars-emacs))

;;; ==============================
;;; :PREFIX "mgspl"
;;; :NOTE MON recently found the :FILE proced.el 
;;;       Some of this might be accomplished with that excellent package.
;;; :CHANGESET 1708 <Timestamp: #{2010-04-12T17:02:32-04:00Z}#{10151} - by MON KEY>
;;; :CHANGESET 1703 <Timestamp: #{2010-04-07T14:39:56-04:00Z}#{10143} - by MON KEY>
;;; :CREATED <Timestamp: #{2009-10-16T15:49:07-04:00Z}#{09425} - by MON KEY>
(defun mon-get-sys-proc-list (&optional intrp)
  "Return a full lisp list of current system-proceses.\n
When called-interactively return results in buffer \"*MON-GET-SYS-PROCESSES*\".\n
:EXAMPLE:\n\n(mon-get-sys-proc-list)\n\n\(mon-get-sys-proc-list t\)\n
:SEE-ALSO `mon-get-process',`mon-insert-sys-proc-list',
`mon-help-process-functions', `mon-get-env-vars-strings',
`mon-get-env-vars-symbols', `mon-get-env-vars-emacs', `mon-get-system-specs',
`mon-help-emacs-introspect', `emacs-pid'.\n►►►"
  (interactive "p")
  (let (mgspl)
    (dolist (sys-proc (list-system-processes) (setq mgspl (nreverse mgspl)))
      (push (process-attributes sys-proc) mgspl))
    (when intrp 
      (pp-display-expression mgspl "*MON-GET-SYS-PROCESSES*"))))
;;
;;; :TEST-ME (mon-get-sys-proc-list)
;;; :TEST-ME (mon-get-sys-proc-list t)

;;; ==============================
;;; :PREFIX "mispl-"
;;; :NOTE MON recently found the :FILE proced.el 
;;;       Some of this might be accomplished with that excellent package.
;;; CREATED: <Timestamp: #{2009-10-16T15:54:29-04:00Z}#{09425} - by MON KEY>
(defun mon-insert-sys-proc-list ()
  "Insert a full lisp list of current system-proceses at point.
Does not move point.\n
:SEE-ALSO `mon-get-process', `mon-get-sys-proc-list', 
`mon-insert-sys-proc-list', `emacs-pid',
`mon-get-env-vars-strings', `mon-get-env-vars-symbols'
`mon-get-env-vars-emacs', `mon-get-system-specs'
`mon-help-emacs-introspect'.\n►►►"
  (interactive)
  (save-excursion
    (newline)
    (mapc #'(lambda (mispl-L-1)
              (princ (concat ";;;\n" (pp mispl-L-1))(current-buffer)))
          (mon-get-sys-proc-list))))

;;; ==============================
;;; :NOTE MON recently found the :FILE proced.el 
;;;       Some of this might be accomplished with that excellent package.
;;; :CREATED <Timestamp: #{2009-10-16T16:34:48-04:00Z}#{09425} - by MON KEY>
(defun mon-get-proc-w-name (comm)
  "Return list of `process-attributes' lists for Command name COMM.
COMM (a string) is an executable name. 
On w32 it is not required give the .exe suffix.\n
:EXAMPLE\n\(mon-get-proc-w-name \"emacs\"\)\n
:SEE-ALSO `mon-get-process', `mon-get-sys-proc-list', `mon-get-sys-proc-list'.
`mon-help-process-functions'.\n►►►"
  (let (fnd-proc gthr)
    (mapc #'(lambda (x)
              (let ((t-aso (assoc 'comm x)))
                (if (string-match comm (cdr t-aso)) ;"emacs.exe"
                    (setq fnd-proc (cons x fnd-proc)))))
          (mon-get-sys-proc-list))
    fnd-proc))
;;
;;; :TEST-ME (mon-get-proc-w-name "emacs")
;;; :TEST-ME (mon-get-proc-w-name "svchost")
;;; :TEST-ME (mon-get-proc-w-name "bubba")
;;; :TEST-ME (mon-get-proc-w-name (invocation-name))
                               
;;; ==============================
;;; :NOTE Built to test for "mysql" command before looking for a comint.
;;;       MON recently found the :FILE proced.el 
;;;       Some of this might be accomplished with that excellent package.
;;; :NOTE `mon-get-process' uses `flet' cl--find-if -> `find-if'
;;; :CREATED <Timestamp: #{2009-12-09T20:02:30-05:00Z}#{09503} - by MON>
(defun mon-get-process (&optional proc-comm)
  "Find the process-id for process invoked with command.
When PROC-COMM is non-nil it is a command name to find.
Default is value of \(invocation-name\).\n
:NOTE This function is GNU/Linux centric! However, unlike `mon-get-proc-w-name'
this function can match multiple processes with identical invocation commands.\n
:EXAMPLE\n\n\(if IS-W32-P 
    \(mon-get-process \(concat \(invocation-name\) \".exe\"\)\)
    \(mon-get-process \(invocation-name\)\)\)\n
:SEE-ALSO `mon-insert-sys-proc-list', `mon-get-sys-proc-list',
`mon-help-process-functions'.\n►►►"
  (interactive)
  (let* ((pmatch)
         (prc-l (nreverse (list-system-processes)))
         (map-prc #'(lambda (u) 
                      (flet ((cl--fi (cl-pred cl-list &rest cl-keys) ;; `find-if'
                               (apply 'find nil cl-list :if cl-pred cl-keys)))
                        (let ((got-it 
                               (cl--fi  #'(lambda (z) 
                                            (and (eql (car z) 'comm)
                                                 (equal (cdr z) 
                                                        (if proc-comm 
                                                            proc-comm 
                                                            (invocation-name)))))
                                        (process-attributes u))))
                          (when got-it (if (not prc-l)
                                           (push `(,u ,got-it) prc-l)
                                           (push u pmatch))))))))
    (mapc map-prc prc-l)
    (if pmatch
        (progn 
          (setq prc-l nil)
          (mapc map-prc pmatch)
          ;; :WAS (if prc-l prc-l))
          (or prc-l))
        pmatch)))
;;
;;; :TEST-ME (if IS-W32-P 
;;;              (mon-get-process (concat (invocation-name) ".exe"))
;;;              (mon-get-process (invocation-name)))

;;; ==============================
;;; "mmsb-"
;;; :CREATED <Timestamp: #{2009-12-01T13:54:34-05:00Z}#{09492} - by MON KEY>
(defun mon-make-shell-buffer ()
  "Return a new *shell* buffer.\n
If *shell* exists increment by 1 and return *shell-N*.\n
:EXAMPLE\n\(let \(\(kl-bf \(mon-make-shell-buffer\)\)\)
  \(progn \(momentary-string-display 
          \(format \" The buffer %s is about to die\" kl-bf\) \(point\)\)
         \(kill-buffer kl-bf\)\)\)\n
:NOTE could also be accomplished similarly with:\n
\(get-buffer-create \(generate-new-buffer-name \"*shell*\"\)\)\n
But, this way MON has fine-grain control over the assigned name suffix.\n
:CALLED-BY `mon-shell'\n
:ALIASED-BY  `mon-buffer-make-shell'
:SEE-ALSO `generate-new-buffer', `generate-new-buffer-name',
`mon-make-shell-buffer', `mon-terminal', `mon-help-process-functions',
`shell'.\n►►►"
  (let (mmsb-bfrs mmsb-bfrs-str)
    (setq mmsb-bfrs (with-temp-buffer
                  (princ (buffer-list) (current-buffer))
                  (mon-buffer-sub-no-prop)))
    (setq mmsb-bfrs (read mmsb-bfrs))
    (setq mmsb-bfrs (mapcar #'(lambda (mmsb-L-1) (format "%s" mmsb-L-1)) mmsb-bfrs))
    (mapc #'(lambda (mmsb-L-2)
              (when (string-match-p "\\*shell" mmsb-L-2)
                (push mmsb-L-2 mmsb-bfrs-str)))
          mmsb-bfrs)
    (setq mmsb-bfrs (car mmsb-bfrs-str))
    (cond ((null mmsb-bfrs) (get-buffer-create "*shell*"))
          ((= (length mmsb-bfrs) 7) (get-buffer-create "*shell-1*"))
          ((> (length mmsb-bfrs) 7) 
           (get-buffer-create
            (format "*shell-%d*" 
                    (1+ (string-to-number (substring mmsb-bfrs 7 8)))))))))
;;
;;; :TEST-ME (mon-make-shell-buffer)
;;; :TEST-ME (let ((kl-bf (mon-make-shell-buffer)))
;;;              (prog1 (princ kl-bf) (kill-buffer kl-bf)))

;;; ==============================
;;; :NOTE I tried to figure out how to do this with `defadvice'... that was bad!
;;; :CREATED <Timestamp: #{2009-12-01T15:18:38-05:00Z}#{09492} - by MON KEY>
(defun mon-shell ()
  "Return *shell* buffer.\n
If *shell* exists increment by 1 and return *shell-N*.\n
:ALIASED-BY `mon-buffer-get-shell'\n
:SEE-ALSO `mon-make-shell-buffer', `mon-terminal', `mon-help-process-functions',
`shell'.\n►►►"
  (interactive)
  (shell (mon-make-shell-buffer)))
;;
;;; :TEST-ME (progn (mon-shell) (mon-shell))

;;; ==============================
;;; :CREATED <Timestamp: #{2010-06-22T16:22:02-04:00Z}#{10252} - by MON>
(defvar *mon-ascii-cursor-state* nil
  "Variable to hold state for `mon-rotate-ascii-cursor'.
Its value is set during execution by that functions ROTATE-PRED arg.
:SEE-ALSO .\n►►►")

;;; ==============================
;;; :TODO This needs to be re-written as a macro in the style of `with-temp-message'
;;; :CREATED <Timestamp: #{2010-06-18T13:17:42-04:00Z}#{10245} - by MON>
(defun mon-rotate-ascii-cursor (rotate-pred &optional rotate-message)
  "Spin an ASCII cursor while ROTATE-PRED evaluates t.
ROTATE-PRED is a function which modifies the value of the global variable
`*mon-ascii-cursor-state*' after each full rotation of the cursor.  On entry to this
function the the value of `*mon-ascii-cursor-state*' is nil. On exit it is set to
nil. This function will signal an error if `*mon-ascii-cursor-state*' is void.\n
Optional arg is a string to display before while cursor while it is spinning.
Default is \"processing .... \"
:EXAMPLE\n\n\(progn
  \(setq *mon-ascii-cursor-state* 8\)
  \(mon-rotate-ascii-cursor 
   #'\(lambda \(\) 
       \(if \(= *mon-ascii-cursor-state* 0\) 
           \(setq *mon-ascii-cursor-state* nil\)
         \(setq *mon-ascii-cursor-state* \(1- *mon-ascii-cursor-state*\)\)\)\)
   \"running `mon-rotate-ascii-cursor' example ... \"\)
  \(message \(format \":VARIABLE `*mon-ascii-cursor-state*' is: %S\"
                   \(symbol-value *mon-ascii-cursor-state*\)\)\)\)\n
:SEE-ALSO `dotimes-with-progress-reporter', `progress-reporter-done',
`progress-reporter-update', `make-progress-reporter',
`progress-reporter-force-update', `progress-reporter-do-update'
`url-display-percentage', `url-show-status'.\n►►►"
  (when (null *mon-ascii-cursor-state*)
    (error (concat ":FUNCTION `mon-rotate-ascii-cursor' "
                   "-- global variabe `*mon-ascii-cursor-state*' null")))
  (unwind-protect 
      (let ((mrac-msg (or rotate-message "processing .... ")))
        (while *mon-ascii-cursor-state*
          (dolist (rot '(92 45 124 47 45))
            (message (concat mrac-msg (char-to-string rot)))
            (sit-for 0.1))
          (funcall rotate-pred)))
    (setq *mon-ascii-cursor-state* nil)))
;;
;;,---- :UNCOMMENT-TO-TEST
;;| (progn
;;|   (setq *mon-ascii-cursor-state* 8)
;;|   (mon-rotate-ascii-cursor 
;;|    #'(lambda () 
;;|        (if (= *mon-ascii-cursor-state* 0) 
;;|            (setq *mon-ascii-cursor-state* nil)
;;|          (setq *mon-ascii-cursor-state* (1- *mon-ascii-cursor-state*))))
;;|    "running `mon-rotate-ascii-cursor' example ... ")
;;|   (message (format ":VARIABLE `*mon-ascii-cursor-state*' is: %S"
;;|                    (symbol-value *mon-ascii-cursor-state*))))
;;`----


;;; ==============================
;;; :PREFIX "madd-"
;;; :MODIFICATIONS <Timestamp: #{2010-01-19T18:51:37-05:00Z}#{10032} - by MON>
;;; :CREATED <Timestamp: #{2009-12-01T01:12:29-05:00Z}#{09492} - by MON KEY>
(defun mon-async-du-dir (the-dir)
  "Return a sorted du \(big->small\)for DIR in buffer `*DU-<DIR>'.\n
Invoke du as an asynchronous shell command.\n
:EXAMPLE\n\n\(mon-async-du-dir data-directory)\n
:SEE-ALSO `mon-help-du-incantation', `*regexp-clean-du-flags*',
`get-free-disk-space', `directory-free-space-program',
`directory-free-space-args'.\n►►►"
  ;; (read-directory-name "Directory to du :" nil nil t)))
  (interactive "D:FUNCTION `mon-async-du-dir' -- Directory to du: ") 
  (if (fboundp 'async-shell-command)      
      (let ((madd-dir-du
             (file-name-as-directory
              (file-truename
               (if (file-name-absolute-p the-dir)
                   the-dir
                 (expand-file-name the-dir))))))
        (async-shell-command 
         (format "du %s | sort -nr" madd-dir-du)
         (get-buffer-create (format "*DU-%s" madd-dir-du))))
    (message (concat ":FUNCTION `mon-async-du-dir' "
                      "-- the du command is not available on w32"))))
;;
;;; :TEST-ME (mon-async-du-dir data-directory)

;;; ==============================
(defun mon-terminal ()
  "When `gnu-linuxp' launch a terminal.\n
When `win32p' invoke Cygwin Bash in cmd console.\n
:SEE-ALSO `mon-cmd' which when win32p returns the NT Command console.
`mon-shell', `mon-make-shell-buffer', `w32shell-cmd-here', `w32shell-cmd',
`w32shell-explorer', `mon-help-process-functions'.\n►►►"
  (interactive)
  (cond  ((and (intern-soft "IS-BUG-P" obarray)
               (bound-and-true-p IS-BUG-P))
          (message "You don't have the goods for this"))
         ((and (intern-soft "IS-MON-P-W32" obarray)
               (bound-and-true-p IS-MON-P-W32))
          (w32-shell-execute "open" "cmd.exe" "C:\\Cygwin.bat"))
         ((and (intern-soft "IS-MON-P-GNU" obarray)
               (bound-and-true-p IS-MON-P-GNU))
          (shell-command "terminal"))
         (t (message ":FUNCTION `mon-terminal' -- check the manual :P"))))

;;; ==============================
(defun mon-cmd ()
  "When `win32p' launch the NT Command console.\n
When `gnu-linuxp' launch a terminal \(mrxvt\).\n
:SEE `mon-terminal' which when `win32p' gives a Cygwin bash shell wrapped
in a cmd console.\n
:SEE-ALSO `mon-shell', `mon-make-shell-buffer', `w32shell-cmd-here',
`w32shell-cmd', `w32-shell-execute', `w32shell-explorer', `shell-command',
`shell', `mon-help-process-functions'.\n►►►"
  (interactive)
  (cond ((and (intern-soft "IS-W32-P" obarray)
              (bound-and-true-p IS-W32-P))
         (w32-shell-execute "open" "cmd"))
        ((and (intern-soft "IS-GNU-P" obarray)
              (bound-and-true-p IS-GNU-P))
         ;; :WAS (shell-command "terminal")
         (shell-command "mrxvt"))
        (t (message ":FUNCTION `mon-cmd' -- not sure which terminal/console to use"))))

;;; ==============================
(defun mon-firefox (url &optional intrp)
  "Jump to the running firefox and open URL in new tab.\n
:SEE-ALSO `browse-url-firefox-program',`mon-conkeror',
`browse-url-generic-program', `browse-url-browser-function',
`browse-url-generic'.\n►►►"
  (interactive "i\np")
  (when intrp
    (setq url (read-string (concat ":FUNCTION `mon-firefox' "
                                   "-- which URL: "))))
  (browse-url-firefox url))

;;; ==============================
(defun mon-conkeror (url)
  "Launch or find a running conkeror web browser with URL.\n
:NOTE To enusre Emacs gets existing conkeror process put following in
conkeror-rc file:
 url_remoting_fn = load_url_in_new_buffer;
 require\(\"clicks-in-new-buffer.js\");\n
:SEE-ALSO `mon-firefox', `browse-url-firefox-program',
`browse-url-generic-program',`browse-url-browser-function',
`browse-url-generic'.\n►►►"
  (interactive "s:FUNCTION `mon-conkeror' -- what URL: ")
  (eval-when-compile (require 'browse-url))
  (if (string-match "conkeror" browse-url-generic-program)
      (cond ;; :NOTE These conditionals are here so we can adjust as needed.
       ((and (intern-soft "IS-MON-P-W32" obarray)
             (bound-and-true-p IS-MON-P-W32))
        (browse-url-generic url))
       ((and (intern-soft "IS-MON-P-GNU" obarray)
             (bound-and-true-p IS-MON-P-GNU))
        (browse-url-generic url))
       ((and (intern-soft "IS-BUG-P" obarray)
             (bound-and-true-p IS-BUG-P))
        (browse-url-generic url))
       ((and (intern-soft "IS-MON-SYSTEM-P" obarray)
             (bound-and-true-p IS-MON-SYSTEM-P))
        (browse-url-generic url))
       ((and (intern-soft "IS-NOT-A-MON-SYSTEM" obarray) 
             (bound-and-true-p IS-NOT-A-MON-SYSTEM))
        (browse-url-generic url))
       (t (error (concat ":FUNCTION `mon-conkeror' "
                         "-- can not grok your system and/or "
                         "conkeror not set as `browse-url-generic-program'"))))
    (error (concat ":FUNCTION `mon-conkeror' "
                   "-- conkeror not set `browse-url-generic-program'"))))

;;; ==============================
;;; :CHANGESET 1751 <Timestamp: #{2010-05-21T16:27:55-04:00Z}#{10205} - by MON KEY>
(defun mon-scratch (&optional w-this-scratch)
  "Switch to *scratch* buffer in other window.\n
When *scratch* buffer does not exist, get \(or create\) it now!\n
When W-THIS-SCRATCH is non-nil or called-interactively with prefix arg if
current-buffer is \"*scratch*\" erase buffer contents else find an empty scratch buffer.\n
:EXAMPLE\n\n\(mon-scratch\)\n
:ALIASED-BY `mon-buffer-get-scratch'
:SEE-ALSO `mon-switch-to-mesages', `mon-kill-completions'.\n►►►"
  (interactive "P")
  (let ((confirm-nonexistent-file-or-buffer nil))
    ;; (same-window-buffer-names '("*scratch*")))
    (if (or current-prefix-arg w-this-scratch)
        (if (equal (buffer-name (current-buffer)) "*scratch*")
            (with-current-buffer (current-buffer) (erase-buffer))
          (switch-to-buffer-other-window "*scratch*" t))
      (switch-to-buffer-other-window "*scratch*"  t))
    )) ;; (lisp-interaction-mode)
;;
;;; :TEST-ME (mon-scratch)
;;; :TEST-ME (mon-scratch t)

;;; ==============================
(defun mon-switch-to-messages ()
  "Select buffer *Messages* in the current window.\n
:ALIASED-BY `mon-buffer-get-messages'
:SEE-ALSO `mon-scratch', `mon-kill-completions'\n►►►"
  (interactive)
  (switch-to-buffer "*Messages*"))

;;; ==============================
;;; :RENAMED `scroll-down-in-place' -> `mon-scroll-down-in-place'
(defun mon-scroll-down-in-place (&optional down-by)
  "Scroll with the cursor in place, moving screen DOWN-BY instead.\n
:SEE-ALSO `mon-scroll-up-in-place', `scroll-up', `scroll-down',
`mon-line-move-n', `mon-line-move-next'.\n►►►"
  (interactive "p")
  (let* ((inhibit-redisplay t)
        (down-by (abs (or down-by 1)))
        (next-screen-context-lines down-by))
    (if (forward-line (- down-by))
        (ignore-errors (scroll-down down-by)))))

;;; ==============================
;;; :RENAMED `scroll-up-in-place' -> `mon-scroll-up-in-place'
(defun mon-scroll-up-in-place (&optional up-by)
  "Scroll with the cursor in place, moving the screen UP-BY lines instead.\n
:SEE-ALSO `mon-scroll-down-in-place', `scroll-up', `scroll-down'
`mon-line-move-n', `mon-line-move-prev'.\n►►►"
  (interactive "P")
  (let* ((inhibit-redisplay t)
         (up-by (abs (or up-by 1)))
         (next-screen-context-lines up-by))
    (when (forward-line up-by)
      (ignore-errors (scroll-up up-by)))))

;;; ==============================
;;; :CREATED <Timestamp: Friday March 20, 2009 @ 09:17.35 PM - by MON KEY>
(defun mon-kill-appending (beg end)
  "Append the region current to the kill ring without killing it.\n
Like `append-next-kill' but skips the C M-w M-w finger-chord hoop jump.
:ALIASED-BY `mon-append-next-kill'\n
:SEE-ALSO `mon-append-to-buffer', `mon-append-to-register'.\n►►►"
  (interactive "r")
  (progn 
    (append-next-kill)
    (kill-ring-save beg end)))

;;; ==============================
;;; :CREATED <Timestamp: Thursday March 05, 2009 @ 04:49.29 PM - by MON KEY>
(defun mon-kill-completions ()
  "Kill *Completions* buffer without leaving point.\n
:ALIASED-BY `mon-buffer-kill-completions'\n
:SEE-ALSO `mon-scratch', `mon-switch-to-messages'.\n►►►"
  (interactive)
  (save-excursion
    (when (get-buffer-window "*Completions*")
      (progn
	(switch-to-completions)
	(delete-completion-window)))))

;;; ==============================
(defun mon-flip-windows ()
  "Swap current buffer display with buffer in other window.\n
:ALIASED-BY `mon-window-flip'\n
:SEE-ALSO `mon-twin-vertical', `mon-twin-horizontal'.\n►►►"
  (interactive)
  (let ((cur-buffer (current-buffer))
        (top-buffer)
        (bottom-buffer))
    (pop-to-buffer (window-buffer (frame-first-window)))
    (setq top-buffer (current-buffer))
    (other-window 1)
    (setq bottom-buffer (current-buffer))
    (switch-to-buffer top-buffer)
    (other-window -1)
    (switch-to-buffer bottom-buffer)
    (pop-to-buffer cur-buffer)))

;;; ==============================
;;; :COURTESY Francois Fleuret <fleuret@idiap.ch> :HIS fleuret.emacs.el
;;; :SEE (URL `http://www.idiap.ch/~fleuret/files/fleuret.emacs.el')
;;; :WAS `ff/twin-horizontal-current-buffer' -> `mon-twin-horizontal'
(defun mon-twin-horizontal () 
  "Split current-buffer horizontally.\n
:ALIASED-BY `mon-window-split-horiz'\n
:SEE-ALSO `mon-twin-vertical', `mon-flip-windows'.\n►►►"
  (interactive)
  (delete-other-windows)
  (split-window-horizontally)
  (balance-windows))
;;
;;; :WAS `ff/twin-vertical-current-buffer' -> `mon-twin-vertical'
(defun mon-twin-vertical () 
  "Split current-buffer vertically.\n
:ALIASED-BY `mon-window-split-vert'\n
:SEE-ALSO `mon-twin-horizontal', `mon-flip-windows'.\n►►►"
  (interactive)
  (delete-other-windows)
  (split-window-vertically)
  (balance-windows))

;;; ==============================
;;; :PREFIX "mtmb-"
(defun mon-toggle-menu-bar ()
  "Toggle the top menu bar.\nGets the max editor screen for your money!\n
:SEE-ALSO `mon-toggle-dired-dwim-target', `mon-toggle-truncate-line'
`mon-toggle-eval-length', `mon-naf-mode-toggle-restore-llm',
`mon-toggle-show-point-mode'.\n►►►"
  (interactive)
  (let ((mtmb-height (frame-height)))
    (menu-bar-mode nil)
    (set-frame-height (selected-frame)
                      (if menu-bar-mode
                          (1- mtmb-height)
                        (1+ mtmb-height)))
    (force-mode-line-update t)))

;;; ==============================
;;; :PREFIX "matr-"
;;; :COURTESY Thierry Volpiatto :HIS tv-utils.el :WAS `tv-append-to-register'
;;; :CREATED <Timestamp: Tuesday June 16, 2009 @ 07:09.33 PM - by MON KEY>
(defun mon-append-to-register (register start end &optional delete-region-p)
  "Append region to text in register REGISTER.\n
When non-nil prefix arg DELETE-REGION-P will delete region as well.
Called programaticaly, takes four args: REGISTER, START, END and DELETE-REGION-P.
START and END are buffer positions indicating what to append.\n
Redefines `append-to-register' with a \"\n\".\n
:SEE-ALSO `mon-append-to-buffer', `mon-kill-appending', `mon-append-to-register'.\n►►►"
  (interactive "cAppend to register: \nr\nP")
  (let ((matr-reg (get-register register))
        (matr-text (filter-buffer-substring start end)))
    (set-register
     register (cond ((not matr-reg) matr-text)
                    ((stringp matr-reg) (concat matr-reg "\n" matr-text))
                    ;;(t (error "Register does not contain text")))))
                    (t (error (concat ":FUNCTION `mon-append-to-register' "
                                      "-- REGISTER does not contain text"))))))
  (if delete-region-p (delete-region start end)))

;;; ==============================
;;; :CREATED <Timestamp: Thursday June 18, 2009 @ 11:26.02 AM - by MON KEY>
(defun mon-append-to-buffer (buffer start end)
  "Append to specified buffer the text of the region.\n
Insert it into BUFFER before point.\n
BUFFER names an existing buffer.\n
START and END specify the portion of the current buffer to be copied.\n
This is an alternative definition of `append-to-buffer' with a \"\n\".\n
:SEE-ALSO `mon-append-to-register', `mon-kill-appending', `mon-buffer-exists-p',
`mon-g2be', `mon-buffer-narrowed-p', `mon-buffer-sub-no-prop',
`mon-buffer-sub-no-prop-check', `mon-help-buffer-functions'.\n►►►"
  (interactive `(,(read-buffer 
                   (concat ":FUNCTION `mon-append-to-buffer'"
                           "-- append to buffer: ")
                   (other-buffer (current-buffer) t))
                 ,@(if (use-region-p)
                       `(,(region-beginning) ,(region-end))
                     `(,(point) ,(point)))))
  (let ((oldbuf (current-buffer)))
    (save-excursion
      (let* ((append-to (get-buffer-create buffer))
	     (windows (get-buffer-window-list append-to t t))
	     point)
	(set-buffer append-to)
	(setq point (point))
	(barf-if-buffer-read-only)
	(newline)  ;; :ADDED `newline', else identical to `append-to-buffer'.
	(insert-buffer-substring oldbuf start end)
	(dolist (window windows)
	  (when (= (window-point window) point)
	    (set-window-point window (point))))))))

;;; ==============================
;;; :MODIFICATIONS <Timestamp: #{2010-03-20T12:59:35-04:00Z}#{10116} - by MON KEY>
;;; :CREATED <Timestamp: #{2010-03-10T20:04:58-05:00Z}#{10104} - by MON KEY>
;;; :WAS (defun mon-g2be (&optional min/max)
(defun mon-g2be (&optional min/max-go no-go)
  "Move point as with `goto-char' to `point-max' or `point-min'.\n
If optional arg MIN/MAX-GO is non-nil it may be any of the following:
 `:min`, `:max`, `t', `nil', <INTEGER>, <MARKER>,
Default is to `goto-char' `point-min'.\n
When optional arg NO-GO is non-nil return a buffer position
`point-min'/`min-max' but do not move point.\n
:EXAMPLE\n\n\(mon-g2be :min t\)\n
\(mon-g2be -1 t\)\n
\(mon-g2be 0 t\)\n
\(mon-g2be nil t\)\n
\(mon-g2be \(set-marker \(make-marker\) \(buffer-end 0\)\) t\)
\(mon-g2be 1 t\)\n
\(mon-g2be :max t\)\n
\(mon-g2be \(set-marker \(make-marker\) \(buffer-end 1\)\) t\)
\(mon-g2be nil t\)\n
\(mon-g2be t t\)\n
;; Following move point:
\(mon-g2be\)\n
\(mon-g2be :min)\n
\(mon-g2be -1\)\n
\(mon-g2be 0\)\n
\(mon-g2be t\)\n
\(mon-g2be \(set-marker \(make-marker\) \(buffer-end 0\)\)\)\n
\(mon-g2be 1\)\n
\(mon-g2be \(aref [10 13 15] \(random 3\)\) t\)\n
\(mon-g2be :max\)\n
\(mon-g2be \(set-marker \(make-marker\) \(buffer-end 1\)\)\)\n
:NOTE As a special case when MIN/MAX-GO is `markerp' and  points to a buffer
postion in `current-buffer', location of return value needn't be either only
`point-min'/`point-max'.
This allows reading in match-data variables bound to buffer local markers etc. 
When the constraints on passing a marker value to this function are
satisfied the return value is a marker not an integer including when the NO-GO
arg is ommitted (i.e. point moves). 
This return value is unlike `goto-char' in that: 
 \(goto-char \(1+ \(point\)\)\) 
returns the value of the point it moved into as an integer value.\n
:ALIASED-BY `mon-buffer-end'\n
:SEE-ALSO `mon-buffer-narrowed-p', `point-min', `point-max', `buffer-end',
`mon-buffer-narrowed-p', `mon-buffer-sub-no-prop', `mon-buffer-sub-no-prop-check',
`mon-help-buffer-functions'.\n►►►"
  ;;(let ((
  ;; (with-current-buffer (current-buffer)
  ;; 
  (setq min/max-go
        (or (and min/max-go
                 (or (and 
                      ;; its an integer or marker
                      (integer-or-marker-p min/max-go)
                      (or  (and ;; :NOTE Can't do `natnump' because MIN/MAX-GO can be -1
                            (integerp min/max-go) 
                            (or (and (> min/max-go 0)  (point-max))
                                (and (<= min/max-go 0) (point-min))))
                           (and (markerp min/max-go)
                                (and 
                                 ;; its a marker in current buffer.
                                 (or (eq (marker-buffer min/max-go) (current-buffer))
                                     (error (concat ":FUNCTION `mon-g2be' "
                                                    "-- ARG min/max-go satisfies `markerp' "
                                                    "but `marker-buffer' not `current-buffer', "
                                                    "got: %S in-buffer: %S")
                                            min/max-go (current-buffer)))
                                 ;; its a marker with a position return it, else signal
                                 (or (and (marker-position min/max-go) min/max-go)
                                     (error (concat ":FUNCTION `mon-g2be' "
                                                    "-- ARG min/max-go satisfies `markerp' "
                                                    "but `marker-position' points nowhere"
                                                    "got: %S in-buffer: %S") 
                                            min/max-go (current-buffer)))
                                 ))))
                     (and (or (eq min/max-go 'max) (eq min/max-go :max)) (point-max))
                     (and (or (eq min/max-go 'min) (eq min/max-go :min)) (point-min))
                     (and (booleanp min/max-go)
                          (or (and min/max-go (point-max))
                              (point-min)))))
            (point-min)))
  (or (and no-go min/max-go)
      (progn 
        (goto-char min/max-go)
        min/max-go)))

;;; ==============================
;;; :CHANGESET 2171
;;; :CREATED <Timestamp: #{2010-10-02T13:45:41-04:00Z}#{10396} - by MON KEY>
(defun mon-buffer-narrowed-p (&optional buffer-or-name)
  "Test if narrowing is in effect in BUFFER-OR-NAME.\n
Return nil when no detectable‡ narrowing is effect.\n
When buffer is narrowed return a consed pair, car is `t', cdr is a 5 elt vector.\n
In which case return value has the format:\n
 (t . [ <POINT-MIN-WIDEN>    <POINT-MAX-WIDEN> 
        <POINT-MIN-NARROW>   <POINT-MAX-NARROW>
        <BUFFER-SIZE> ] )\n
When optional arg BUFFER-OR-NAME is non-nil check for narrowing in that buffer
instead. Default is `current-buffer'.\n
:EXAMPLE\n\n\(prog2 
    \(narrow-to-region \(line-beginning-position\) \(line-end-position\)\)
     \(unwind-protect \(mon-buffer-narrowed-p \"*Help*\"\) \(widen\)\)\)\n
:NOTE ‡There isn't a clean way to check if BUFFER-OR-NAME is narrowed when the
size of the narrowed-region is = `buffer-size', esp. when not
`buffer-modified-p', e.g:\n
 \(with-temp-buffer 
   \(narrow-to-region \(point-min\) \(point-max\)\)
   \(list :bfr-min \(point-min\) :bfr-pnt \(point\) :bfr-max \(point-max\)
         :bfr-gap \(gap-position\) :bfr-sz \(buffer-size \(current-buffer\)\)
         :bfr-endp \(eobp\) :bfr-modp \(buffer-modified-p\)
         :brf-nrrw-p \(mon-buffer-narrowed-p\)\)\)\n
:ALIASED-BY `buffer-narrowed-p'\n
:SEE-ALSO `mon-g2be', `mon-buffer-sub-no-prop', `mon-buffer-sub-no-prop-check',
`mon-buffer-exists-p', `mon-buffer-exists-so-kill', `mon-buffer-get-hidden',
`mon-buffer-get-w-mode', `mon-buffer-name->kill-ring',
`mon-buffer-name-print-readably', `mon-buffer-written-p',
`mon-buffer-append-to', `mon-buffer-do-with-undo-disabled',
`mon-buffer-end'.\n►►►"
  (let (chk-bffr or-chk-wdn)
    (with-current-buffer (if buffer-or-name
                             (or (setq chk-bffr (get-buffer buffer-or-name))
                                 (error  (concat ":FUNCTION `mon-buffer-narrowed-p' "
                                                 "-- optional arg BUFFER-OR-NAME "
                                                 " does not find buffer: `%S'")
                                         buffer-or-name))
                           (setq chk-bffr (current-buffer)))
      (setq or-chk-wdn `[,(point-min) ,(point-max) ,(buffer-size chk-bffr)])
      (and
       (and
        (or (>  (aref or-chk-wdn 0) 1)
            (/= (aref or-chk-wdn 1) (1+ (aref or-chk-wdn 2)))
            (/= (- (aref or-chk-wdn 1) (aref or-chk-wdn 0)) (aref or-chk-wdn 2))
            (setq or-chk-wdn))
        (save-restriction 
          (widen)
          (setq or-chk-wdn `(t . [,(point-min) ,(point-max) ,@(append or-chk-wdn nil)]))))
       or-chk-wdn))))

;;; ==============================
;;; :CHANGESET 2171
;;; :CREATED <Timestamp: #{2010-10-02T17:18:20-04:00Z}#{10396} - by MON KEY>y
(defun mon-buffer-sub-no-prop (&optional buf-beg buf-end)
  "Convenience function like `buffer-substring-no-properties'.\n
Return buffer contents from `point-min' to `point-max' without text-properties.\n
When optional args BUF-BEG and BUF-END non-nil they should satisfy the predicate
`integer-or-marker-p' and when narrowing is in effect as per satisfaction of
`mon-buffer-narrowed-p' integer or marker loccations should not extend outside
the region narrowed to.\n
:EXAMPLE\n\n\(mon-buffer-sub-no-prop\)\n
\(mon-buffer-sub-no-prop  8 12\)\n
\(mon-buffer-sub-no-prop  8 \(set-marker \(make-marker\) 12\)\)\n
\(mon-buffer-sub-no-prop \(set-marker \(make-marker\) 8\) 12\)\n
\(mon-buffer-sub-no-prop \(set-marker \(make-marker\) 8\) \(set-marker \(make-marker\) 12\)\)\n
Following will fail:\n
\(mon-buffer-sub-no-prop  nil nil\)\n
\(mon-buffer-sub-no-prop  8 nil\)\n
\(mon-buffer-sub-no-prop  8\)\n
\(mon-buffer-sub-no-prop  t \(set-marker \(make-marker\) 12\)\)\n
\(mon-buffer-sub-no-prop  8 t\)\n
\(mon-buffer-sub-no-prop  8 \"string\"\)\n
\(unwind-protect
    \(prog2 
        \(narrow-to-region \(line-beginning-position\) \(line-end-position\)\)
        \(mon-buffer-sub-no-prop \(set-marker \(make-marker\) \(point-min\)\) \(+ \(point-max\) 3\)\)\)
  \(widen\)\)\n
\(let \(\(pmin \(set-marker \(make-marker\) \(point-min\)\)\)\)
   \(unwind-protect
       \(prog2 
           \(narrow-to-region \(line-beginning-position\) \(line-end-position\)\)
           \(mon-buffer-sub-no-prop pmin \(point-max\)\)\)
     \(widen\)\)\)\n
:SEE-ALSO `mon-buffer-sub-no-prop-check', `mon-buffer-narrowed-p',
`mon-get-buffer-window-if', `mon-get-buffer-hidden',
`mon-buffer-exists-so-kill', `mon-buffer-exists-p', `mon-get-buffer-w-mode',
`mon-with-file-buffer', `mon-print-buffer-object-readably',
`mon-print-in-buffer-if-p', `mon-help-buffer-functions'.\n►►►"
  (if ;; (or buf-beg buf-end)
      (and buf-beg buf-end)
      (apply #'buffer-substring-no-properties 
             (mon-buffer-sub-no-prop-check buf-beg buf-end (current-buffer)))
    (buffer-substring-no-properties (point-min) (point-max))))

;;; ==============================
;;; :PREFIX "mbsnpc-"
;;; :CHANGESET 2171
;;; :CREATED <Timestamp: #{2010-10-02T17:17:28-04:00Z}#{10396} - by MON KEY>
(defun mon-buffer-sub-no-prop-check (bfr-beg bfr-end bfr-current)
  "Helper function for `mon-buffer-sub-no-prop'.\n
Checks that args BFR-BEG BFR-END are either integers or markers.\n
When markers converts to integer.\n
Returns a two element proper-list or signals an error.\n
Signals errors when args do not satisfy `integer-or-marker-p', are negative
integers, point to locations outside a narrowed range when narrowing is in
effect, etc.\n
:EXAMPLE\n\n\(mon-buffer-sub-no-prop-check 8 12\)\n
\(mon-buffer-sub-no-prop-check \(set-marker \(make-marker\) 8\) 12\)\n
\(mon-buffer-sub-no-prop-check  8 \(set-marker \(make-marker\) 12\)\)\n
\(mon-buffer-sub-no-prop-check \(set-marker \(make-marker\) 8\) \(set-marker \(make-marker\) 12\)\)\n
Following will fail:\n
\(mon-buffer-sub-no-prop-check 1 -12\)
\(mon-buffer-sub-no-prop-check -1 12\)
\(mon-buffer-sub-no-prop-check 0 12\)
\(mon-buffer-sub-no-prop-check nil nil\)\n
\(mon-buffer-sub-no-prop-check  8 nil\)\n
\(mon-buffer-sub-no-prop-check  8\)\n
\(mon-buffer-sub-no-prop-check  t \(set-marker \(make-marker\) 12\)\)\n
\(mon-buffer-sub-no-prop-check  8 t\)\n
\(mon-buffer-sub-no-prop-check  8 \"string\"\)\n
\(unwind-protect
    \(prog2 
        \(narrow-to-region \(line-beginning-position\) \(line-end-position\)\)
        \(mon-buffer-sub-no-prop \(set-marker \(make-marker\) \(point-min\)\) \(+ \(point-max\) 3\)\)\)
  \(widen\)\)\n
\(let \(\(pmin \(set-marker \(make-marker\) \(point-min\)\)\)\)
   \(unwind-protect
       \(prog2 
           \(narrow-to-region \(line-beginning-position\) \(line-end-position\)\)
           \(mon-buffer-sub-no-prop pmin \(point-max\)\)\)
     \(widen\)\)\)\n
:SEE-ALSO `mon-buffer-sub-no-prop', `mon-buffer-narrowed-p',
`mon-get-buffer-window-if', `mon-get-buffer-hidden',
`mon-buffer-exists-so-kill', `mon-buffer-exists-p', `mon-get-buffer-w-mode',
`mon-with-file-buffer', `mon-print-buffer-object-readably',
`mon-print-in-buffer-if-p', `mon-help-buffer-functions'.\n►►►"
  (let ((mbsnpc-err #'(lambda (err-str &rest args) 
                        (apply 'error
                               `(,(concat ":FUNCTION `mon-buffer-sub-no-prop-check' -- " err-str)
                                 ,@args))))
        (mbsnpc-bfr (get-buffer bfr-current))
        mbsnpc-nwdp
        ;; Use the narrowing data if needed 
        ;; mbsnpc-pmin mbsnpc-pmax 
        )
    (with-current-buffer mbsnpc-bfr
      (setq mbsnpc-nwdp (mon-buffer-narrowed-p mbsnpc-bfr))
      (if (and (or (and bfr-beg (integer-or-marker-p bfr-beg))
                   (funcall mbsnpc-err 
                            "optional arg BFR-BEG `null' or not `integer-or-marker-p', got: %S in-buffer: %S" 
                            bfr-beg mbsnpc-bfr))
               (or (and bfr-end (integer-or-marker-p bfr-end))
                   (funcall mbsnpc-err 
                            "optional arg BFR-END `null' or not `integer-or-marker-p' got: %S in-buffer: %S" 
                            bfr-end mbsnpc-bfr)))
          (let ((mbeg (or 
                       ;; BFR-BEG is marker
                       (and (markerp bfr-beg)
                            (or (eq (marker-buffer bfr-beg) mbsnpc-bfr)
                                (funcall mbsnpc-err 
                                         "arg BFR-BEG is `markerp' but not in `current-buffer', got-marker: %S in-buffer: %S"
                                         bfr-beg mbsnpc-bfr))
                            (or (marker-position bfr-beg) ;; (marker-position (set-marker (make-marker) nil))
                                (funcall mbsnpc-err 
                                         "arg BFR-BEG is `markerp' but pointing nowhere, got: %S in-buffer: %S" bfr-end mbsnpc-bfr))
                            (and (marker-position bfr-beg)
                                 (or (and mbsnpc-nwdp (< (marker-position bfr-beg) (point-min))
                                          (funcall mbsnpc-err 
                                                   (concat "arg BFR-BEG is a marker outside a `narrow-to-region', "
                                                           "got: %S `point-min' narrowing-details: %s in-buffer: %S"
                                                           bfr-beg mbsnpc-nwdp mbsnpc-bfr)))
                                     (marker-position bfr-beg))))
                       ;; BFR-BEG is integer
                       (and (or (integerp bfr-beg) 
                                (funcall mbsnpc-err 
                                         "arg BFR-BEG does not satisfy `integerp', got: %S in-buffer: %S" bfr-beg mbsnpc-bfr))
                            (or (and (<= bfr-beg 0)
                                     (funcall mbsnpc-err 
                                              (concat "arg BFR-BEG is `integerp' but `<' `point-min' or `zerop', "
                                                      "got: %d point-min-was: %d in-buffer: %S")
                                              bfr-beg (point-min) mbsnpc-bfr))
                                (and mbsnpc-nwdp (<  bfr-beg (point-min))
                                     (funcall mbsnpc-err 
                                              (concat "arg BFR-BEG is `integerp' but `<' `point-min' outside a `narrow-to-region', "
                                                      "got: %d narrowing-details: %s in-buffer: %S")
                                              bfr-beg mbsnpc-nwdp mbsnpc-bfr))
                                t)
                            (or (and mbsnpc-nwdp (>  bfr-beg (point-max))
                                     (funcall mbsnpc-err 
                                              (concat "arg BFR-BEG is `>' `point-max' outside a `narrow-to-region', "
                                                      "got: %d narrowing-details: %s in-buffer: %S")
                                              bfr-beg mbsnpc-nwdp mbsnpc-bfr))
                                t)
                            bfr-beg)))
                (mend (or 
                       ;; BFR-END is marker
                       (and (markerp bfr-end) 
                            (or (eq (marker-buffer bfr-end) mbsnpc-bfr)
                                (funcall mbsnpc-err 
                                         (concat "arg BFR-END is `markerp' `%S' but not in `current-buffer', "
                                                 "got: %S in-buffer: %S")  bfr-end mbsnpc-bfr))
                            (or (marker-position bfr-end) ;; (marker-position (set-marker (make-marker) nil))
                                (funcall mbsnpc-err  (concat "arg BFR-END is `markerp' but pointing nowhere, "
                                                             "got: %S in-buffer: %S") bfr-end mbsnpc-bfr))
                            (or (and mbsnpc-nwdp (< (marker-position bfr-end) (point-min))
                                     (funcall mbsnpc-err  
                                              (concat "arg BFR-END is `markerp' but outside a `narrow-to-region', "
                                                      "got: %S narrowing-details: %s in-buffer: %S")
                                              bfr-end mbsnpc-nwdp  mbsnpc-bfr))
                                (marker-position bfr-end)))
                       ;; BFR-END is integer
                       (and ;; Can replace some of below w/ `natnump'??
                        (or (integerp bfr-end) 
                            (funcall mbsnpc-err 
                                     "arg BFR-END does not satisfy `integerp', got: %S in-buffer: %S " 
                                     bfr-end mbsnpc-bfr))
                        (or (and (< bfr-end 0)
                                 (funcall mbsnpc-err 
                                          "arg BFR-END is `integerp' and `<' 0, got: %d in-buffer: %S" bfr-beg mbsnpc-bfr))
                            (and mbsnpc-nwdp (<  bfr-end (point-min))
                                 (funcall mbsnpc-err 
                                          (concat "arg BFR-END is `integerp' and `<' `point-min' outside a `narrow-to-region', "
                                                  "got: %d narrowing-details: %s in-buffer: %S ")
                                          bfr-end mbsnpc-nwdp mbsnpc-bfr ))
                            t)
                        (or (and mbsnpc-nwdp (>  bfr-end (point-max))
                                 (funcall mbsnpc-err 
                                          (concat "arg BFR-END is `integerp' and `>' `point-max' outside a `narrow-to-region', "
                                                  "arg BFR-END was: %d narrowing-details: %s in-buffer: %S") 
                                          bfr-end mbsnpc-nwdp mbsnpc-bfr))
                            t)
                        bfr-end))))
            (if (and mbeg mend)
                (list mbeg mend)
              (funcall mbsnpc-err "Should not see this error")))
        (funcall mbsnpc-err "an argument is wrong, for BFR-BEG got: %S for BFR-END got: %S" bfr-beg bfr-end)))))

;;; ==============================
;;; :CHANGESET 2117
;;; :CREATED <Timestamp: #{2010-09-10T13:54:02-04:00Z}#{10365} - by MON KEY>
(defun mon-decode-coding-region-utf-8-unix (start end &optional insrtp)
  "Revert region with `decode-coding-region' with CODING-SYSTEM arg utf-8-unix.\n
:EXAMPLE\n\n
:ALIASED-BY 
:SEE-ALSO `mon-region-indent-refill', `mon-region-unfill'.\n►►►"
  (interactive "r\np")
  ;; :NOTE the backqouting brouhaha is to allow passing nil nil unreservedly
  ;; without signaling an error
  (apply #'decode-coding-region
         `(,@(or (and (use-region-p) `(,start ,end))
              (and (null start) (null end)
                   `(,(region-beginning) ,(region-beginning))))
           ,'utf-8-unix ,(unless insrtp t))))

;;; ==============================
;;; :PREFIX "mrp-"
(defun mon-region-position (&optional insrtp intrp)
  "Return details of the postion of current region.\n
Return value is a list of key value pairs as returned by accessor functions:\n
  <KEY>             <VALUE>         ;;  <ACCESSOR>
 :USE-REGION-P     { t | nil }      ;; `use-region-p' 
 :REGION-ACTIVE-P  { t | nil }      ;; `region-active-p' 
 :REG-BEG          <INTEGER>        ;; `region-beginning'
 :REG-END          <INTEGER>        ;; `region-end'\n
When optional arg insrtp is non-nil or called interactively return value is a a
string prefixed by:\n
 \":FUNCTION `mon-region-position' -- current region \"\n
When insrtp is non-nil or called-interactively with a prefix arg the string is
inserted in current-buffer at point. Does not move point.\n
When called-interactively and insrtp is ommitted string is echod to the
minibuffer as if by `message'.\n
:EXAMPLE\n\n\(mon-region-position\)\n\n\(mon-region-position nil t)\n
\(save-excursion \(set-mark \(point\)\) \(forward-char 3\) \(mon-region-position nil t\)\)\n
\(save-excursion \(set-mark \(point\)\) \(forward-char 3\) \(mon-region-position\)\)\n
:SEE-ALSO `mon-region-indent-refill', `mon-region-unfill',
`mon-region-capitalize', `mon-region-reverse'.\n►►►"
  (interactive "P\np")
  (let ((mrp-rtn `(:USE-REGION-P    ,(use-region-p) 
                   :REGION-ACTIVE-P ,(region-active-p)  
                   :REG-BEG         ,(region-beginning)
                   :REG-END         ,(region-end))))
    (if (or insrtp intrp)
        (progn
          (setq mrp-rtn 
                (concat ":FUNCTION `mon-region-position' "
                         "-- current region " 
                         (mapconcat #'(lambda (mrp-L-1) (format "%s" mrp-L-1))
                                    mrp-rtn " ")))
          (cond (insrtp (save-excursion (insert mrp-rtn)))
                (intrp (message mrp-rtn))))
      mrp-rtn)))
         
;;; ==============================
;;; :PREFIX "mrgnl-"
;;; :CHANGESET 1788
;;; :CREATED <Timestamp: #{2010-05-28T14:44:04-04:00Z}#{10215} - by MON KEY>
(defun mon-region-length (&optional insrtp intrp)
  "Return the length of active region.\n
Signal an error if `region-active-p' is null.\n
When optional arg INSRTP is non-nil or called-interactively with prefix arg
insert length of region at region-end.\n
When called-interactively and INSRTP is ommitted message the region length.\n
:EXAMPLE\n\n\(progn\n \(push-mark \(line-beginning-position\) nil t\)
  \(mon-region-length nil t\)\)\n
:SEE-ALSO `mon-region-unfill', `mon-region-indent-refill',
`mon-region-capitalize', `mon-region-reverse'.\n►►►"
  (interactive "P\np")
  (unless (region-active-p)
    (error ":FUNCTION `mon-region-length' -- there is no active region"))
  (let* ((mrgnl-rbe (- (region-end) (region-beginning)))
         ;;(mrgnl-frmt  (format ":REGION-LENGTH %d" mrgnl)))
         (mrgnl-frmt (format (concat ":FUNCTION `mon-region-length' " 
                                    "-- :REGION-LENGTH %d") mrgnl-rbe)))
    (cond ((and intrp (not insrtp)) (message mrgnl-frmt))
           (insrtp (unless (eq (point) (region-end))
                     (goto-char (region-end)))
                   (insert mrgnl-frmt))
           (t mrgnl-rbe))))
;;
;;; :TEST-ME (progn (push-mark (line-beginning-position) nil t)
;;;                    (mon-region-length nil t))


;;; ==============================
;;; :TODO Needs a keybinding
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-11-06T17:41:59-04:00Z}#{10446} - by MON KEY>
(defun mon-region-indent-refill (start end &optional w-fill-prefix w-fill-column
                                       w-active-rgn intrp)
  "Indent and refill the region from START to END.\n
W-FILL-PREFIX a string or character with which to dynamically bind `fill-prefix'.\n
When W-FILL-PREFIX is a string it should satisfy `mon-string-not-null-nor-zerop'.
When W-FILL-PREFIX is `characterp' it is used as the second arg to `make-string'
with the LENGTH arg fixed at 3 and one whitespace char 32 appended.
Default is \"    \".\n
When called-interactively with a prefix or W-FILL-COLUMN is non-nil value
satisfying `natnump' its value is used to dynamically bind `fill-column'.
Default is 70.\n
W-ACTIVE-RGN when non-nil and START and END are null and `use-region-p'
returns non-nil use region from `region-beginning' to `region-end' else signal an error.
W-ACTIVE-RGN is non-nil with START and END satisfying `number-or-marker-p' this
arg is ignored.\n
:ALIASED-BY `mon-indent-refill-region'
:ALIASED-BY `mon-indent-region-refill'
:ALIASED-BY `mon-region-refill-indent'\n
:SEE-ALSO `indent-region', `mon-region-unfill', `indent-tabs-mode.\n►►►"
  (interactive "r\ni\nP\ni\np")
  (let ((fill-column (or w-fill-column 70))
        (fill-prefix (or (and (mon-string-not-null-nor-zerop w-fill-prefix)
                              w-fill-prefix)
                         (and (characterp w-fill-prefix)
                              (concat (make-string 3 w-fill-prefix) " "))
                         (make-string 4 32)))
        (mrrfl-rgn (or (and intrp (cons start end))
                       (and w-active-rgn
                            (number-or-marker-p start)
                            (number-or-marker-p end)
                            (cons start end))
                       (and w-active-rgn 
                            (and (or (and (null start) (null end))
                                     (and start (null end))
                                     (and (null start) end))
                                 (or (use-region-p)
                                     (error (concat ":FUNCTION `mon-region-indent-refill' "
                                                    "-- with optional W-ACTIVE-RGN non-nil and START END null "
                                                    "could not satisfy `use-region-p'")))
                                 (cons (region-beginning) (region-end))))
                       (or (and (null start) (null end)
                                (error (concat ":FUNCTION `mon-region-indent-refill' "
                                               "-- args START and END `null'")))
                           (and (or (and (not (number-or-marker-p start))
                                         (error (concat ":FUNCTION `mon-region-indent-refill' "
                                                        "-- START not `number-or-marker-p', got %S"
                                                        " type-of: %S")
                                                start (type-of start)))
                                    (and (not (number-or-marker-p end))
                                         (error (concat ":FUNCTION `mon-region-indent-refill' "
                                                        "-- END not `number-or-marker-p', got: %S "
                                                        " type-of: %S")
                                                end (type-of end)))))))))
    (save-excursion
      (indent-region (car mrrfl-rgn) (cdr mrrfl-rgn))
      (fill-region (car mrrfl-rgn) (cdr mrrfl-rgn)))))

;;; ==============================
(defun mon-region-unfill (start end)
  "Do the opposite of `fill-region'.\n
Stuff all paragraphs paragraphs in the current region into long lines.\n
:SEE-ALSO `mon-region-indent-refill', `mon-line-strings-indent-to-col',
`mon-line-indent-from-to-col', `mon-string-fill-to-col',
`mon-comment-divide->col'.\n►►►"
  (interactive "r")
  (let ((fill-column 9000))
    (fill-region start end)))

;;; ==============================
;; :PREFIX "mrcap-"
(defun mon-region-capitalize (start end &optional insrtp intrp)
  "Return capitalized string in region START END.\n
Return three valued property list with the format:\n
 (:REGION-CAPITAL   <String-Capitalized>
  :REGION-ORIGINAL  <STRING-UNCAPITALIZED>
  :REGION          (<REGION-START> . <REGION-END>))\n
When optional arg INSRTP is non-nil split line at END and insert return
value. Does not move point.\n
When called-interactively replace content of region with capitalized string.
Does not move point.\n
:EXAMPLE\n\n\(mon-region-capitalize \(line-beginning-position 3\) \(line-end-position 3\)\)\n
lowercase string aNd UPERCASE STRING\n
\(mon-region-capitalize-TEST\)\n
:ALIASED-BY `mon-capitalize-region'\n
:SEE-ALSO `capitalize', `capitalize-region', `mon-region-unfill',
`mon-region-length', `mon-region-reverse', `mon-upcase-commented-lines'
`mon-downcase-regexp-region', `mon-upcase-regexp-region'.\n►►►"
  (interactive "r\ni\np")
  (let ((mrcap-pre (mon-buffer-sub-no-prop start end)))
    (setq mrcap-pre `(:REGION-CAPITAL  ,(capitalize mrcap-pre)
                      :REGION-ORIGINAL ,mrcap-pre
                      :REGION (,start . ,end)))
    (cond (intrp (save-excursion
                   (capitalize-region start end)
                   (prin1 mrcap-pre)))
          (insrtp (save-excursion
                    (goto-char end)
                    (print mrcap-pre (current-buffer))
                    (delete-char 1)))
          (t mrcap-pre))))
;;
;;; :TEST-ME (mon-region-capitalize-TEST)

;;; ==============================
(defun mon-region-reverse (reg-begin reg-end &optional insrtp intrp)
  "Reverse the characters in the region.\n
When called-interactively insert the reversed as with princ.
When INSRTP is non-nil insert the reversed as with princ.
Insertion does not move point. Insertion is whitespace agnostic.\n
:ALIASED-BY `mon-region-reverse-chars'\n
:SEE-ALSO `mon-word-reverse-region', `mon-region-unfill',
`mon-region-capitalize', `reverse-region'.\n►►►"
  (interactive "r\ni\np")
  (let ((m-reg-rev 
         (apply 'concat 
                (reverse 
                 (split-string 
                  ;; :WAS (buffer-substring-no-properties reg-begin reg-end)
                  (mon-buffer-sub-no-prop reg-begin reg-end)
                  "")))))
    (cond (intrp (save-excursion 
                   (delete-region reg-begin reg-end)
                   (princ m-reg-rev (current-buffer))))
          (insrtp (save-excursion 
                    (delete-region reg-begin reg-end)
                    (prin1 m-reg-rev (current-buffer))))
          (t m-reg-rev))))

;;; ==============================
;;; :NOTE consider macrology? BUGGY but :WORKING-AS-OF
;;; :CREATED <Timestamp: #{2009-09-09T12:29:52-04:00Z}#{09373} - by MON>
(defun mon-test-keypresses (&optional first second third)
  "Use to test if additioanl optional prefix args have been passed to interactive.\n
:EXAMPLE\nM-34 M-x mon-test-keypresses\n
=> \(\(meta . 51\) \(meta . 52\) \(meta . 120\) mon-test-keypresses\)
:ALIASED-BY `mon-read-keys-last-event'\n
:SEE-ALSO `mon-read-keys-as-string', `event-basic-type',
`this-command-keys-vector', `event-modifiers', `current-prefix-arg',
`mon-help-key-functions'.\n►►►"
  (interactive "P\nP\np")
  (let ((accum-string '())
	(accum-event '())
	(self 'mon-test-keypresses))
    (mapc #'(lambda (x) 
            (cond ((= x 13) nil)
                  ((or (eql (car (event-modifiers x)) 'meta)
                       (eql (car (event-modifiers x)) 'control))
                   (setq accum-event (cons (cons (car (event-modifiers x)) (event-basic-type x)) accum-event)))
                  (t (setq accum-string (cons (char-to-string (event-basic-type x)) accum-string)))))
          (this-command-keys-vector))
    (setq accum-event (reverse accum-event))
    (setq accum-string (reverse accum-string))
    (setq accum-string (apply 'concat accum-string))
    (setq accum-string `(,@accum-event ,(if (string= accum-string self) self accum-string)))
        (prin1 accum-string)))
;;
;;; :TEST-ME (mon-test-keypresses 1 2 3) ;->("cj")("cj")
;;; :TEST-ME (call-interactively 'mon-test-keypresses);-> ("cj")("cj")

;;; ==============================
;;; :CHANGESET 1898
;;; :CREATED <Timestamp: #{2010-06-18T15:18:46-04:00Z}#{10245} - by MON KEY>
(defun mon-abort-recursive-edit ()
  "Try to exit gracefully from hung/corrupted `recursive-edit' mini-buffer.\n
Repeatedly invoke `exit-recursive-edit' and `abort-recursive-edit' when
`recursion-depth' is greater than 0.\n
:SEE-ALSO `mon-abort-autosave-when-fucked', `exit-recursive-edit',
`abort-recursive-edit', `command-error-function', `throw-on-input',
`mon-help-key-functions'.\n►►►"
  (interactive)
  (while (> (recursion-depth) 0)
    (progn (abort-recursive-edit)
           (exit-recursive-edit))))
 
;;; ==============================
;;; :CHANGESET 2087
;;; :CREATED <Timestamp: #{2010-08-25T18:12:21-04:00Z}#{10343} - by MON KEY>
(defun mon-abort-autosave-when-fucked (&optional fucked-minibuffer-count)
  "HELP! Getme the fuck out of autosave hell.\n
Optional arg FUCKED-MINIBUFFER-COUNT is a positive integer specifying the
maximum number of screwed up minibuffers e.g. those named \" *Minibuf-<N>*\"
which need to be destroyed indiscriminately. Default is 300.\n
This happens when visiting a file encoded with raw-bytes and `auto-save-default'
is non-nil; sometimes when we accidently C-g to escape the autosave prompt: the
entire window/buffer/minibuffer stack gets corrupted such that every subsequent
C-g generates a new minibuffer which prompts: 
 \"Select coding system (default raw-text):\"
and with each one looking for some non-existent temporary buffer to do their
work in, e.g. the \" *Format Temp %<N>*\" buffer created by
`format-annotate-function' which can sometimes cause something else to trigger a
message about a missing \"*Warnings*\" buffer most likely as per the internal
function `coding-system-require-warning' and her compatriots
`select-safe-coding-system-function', `select-safe-coding-system',
`coding-system-for-write', and `universal-coding-system-argument'.\n
Let binds the following auto-save-* variables to their non-middling states:\n
 `auto-save-interval' 0
 `auto-save-timeout'  0 
 `auto-save-default' nil\n
Return value is a `yes-or-no-p' prompt which reinstates a clean minibuffer.\n
:NOTE Emcas-devels when you allow creation of non completion accessible
whitespace prefixed mini-buffers you should make _DAMN_ sure that calling
functions don't implode! I loathe this practice of hiding buffers from the user.
My Emacs, my buffers!
:SEE-ALSO `mon-abort-recursive-edit', `exit-recursive-edit',
`abort-recursive-edit', `command-error-function', `throw-on-input'.\n►►►"
  (interactive)
  (let ((auto-save-interval 0)
        (auto-save-timeout  0)
        (auto-save-default nil))
    (dolist (i (number-sequence 0 (or fucked-minibuffer-count 300)))
      (let ((kill-MB (get-buffer (format " *Minibuf-%d*" i))))
        (when kill-MB
          (with-current-buffer kill-MB
            (kill-this-buffer)))))
    (yes-or-no-p 
     (concat ":FUNCTION `mon-abort-autosave-when-fucked' "
             "-- my work is done here, are you glad to have your minibuffer back: "))))

;;; ==============================
;;; :COURTESY :FILE bookmark.el :WAS `bookmark-read-search-input'
;;; :CREATED <Timestamp: #{2010-09-13T15:16:54-04:00Z}#{10371} - by MON>
(defun mon-read-keys-as-string (&optional w-kbd-quit)
  "Read keyboard input, return a list of what was read.
When a w-kbd-quit is non-nil a when C-g is caught tail of list is non-nil.
:EXAMPLE\n\n\(mon-read-keys-as-string\)\n
\(mon-read-keys-as-string t\)\n
:ALIASED-BY `mon-string-from-keyboard-input'\n
:SEE-ALSO `mon-test-keypresses', `mon-help-key-functions', `read-key',
`unread-command-events', `this-single-command-raw-keys'.\n►►►"
  ;; (interactive "P")
  (let ((prompt       (propertize (concat ":FUNCTION `mon-read-keys-as-string' "
                                          " -- keys (RET/ESC to exit): ")
                                  'face 'minibuffer-prompt))
        ;; (inhibit-quit t) ; inhibit-quit is evil.  Use it with extreme care!
        (tmp-list     ())
        mrkas-read
        caught-cg-flag)
    (while
        (let ((char (read-key (concat prompt mrkas-read))))
          (case char
            ((?\e ?\r) nil) ;; RET or ESC break the search loop.
            ;; :NOTE Uncomment below to re-enable C-g `keyboard-quit'
            ;; (?\C-g (setq caught-cg-flag t) nil)
            (?\C-g (when w-kbd-quit (setq caught-cg-flag t)) (push char tmp-list) t); nil)
            (?\d (pop tmp-list) t)      ; Delete last char of pattern with DEL
            (t (if (characterp char)
                   (push char tmp-list)
                 (setq unread-command-events
                       (nconc (mapcar 'identity
                                      (this-single-command-raw-keys))
                              unread-command-events))
                 nil))))
      (setq mrkas-read      
            (apply 'string (reverse tmp-list))))
    `(,mrkas-read ,caught-cg-flag)))
;;
;;; :TEST-ME (mon-read-keys-as-string)
;;; :TEST-ME (mon-read-keys-as-string t)

;;; ==============================
;;; :PREFIX "mmrn-"
;;; :NOTE Inspired by Thierry Volpiatto :HIS tv-utils.el :WAS `multi-read-name'
;;; :MODIFICATIONS <Timestamp: #{2010-03-30T14:02:31-04:00Z}#{10132} - by MON KEY>
;;; :CHANGESET 2291 <Timestamp: #{2010-11-11T20:52:23-05:00Z}#{10454} - by MON KEY>
(defun mon-read-multiple (&optional multi-fun &rest multi-fun-args)
  "Prompt indefinely while a comma \",\" \(char 44\) is  suffixed to read value.\n
Return a list of containing each input read.\n
When MULTI-FUN is non-nil, it is a symbol naming an input function which returns
a string. If MULTI-FUN returns some other object type default to reading only
one value. Default is `read-string'.\n
MULTI-FUN-ARGS are additional arguments to pass to MULTI-FUN.
When non-nil PROMPT args should be ommitted.\n
:EXAMPLE\n\n\(mon-read-multiple\)\n
\(mon-read-multiple 'read-face-name\)\n
\(mon-read-multiple 'read-variable\)\n
\(mon-read-multiple 'read-char\)\n
\(mon-read-multiple 'read-command '\(\"doctor\" \"5x5\"\)\)\n
:SEE-ALSO `read-string', `read-directory-name', `completing-read-multiple'.\n►►►"
  (catch 'unsupported
    (let* ((mmrn-var (make-symbol "mmrn-var"))
           (mmrn-bail '((read-variable . "variable")
                        (read-command   . "command")
                        (read-coding-system . "coding system")
                        (read-color     . "color")
                        (read-event     . "event")
                        (read-key          . "key")
                        (read-key-sequence . "key sequence")
                        (read-key-sequence-vector . "keys")
                        (read-number    . "number")
                        (read-charset   . "character set")
                        (read-char      . "char")
                        (read-char-by-name   . "char (by name)")
                        (read-char-exclusive . "char (exclusive)")
                        (read-file-modes . "File modes (octal or symbolic)")
                        ))
           (mmrn-fun-prompt 
            (or (or (and (memq multi-fun 
                               (mapcar #'car 
                                       (setq mmrn-bail 
                                             (mapcar #'(lambda (mmrn-L-1)
                                                         (cons (car mmrn-L-1) 
                                                               (format ":FUNCTION `%s' -- %s: " 
                                                                       (car mmrn-L-1) (cdr mmrn-L-1))))
                                                     mmrn-bail))))
                         (throw 'unsupported
                                (apply multi-fun (cdr (assq multi-fun mmrn-bail)) multi-fun-args)))
                    (and (eq multi-fun 'read-face-name)
                         (throw 'unsupported 
                                (read-face-name ":FUNCTION `read-face-name' -- (add \",\" to repeat)" nil t))))
                (and (null multi-fun) 
                     (setq multi-fun 'read-string)
                     (cons (format ":FUNCTION `%s' " multi-fun)
                           (case multi-fun 
                             (read-string "string") 
                             (read-directory-name "directory")
                             (read-file-name "file")
                             (read-buffer "buffer")
                             (read-buffer-to-switch "buffer")
                             (read-passwd "password")
                             (read-envvar-name "enviroment variable")
                             (t "thing"))))))
           ;; The duplicate local var prevents byte-compiler whining
           mmrn-multiread
           (mmrn-multiread #'(lambda (&optional mread-stack)
                               (let ((mmrn-str 
                                      (apply multi-fun 
                                             (concat (car mmrn-fun-prompt)
                                                     (format
                                                      (or (and mread-stack 
                                                               "-- %ss currently read:\n %S\n-- (add \",\" to repeat): ")
                                                          "-- which %s (add \",\" to repeat): " )
                                                      (cdr mmrn-fun-prompt) mread-stack))
                                             multi-fun-args)))
                                 (and (or (and (car (setq mmrn-str (cons (string-match-p "," mmrn-str) mmrn-str)))
                                               (setcdr mmrn-str 
                                                       (mon-string-not-null-nor-zerop 
                                                        (substring (cdr mmrn-str) 0 (car mmrn-str))))
                                               (push (cdr mmrn-str) mmrn-var))
                                          t)
                                      (or 
                                       (and (car mmrn-str)
                                            (funcall mmrn-multiread mmrn-var))
                                       (and 
                                        (or (and (mon-string-not-null-nor-zerop (cdr mmrn-str))
                                                 (not (string-match-p "^[[:blank:]]+$" (cdr mmrn-str)))
                                                 (push (cdr mmrn-str) mmrn-var))
                                            t)
                                        (nreverse mmrn-var))))))))
      (save-window-excursion
        (let (mmrn-var)
          (funcall mmrn-multiread))))))

;;; ==============================
(defun mon-inhibit-read-only (func-arg)
  "Evaluate FUNC-ARG at point with `inhibit-read-only' t.\n
Evaluation occurs inside an unwind protect so 'safe-enough' 
for invoking 'one off functions' such-as `kill-line' without
the tedium of building the entire scaffolding.\n
:EXAMPLE\n\n\(let \(\(tt \(propertize \"I'm read only!\" 'read-only t\)\)
      \(buffer-read-only nil\)\)
  \(line-move -5\) 
  \(insert tt\)\(sit-for 2\)\(beginning-of-line\)
  \(mon-inhibit-read-only 'kill-line\)\)\n
:SEE-ALSO `mon-with-inhibit-buffer-read-only',
`mon-with-inhibit-buffer-read-only-TEST', `mon-inhibit-modification-hooks',
`mon-inhibit-point-motion-hooks', `mon-toggle-read-only-point-motion',
`view-read-only', `view-mode-disable'.\n►►►"
  (let ((re-inhibit (if (not inhibit-read-only) t nil)))
    (unwind-protect
        (progn 
          ;; :NOTE What about `buffer-read-only'?
          ;; Why setq?
          (setq inhibit-read-only t)
          (eval `(,func-arg)))
      (when re-inhibit (setq inhibit-read-only nil)))))
;;
;;; :TEST-ME (let ((tt (propertize "I'm read only!" 'read-only t))
;;;                   (buffer-read-only nil))
;;;               (line-move -5) 
;;;               (insert tt)(sit-for 2)(beginning-of-line)
;;;               (mon-inhibit-read-only 'kill-line))


;;; ==============================
;;; :PREFIX "mgbh-"
;;; :CHANGESET 2088
;;; :CREATED <Timestamp: #{2010-08-27T20:26:53-04:00Z}#{10345} - by MON KEY>
(defun mon-get-buffer-hidden (&optional intrp)
  "Return a list conses of the currently hidden buffers.\n
Elements of list have the form:\n
 \( <BUFFER-NAME> . <BUFFER> \)\n
Hidden buffers are those that completion can't find because the buffers name
begins with withespace. Generally these are considered \"internal\" buffers that
the user doesn't need to see and therefor not useful for completion. However, on
occasion it can be useful to know what you don't know. Some commonly hidden
buffers include:
 \" *autoload*\" \" *autoload-file*\" \" apropos-temp\" \" *Bookmarks*\"
 \" *completion-save-buffer*\" \" *code-conversion-work*\" \" *code-converting-work*\"
 \" *Compiler Input*\"  \" *Compiler Output*\" \" *Custom-Work*\"  
 \" *Deletions*\"  \" *dired-check-process output*\" \" *dot-dired*\" \" *DOC*\"  
 \" *Echo Area <N>*\" \" *Format Temp <N>*\" 
 \" *gnus work*\"
 \" *ido session*\" \" *info-browse-tmp*\"  \" *IDO Trace*\" \" *info tag table*\"
 \" *jka-compr-error*\" \" *jka-compr-error*\"
 \" *jka-compr-flc-temp*\" \" *jka-compr-wr-temp*\"
 \" *Marked Files*\"  \" *message-viewer <BUFFER/FILE>*\" \" *Minibuf-<N>*\"
 \" pp-to-string\"
 \" *recover*\" \" *spool temp*\" \" *string-output*\" \" *temp*\" 
 \" temp-info-look\" \" *Temp Input History*\" \" *text-props*\"
 \" *tmp-reporter-buffer*\"
 \" widget-choose\" \" *Unicode Data*\" \" *url-work\" 
:EXAMPLE\n\n\(mon-get-buffer-hidden\)\n
\(mon-get-buffer-hidden\)\n
:ALIASED-BY `mon-get-hidden-buffers'\n
:ALIASED-BY `mon-help-hiddent-buffers'\n
:SEE-ALSO `ido-ignore-buffers', `mon-help-buffer-spc-*DOC*',
`mon-abort-autosave-when-fucked', `mon-abort-recursive-edit'.\n►►►"
  (interactive "P")
  (let ((mgbh-bl (buffer-list))
        mgbh-rslt)
    (dolist (mgbh-dobl mgbh-bl (unless (null mgbh-rslt)
                       (setq mgbh-rslt (nreverse mgbh-rslt))))
      (when (eq ?\s (aref (buffer-name mgbh-dobl) 0))
        (push `(,(buffer-name mgbh-dobl) . ,mgbh-dobl) mgbh-rslt)
        mgbh-rslt))))
;;
;;; :TEST-ME (mon-get-buffer-hidden)
;;; :TEST-ME (mon-get-buffer-hidden t)


;;; ==============================
;;; :PREFIX "mwibro-"
;;; :CREATED <Timestamp: #{2010-03-26T14:56:18-04:00Z}#{10125} - by MON KEY>
(defmacro mon-with-inhibit-buffer-read-only (&rest uninhibited-body)
  "Temporarily set value of `buffer-read-only' nil in `current-buffer'.\n
Execute the UNINHIBITED-BODY inside an `unwind-protect' form which restores value
of `buffer-read-only'.\n
:EXAMPLE\n\n\(with-current-buffer \(progn 
                       \(describe-function 'mon-with-inhibit-buffer-read-only\) 
                       \(get-buffer \"*Help*\"\)\)
  \(mon-with-inhibit-buffer-read-only 
      \(sit-for 1\) \(forward-line 3\)
      \(dotimes \(i 3\) 
        \(progn \(kill-line\) \(insert \"A LINE JUST DIED HERE\\n\"\) \(sit-for 1\)\)\)\)
  \(message \"buffer-read-only value in *Help* buffer rebound -> %s\"
           \(buffer-local-value 'buffer-read-only \(get-buffer \"*Help*\"\)\)\)\)\n
\(mon-with-inhibit-buffer-read-only-PP-TEST\)\n
\(mon-with-inhibit-buffer-read-only-TEST\)\n
\(mon-with-inhibit-buffer-read-only-TEST t\)\n
:SEE-ALSO `mon-inhibit-read-only', `mon-with-inhibit-buffer-read-only-TEST',
`mon-with-inhibit-buffer-read-only-PP-TEST', `mon-inhibit-modification-hooks',
`mon-inhibit-point-motion-hooks', `mon-toggle-read-only-point-motion'.\n►►►"
  (declare (indent 3) (debug t))
  (let ((mwibro-re-inhib (make-symbol "mwibro-re-inhib")))
    `(let ((,mwibro-re-inhib (buffer-local-value buffer-read-only (current-buffer))))
       (with-current-buffer (current-buffer)
         (unwind-protect        
             (progn
               (set (make-local-variable 'buffer-read-only) nil)
               ,@uninhibited-body)
           (when ,mwibro-re-inhib (set (make-local-variable 'buffer-read-only) t)))))))
;;
;;; (put 'mon-buffer-exists-p 'mon-with-inhibit-buffer-read-only <INT>) 


;;; ==============================
(defun mon-inhibit-modification-hooks (func-arg)
  "Evaluate FUNC-ARG at point with `inhibit-modification-hooks' t.\n
FUNC-ARG is a function which evaluates without parameters.
Evaluation occurs inside an unwind protect so 'safe-enough' 
for invoking 'one off functions' such-as `kill-line' without
the tedium of building the entire scaffolding.\n
:SEE-ALSO `mon-inhibit-read-only', `mon-inhibit-point-motion-hooks',
`mon-toggle-read-only-point-motion'.\n►►►"
  (let ((re-inhibit (if (not inhibit-modification-hooks) t nil)))
    (unwind-protect
         (progn 
           ;; why setq?
           (setq inhibit-modification-hooks t)
           (eval `(,func-arg)))
      (when re-inhibit (setq inhibit-modification-hooks nil)))))

;;; ==============================
(defun mon-inhibit-point-motion-hooks (func-arg)
  "Evaluate FUNC-ARG at point with `inhibit-point-motion-hooks' t.\n
Evaluation occurs inside an unwind protect so 'safe-enough' 
for invoking 'one off functions' such-as `kill-line' without
the tedium of building the entire scaffolding.\n
:SEE-ALSO `mon-inhibit-read-only', `mon-inhibit-modification-hooks',
`mon-toggle-read-only-point-motion'.\n►►►"
  (let ((re-inhibit (if (not inhibit-point-motion-hooks) t nil)))
    (unwind-protect
	(progn 
          ;; why setq?
	  (setq inhibit-point-motion-hooks t)
	  (eval `(,func-arg)))
      (when re-inhibit (setq inhibit-point-motion-hooks nil)))))



;;; ==============================
;;; :TODO I'm no longer sure if this is TRT should we be checking for
;;; `buffer-local-variables'/`buffer-local-value' of these too?
;;; :CREATED <Timestamp: Monday June 15, 2009 @ 05:36.12 PM - by MON KEY>
(defun mon-toggle-read-only-point-motion ()
  "Toggle `inhibit-read-only' and `inhibit-point-motion-hooks'.\n
:SEE-ALSO `mon-inhibit-read-only', `mon-inhibit-point-motion-hooks',
`mon-inhibit-modification-hooks', `mon-naf-mode-toggle-restore-llm'.\n►►►"
  (interactive)
  ;; :NOTE What about `buffer-read-only'?
  (if (or (bound-and-true-p inhibit-read-only)
          (bound-and-true-p inhibit-point-motion-hooks)) ;;inhibit-read-only))
      (progn
	(setq inhibit-read-only nil)
	(setq inhibit-point-motion-hooks nil))
    (progn
      (setq inhibit-read-only t)
      (setq inhibit-point-motion-hooks t))))

;;; ==============================
;;; :COURTESY Stefan Reichor <stefan@xsteve.at> :HIS xsteve-functions.el
(defun mon-wrap-selection (&optional front-arg rear-arg)
  "Wraps contents of region with a FRONT-ARG and REAR-ARG delimeter.\n
:PROMPT-FOR 
 Front Delimiter:  <- Delmiter for beginning of region
 Rear Delimiter:   <- Delmiter for end of region\n\n
:EXAMPLE\n
 Point/Mark of region contain: My cats breath smells like cat food
 Front's prompt is provided: |[
 Rear's prompt is provided:  ]|
 Return: |[My cats breath smells like catfood]|\n
:ALIASED-BY `mon-region-wrap'\n
:SEE-ALSO `mon-wrap-url', `mon-wrap-span', `mon-wrap-text', `mon-wrap-with'.\n►►►"
  (interactive)
  (let* ((in-front (or front-arg 
                       (read-string (concat ":FUNCTION `mon-wrap-selection' " 
                                            "-- front delimiter: "))))
         ;; (concat ":FUNCTION `mon-wrap-selection' " "-- front delimiter: ")
         (in-rear (or rear-arg (read-string (concat ":FUNCTION `mon-wrap-selection' " 
                                                    "-- front delimiter: ")))))
    (if mark-active
        (progn
          (save-excursion
            (goto-char (region-beginning))
            (insert in-front))
          (save-excursion
            (goto-char (region-end))
            (insert in-rear)))
      (insert in-front)
      (save-excursion
        (insert in-rear)))))

;;; ==============================
;;; :RENAMED `mon-trunc' -> `mon-toggle-truncate-line'
;;; :MODIFICATIONS <Timestamp: #{2009-10-26T15:45:18-04:00Z}#{09441} - by MON KEY>
(defun mon-toggle-truncate-line (&optional intrp)
  "Toggle the truncate-line variable and redraw the display.\n
When optional arg intrp is non-nil or called-interactively message user that
change has occured.\n
:EXAMPLE\n\n\(mon-toggle-truncate-line\)\n
\(mon-toggle-truncate-line t\)\n
:SEE-ALSO `mon-toggle-eval-length', `print-length',
`mon-toggle-dired-dwim-target', `mon-toggle-menu-bar'
`mon-toggle-show-point-mode', `mon-naf-mode-toggle-restore-llm', 
`mon-toggle-read-only-point-motion', `mon-inhibit-modification-hooks',
`mon-inhibit-point-motion-hooks', `mon-inhibit-read-only'.\n►►►"
  (interactive "p")
  (toggle-truncate-lines nil)
  ;; (buffer-local-value 'truncate-lines (current-buffer))
  (if intrp 
      (message
       (concat ":FUNCTION `mon-toggle-truncate-line' " 
               (if truncate-lines
                   "-- truncating lines (... $)"
                 "-- wrapping lines (...\\)"))))
  (redraw-display))


;;; ==============================
;;; :CREATED <Timestamp: #{2009-12-17T20:25:27-05:00Z}#{09515} - by MON KEY>
(defun mon-toggle-eval-length (&optional new-depth intrp)
  "Toggle or set a new value for `eval-expression-print-length' variable.\n
Return value of `eval-expression-print-length'.\n
When `eval-expression-print-length' is nil and NEW-DEPTH is non-nil or
called-interactively with prefix arg use length, else set length to 12 - the
default.\n
When `eval-expression-print-length' is non-nil set length to nil.
When `eval-expression-print-length' and NEW-DEPTH are non-nil set length.\n
:EXAMPLE\n\n\(mon-toggle-eval-length\)\n\n\(mon-toggle-eval-length 16\)\n
\(mon-toggle-eval-length nil t\)\n\n\(mon-toggle-eval-length 1 t\)\n
\(mon-toggle-eval-length\)\n
:SEE-ALSO `mon-toggle-truncate-line', `mon-naf-mode-toggle-restore-llm',
`print-length'.\n►►►"  
  (interactive "P\np")
  (let (mtel-nd)
    (if (and new-depth intrp)
        (setq mtel-nd 
              (read-number (concat ":FUNCTION `mon-toggle-eval-length' "
                                   " -- new length for eval-expression-print-length: ")))
      (setq mtel-nd new-depth))
    (cond ((not eval-expression-print-length)
           (if mtel-nd 
               (setq eval-expression-print-length mtel-nd)
             (setq eval-expression-print-length 12)))
          (eval-expression-print-length 
           (if mtel-nd 
               (setq eval-expression-print-length mtel-nd)
             (setq eval-expression-print-length nil))))
    eval-expression-print-length))
;;
;;; :TEST-ME (mon-toggle-eval-length)
;;; :TEST-ME (mon-toggle-eval-length 16)
;;; :TEST-ME (mon-toggle-eval-length nil t)
;;; :TEST-ME (mon-toggle-eval-length 1 t)
;;; :TEST-ME (mon-toggle-eval-length)
;;
;;; eval-expression-print-length

;;; ==============================
;;; :NOTE To remind us where we're going:
;;; (defun mon-wrap-artist-name () "" (interactive)
;;;   (mon-wrap-text "\\@:artist[" "]")
;;; :PREFIX "mwt-"
(defun mon-wrap-text (wrap-a wrap-b &optional insrtp intrp)
  "Return current word with the string args WRAP-A and WRAP-B.\n
When optional arg INSRTP is non-nil or called-interactively insert wrapped word
at point. Does not move point.\n
:EXAMPLE\n\n\(mon-wrap-text \"\\\\@:artist[\" \"]\"\)Some-Name\n
:SEE-ALSO `mon-wrap-selection', `mon-wrap-url', `mon-wrap-span',
`mon-wrap-with'.\n►►►"
  (interactive "i\ni\ni\np")
  (save-excursion
    (let (mwt-pnt1 mwt-pnt2 mwt-wrap-wrd)
      (if (or (and transient-mark-mode mark-active)
              (use-region-p))
          (progn (setq mwt-pnt1 (region-beginning)) (setq mwt-pnt2 (region-end)))
        (progn
          ;;(skip-chars-backward "-A-Za-z")
          (skip-chars-backward "-A-Za-z")
          (setq mwt-pnt1 (point))
          ;; (skip-chars-forward "-A-Za-z")
          (skip-chars-forward "-A-Za-z")
          (setq mwt-pnt2 (point))))
      (setq mwt-wrap-wrd ;; :WAS (buffer-substring-no-properties mwt-pnt1 mwt-pnt2)
            (mon-buffer-sub-no-prop mwt-pnt1 mwt-pnt2))
      (if (or insrtp intrp)
          (progn
            (goto-char mwt-pnt2) (insert wrap-b)
            (goto-char mwt-pnt1) (insert wrap-a))
        (concat wrap-a mwt-wrap-wrd wrap-b)))) )
;;
;;; :TEST-ME (mon-wrap-text "\\@:artist[" "]")Some-Name
;;; :TEST-ME (mon-wrap-text "\\@:artist[" "]" t)Some-Name

;;; ==============================
(defun mon-wrap-with (front-wrap back-wrap &optional insrtp intrp)
  "Wrap the current word or region with FRONT-WRAP and BACK-WRAP.\n
:SEE-ALSO `mon-wrap-selection', `mon-wrap-url', `mon-wrap-span',
`mon-wrap-text', `mon-wrap-with'.\n►►►"
  (interactive "sEnter string for front-wrap:\nsEnter String for back-wrap: \ni\np")
  (mon-wrap-text front-wrap back-wrap insrtp intrp))

;;; ==============================
;;; :NOTE Duplicates functionality of `css-pos-for-x-popup-menu' in 
;;;  (lookup-key global-map [menu-bar]) `mouse-menu-bar-map'
;;; `mouse-selection-click-count-buffer'
;;; (posn-x-y (event-start (read-event nil nil 0.0))
;;; :FILE mon-css-complete.el
;;; :CHANGESET 2291 
;;; :CREATED <Timestamp: #{2010-11-09T22:29:47-05:00Z}#{10452} - by MON KEY>
(defun mon-postion-for-x-popup-menu ()                              
  "Return a position for displaying an `x-popup-menu'.\n
Return value has the form:\n
 \(\(<POSN-X> <POSN-Y>\) <POSN-WINDOW>\)\n
Returned value is informed by variable `*mon-popup-pos-x-offset*'.\n
:EXAMPLE\n\n\(mon-postion-for-x-popup-menu\)\n
\(popup-menu naf-mode-menu \(mon-postion-for-x-popup-menu\)\)\n
:SEE-ALSO `posn-at-point', `posn-x-y', `posn-window', `mouse-pixel-position',
`css-pos-for-x-popup-menu'.\n►►►"
  (let* ((cpfxpm     (posn-at-point))
         (cpfxpm-x-y (posn-x-y cpfxpm)) ;; (posn-x-y cpfxpm))
         (cpfxpm-win (posn-window cpfxpm)))
    `((,(+ *mon-popup-pos-x-offset* (car cpfxpm-x-y)) ,(cdr cpfxpm-x-y))
      ,cpfxpm-win)))

;;; ==============================
;;; :COURTESY Sandip Chitale <sandipchitale@attbi.com>
(defun mon-choose-from-menu (menu-title menu-items &optional menu-posn)
  "Choose from a list of choices from a popup menu.\n
:EXAMPLE\n\n\(mon-choose-from-menu \"Bubbas-Choice\"
 '\(\"one-bubba\" \"two-bubba\" \"three-bubba\"\)\)\n
\(mon-choose-from-menu \"Bubbas-Choice\"
 '\(\"one-bubba\" \"two-bubba\" \"three-bubba\"\) 
   \(mon-postion-for-x-popup-menu\)\)\n
:SEE-ALSO `choose-completion', `x-popup-menu',
`mon-postion-for-x-popup-menu', `popup-menu', `mouse-pixel-position'
`mouse-menu-bar-map'.\n►►►"
  (let (mcfm-item mcfm-item-list)
    (while menu-items
      (setq mcfm-item (car menu-items))
      (if (consp mcfm-item)
          (setq mcfm-item-list 
                (cons (cons (car mcfm-item) (cdr mcfm-item) ) mcfm-item-list))
        (setq mcfm-item-list 
              (cons (cons mcfm-item mcfm-item) mcfm-item-list)))
      (setq menu-items (cdr menu-items)))
    (x-popup-menu 
     (or menu-posn t)
     (list menu-title (cons menu-title (nreverse mcfm-item-list))))))
;;
;;; :TEST-ME (mon-choose-from-menu "Bubbas-Choice" '("one-bubba" "two-bubba" "three-bubba"))

;;; ==============================
;;; :PREFIX "mmap-"
;;; :COURTESY Andy Stewart <lazycat.manatee@gmail.com> :WAS `match-at-point'
;;; :SEE (URL `http://www.emacswiki.org/emacs/lazycat-toolkit.el')
;;; :CHANGESET 1768 <Timestamp: #{2010-05-25T19:21:55-04:00Z}#{10212} - by MON KEY>
;;; :CREATED <Timestamp: Wednesday June 03, 2009 @ 06:18.14 PM - by MON KEY>
(defun mon-match-at-point (match-regexp)
  "Return the buffer substring around point matching MATCH-REGEXP.\n
Look for a match starting at or before point.\n
Move back a character at a time while still looking at a match ending at the
same point.\n
If no match is found at or before point, return the first match after point, or
nil if there is no match in the buffer.\n
:SEE-ALSO `looking-at', `looking-at-p'.\n►►►"
  (let (mmap-bkup mmap-beg mmap-end)
    (save-excursion
      (setq mmap-bkup
            (or (save-match-data (looking-at match-regexp))
                (and (search-forward-regexp match-regexp nil 'limit)
                     (setq mmap-end t)
                     (goto-char (match-beginning 0))
                     nil)
                ;; Failed search doesn't change match-data.
                (search-backward-regexp match-regexp nil t)))
      (when (or mmap-bkup mmap-end) 
        (setq mmap-beg (match-beginning 0))
        (setq mmap-end (match-end 0)))
      (if mmap-bkup
          (while (and (not (bobp))
                      (progn (backward-char) t)
                      (save-match-data (looking-at match-regexp))
                      (= (match-end 0) mmap-end))
            (setq mmap-beg (point)))
        (or (bobp) (search-forward-regexp match-regexp nil t))))
    (and mmap-beg
         (progn 
           (goto-char mmap-end)
           t)
         ;; :WAS (buffer-substring-no-properties mmap-beg mmap-end)
         (mon-buffer-sub-no-prop  mmap-beg mmap-end))))

;;; ===================================
;; :WHITESPACE 
;;; EOL, BOL, EOB, BOB, LEP, LBP, etc.
;;; ===================================

;;; ==============================
;;; :PREFIX "mspcp-"
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-emacs.el :WAS `space-p'
;;; :MODIFICATIONS <Timestamp: Tuesday February 10, 2009 @ 04:11.49 PM - by MON KEY>
(defun mon-spacep (&optional w-psn w-char-psn-after)
  "Return non-nil when char before point is a 'space' character.\n
When optional arg W-PSN is non-nil it is a char position satisfying
`number-or-marker-p', return t for a 'space' before/after W-PSN.\n
When optional arg W-CHAR-PSN-AFTER is non-nil, return t when char after point is
a 'space'.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-line-bol-is-eol',
`mon-line-next-bol-is-eol', `mon-line-previous-bol-is-eol',
`mon-spacep-is-after-eol', `mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (let* ((mspcp-look-pnt 
          (and w-psn (or (and (number-or-marker-p w-psn) w-psn)
                         (error (concat ":FUNCTION `mon-spacep' "
                                        "-- arg W-PSN not `number-or-marker-p', "
                                        "got: %S type-of: %S")
                                w-psn (type-of w-psn)))))
	 (mspcp-pnt-chr (cond ((and w-psn w-char-psn-after) (char-after mspcp-look-pnt))
                              ((and w-char-psn-after) (char-after))
                              ((and w-psn) (char-before mspcp-look-pnt))
                              ((and (not w-psn) (not w-char-psn-after)) (char-before))))
	 (mspcp-tst-chr (memq mspcp-pnt-chr *mon-whitespace-chars*)))
    (and mspcp-tst-chr t)))

;;; ==============================
;;; :PREFIX "mspnb-"
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 03:11.19 PM - by MON KEY>
(defun mon-spacep-not-bol (&optional intrp)
  "Return non-nil if character after point at BOL is not a space.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep', `mon-line-bol-is-eol',
`mon-spacep-is-after-eol', `mon-spacep-is-after-eol-then-graphic',
`mon-spacep-at-eol', `mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let* ((mspnb-char-bol (char-after (point-at-bol)))
	 (mspnb-not-spc (not (memq mspnb-char-bol *mon-whitespace-chars*))))
    (cond (intrp (message (concat ":FUNCTION `mon-spacep-not-bol' "
                                  "-- char after point at BOL"
                                  (if mspnb-not-spc " _NOT_ " " IS ") "whitespace")))
          (t mspnb-not-spc))))
;; 
;;; :TEST-ME (mon-spacep-not-bol)
;;; :TEST-ME (mon-spacep-not-bol t)

;;; ==============================
;;; :PREFIX "msib-"
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 03:11.19 PM - by MON KEY>
(defun mon-spacep-is-bol (&optional intrp)
  "Return non-nil if character after point at BOL _is_ a space.\n
:SEE-ALSO `mon-spacep-not-bol', `mon-spacep', `mon-line-bol-is-eol',
`mon-line-next-bol-is-eol', `mon-line-previous-bol-is-eol',
`mon-spacep-is-after-eol', `mon-spacep-is-after-eol-then-graphic',
`mon-spacep-at-eol', `mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let* ((msib-chr-bol (char-after (point-at-bol)))
	 (msib-is-spc (and (car (memq msib-chr-bol *mon-whitespace-chars*)))))
    (cond (intrp (message (concat ":FUNCTION `mon-spacep-is-bol' "
                                  "-- char after point at BOL"
                                  (if msib-is-spc " IS " " _NOT_ ") "whitespace")))
          (t msib-is-spc))))
;; 
;;; :TEST-ME (mon-spacep-is-bol)
;;; :TEST-ME (mon-spacep-is-bol t)

;;; ==============================
;;; :PREFIX "msiae-"
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 05:39.17 PM - by MON KEY>
(defun mon-spacep-is-after-eol (&optional intrp)
  "Return non-nil if character after eol _is_ a space.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol', `mon-spacep-is-after-eol-then-graphic',
`mon-spacep-at-eol', `mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let* ((msiae-aftr-eol (char-after (1+ (line-end-position))))
	 (msiae-is-spc (and (car (memq msiae-aftr-eol *mon-whitespace-chars*)))))
    (cond (intrp (message (concat ":FUNCTION `mon-spacep-is-after-bol' "
                                  "-- whitespace" (if msiae-is-spc  " IS " " _NOT_ ") 
                                  "after EOL")))
          (t msiae-is-spc))))

;;; ==============================
;;; :PREFIX "msiaetg-"
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 05:54.27 PM - by MON KEY>
(defun mon-spacep-is-after-eol-then-graphic (&optional intrp)
  "Return non-nil if character after eol _is_ a space and next char is not.\n
:EXAMPLE\n\n(mon-spacep-is-after-eol-then-graphic t\)
\(mon-spacep-is-after-eol-then-graphic t)\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol', `mon-spacep-at-eol', `mon-cln-spc-tab-eol',
`*mon-whitespace-chars*', `*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let* ((msiaetg-aftr-eol (char-after (1+ (line-end-position))))
	 (msiaetg-eol-then (char-after (+ (line-end-position) 2)))
	 (msiaetg-is-spc (and (car (memq msiaetg-aftr-eol *mon-whitespace-chars*))))
	 (msiaetg-not-spc (not (memq msiaetg-eol-then *mon-whitespace-chars*)))
         (msiaetg-rtn (and msiaetg-is-spc msiaetg-not-spc)))
    (cond (intrp (message
                  (concat ":FUNCTION `mon-spacep-is-after-eol-then-graphic' "
                          "-- space or tab" (if msiaetg-rtn " IS " " _NOT_")
                          "at beggining of next line " 
                          (if msiaetg-rtn "and next char IS " 
                            "or next char _NOT_ ") 
                          "graphic")))
          (t msiaetg-rtn))))
;;
;;; :TEST-ME (mon-spacep-is-after-eol-then-graphic)
;;; :TEST-ME (mon-spacep-is-after-eol-then-graphic t)
;;; :TEST-ME (mon-spacep-is-after-eol-then-graphic t)


;;; ==============================
;;; :CREATED <Timestamp: Friday May 08, 2009 @ 05:58.38 PM - by MON KEY>
(defun mon-spacep-at-eol (&optional intrp)
  "Return non-nil if character at eol is either TAB (char 9) or SPC (char 32).\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol',`mon-spacep-at-eol', `mon-spacep-is-after-eol',
`mon-spacep-is-after-eol-then-graphic', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let ((rtrn  (or (= (char-before (point-at-eol)) 9)
                   (= (char-before (point-at-eol)) 32))))
    (cond (intrp (message (concat ":FUNCTION `mon-spacep-at-eol' "
                                  "-- space or tab" (if rtrn " _IS_ " " _NOT_ ")
                                  "at EOL")))
          (t rtrn))))

;;; ==============================
;;; :PREFIX "mspcf-"
;;; :COURTESY Andy Stewart <lazycat.manatee@gmail.com> :WAS `colp'
;;; :SEE (URL `http://www.emacswiki.org/emacs/lazycat-toolkit.el')
(defun mon-spacep-first ()
  "Return non-nil if point is first non-whitespace character of line.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol', `mon-spacep-is-after-eol',
`mon-spacep-is-after-eol-then-graphic', `mon-spacep-at-eol',
`mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (let (mspcf-pnt)
    (setq mspcf-pnt (point))
    (save-excursion
      (back-to-indentation)
      (equal mspcf-pnt (point)))))

;;; ==============================
;;; :PREFIX "mlbie="
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 03:17.51 PM - by MON KEY>
(defun mon-line-bol-is-eol (&optional intrp)
  "Return non-nil if postion at beginning of line is eq end of line.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol', `mon-spacep-is-after-eol',
`mon-spacep-is-after-eol-then-graphic', `mon-spacep-at-eol',
`mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let ((mlbie-bol-eol (= (line-end-position) (line-beginning-position))))
    (cond (intrp (concat ":FUNCTION `mon-line-bol-is-eol' "
                         " -- BOL " (if mlbie-bol-eol " _IS_ " " _NOT_ ") " EOL"))
          (t mlbie-bol-eol))))
;;
;;; :TEST-ME (save-excursion (previous-line) (beginning-of-line) (mon-line-bol-is-eol))

;;; ==============================
;;; "mlpbie-"
;;; :MODIFICATIONS <Timestamp: #{2009-10-15T18:16:04-04:00Z}#{09424} - by MON KEY>
;;; Tired of compiler warnings for `previous-line' changed to (forward-line - n)
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 03:38.46 PM - by MON KEY>
(defun mon-line-previous-bol-is-eol (&optional intrp move-times)
  "Return t if position at beginning of previous line is eq end of line.
When not called-interactively MOVE-TIMES arg examines Nth previous line.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol', `mon-spacep-is-after-eol',
`mon-spacep-is-after-eol-then-graphic',
`mon-spacep-at-eol',`mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let ((mlpbie-p-bol-eol (save-excursion 
                     ;;(previous-line) move-times) 
                     (forward-line (if move-times (- move-times) (- 1)))
		     (beginning-of-line) 
		     (mon-line-bol-is-eol))))
    (cond (intrp
           (concat ":FUNCTION `mon-line-previous-bol-is-eol' "
                   "-- previous line " (if mlpbie-p-bol-eol " _IS_ " " _NOT_ ")
                   "BOL and"  (if mlpbie-p-bol-eol " _IS_ " " _NOT_ ") "EOL"))
          (t mlpbie-p-bol-eol))))
;;
;;; :TEST-ME  (mon-line-previous-bol-is-eol)
;;; :TEST-ME  (mon-line-previous-bol-is-eol 4)

;;; ==============================
;;; :PREFIX "mlnbie-"
;;; :MODIFICATIONS <Timestamp: #{2009-10-15T18:17:13-04:00Z}#{09424} - by MON KEY>
;;; Tired of compiler warnings for `next-line' changed to (forward-line n)
;;; :CREATED <Timestamp: Thursday May 07, 2009 @ 03:38.46 PM - by MON KEY>
(defun mon-line-next-bol-is-eol (&optional intrp move-times)
  "Return t if position at beginning of previous line is eq end of line.\n
When not called-interactively MOVE-TIMES arg examines Nth previos line.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-previous-bol-is-eol',
`mon-spacep-is-after-eol', `mon-spacep-is-after-eol-then-graphic',
`mon-spacep-at-eol', `mon-cln-spc-tab-eol', `*mon-whitespace-chars*',
`*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let ((mlnbie-n-bol-eol (save-excursion 
                     (forward-line (if move-times move-times))
                     ;; (next-line move-times) 
		     (beginning-of-line) 
		     (mon-line-bol-is-eol))))
    (cond (intrp
           (concat ":FUNCTION `mon-line-next-bol-is-eol' "
                   "-- next line BOL "(if mlnbie-n-bol-eol " _IS_ " " _NOT_ ") "EOL"))
          (t mlnbie-n-bol-eol))))

;;
;;; :TEST-ME (mon-line-next-bol-is-eol)

;;; ==============================
;;; :PREFIX "mleie-"
;;; :CREATED <Timestamp: Friday May 08, 2009 @ 05:58.27 PM - by MON KEY>
(defun mon-line-eol-is-eob (&optional intrp)
  "Return t if point EOL is also EOB \(point-max\).\n
:NOTE Does not test for narrowing!\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol', `mon-spacep',
`mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol', `mon-line-eol-is-eob' `mon-spacep-at-eol',
`mon-spacep-is-after-eol', `mon-spacep-is-after-eol-then-graphic',
`*mon-whitespace-chars*', `*regexp-whitespace-chars*'.\n►►►"
  (interactive "p")
  (let ((mleie-rtrn (= (point-at-eol) (mon-g2be 1 t)))) ;(buffer-end 1) )))
    (cond (intrp
           (concat 
            ":FUCTION `mon-line-eol-is-eob' "
            "-- EOL" (if mleie-rtrn " _IS_ " " _NOT_ ") "EOB"))
          (t mleie-rtrn))))
;;
;;; :TEST-ME (mon-line-eol-is-eob t)
;;; :TEST-ME (with-temp-buffer (mon-line-eol-is-eob t))

;;; ==============================
;;; "To get the same same type of functionality at the end of the line, try this
;;; function. I bind it to my <end> key just like the <home> key above. It jumps
;;; between the actual end-of-line and the end of the code line which is different
;;; if the line has comments on the end."
;;; :SEE (URL `http://www.emacswiki.org/emacs/BackToIndentationOrBeginning')
;;; :PREFIX "mleoce-"
;;; :CREATED <Timestamp: Tuesday June 02, 2009 @ 05:36.44 PM - by MON KEY>
;;; ==============================
(defun mon-line-end-or-code-end () 
  "Move point to EOL. If point is already there, to EOL sans comments.\n
That is, the end of the code, ignoring any trailing comment or whitespace.\n
:NOTE this does not handle 2 character  comment starters like // or /*.
Instances of such chars are be skipped.\n
:SEE-ALSO `mon-spacep-is-bol', `mon-spacep-not-bol',
`mon-spacep', `mon-line-bol-is-eol', `mon-line-next-bol-is-eol',
`mon-line-previous-bol-is-eol', `mon-spacep-is-after-eol',
`mon-spacep-is-after-eol-then-graphic', `mon-spacep-at-eol',
`mon-cln-spc-tab-eol'.\n►►►"
  (skip-chars-backward " \t")
  (let ((mleoce-pt (point))
        (mleoce-lbp (line-beginning-position))
        mleoce-lim)
      (when (re-search-backward "\\s<" mleoce-lbp t)
	(setq mleoce-lim (point))
	(if (re-search-forward "\\s>" (1- mleoce-pt) t)
	    (goto-char mleoce-pt)
	  (goto-char mleoce-lim)               ; test here ->
          (while (looking-back "\\s<" (1- (point)))
            (backward-char))
          (skip-chars-backward " \t")))))

;;; ==============================
;;; :COURTESY :FILE thing-at-point.el
;;; :TODO Wrap in a function and install under bol/eol funcs in mon-utils.el
;;; :CREATED <Timestamp: #{2009-09-14T15:15:57-04:00Z}#{09381} - by MON KEY>
;;; (funcall (lambda () (if (bolp) (forward-line -1) (beginning-of-line))))


;;; ==============================
;;; :CHANGESET 1885
;;; :CREATED <Timestamp: #{2010-06-16T11:43:14-04:00Z}#{10243} - by MON KEY>
(defun mon-line-move-n (&optional move-cnt) 
  "Move cursor as if by `line-move' with its NOERROR arg non-nil.\n
When optional arg MOVE-CNT non-nil move cursor n lines.\n
Default is to move 0 lines.
:EXAMPLE\n\n\(mon-line-move-next\)
\(mon-line-move-next 3\)\n
\(mon-line-move-next -3\)\n
:NOTE Function is intended for use with `mon-keybind-*' functions which would
otherwise duplicate anonymous forms with identical behavior.\n
:SEE-ALSO `mon-line-move-prev', `mon-line-move-next',
`mon-scroll-down-in-place', `mon-scroll-up-in-place'.\n►►►"
  (interactive "P")
  (line-move (or (and (integerp move-cnt) move-cnt) 0) t))

;;; ==============================
;;; :CHANGESET 1885
;;; :CREATED <Timestamp: #{2010-06-16T12:09:24-04:00Z}#{10243} - by MON KEY>
(defun mon-line-move-next (&optional move-next-cnt)
  "Move cursor vertically forward as if by `mon-line-move-n'.\n
When optional arg MOVE-NEXT-CNT non-nil move cursor n lines. Default is 1.\n
:EXAMPLE\n\n(mon-line-move-next)\n\n\(mon-line-move-next 3\)\n
:NOTE Function is intended for invocation from `mon-keybind-*' functions which would
otherwise duplicate anonymous forms with identical behavior.\n
:SEE-ALSO `mon-line-move-prev', `mon-scroll-down-in-place',
`mon-scroll-up-in-place'.\n►►►"
  (interactive "P")
  (mon-line-move-n 
   (or (and (integerp move-next-cnt) (abs move-next-cnt)) 1)))

;;; ==============================
;;; :CHANGESET 1885
;;; :CREATED <Timestamp: #{2010-06-16T12:09:54-04:00Z}#{10243} - by MON KEY>
(defun mon-line-move-prev (&optional move-prev-cnt)
  "Move cursor vertically forward as if by `mon-line-move-n'.\n
When optional arg MOVE-PREV-CNT non-nil move cursor n lines. Default is -1.\n
:EXAMPLE\n\n\(mon-line-move-prev\)\n\n\(mon-line-move-prev 3)\n
:NOTE Function is intended for invocation from `mon-keybind-*' functions which would
otherwise duplicate anonymous forms with identical behavior.\n
:SEE-ALSO `mon-line-move-next', `mon-scroll-down-in-place',
`mon-scroll-up-in-place'.\n►►►"
  (interactive "P")
  (mon-line-move-n 
   (or (and (integerp move-prev-cnt) (- (abs move-prev-cnt))) -1)))

;;; ==============================
;;; :PREFIX "mlgn-"
;;; :COURTESY Nelson H. F. Beebe :HIS clsc.el :VERSION 1.53 of May 27, 2001
;;; :WAS `get-next-line' -> `mon-line-get-next'
;;; :CHANGESET 1771 <Timestamp: #{2010-05-25T19:42:55-04:00Z}#{10212} - by MON KEY>
(defun mon-line-get-next ()
  "Return the next line in the buffer, leaving point following it.\n
Return nil at `end-of-buffer'.\n
:EXAMPLE\n\n(mon-line-get-next)\nBubba on a line.\n
\(save-excursion \(equal \(mon-line-get-next\) \"\"\)\)\n
:SEE-ALSO `mon-string-ify-current-line'.\n►►►"
  (let (mlgn-start)
    (setq mlgn-start (progn (forward-line 0) (point)))
    (forward-line 1)
    (if (eql mlgn-start (point))
	nil
      (progn (setq mlgn-start (point)) 
             ;; (buffer-substring-no-properties mlgn-start (progn (end-of-line) (point)))
             (mon-buffer-sub-no-prop mlgn-start (progn (end-of-line) (point)))))))
                                             
;;
;;; :TEST-ME (save-excursion (equal (mon-line-get-next) ""))

;;; ==============================
;;; :PREFIX "mlfd-"
;;; :CHANGESET 1708 <Timestamp: #{2010-04-12T16:41:21-04:00Z}#{10151} - by MON KEY>
;;; :CREATED <Timestamp: #{2009-09-08T15:18:51-04:00Z}#{09372} - by MON>
(defun mon-line-find-duplicates (&optional insrtp intrp)
  "Locate adjacent duplicate lines in buffer.\n
Functions which find duplicate lines don't always sort lines.\n
Where lines of a file are presorted can be use to locate duplicates before
removing, i.e. situations of type: `uniquify-maybe'.\n
Can extend `find-duplicate-lines' by comparing its result list with one or more
list comparison procedures `set-difference', `union', `mon-intersection', etc.\n
:SEE-ALSO `mon-line-find-duplicates-cln', `mon-cln-uniq-lines',
`mon-cln-blank-lines', `mon-line-get-next', `uniq', `uniq-region'.\n►►►"
  (interactive "i\np")
  (let ((mlfd-pnt-mx (line-number-at-pos (mon-g2be 1 t)))
	mlfd-gthr)
    (save-excursion
      (while (< (line-number-at-pos) mlfd-pnt-mx) (= (forward-line) 0)
	   (let ((mlfd-this-line 
                  (mon-buffer-sub-no-prop  (line-beginning-position 1) (line-end-position 1)))
		 (mlfd-next-line 
                  (mon-buffer-sub-no-prop (line-beginning-position 2) (line-end-position 2))))
	     (when (equal mlfd-this-line mlfd-next-line)  
               (setq mlfd-gthr (cons mlfd-this-line mlfd-gthr))))))
    (setq mlfd-gthr (remove "" mlfd-gthr))
    (if (or insrtp intrp)
          (progn (newline) (princ mlfd-gthr (current-buffer)) (newline))
        mlfd-gthr)))

;;; ==============================
(defun mon-line-count-region (start end)
  "Return a mini-buffer message with regions' number of lines and characters.\n
:SEE-ALSO `mon-line-count-buffer', `mon-word-count-chars-region',
`mon-word-count-region', `mon-word-count-analysis',
`mon-word-count-occurrences'.\n►►►"
  (interactive "r")
  (count-lines-region start end))

;;; ==============================
;;; :CREATED <Timestamp: #{2010-03-01T11:05:33-05:00Z}#{10091} - by MON KEY>
(defun mon-line-count-buffer (&optional some-other-buffer intrp)
  "Return cons'd list of number of lines and chars in buffer.\n
Car of return value is number of lines cdr is the number of chars.\n
When optional arg SOME-OTHER-BUFFER is non-nil return line and char count for
that buffer. Default is current-buffer.\n
:EXAMPLE\n\n\(mon-line-count-buffer\)\n\n(apply 'mon-line-count-buffer nil '(t)\)\n
\(let \(\(mlcb-tmp-buf \(get-buffer-create \"*MLCB-TMP-BUF*\"\)\)
      \(mlcb-rnd-str \(random 1024\)\) 
      \(mlcb-rnd-len \(random 68\)\)
      mlcb-cnt\)
  \(unwind-protect
       \(progn
         \(with-current-buffer mlcb-tmp-buf
           \(dotimes \(r \(1- \(/ mlcb-rnd-str mlcb-rnd-len\)\)\)
             \(princ 
               \(concat \(make-string mlcb-rnd-len 32\) \"\\n\"\)
              \(current-buffer\)\)\)\)
         \(setq mlcb-cnt \(mon-line-count-buffer mlcb-tmp-buf\)\)\)
    \(kill-buffer mlcb-tmp-buf\)\)
  mlcb-cnt\)\n
:SEE-ALSO `mon-line-count-region', `mon-line-count-match',
`mon-line-count-matchp', `mon-word-count-analysis',
`mon-word-count-chars-region', `mon-word-count-occurrences',
`mon-word-count-region', `count-lines', `buffer-size',
`line-number-at-pos'.\n►►►"
  (interactive "i\np")
  (let (mlcb-cnt)
    (setq mlcb-cnt (if some-other-buffer
                   (with-current-buffer some-other-buffer
                     ;; :WAS  `(,(line-number-at-pos (buffer-end 1)) . ,(buffer-size)))
                     `(,(line-number-at-pos (mon-g2be 1 t)) . ,(buffer-size)))
                 `(,(line-number-at-pos (buffer-end 1)) . ,(buffer-size))))
    (if intrp (prin1 mlcb-cnt) mlcb-cnt)))
;;
;;; :TEST-ME (mon-line-count-buffer)
;;; :TEST-ME (apply 'mon-line-count-buffer nil '(t))

;;; ==============================
;;; :TODO The default value for BOL-CHAR-TEST needs to be refactored/extended.
;;; :CREATED <Timestamp: Thursday April 30, 2009 @ 04:42.13 PM - by MON KEY>
(defun mon-line-count-matchp (test-from line-count &optional bol-char-test intrp)
  "Return non-nil when number of lines in region is eq LINE-COUNT.\n
Arg TEST-FROM is a buffer pos to start counting from.\n
:SEE-ALSO `mon-word-count-chars-region', `mon-word-count-region',
`mon-line-count-buffer', `mon-word-count-analysis',
`mon-word-count-occurrences'.\n►►►"
  ;;(interactive "r")
  (save-excursion
    (let ((rg-start (line-number-at-pos test-from))
	  ;; Apparently when this was first written I decided that # was a good
	  ;; default BOL char to test for.
          (bct (if (and bol-char-test) 
                   bol-char-test 
                   35))  ;; (char-to-string 35) -> #
	  rg-end rg-diff)
      (progn
	(goto-char test-from)
	(line-move line-count)
	(cond ((eq (char-after (point)) bct)
	       (move-to-column 7))
	      ((eolp) (setq rg-end (line-number-at-pos (point))))))
      (setq rg-diff (- rg-end rg-start))
      (message (concat ":FUNCTION `mon-line-count-matchp' "
                       "-- line-count: %d matches: %S")
               rg-diff (eq rg-diff line-count))
      (eq rg-diff line-count))))

;;; ==============================
(defun mon-line-length-max (&optional intrp)
  "Return the maximum line length of the current buffer.\n
When called-interactively return message in mini-buffer:
\"The longest line in buffer `mon-utils.el' ends at column 115.\"\n
:SEE-ALSO `mon-line-count-buffer', `mon-region-length'.\n►►►"
  (interactive "p")
  (let ((max-len 0))
    (save-excursion
      (mon-g2be -1)
      (while (eq (forward-line) 0)
        (end-of-line)
        (when (> (current-column) max-len)
          (setq max-len (current-column)))))
    (if intrp  (message 
                (concat ":FUNCTION `mon-line-length-max' " 
                        "-- buffer: %s longest line ends at column: %d")
                (buffer-name (current-buffer)) max-len)
      max-len)))
;;
;;; :TEST-ME (mon-line-length-max)
;;; :TEST-ME (mon-line-length-max t)

;;; ==============================
;;; Word, Line, String Related utils
;;; ==============================

;;; mon-alphabet-as-map-bc

;;; ==============================
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T16:06:56-04:00Z}#{10381} - by MON KEY>
(defun mon-char-code (w-char)
  "Return the integer code of W-CHAR.\n
W-CHAR is a char-literal, string, or symbol.\n
:EXAMPLE\n\n\(mon-char-code ?a\)\n
\(mon-char-code 97\)\n
\(mon-char-code \"a\"\)\n
\(mon-char-code 'a\)\n
:SEE-ALSO `prin1-char', `mon-coerce->char', `mon-mapl', `mon-maplist',
`mon-mapcar', `mon-mapcan', `mon-mapcon', `mon-remove-if-not', `mon-delete-if',
`mon-member-if', `mon-intersection', `mon-merge-list'.\n►►►"
  (let ((rtn-char
         (case (type-of w-char)
           (integer (abs w-char))
           (string (string-to-char w-char))
           (symbol (aref (symbol-name w-char) 0))
           (t (1+ (max-char))))))
    (if (<=  rtn-char (max-char)) 
        rtn-char
      (error (concat 
              ":FUNCTION `mon-char-code' "
              "arg W-CHAR greater-than `max-char' or not coercable to char")))))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-strings.el :WAS `is-digit'
(defun mon-is-digit (maybe-digit-char)
"Reutrn non-nil when MAYBE-DIGIT-CHAR is a digit character.\n
:SEE-ALSO `mon-is-digit-simp', `mon-is-letter', `mon-is-alphanum',
`mon-string-index', `mon-string-position', `mon-char-code',
`mon-coerce->char'.\n►►►"
  (cond ((stringp maybe-digit-char) 
         (mon-is-digit (string-to-char maybe-digit-char)))
        ((natnump maybe-digit-char)
         (and (>= maybe-digit-char ?0)
              (<= maybe-digit-char ?9)))
        (t nil)))
;;
;;; :TEST-ME (mon-is-digit (char-after (point)))8
;;; :TEST-ME (mon-is-digit (char-after (point)))x

;;; `alpha-char-p' constrained to ASCII set whereas isn't `alphanumericp'
;;; `graphic-char-p'  printing-char (space through ~ in ASCII)

;; CL-USER> (alphanumericp (code-char 9658)) '=> nil
;; CL-USER> (code-char 5090) '=> #\CHEROKEE_LETTER_TLV
;; CL-USER> (alphanumericp (code-char 5090))   ;=> T
;; CL-USER> (princ-to-string (code-char 5090)) ;=> "Ꮲ"

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-strings.el :WAS `is-letter'
(defun mon-is-letter (maybe-alpha-char) ;; optional ascii-only
  "Return non-nil when MAYBE-ALPHA-CHAR is an alpha character.\n
:EXAMPLE\n\(mon-is-alphanum \(char-after \(point\)\)\)\\?56
\(mon-is-alphanum \(char-after \(point\)\)\)8\n
\(mon-is-letter ?á\)
:NOTE Similiar to Common Lisp's `alpha-char-p' but handles non-ASCII
characters.\n
:SEE-ALSO `mon-is-digit', `mon-is-alphanum', `mon-string-index',
`mon-string-position', `mon-alphabet-as-type', `mon-char-code',
`mon-coerce->char'.\n►►►"
  (cond ((stringp maybe-alpha-char) 
         (mon-is-letter (string-to-char maybe-alpha-char)))
        ((natnump maybe-alpha-char)
         (not (equal (downcase maybe-alpha-char) 
                     (upcase maybe-alpha-char))))
        (t nil)))
;;
;;; (mon-is-letter 9658) (upcase "►")
;;; :TEST-ME (mon-is-letter (char-after (point)))x
;;; :TEST-ME (mon-is-letter (char-after (point)))8
;;; :TEST-ME (mon-is-letter ?á)

;;; ==============================
(defun mon-is-alphanum (maybe-alphanum)
  "Return t when MAYBE-ALPHANUM is either an alpha character or an integer.\n
:EXAMPLE\n\(mon-is-alphanum \(char-after \(point\)\)\)\C-h 
\(mon-is-alphanum \(char-after \(point\)\)\)8\n
:SEE-ALSO `mon-is-digit', `mon-is-digit-2', `mon-string-index', 
`mon-string-position', `mon-alphabet-as-type', `mon-char-code',
`mon-coerce->char'.\n►►►"
  (or (mon-is-letter maybe-alphanum)
      (mon-is-digit  maybe-alphanum)))
;;
;;; :TEST-ME (mon-is-alphanum "8")
;;; :TEST-ME (mon-is-alphanum "A")
;;; :TEST-ME (mon-is-alphanum "a")
;;; :TEST-ME (mon-is-alphanum "?")
;;; :TEST-ME (mon-is-alphanum (char-to-string 88)) ;X
;;; :TEST-ME (mon-is-alphanum (char-to-string 10)) ;C-j LF newline
;;; :TEST-ME (mon-is-alphanum (char-to-string 32)) ;SPC
;;; :TEST-ME (mon-is-alphanum ?\C-m)
;;; :TEST-ME (mon-is-alphanum ?\13)
;;; :TEST-ME (mon-is-alphanum 13)
;;; :TEST-ME (mon-is-alphanum "13") ;; (char-to-string (string-to-char "13"))
;;; :TEST-ME (mon-is-alphanum (let ((what ?\b)) (format "%s" what)))
;;; :TEST-ME (progn (insert ?\8) (mon-is-alphanum (char-before (point))))
;;; :TEST-ME (progn (insert 8) (mon-is-alphanum (char-before (point))))

;;; ==============================
;;; :COURTESY Nelson H. F. Beebe :HIS bibtools.el :WAS `bibtex-isdigit'
;;; :CREATED <Timestamp: 2009-08-03-W32-1T10:27:00-0400Z - by MON KEY>
(defun mon-is-digit-simp (maybe-digit-char)
 "Return non-nil if MAYBE-DIGIT-CHAR is a digit character.\n
Unlike `mon-is-digit' fails when other than \\? prefixed digit.
Wants char literals.\n:EXAMPLE\n\(mon-is-digit-simp ?0\)
\(mon-is-digit-simp \"0\"\)\n\(mon-is-digit \"0\"\)\n
:SEE-ALSO `mon-is-letter-simp', `mon-is-alphanum-simp',
`mon-string-index', `mon-string-position', `mon-alphabet-as-type',
`mon-char-code', `mon-coerce->char'.\n►►►"
 (and (>= maybe-digit-char ?0) (<= maybe-digit-char ?9)))
;;
;;; :TEST-ME (mon-is-digit-simp ?0)

;;; ==============================
;;; :COURTESY Nelson H. F. Beebe :HIS bibtools.el :WAS `bibtex-isalpha'
;;; :MODIFICATIONS <Timestamp: #{2010-03-30T16:35:04-04:00Z}#{10132} - by MON KEY>
;;; :RENAMED Arg `C' -> SIMP-LTR
;;; :CREATED <Timestamp: 2009-08-03-W32-1T10:26:57-0400Z - by MON KEY>
(defun mon-is-letter-simp (simp-ltr) 
 "Return non-nil when SIMP-LTR is an alphabetic character, and otherwise, nil.
Unlike `mon-is-letter' fails when other than \\? prefixed chars.
Wants char literals.\n
:EXAMPLE\n\(mon-is-letter-simp ?x\)\n
\(mon-is-letter-simp \"x\"\)
\(mon-is-letter \"x\"\)\n
:SEE-ALSO `mon-is-digit-simp',`mon-is-alphanum-simp'.
`mon-string-index', `mon-string-position', `mon-alphabet-as-type',
`mon-char-code', `mon-coerce->char'.\n►►►"
 (or  (and (>= simp-ltr ?a) (<= simp-ltr ?z))
      (and (>= simp-ltr ?A) (<= simp-ltr ?Z))))
;;
;;; :TEST-ME (mon-is-letter-simp ?x)

;;; ==============================
;;; :CREATED <Timestamp: 2009-08-03-W32-1T15:18:01-0400Z - by MON KEY>
(defun mon-is-alphanum-simp (simp-alph)
  "Return t when SIMP-ALPH is either an alpha character or integer.\n
Unlike `mon-is-alphanum' fails when other than \\? prefixed chars or digits.
Wants char literals.\n
\(mon-is-alphanum-simp ?8\)             
\(mon-is-alphanum-simp ?A\)             
\(mon-is-alphanum-simp \"8\"\)            
\(mon-is-alphanum-simp \"A\"\)            
\(mon-is-alphanum-simp \(prin1-char 88\)\)
\(mon-is-alphanum \(char-to-string 88\)\)\n
:SEE-ALSO `mon-is-digit-simp' `mon-is-letter-simp', `mon-string-index',
`mon-string-position', `mon-alphabet-as-type', `mon-char-code',
`mon-coerce->char'.\n►►►"
  (or (mon-is-letter-simp simp-alph)
      (mon-is-digit-simp simp-alph)))
;;
;;; :TEST-ME (mon-is-alphanum-simp ?8)
;;; :TEST-ME (mon-is-alphanum-simp ?A)
;;; :TEST-ME (mon-is-alphanum-simp "8") ;should fail
;;; :TEST-ME (mon-is-alphanum-simp "A");should fail
;;; :TEST-ME (mon-is-alphanum-simp (prin1-char 88)) ;should fail

;;; ==============================
;;; :NOTE Heavily modified version of `dired-split' :SEE :FILE dired-aux.el
;;; Which had the comment, "here should be a builtin split function - inverse to mapconcat."
;;; :CHANGESET 2178
;;; :CREATED <Timestamp: #{2010-10-06T20:15:46-04:00Z}#{10403} - by MON KEY>
(defun mon-string-split (split-pattern w-string-to-split &optional limit-to w-empty-string)
  "With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into a list of substrings.\n
Optional third arg LIMIT (>= 1) is a limit to the length of the resulting list.
:EXAMPLE\n\n\(mon-string-split \"sp\"
 \"With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into a list of substrings.\"\)\n
\(mon-string-split \" \"
 \"With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into a list of substrings.\"3\)\n
\(mon-string-split \"Wi\"
 \"With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into a list of substrings.\" 1\)\n
\(mon-string-split \"s.\"
 \"With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into a list of substrings.\" 66\)\n
\(mon-string-split \".\" 
 \"With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into list of substrings.\"\)\n
\(mon-string-split \".\" 
 \"With regexp SPLIT-PATTERN, split W-STRING-TO-SPLIT into list of substrings.\" nil t\)\n
\(mon-string-split-TEST\)\n
:NOTE When SPLIT-PATTERN matches _only_ itself and optional arg limit is omitted.
return value of following form will always be equal W-STRING-TO-SPLIT:\n
  \(mapconcat 'identity \(mon-string-split SEP W-STRING-TO-SPLIT\) SEP\)\n
:ALIASED-BY `mon-split-string'\n
:SEE-ALSO `mon-string-split-TEST', `mon-string-to-symbol',
`mon-string-ify-list', `mon-string-chop-spaces', `mon-string-replace-char',
`mon-string-from-sequence', `mon-string-to-sequence', `mon-string-justify-left',
`mon-string-index', `mon-string-position'.\n►►►"
  (let ((mch-max (length w-string-to-split)))
    (if (or (and limit-to (= limit-to 0))
            (not (string-match-p split-pattern w-string-to-split))
            (save-match-data (string-match split-pattern w-string-to-split) 
                             (= (match-end 0) mch-max)))
        (list w-string-to-split)
      (save-match-data
        (let* ((mch-beg  (string-match split-pattern w-string-to-split))
               (mch-rslt (if (= mch-beg 0) ;; Its an empty string just get the match
                             (list (match-string 0 w-string-to-split))
                           (list (match-string 0 w-string-to-split)
                                 (substring w-string-to-split 0 mch-beg))))
               (mch-end  (and mch-beg (match-end 0)))
               (limit-to (or (and limit-to (1- limit-to)))))
          (when mch-end
            (while (and (or (null limit-to) (and (>= (decf limit-to) 0)))
                        mch-end 
                        (string-match split-pattern w-string-to-split mch-end))
              (setq mch-beg (match-beginning 0))
              (if w-empty-string
                  (push (substring w-string-to-split mch-end mch-beg) mch-rslt)
                (unless (= mch-end mch-beg) 
                  (push (substring w-string-to-split mch-end mch-beg) mch-rslt)))
              (push (match-string 0 w-string-to-split) mch-rslt)
              (setq mch-end (match-end 0))))
          ;; At the end push any remaning unless its an empty string.
          (when (and mch-end (not (= mch-end mch-max))) 
            (push (substring w-string-to-split mch-end) mch-rslt))
          (nreverse mch-rslt))))))

;;; ==============================
;;; :COURTESY calendar/calendar.el :WAS `calendar-string-spread'
;;; The algorithm is based on equation (3.25) on page 85 of Concrete
;;; Mathematics by Ronald L. Graham, Donald E. Knuth, and Oren Patashnik,
;;; Addison-Wesley, Reading, MA, 1989.
;;; :CHANGESET 1995
;;; :CREATED <Timestamp: #{2010-07-26T18:06:51-04:00Z}#{10301} - by MON KEY>
(defun mon-string-spread (string-bag spread-char spread-length) ;; 
  "Concatenate list of STRING-BAG separated by SPREAD-CHAR to SPREAD-LENGTH.\n
The effect is as if `mapconcat' but separating pieces are balanced if
possible.\n Each item of STRING-BAG is evaluated before concatenation so, in
effect it can also be an expression that evaluates to a string.\n
If SPREAD-LENGTH is too short STRING-BAG is concatenated and result truncated.\n
:EXAMPLE\n\n\(let \(\(base-str \"string\"\)
      \(base-str-inc 0\)
      \(biggest-rand 0\)
      \(base-str-rndmz 
       #'\(lambda \(eg-str\)  
           \(let \(\(rand-pad \(random 16\)\)
                 \(rand-pad-char \(elt \(string-to-list \"#-._+\"\) \(random 4\)\)\)
                 rand-len\)
             \(setq eg-str
                   \(concat 
                    \(make-string  rand-pad rand-pad-char\)
                    \" \" eg-str \(number-to-string base-str-inc\) \" \"
                    \(make-string  rand-pad rand-pad-char\)\)\)
             \(setq rand-len \(length eg-str\)\)
             \(when \(> rand-len biggest-rand\)
               \(setq biggest-rand rand-len\)\)
             eg-str\)\)\)\)
  \(mon-string-spread
   `\(,\(funcall base-str-rndmz base-str\)
     \(identity ,\(funcall base-str-rndmz base-str\)\)
     \(apply 'string \(append ,\(funcall base-str-rndmz base-str\) nil\)\)\)
   \(elt \(number-sequence 33 47 1\) \(random 16\)\)
   \(* \(+ biggest-rand 2\) 3\)\)\)\n
:SEE-ALSO `mon-string-fill-to-col', `truncate-string-to-width',
`mon-line-strings-indent-to-col', `mon-line-indent-from-to-col',
`mon-string-split', `mon-string-set-char-at-idx' `mon-string-insert-string-at-idx',
`mon-string-index', `mon-string-upto-index', `mon-string-after-index',
`mon-string-position', `mon-string-has-suffix', `mon-string-chop-spaces',
`mon-string-ify-list', `mon-string-replace-char', `mon-string-sub-old->new',
`mon-string-repeat'.\n►►►"
  (let* ((mss-str-bag (mapcar 'eval
                              (if (< (length string-bag) 2)
                                  (append (list "") string-bag (list ""))
                                string-bag)))
         (mss-n (- spread-length (length (apply 'concat mss-str-bag))))
         (mss-m (1- (length mss-str-bag)))
         (mss-s (car mss-str-bag))
         (mss-strings (cdr mss-str-bag))
         (mss-i 0))
    (dolist (mss-D-1 mss-strings)
      (setq mss-s (concat mss-s
                          (make-string (max 0 (/ (+ mss-n mss-i) mss-m)) spread-char)
                          mss-D-1)
            mss-i (1+ mss-i)))
    (substring mss-s 0 spread-length)))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (let ((base-str "string")
;; |       (base-str-inc 0)
;; |       (biggest-rand 0)
;; |       (base-str-rndmz #'(lambda (eg-str)  
;; |                           (let ((rand-pad (random 16))
;; |                                 (rand-pad-char (elt (string-to-list "#-._+") (random 4)))
;; |                                 rand-len)
;; |                             (setq eg-str
;; |                                   (concat 
;; |                                    (make-string  rand-pad rand-pad-char)
;; |                                    " " eg-str (number-to-string base-str-inc) " "
;; |                                    (make-string  rand-pad rand-pad-char)))
;; |                             (setq rand-len (length eg-str))
;; |                             (when (> rand-len biggest-rand)
;; |                               (setq biggest-rand rand-len))
;; |                             eg-str
;; |                             ))))
;; |   (mon-string-spread
;; |    `(,(funcall base-str-rndmz base-str)
;; |      (identity ,(funcall base-str-rndmz base-str))
;; |      (apply 'string (append ,(funcall base-str-rndmz base-str) nil)))
;; |    (elt (number-sequence 33 47 1) (random 16))
;; |    (* (+ biggest-rand 2) 3)))
;; `----

;;; ==============================


;;; ==============================
;;; :NOTE An alternative approach to justification might be something like:
;;;       (progn
;;;         (insert (propertize "\t" 'display '(space :align-to 32)) " ")  
;;;        (untabify))
;;;       Or mabye, 
;;;       (insert (propertize "\40" 'display '(space :align-to 32)) " ")
;;;
;;; :PREFIX "msjl-"
;;; :COURTESY Pascal Bourguignon :HIS pjb-strings.el :WAS `string-justify-left'
;;; :CHANGESET 1738 <Timestamp: #{2010-05-17T08:57:22-04:00Z}#{10201} - by MON KEY>
;;; :MODIFICATIONS <Timestamp: #{2010-02-03T18:08:59-05:00Z}#{10053} - by MON KEY>
;;; :ADDED `save-match-data' for `split-string'
;;; :RENAMED LEFT-MARGIN arg -> lft-margin. `left-margin' is a global var.
;;; :MODIFICATIONS <Timestamp: #{2010-02-20T14:55:40-05:00Z}#{10076} - by MON KEY>
;;; Added optional arg NO-RMV-TRAIL-WSPC. Relocated save-match-data and
;;; conditional type error checks. Rewrote docstring
(defun mon-string-justify-left (justify-string &optional justify-width 
                                               lft-margin no-rmv-trail-wspc)
  "Return a left-justified string built from JUSTIFY-STRING.\n
When optional arg JUSTIFY-WIDTH is non-nil it is a width JUSTIFY-STRING to
counting from column 0.  Default JUSTIFY-WIDTH is `current-column' or 72.\n
When optional arg LFT-MARGIN it is a column to JUSTIFY-STRING beginning from.
Default is `left-margin' or 0.\n
The word separators are those of `split-string':
      [ \\f\\t\\n\\r\\v]+
This means that JUSTIFY-STRING is justified as one paragraph.\n
When NO-RMV-TRAIL-WSPC is non-nil do not remove trailing whitespace.
Default is to remove any trailing whiespace at end of lines.\n
:EXAMPLE\n
\(let \(\(jnk-arg '\(\(68 4\) \(18 8 t\)\)\) ;;<- With and without arg NO-RMV-TRAIL-WSPC
      jnk jnk1\)
  \(dotimes \(j 2 
              \(with-current-buffer 
                  \(get-buffer-create \"*MON-STRING-JUSTIFY-LEFT-EG*\"\)
                \(erase-buffer\)
                \(insert \";; :FUNCTION `mon-string-justify-left'\\n;;\\n\"
                        \(mapconcat 'identity \(nreverse jnk1\) \"\\n\"\)\)
                \(display-buffer \(current-buffer\) t\)\)\)
    \(dotimes \(i 8 
                \(progn
                  \(push \(format \(if \(= j 0\) 
                                    \";; :FIRST-TIME-W-ARGS %S\\n\" 
                                  \"\\n;; :SECOND-TIME-W-ARGS %S\\n\"\)
                                \(car jnk-arg\)\) 
                        jnk1\)
                  \(push \(apply 'mon-string-justify-left jnk \(pop jnk-arg\)\) jnk1\)
                  \(setq jnk nil\)\)\)
                \(dolist \(i '\(64 94\)\)
                  \(setq jnk 
                        \(concat \" \" 
                                \(make-string \(elt \(mon-nshuffle-vector [7 5 3 9]\) 3\) i\) 
                      jnk\)\)\)\)\)\)\n
:SEE-ALSO `mon-string-fill-to-col', `truncate-string-to-width',
`mon-string-spread', `comment-padleft', `comment-padright', `mon-string-split',
`mon-string-set-char-at-idx',
`mon-string-insert-string-at-idx', `mon-string-index', `mon-string-upto-index',
`mon-string-after-index', `mon-string-has-suffix', `mon-string-sub-old->new',
`mon-string-repeat'.\n►►►"
  (let* ((lft-margin (if (null lft-margin) (or left-margin 0) lft-margin)) 
         (msjl-width (if (null justify-width) (or fill-column 72) justify-width))
         (msjl-string (if (not (stringp justify-string)) 
                          (error  (concat ":FUNCTION `string-justify-left' "
                                          "-- arg JUSTIFY-STRING must be a string"))
                        justify-string))
         (msjl-col (if (not (and (integerp justify-width) (integerp lft-margin)))
                       (error (concat  ":FUNCTION `string-justify-left' "
                                       "-- arg LFT-MARGIN or JUSTIFY-WIDTH not an integer"))
                     lft-margin))
         (msjl-split (save-match-data (split-string msjl-string))) ;; :WAS splited
         (msjl-margin (make-string lft-margin 32)) ;; :WAS margin
         (msjl-jstfy (substring msjl-margin 0 msjl-col)) ;; :WAS justified
         (msjl-word)
         (msjl-word-len 0)
         (msjl-sep ""))
    (while msjl-split
      (setq msjl-word (car msjl-split))
      (setq msjl-split (cdr msjl-split))
      (setq msjl-word-len (length msjl-word))
      (if (> msjl-word-len 0)
          (if (>= (+ msjl-col (length msjl-word)) msjl-width)
              (progn
                (setq msjl-jstfy (concat msjl-jstfy "\n" msjl-margin msjl-word))
                (setq msjl-col (+ left-margin msjl-word-len)))
              (progn
                (setq msjl-jstfy (concat msjl-jstfy msjl-sep msjl-word))
                (setq msjl-col (+ msjl-col 1 msjl-word-len)))))
      (setq msjl-sep " "))
    (when (< msjl-col msjl-width) 
      (setq msjl-jstfy (concat msjl-jstfy (make-string (- msjl-width msjl-col) 32)))) ;;))
    (if no-rmv-trail-wspc
        msjl-jstfy
      (setq msjl-jstfy (replace-regexp-in-string "[[:space:]]+$" "" msjl-jstfy)))))
;;
;;,---- :UNCOMMENT-BELOW-TO-TEST
;;| (let ((jnk-arg '((68 4) (18 8 t))) ;;<- With and without no-rmv-trail-wspc arg.
;;|       jnk jnk1)
;;|   (dotimes (j 2 
;;|               (with-current-buffer 
;;|                   (get-buffer-create "*MON-STRING-JUSTIFY-LEFT-EG*")
;;|                 (erase-buffer)
;;|                 (insert ";; :FUNCTION `mon-string-justify-left'\n;;\n"
;;|                         (mapconcat 'identity (nreverse jnk1) "\n"))
;;|                 (display-buffer (current-buffer) t)))
;;|     (dotimes (i 8 
;;|                 (progn
;;|                   (push (format (if (= j 0) 
;;|                                     ";; :FIRST-TIME-W-ARGS %S\n" 
;;|                                   "\n;; :SECOND-TIME-W-ARGS %S\n")
;;|                                 (car jnk-arg)) 
;;|                         jnk1)
;;|                   (push (apply 'mon-string-justify-left jnk (pop jnk-arg)) jnk1)
;;|                   (setq jnk nil)))
;;|                 (dolist (i '(64 94))
;;|                   (setq jnk 
;;|                         (concat " " 
;;|                                 (make-string (elt (mon-nshuffle-vector [7 5 3 9]) 3) i) 
;;|                       jnk))))))
;;`----

;;; ==============================
;;; :PREFIX "msftc-"
;;; :CREATED <Timestamp: #{2009-12-09T12:02:47-05:00Z}#{09503} - by MON>
(defun mon-string-fill-to-col (str to-col)
  "Return a string STR filled to column number TO-COL.\n
:EXAMPLE\n(mon-string-fill-to-col (mon-get-system-specs) 72)\n
:SEE-ALSO `mon-line-strings-indent-to-col', `mon-line-indent-from-to-col',
`mon-string-justify-left', `truncate-string-to-width'.\n►►►"
  (let (msftc-fstr)  
    (setq msftc-fstr 
          (with-temp-buffer
            (let ((fill-column to-col))
              (insert str)
              ;; :WAS (fill-region (buffer-end 0) (buffer-end 1)) ;; 
              (fill-region (mon-g2be -1 t) (mon-g2be 1 t))
              ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)))))
              (mon-buffer-sub-no-prop))))
    msftc-fstr))
;;
;;; :TEST-ME (mon-string-fill-to-col (mon-get-system-specs) 72)

;;; ==============================
;;; :PREFIX "mlbp-"
;;; :CHANGESET 2035
;;; :CREATED <Timestamp: #{2010-08-04T20:00:08-04:00Z}#{10313} - by MON KEY>
(defun mon-looking-back-p (regexp &optional limit greedy)
  "Like `looking-back' but doesn't modify the match data.\n
:EXAMPLE\n\n\(let \(\(mb4-aftr \(list :old-match-data \(match-data t\)\)\)\)
  \(save-excursion 
    \(end-of-line 3\)
    \(when \(mon-looking-back-p \"^OMG theres a bubba back there!\"\)
      \(unless \(equal \(match-data t\) mb4-aftr\)
        \(setq mb4-aftr 
              \(nconc '\(:buba-change-match-data nil\) mb4-aftr\)\)\)
      \(setq mb4-aftr \(nconc '\(:found-bubba t\) mb4-aftr\)\)\)\)
  mb4-aftr\)\n\nOMG theres a bubba back there!\n
:SEE-ALSO `looking-at-p', `inhibit-changing-match-data'.\n►►►"
  (let ((mlbp-beg (point))
	(mlbp-psn
	 (let ((inhibit-changing-match-data t))
           (save-excursion
             (and (re-search-backward (concat "\\(?:" regexp "\\)\\=") limit t)
                  (point))))))
    (if (and greedy mlbp-psn)
	(save-restriction
	  (narrow-to-region (mon-g2be -1 t) mlbp-beg)
	  (while (and (> mlbp-psn (point-min))
		      (save-excursion
			(goto-char mlbp-psn)
			(backward-char 1)
			(looking-at-p (concat "\\(?:"  regexp "\\)\\'"))))
	    (setq mlbp-psn (1- mlbp-psn)))
	  (save-excursion
	    (goto-char mlbp-psn)
	    (looking-at-p (concat "\\(?:"  regexp "\\)\\'")))))
    (not (null mlbp-psn))))

;;; ==============================
;;; :CREATED <Timestamp: #{2009-09-12T14:07:56-04:00Z}#{09376} - by MON KEY>
(defun mon-string-read-match-string (&optional match-subexp)
  "Make `match-string' return more than just the last string matched.\n
Strip the # char from the side-effect value returned by match-string.
When MATCH-SUBEXP is non-nil return match-string of nth subexp.
The function match-string carries more data than just the string it returns.
These datum include:
 from-idx to-idx of subexp match location;
if match string is fontified and the face used @ from-sub-idx to-sub-idx;
if match string carries text properties and if so the stickiness
of these props @ from-sub-idx to-sub-idx;
However, this data is not accessible to read because match-string returns as an
unreadable object with the '#' prefix so we strip it.\n
:EXAMPLE 
:NOTE Evaluate following in *scratch* (or equiv) with `emacs-lisp-mode' t.
> \(search-forward-regexp \"\\\\\(\\\\\(\\=[\\\\\)\\\\\([0-9\\=]\\\\\\={8,10\\\\}\\\\\)\\\\\(]\\\\\)\\\\\)\" nil t\)
\"[500006383]\"
> (match-string 0)\n; => #\(\"[500006383]\" 0 11 \(fontified t face font-lock-string-face\)\)
> \(search-forward-regexp \"\\\\\(\\\\\(\\=[\\\\\)\\\\\([0-9\\=]\\\\\\={8,10\\\\}\\\\\)\\\\\(]\\\\\)\\\\\)\" nil t\)
\"[500006383]\"
> (mon-string-read-match-string)
; => \(\"[500006383]\" 0 11 \(fontified t face font-lock-string-face\)\)\n
:SEE-ALSO `mon-string-replace-char', `mon-looking-back-p'.\n►►►"
  (let ((msrms-mtch (if (and (= (match-beginning 0) 1)(> (point) (mon-g2be -1 t) )) 
                        nil ;; Last search didn't move point was a dud don't proceed.
                      (car (read-from-string 
                            (substring (format "%S" (match-string (if match-subexp match-subexp 0))) 1))))))
    msrms-mtch))
;;
;;; :TEST-ME (search-forward-regexp "\\(\\(\\[\\)\\([0-9]\\{8,10\\}\\)\\(]\\)\\)" nil t)
;;;        [500006383]
;;; :TEST-ME (mon-string-read-match-string)
;;; :TEST-ME (mon-string-read-match-string 4)

;;; ==============================
;;; :PREFIX "msts-" 
;;; :CHANGESET 2119 <Timestamp: #{2010-09-14T17:02:55-04:00Z}#{10372} - by MON KEY>
;;; :MODIFICATIONS <Timestamp: #{2009-10-14T11:06:04-04:00Z}#{09423} - by MON KEY>
;;; :CREATED <Timestamp: #{2009-08-26T17:08:02-04:00Z}#{09353} - by MON KEY>
(defun mon-string-to-symbol (str-to-sym &optional start end)
  "Return string STR-TO-SYM as a symbol.\n
When optional args START and END are non-nil delimit the `substring' of STR-TO-SYM.\n
START and END default to 0 and \(length string\) respectively.\n
If STR-TO-SYM (or a substring therin if START is non-ni) satisfies `intern-soft' for
default `obarray' return value is as if by `read', else symbol is allocated as
if by `make-symbol' with its value and function cells void, and its property
list `nil'.\n
:EXAMPLE\n\(and \(intern-soft \(format \"%S\"
                          \(mon-string-to-symbol \"mon-string-to-symbol\"\)\)
                  obarray\) t\)\n
\(mon-string-to-symbol \(mon-symbol->string 'bubba\)\)\n
\(progn 
  \(unintern \"bubba\" obarray\) 
  \(not \(intern-soft \(format \"%S\" \(mon-string-to-symbol \"bubba\"\)\) obarray\)\)\)\n
\(progn 
  \(unintern \"bubba\" obarray\) 
  \(and \(intern-soft 
        \(format \"%S\" \(intern 
                      \(symbol-name \(mon-string-to-symbol \"bubba\"\)\)
                      obarray\)
                obarray\)\) t\)\)\n
\(progn 
  \(unintern \"bubb\" obarray\)
  \(not \(intern-soft 
        \(symbol-name \(mon-string-to-symbol \"bubba\" 0 4\)\)
        obarray\)\)\)\n
\(prog2 
    \(unintern \"bubb\" obarray\)
    \(and \(intern-soft 
          \(format \"%S\" \(intern 
                        \(symbol-name \(mon-string-to-symbol \"bubba\" 0 4\)\)
                        obarray\)\)
          obarray\) t\)
  \(unintern \"bubb\" obarray\)\)\n
:SEE-ALSO `mon-symbol-to-string', `mon-string-to-sequence',
`mon-string-from-sequence', `mon-string-alpha-list',
`mon-string-index', `mon-string-has-suffix', `mon-alphabet-as-type',
`mon-string-replace-char'.\n►►►"
  ;; :WAS (car (read-from-string str-to-sym start end)))
  (when (or ;;(null str-to-sym) 
         ;; Don't handle the empty string. YUK!
         (mon-string-or-null-and-zerop str-to-sym)
         (not (stringp str-to-sym)))
    (mon-error-string-err-format "mon-string-to-symbol" "str-to-sym" str-to-sym t))
  ;; (error (concat ":FUNCTION `mon-string-to-symbol'"
  ;;                "-- arg STR-TO-SYM does not satisfy `stringp', got %S")
  ;;        str-to-sym))
  ;; str-to-sym
  (let ((msts-sbstr 
         ;; Bad idea generating arbitrary symbols with negative integer indexes
         ;; into STR-TO-SYM. If either START or END aren't `wholenump' signal.
         (or (and start 
                  (or (wholenump start)
                      (error (concat 
                              ":FUNCTION `mon-string-to-symbol'"
                              "-- optional arg START not `wholenump', got %S")
                             start))
                  (substring str-to-sym start 
                             (and end 
                                  (or (and (wholenump end) end)
                                      (error (concat 
                                              ":FUNCTION `mon-string-to-symbol'"
                                              "-- optional arg END not `wholenump', got %S")
                                             end))
                                  )))
             str-to-sym)))
    (if (intern-soft msts-sbstr obarray)
        (read msts-sbstr) 
      (make-symbol msts-sbstr))))
;;
;;; :TEST-ME (intern-soft (mon-string-to-symbol "mon-string-to-symbol") obarray)
;;; :TEST-ME (progn (unintern "bubba" obarray) (intern-soft (mon-string-to-symbol "bubba")))
;;; :TEST-ME (intern-soft (intern (symbol-name (mon-string-to-symbol "bubba"))))
;;; :TEST-ME (progn (unintern "bubb" obarray) (intern-soft (mon-string-to-symbol "bubba" 0 4) obarray))
;;; :TEST-ME (intern-soft (intern (symbol-name (mon-string-to-symbol "bubba" 0 4))) obarray)
;;; :TEST-ME (mon-string-to-symbol "bubba")
;;; :TEST-ME (mon-string-to-symbol "mon-string-to-symbol" 4 10)
;;; :TEST-ME (mon-string-to-symbol "mon-string-to-symbol" 4)
;;; :TEST-ME (mon-string-to-symbol (mon-symbol->string 'bubba))
;;; :TEST-ME (mon-string-to-symbol "mon-string-to-symbol" -1) ;; should fail successfully
;;; :TEST-ME (mon-string-to-symbol "mon-string-to-symbol" 0 -9) ;; should fail successfully
;;; :TEST-ME (mon-string-to-symbol (current-buffer)) ;; should fail successfully

;;; ==============================
;;; :NOTE Periodically MON is completely at a loss for how to accomplish this.
;;;       Lets make _damn_ sure it never happens again!!
;;; :CHANGESET 1911 <Timestamp: #{2010-06-22T15:13:06-04:00Z}#{10252} - by MON KEY>
;;; :CREATED <Timestamp: #{2009-09-29T21:00:43-04:00Z}#{09403} - by MON KEY>
(defun mon-symbol-to-string (symbol-to-frob) 
  "Return SYMBOL as a string.\n
:EXAMPLE\n(mon-symbol-to-string 'bubba)\n
\(mon-symbol-to-string \(mon-string-to-symbol \"bubba\"\)\)\n
\(progn
  \(unintern \(intern-soft \"some-uninterned-symbol\" obarray\)\)
  \(mon-symbol-to-string
   \(make-symbol \"some-uninterned-symbol\"\)\)\)\n
:SEE-ALSO `mon-string-to-symbol', `mon-string-to-sequence',
`mon-string-from-sequence', `mon-alphabet-as-type',
`mon-string-split', `mon-string-replace-char', `symbol-name'.\n►►►"
  ;; Which is more correct? 
  ;; (format "%s" symbol) 
  ;; (format "%S" symbol-to-frob)
  ;; <Timestamp: #{2010-10-29T18:58:45-04:00Z}#{10435} - by MON KEY>
  ;; Well, if we happen to get a string then "%s" is better...
  ;; So, added the `stringp' check below.
  ;; Not that it matters the `format' thing was silly :P
  (or (and (stringp symbol-to-frob) symbol-to-frob)
      ;; :WAS (format "%S" symbol-to-frob))) ; <-Silly 
      ;; :WAS (symbol-name (intern (format "%S" symbol-to-frob) 
      ;;                      (make-vector 2 nil))) ; <- Also Silly
      (symbol-name symbol-to-frob)))
;;
;;; :TEST-ME (mon-symbol->string 'bubba)
;;; :TEST-ME (mon-symbol->string (mon-string-to-symbol "bubba"))
;;; :TEST-ME (progn  (and (intern-soft "some-uninterned-symbol" obarray) 
;;                         (unintern "some-uninterned-symbol" obarray))
;;;            (mon-symbol-to-string (make-symbol "some-uninterned-symbol")))
   
;;; ==============================
;;; :PREFIX "msts-"
;;; :CHANGESET 1899 <Timestamp: #{2010-06-22T14:58:14-04:00Z}#{10252} - by MON KEY>
;;; :CREATED <Timestamp: Wednesday June 24, 2009 @ 11:50.11 AM - by MON KEY>
(defun mon-string-to-sequence (string-to-frob &rest more-strings)
  "Return string STRING-TO-FROB as a list of chars.\n
When rest arg MORE-STRINGS is non-nil each additional string is converted chars
and added to the list of returned chars.\n
Signal an error if MORE-STRINGS does not satisfy predicate `string-or-null-p'.\n
:EXAMPLE\n\n\(mon-string-to-sequence \"?\\C-lstring\"\)\n
\(apply 'string \(mon-string-to-sequence \"?\\C-lstring\"\)\)\n
\(mon-string-to-sequence \"str1\" \"str2\"\)\n
\(mon-string-to-sequence \"str1\" \"str2\" \"str3\"\)\n
\(mon-string-to-sequence \"str1\" \"str2\" nil \"str3\"\)\n
\(apply 'mon-string-to-sequence \"str1\" \"str2\" nil \"str3\" nil '\(\"more string\"\)\)\n
:SEE-ALSO `mon-string-from-sequence', `mon-string-index', `mon-string-position',
`mon-string-split', `mon-string-alpha-list', `mon-is-alphanum', `mon-is-digit',
`mon-is-letter', `mon-alphabet-as-type', `mon-string-replace-char',
`string-to-list', `string-to-vector'.\n►►►"
  ;; :NOTE `string-to-list' does this: (append string nil)
  (if more-strings
      (let ((msts-w/more 
             (progn
               (mapc #'(lambda (msts-L-1) 
                         (unless (string-or-null-p msts-L-1)
                           (error (concat 
                                   ":FUNCTION `mon-string-to-sequence' "
                                   "-- arg MORE-STRINGS must satisfy `string-or-null-p'"))))
                     more-strings)
               `(,string-to-frob ,@more-strings nil))))
        (apply 'append (car msts-w/more) (cdr msts-w/more)))
    (let (msts-to-seq)
      (mapc #'(lambda (msts-L-2) 
                (push msts-L-2 msts-to-seq)) string-to-frob)
      (nreverse msts-to-seq))))
;;
;;; :TEST-ME (mon-string-to-sequence "?\C-lstring")
;;; :TEST-ME (apply 'string (mon-string-to-sequence "?\C-lstring"))
;;; :TEST-ME (mon-string-to-sequence "str1" "str2")
;;; :TEST-ME (mon-string-to-sequence "str1" "str2" "str3")
;;; :TEST-ME (mon-string-to-sequence "str1" "str2" nil "str3")
;;; :TEST-ME (apply 'mon-string-to-sequence "str1" "str2" nil "str3" nil '("more string"))
;;; :TEST-ME (mon-string-to-sequence "str1" "str2" "str3" '("str4")) ;; <- error

;;; ==============================
;;; :PREFIX "msfs-"
;;; :MODIFICATIONS <Timestamp: #{2009-10-09T16:07:57-04:00Z}#{09415} - by MON>
;;; :CREATED <Timestamp: #{2009-09-30T13:31:42-04:00Z}#{09403} - by MON KEY>
(defun mon-string-from-sequence (stringify-seq &rest other-seqs)
  "Return STRINGIFY-SEQ - a sequence of character integers - as a string.\n
When OTHER-SEQS is non-nil these can be lists (quoted), vectors, or strings in
any combination these will be concatenated to return value also.\n
:EXAMPLE\n\n\(mon-string-from-sequence '(115 116 114 105 110 103))\n
\(mon-string-from-sequence\n '(115 116 114 105 110 103 48)
 '\(115 116 114 105 110 103 115 49\)\n '\(115 116 114 50\)\)\n
\(mon-string-from-sequence \(number-sequence 0 127\)\)\n
\(mon-string-from-sequence\n '\(98 117 98 98 97 115\)
 \"string0\"\n [32 98 117 98 98 97 115 32]
 '\(115 116 114 105 110 103 49 32\)\n [98 117 98 98 97 32]
 '\(103 111 116 32 110 105 108\)\)\n
:ALIASED-BY `mon-sequence-to-string', `mon-seq->string'\n
:SEE-ALSO `mon-string-index',`mon-string-position', `mon-string-alpha-list',
`mon-is-alphanum',`mon-is-digit',`mon-is-letter', `mon-alphabet-as-type',
`mon-string-replace-char', `mon-string-split'.\n►►►"
  (let ((msfs-L-str (lambda (msfs-L-1) (apply #'string msfs-L-1)))
        (msfs-chk-seqs (when (and other-seqs (sequencep other-seqs))
                    (mapcar #'(lambda (msfs-L-2) 
                                (cond ((vectorp msfs-L-2) (append msfs-L-2 nil))
                                      ((stringp msfs-L-2) (mon-string-to-sequence msfs-L-2))
                                      ((listp  msfs-L-2) msfs-L-2)))
                            other-seqs)))
        msfs-seq-seqs)
    (while msfs-chk-seqs 
      (push (funcall msfs-L-str (pop msfs-chk-seqs)) msfs-seq-seqs))
    (setq msfs-seq-seqs (nreverse msfs-seq-seqs))
    (push (funcall msfs-L-str 
                   (if (nlistp stringify-seq)
                       (cond ((vectorp stringify-seq) 
                              (append stringify-seq nil))
                             ((stringp stringify-seq) 
                              (mon-string-to-sequence stringify-seq)))
                     stringify-seq)) msfs-seq-seqs)
    (apply #'concat (car msfs-seq-seqs) (cdr msfs-seq-seqs))))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (string-equal
;; |  (mon-string-from-sequence '(98 117 98 98 97)) 
;; |  "bubba")
;; | 
;; | (string-equal 
;; |  (mon-string-from-sequence (string-to-list "bubba")) 
;; |  "bubba")
;; | 
;; | (string-equal 
;; |  (mon-string-from-sequence '(98 117 98 98 97 115 97) (string-to-list "bubba")) 
;; |  "bubbasabubba")
;; | 
;; | (string-equal 
;; |  (mon-string-from-sequence '(98 117 98 98 97) [98 117 98 98 97 115 97]) 
;; |  "bubbabubbasa")
;; | 
;; | (string-equal (mon-string-from-sequence '(98 117 98 98 97) 
;; |                                         "string0" 
;; |                                         [98 117 98 98 97 115 97] 
;; |                                         "string" [98 117 98 98 97 115 97])
;; |               "bubbastring0bubbasastringbubbasa")
;; `----

;;; ==============================
;;; :PREFIX "msal-"
;;; :CREATED <Timestamp: Thursday June 25, 2009 @ 11:17.43 AM - by MON KEY>
(defun mon-string-alpha-list (from-letter to-letter &optional as-symb)
  "Return alphabetized list of ASCII character strings FROM-LETTER TO-LETTER.\n
If either FROM-LETTER or TO-LETTER is upper-cased list returned 
will be in upper cased. When TO-LETTER comes before FROM-LETTER in a 
lexicographic sort the two args are swapped; this check is exclusive of case
check.\n\n:EXAMPLE\n
\(mon-string-alpha-list \"a\" \"f\"\)\n\(mon-string-alpha-list \"A\" \"F\"\)
\(mon-string-alpha-list \"l\" \"G\"\)\n\(mon-string-alpha-list \"g\" \"l\"\)\n
:NOTE Use this to get a list of symbols instead:\n
\(princ \(mon-string-alpha-list \"m\" \"r\"\)\)\n
:SEE-ALSO `mon-alphabet-as-type', `number-sequence', `mon-string-to-sequence', 
`mon-string-from-sequence',  `mon-is-alphanum', `mon-is-digit',
`mon-is-letter'.\n►►►"
  (let ((msal-frm (string-to-char from-letter))
        (msal-to (string-to-char to-letter))
        msal-swp
        msal-rtn ;; doesn't appear to be used.
        )
    (cond ((and (and (>= msal-frm 65) (<= msal-frm 90))
                (and (>= msal-to 97) (<= msal-to 127)))
           (setq msal-to (- msal-to 32)))
          ((and (and (>= msal-to 65) (<= msal-to 90))
                (and (>= msal-frm 97) (<= msal-frm 127)))
           (setq msal-frm (- msal-frm 32))))
    (when (< msal-to msal-frm)
      (setq msal-swp msal-frm)
      (setq msal-frm msal-to)
      (setq msal-to msal-swp))
    (split-string (mon-string-from-sequence (number-sequence msal-frm msal-to)) "" t)))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (equal 
;; |  (mon-string-alpha-list "a" "z")
;; |  '("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" 
;; |    "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"))
;; | (equal 
;; |  (mon-string-alpha-list "A" "Z")
;; |  '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" 
;; |    "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"))
;; | (equal 
;; |  (mon-string-alpha-list "Z" "A")
;; |  '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" 
;; |    "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"))
;; | (equal 
;; |  (mon-string-alpha-list "z" "a")
;; |  '("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" 
;; |    "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"))
;; | (equal 
;; |  (mon-string-alpha-list "Z" "a")
;; |  '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" 
;; |    "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"))
;; | (equal 
;; |  (mon-string-alpha-list "a" "Z")
;; |  '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" 
;; |    "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"))
;; | (equal (mon-string-alpha-list "z" "Z") '("Z"))
;; | (equal (mon-string-alpha-list "A" "a") '("A"))
;; `----


;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-strings.el :WAS `string-index'
(defun mon-string-index (string-to-idx needle &optional frompos)
  "Return position in STRING-TO-IDX beginning with first occurence of NEEDLE.\n
Return nil if needle is not found.\n
NEEDLE is a char, number, or string.\n
When FROMPOS is non-nil begin search for needle from position. 
Default is to search from start of string.\n
:EXAMPLE\n\(mon-string-index \"string before ### string after\" \"###\"\)\n
:SEE-ALSO `mon-string-upto-index', `mon-string-after-index',
`mon-alphabet-as-type', `mon-string-position', `mon-string-has-suffix',
`mon-string-chop-spaces', `mon-string-replace-char'.\n►►►"
  (string-match 
   (regexp-quote 
    (cond ((or (characterp needle) (integerp needle)) (format "%c" needle))
          ((stringp needle) needle)
          (t ;; e.g. (integerp (set-marker (make-marker) (point)))
           (error (concat ":FUNCTION `mon-string-index' "
                          "-- arg NEEDLE expecting number or string, got: %S")
                  needle))))
   string-to-idx frompos))
;; 
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (= (mon-string-index "string before ### string after" "###") 14)
;; |     
;; | (string-equal 
;; |  (substring "string before ### string after" 0 
;; |             (mon-string-index "string before ### string after" "###"))
;; |  "string before ")
;; `----

;; (mon-string-index "string before ### string after" 18)

;;; ==============================
;;; :CREATED <Timestamp: #{2009-10-01T15:16:26-04:00Z}#{09404} - by MON KEY>
(defun mon-string-upto-index (in-string upto-string)
  "Return substring of IN-STRING UPTO-STRING.\n
The arg UPTO-STRING is a simple string. No regexps, chars, numbers, lists, etc.\n
:EXAMPLE\n\(mon-string-upto-index \"string before ### string after\" \"###\"\)\n  
:SEE-ALSO `mon-string-index', `mon-string-after-index'
`mon-string-position', `mon-string-has-suffix', `mon-string-chop-spaces',
`mon-string-replace-char'.\n►►►"
  (substring in-string 0 (mon-string-index in-string upto-string)))
;;
;;; :TEST-ME (mon-string-upto-index "string before ### string after" "###")

;;; ==============================
;;; :CREATED <Timestamp: #{2009-10-01T15:16:29-04:00Z}#{09404} - by MON KEY>
(defun mon-string-after-index (in-str after-str)
  "Return substring of IN-STR AFTER-STR.\n
AFTER-STR is a simple string. No regexps, chars, numbers, lists, etc.\n
:EXAMPLE\n\(mon-string-after-index \"string before ### string after\" \"###\"\)\n
:SEE-ALSO `mon-string-index', `mon-string-upto-index', `mon-string-position',
`mon-string-has-suffix', `mon-string-chop-spaces',
`mon-string-replace-char'.\n►►►"
  (substring in-str (+ (mon-string-index in-str after-str) (length after-str))))
;;
;;; :TEST-ME (mon-string-after-index "string before ### string after" "###")

;;; ==============================
;;; :PREFIX "mssd-"
;;; :NOTE This is a slow implementation.
;;; :CREATED <Timestamp: #{2010-03-23T17:38:29-04:00Z}#{10122} - by MON>
(defun mon-string-sort-descending (list-to-sort)
  "Destructively sort the list of strings by length in descending order.\n
:EXAMPLE\n\n\(let \(\(mk-str-l\)\)
  \(dotimes \(i 16 \(mon-string-sort-descending mk-str-l\)\)
    \(push \(make-string \(random 24\) 42\) mk-str-l\)\)\)\n
:SEE-ALSO .\n►►►"
  (let ((mssd-srt-l list-to-sort)
        (mssd-srt-pred #'(lambda (mssd-L-1 mssd-L-2) 
                           ;; mssd-L-1-prd1
                           (let ((mssd-L-1-prd1 (length mssd-L-1))
                                 (mssd-L-1-prd2 (length mssd-L-2)))
                             (> mssd-L-1-prd1 mssd-L-1-prd2)))))
    (setq mssd-srt-l (sort mssd-srt-l mssd-srt-pred))))
;;
;;; :TEST-ME (let ((mk-str-l))
;;;               (dotimes (i 16 (mon-string-sort-descending mk-str-l))
;;;                 (push (make-string (random 24) 42) mk-str-l)))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-strings.el :WAS `string-position'
(defun mon-string-position (in-string find-substr &optional from-psn)
  "Return the position IN-STRING of the first occurence of FIND-SUBSTR
searching FROM-PSN, or from the start if FROM-PSN is absent or nil. 
If the SUBSTR is not found, then return nil.\n
:EXAMPLE\n\(mon-string-position \"dogmeat\" \"meat\"\)\n
:SEE-ALSO `mon-string-index', `mon-string-upto-index', `mon-string-after-index',
`mon-string-to-sequence', `mon-string-from-sequence',
`mon-string-replace-char'.\n►►►"
  (string-match (regexp-quote find-substr) in-string from-psn))
;;
;;; :TEST-ME (= (mon-string-position "dogmeat" "meat") 3)

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-strings.el :WAS `string-has-suffix'
(defun mon-string-has-suffix (check-string has-suffix &optional w-no-empty-strings)
  "Return t when CHECK-STRING HAS-SUFFIX as a component.\n
When optional arg W-NO-EMPTY-STRINGS is non-nil siganl an error if either
CHECK-STRING or HAS-SUFFIX is `mon-string-not-null-and-zerop'.\n
:EXAMPLE\n\n\(mon-string-has-suffix \"dogmeat\" \"meat\"\)\n
\(mon-string-has-suffix \"butt\" \"chicken-butt\"\)\n
\(mon-string-has-suffix \"suffix always true\" \"\"\)\n
\(mon-string-has-suffix \"\" \"\"\)\n
\(mon-string-has-suffix \(buffer-name\) (substring (buffer-name) 0 0)\)\n
;; The following signal:\n
\(mon-string-has-suffix \"\" \(current-buffer\)\)\n
\(mon-string-has-suffix 'bubba \(buffer-name\)\)\n
\(mon-string-has-suffix \"\" \"bubba\" t\)\n
\(mon-string-has-suffix \"bubba\" \"\" t\)\n
\(mon-string-has-suffix (substring (buffer-name) 0 0) \"bubba\" t\)\n
\(mon-string-has-suffix \"bubba\" \"\" t\)\n
:ALIASED-BY `mon-string-suffix-p'\n
:SEE-ALSO `mon-string-prefix-p', `mon-string-position', `mon-string-index',
`mon-string-upto-index', `mon-string-after-index',
`mon-string-replace-char'.\n►►►"
  (and (or (and w-no-empty-strings
                (or (mon-string-not-null-nor-zerop check-string)
                    (error (concat ":FUNCTION `mon-string-has-suffix' " 
                                   "-- with optional arg W-NO-EMPTY-STRINGS non-nil, "
                                   "arg CHECK-STRING does not satisfy `mon-string-not-null-nor-zerop', "
                                   "got: %S type-of: %S" )
                           check-string (type-of check-string)))
                (or (mon-string-not-null-nor-zerop has-suffix)
                    (error (concat ":FUNCTION `mon-string-has-suffix' " 
                                   "-- with optional arg W-NO-EMPTY-STRINGS non-nil, "
                                   "arg HAS-SUFFIX does not satisfy `mon-string-not-null-nor-zerop', "
                                   "got: %S type-of: %S" )
                           has-suffix (type-of has-suffix))))
           t)
       (and (or (stringp check-string)
                (mon-error-string-err-format "mon-string-has-suffix" "check-string" check-string t))
            (or (stringp has-suffix)
                (mon-error-string-err-format "mon-string-has-suffix" "has-suffix" has-suffix t))))
  (cond ((< (length check-string) (length has-suffix)) nil)
        ;; :WAS (t (string-equal {...} 
        ;; ,---- :NOTE Doesn't seem taht string-equal gets us much:
        ;; |  (let ((bubba "bubba")
        ;; |        (bubba2 "bubba"))
        ;; |     (set-text-properties 0 (length bubba) '(font-lock-face 'bold) bubba)
        ;; |     (equal bubba bubba2))
        ;; `----
        (t (equal (substring check-string (- (length check-string) (length has-suffix)))
                  has-suffix))))
;;
;;; :TEST-ME (and (mon-string-has-suffix "dogmeat" "meat") t)
;;; :TEST-ME (and (mon-string-has-suffix "suffix always true" "") t)
;;; :TEST-ME (and (mon-string-has-suffix "" "") t)
;;; :TEST-ME (and (not (mon-string-has-suffix "butt" "chicken-butt")) t)
;;; :TEST-ME (not (ignore-errors (mon-string-has-suffix 88 "chicken-butt")))
;;; :TEST-ME (not (ignore-errors (mon-string-has-suffix "butt" 88)))
;;; :TEST-ME (and (ignore-errors (mon-string-has-suffix "suffix always true" "" t) t)
;;; :TEST-ME (and (mon-string-has-suffix "" "" t) t)

;;; ==============================
;;; :PREFIX "mscs-"
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-advices.el :WAS `pjb-chop-spaces'
;;; :CREATED <Timestamp: #{2009-09-28T16:39:34-04:00Z}#{09401} - by MON>
(defun mon-string-chop-spaces (chop-string)
  "Return substring of `chop-string' with \(char 32\) removed left and right.\n
:EXAMPLE\n\n\(mon-string-chop-spaces \" some string no spaces \"\)\n
:SEE-ALSO `mon-string-split-on-regexp', `mon-string-sub-old->new', 
`mon-string-chop-spaces', `mon-string-position', `mon-string-index',
`mon-string-upto-index', `mon-string-after-index', `mon-alphabet-as-type',
`mon-string-replace-char'.\n►►►"
  (let ((mscs-itr 0)
        (mscs-len (1- (length chop-string)))
        (mscs-spc 32))
    (while (and (< 0 mscs-len) (eq (aref chop-string mscs-len) mscs-spc))
      (setq mscs-len (1- mscs-len)))
    (setq mscs-len (1+ mscs-len))
    (while (and (< mscs-itr mscs-len) (eq (aref chop-string mscs-itr) mscs-spc))
      (setq mscs-itr (1+ mscs-itr)))
    (substring chop-string mscs-itr mscs-len)))
;;
;;; :TEST-ME (mon-string-chop-spaces " some string no spaces ")

;;; ==============================
;;; :PREFIX "msil-"
;;; :RENAMED `mon-stringify-list' -> `mon-string-ify-list'
(defun mon-string-ify-list (string-given)
  "Return a list of strings by breaking STRING-GIVEN at space boundaries.\n
:EXAMPLE\n\(mon-string-ify-list \"Make this sentence a list of strings\")\n
:SEE-ALSO `mon-stringify-list' ,`mon-insert-string-ify', 
`mon-string-ify-current-line', `mon-line-get-next', 
`mon-word-get-list-in-buffer', `mon-alphabet-as-type',
`mon-string-replace-char'.\n►►►"
  (let ((msil-str string-given)
        msil-lst)
    (set-match-data nil)
    (while (string-match " *\\([^ ]+\\) *" msil-str (match-end 0))
      (setq msil-lst
	    (cons (substring msil-str (match-beginning 1) (match-end 1)) msil-lst)))
    (nreverse msil-lst)))
;;
;;; :TEST-ME (equal  
;;;           (mon-string-ify-list "Make this sentence a list of strings")
;;;            '("Make" "this" "sentence" "a" "list" "of" "strings"))

;;; ==============================
;;; :PREFIX "mssor-"
;;; :COURTESY Nelson H. F. Beebe :HIS bibtools.el :WAS `bibtex-split'
(defun mon-string-split-on-regexp (w-split-str at-regexp)
  "Return list of strings splitting W-SPLIT-STR AT-REGEXP.\n
This function is patterned after the awk split\(\) function.\n
:EXAMPLE\n\n\(mon-string-split-on-regexp \"split-on-split\" \"-split\"\)\n
:SEE-ALSO `mon-string-split', `mon-string-chop-spaces', `mon-string-sub-old->new',
`mon-string-position', `mon-string-index', `mon-string-replace-char'.\n►►►"
  
  (if ;; Either W-SPLIT-STR or AT-REGEXP is null or zero length return nil
      (or (mon-string-or-null-and-zerop w-split-str)
          (mon-string-or-null-and-zerop at-regexp))
      nil
    ;; Else split the string and return a list of strings.
    (let ((mssor-gthr nil) 
          (mssor-mtch 0))  
      (while (and (< mssor-mtch (length w-split-str)) 
                  (string-match at-regexp w-split-str mssor-mtch))
        (setq mssor-gthr 
              (nconc mssor-gthr 
                     (list (substring w-split-str mssor-mtch (match-beginning 0)))))
        (setq mssor-mtch (match-end 0)))
      (setq mssor-gthr (nconc mssor-gthr (list (substring w-split-str mssor-mtch))))
      mssor-gthr)))
;;
;;; :TEST-ME (mon-string-split-on-regexp "split-on-split" "-split")

;;; ==============================
;;; ;PREFIX "msrc-"
;;; :CREATED <Timestamp: #{2010-01-30T15:07:18-05:00Z}#{10046} - by MON KEY>
(defun mon-string-replace-char (from-char target-string)
  "Return TARGET-STRING with all instances of FROM-CHAR removed.\n
Signal and error if either TARGET-STRING or FROM-CHAR evaluate non-nil for
`stringp' and `chararacterp' respectively.\n
:EXAMPLE\n
\(mon-string-replace-char 0 \"\x0I'm\x0 an\x0 ugly\x0 string.\")\n
:SEE-ALSO `subst-char-in-string', `mon-string-from-hex-list', 
`mon-string-to-hex-string', `mon-help-char-representation'.\n►►►"
  (if (and (characterp from-char) (stringp target-string))
      (let ((msrc-ts (append target-string nil)))
        (setq msrc-ts (apply 'string (remq from-char msrc-ts))))
    (error 
     (concat ":FUNCTION `mon-string-replace-char' "
             "-- arg FROM-CHAR not a valid char or TARGET-STRING not a string"))))
;;
;;; :TEST-ME (mon-remove-char-in-string 0 "\x0I'm\x0 an\x0 ugly\x0 string.")

;;; ==============================
;;; :PREFIX "msson-"
;;; :COURTESY Nelson H. F. Beebe :HIS bibtools.el :WAS `melvyl-sub'
;;; :CREATED <Timestamp: 2009-08-03-W32-1T10:26:52-0400Z - by MON KEY>
(defun mon-string-sub-old->new (old-str new-str cpy-str)
  "Return copy of CPY-STR with first occurrence of OLD-STR substituted by NEW-STR.\n
Signal an error when an arg does not satisfy `stringp'.\n
:EXAMPLE\n\n\(mon-string-sub-old->new \"old\" \"new\" \"old old new\"\)\n
:SEE-ALSO `mon-string-split-on-regexp', `mon-string-chop-spaces',
`mon-string-position', `mon-string-index', `mon-string-replace-char'.\n►►►"
  (let ((msson-itr 0))
    (and (or (stringp old-str)
             (error 
              (mon-error-string-err-format  "mon-string-sub-old->new" "old-str" old-str)))
         (or (stringp new-str)
             (error 
              (mon-error-string-err-format  "mon-string-sub-old->new" "new-str" new-str)))
         (or (stringp cpy-str)
             (error 
              (mon-error-string-err-format  "mon-string-sub-old->new" "cpy-str" cpy-str))
             ))
    (while (and 
            (< msson-itr (1+ (- (length cpy-str) (length old-str))))
            (not 
             (string-equal 
              old-str 
              (substring cpy-str msson-itr (+ msson-itr (length old-str))))))
      (setq msson-itr (1+ msson-itr)))
    (if (and 
         (< msson-itr (1+ (- (length cpy-str) (length old-str))))
         (string-equal old-str (substring cpy-str msson-itr (+ msson-itr (length old-str)))))
        (concat (substring cpy-str 0 msson-itr) new-str
                (substring cpy-str (+ msson-itr (length old-str)) (length cpy-str)))
      cpy-str)))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (string-equal (mon-string-sub-old->new"old" "new" "old old new") "new old new")
;; | (not (ignore-errors (mon-string-sub-old->new "old" 'make-new-signal "old old new")))
;; | (not (ignore-errors (mon-string-sub-old->new 'make-old-signal "new" "old old new")))
;; | (not (ignore-errors (mon-string-sub-old->new "old" "new" 'make-copy-signal)))
;; `----

;;; ==============================
;;; :PREFIX "msr-"
;;; :COURTESY Jared D. :WAS `string-repeat'
;;; :SEE (URL `http://curiousprogrammer.wordpress.com/2009/07/26/emacs-utility-functions/')
;;; :MODIFICATIONS <Timestamp: #{2009-08-19T20:13:32-04:00Z}#{09344} - by MON KEY>
(defun mon-string-repeat (rpt-str rpt-n &optional insrtp w-spc intrp)
  "Return the string RPT-STR RPT-N times.\n
When optional INSRTP is non-nil or called-interactively insert STR at point.
Does not move point. 
When W-SPC is non-nil return string with whitespace interspersed.\n
:EXAMPLE\n\(mon-string-repeat \"bubba\" 3 nil t\)\n
:SEE-ALSO `mon-insert-string-ify', `mon-string-incr', 
`mon-insert-string-n-fancy-times', `mon-insert-string-n-times',
`mon-string-replace-char'.\n►►►"
  (interactive 
   (list 
    (replace-regexp-in-string "[\\[:space:]]+$" ""  ;; :WAS "[[:space:]]+$" "" 
                              (read-string  (concat ":FUNCTION `mon-string-repeat' "
                                                    "-- string to repeat: ")))
    (read-number (concat ":FUNCTION `mon-string-repeat' "
                         "-- times to repeat: "))
    nil
    (yes-or-no-p (concat ":FUNCTION `mon-string-repeat' "
                         "-- with whitespace: "))))
  (let ((msr-retval ""))
    (dotimes (msr-i rpt-n)
      (if w-spc 
          (setq msr-retval (concat msr-retval rpt-str " "))
        (setq msr-retval (concat msr-retval rpt-str))))
    (if (or insrtp intrp)
        (save-excursion (insert msr-retval)))
    msr-retval))
;;
;;; :TEST-ME (mon-string-repeat "bubba" 3)
;;; :TEST-ME (mon-string-repeat "bubba" 3 t)
;;; :TEST-ME (mon-string-repeat "bubba" 3 t t)
;;; :TEST-ME (mon-string-repeat "bubba" 3 nil t)
;;; :TEST-ME (call-interactively 'mon-string-repeat) 

;;; ==============================
;;; :PREFIX "mssl-"
;;; :COURTESY Drew Adams :HIS strings.el
;;; :RENAMED `mon-split-string-line' -> `mon-string-split-line'
;;; :MODIFICATIONS <Timestamp: #{2009-09-23T18:49:22-04:00Z}#{09393} - by MON>
;;; :MODIFICATIONS <Timestamp: #{2010-01-11T23:34:36-05:00Z}#{10021} - by MON>
(defun mon-string-split-line (&optional w-buffer insrtp intrp)
  "Return current line of text in W-BUFFER as a string.\n
When INSRTP is non-nil or called interactively insert return string at point.\n
Does not move-point.\n
:SEE-ALSO `mon-line-strings-qt-region', `mon-line-strings-to-list',
`mon-stringify-list', `mon-insert-string-ify', `mon-line-drop-in-words',
`mon-string-ify-current-line',`mon-word-get-list-in-buffer',
`mon-string-replace-char'.\n►►►"
  (interactive "i\ni\np")
  (let ((mssl-splt-str-s)
        (mssl-splt-str-e)
        (mssl-splt-str))  
    ;; :WAS (setq w-buffer (or w-buffer (current-buffer)))
    ;;       (save-excursion (set-buffer w-buffer)
    (save-excursion    
      (with-current-buffer (if w-buffer (get-buffer w-buffer) (current-buffer))
        (setq mssl-splt-str
              ;; :WAS (buffer-substring-no-properties 
              ;;  (progn (end-of-line 1) (setq mssl-splt-str-e (point)))
              ;;  (progn (beginning-of-line 1) (setq mssl-splt-str-s (point)))) )))
              (mon-buffer-sub-no-prop 
               (progn (end-of-line 1) (setq mssl-splt-str-e (point)))
               (progn (beginning-of-line 1) (setq mssl-splt-str-s (point)))))))
    (if (or insrtp intrp)
        (if (not buffer-read-only)      
            (save-excursion (prin1 mssl-splt-str (current-buffer)))
          (prin1 mssl-splt-str))
      mssl-splt-str)))

;;; ==============================
;;; :PREFIX "mssc-"
;;; :NOTE fashioned after `mail-parse-comma-list':SEE lisp/mail/mail-utils.el 
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-21T14:18:57-04:00Z}#{10382} - by MON KEY>
(defun mon-string-split-commas (start end &optional insrtp intrp)
  "Split the buffer region into a list of tokens separated by commas.\n
Whitespace before or after tokens is ignored, but whitespace within tokens is
kept.\n
When optional INSRTP is non-nil or called-interactively insert list of results
at point.\n
:EXAMPLE\n\n\(with-temp-buffer 
  \(save-excursion 
    \(insert \(mapconcat #'identity
                       '\(\"  aiss,\\taiss s,s,s siss, fms,\"
                         \"aiss,aiss\\ts,s\\r,s siss, fms,\\n\"
                         \"aiss,aiss\\fs,s,s siss, fms,\"\) \"\\n\"\)\)\)
  \(mon-string-split-commas \(buffer-end 0\) \(buffer-end 1\)\)\)\n
:SEE-ALSO 
`mon-string-csv-regexp', `mon-string-csv-rotate', `mon-string-spread',
`mon-string-replace-char', `mon-string-chop-spaces', `mon-string-splice-sep',
`mon-string-split-and-unquote', `mon-string-upto-index'.\n►►►"
  (interactive "r\np")
  (let (mssc-gthr mssc-beg)
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char start)
        (skip-chars-forward " \t\n\f\r")
        (while (not (eobp))
          (setq mssc-beg (point))
          (skip-chars-forward "^,")
          (skip-chars-backward " \t\n\f\r")
          (setq mssc-gthr
                (cons ;; :WAS (buffer-substring-no-properties mssc-beg (point))
                 (mon-buffer-sub-no-prop mssc-beg (point)) mssc-gthr))
          (skip-chars-forward "^,")
          (skip-chars-forward ", \t\n\f\r"))
        (widen)))
    (if (or insrtp intrp)
        (prin1 mssc-gthr (current-buffer))
      mssc-gthr)))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |
;; | (with-temp-buffer 
;; |   (save-excursion 
;; |     (insert (mapconcat #'identity
;; |                        '("  aiss,\taiss s,s,s siss, fms,"
;; |                          "aiss,aiss\ts,s\r,s siss, fms,\n"
;; |                          "aiss,aiss\fs,s,s siss, fms,") "\n")))
;; |   (mon-string-split-commas (buffer-end 0) (buffer-end 1)))
;; |
;; `----

;;; ==============================
;;; :PREFIX "mscl-"
;;; :MODIFICATIONS <Timestamp: #{2009-10-15T18:19:18-04:00Z}#{09424} - by MON KEY>
;;; Adjust for compile Warning: `mapcar' called for effect; use `mapc' - so using it.
;;; :CREATED <Timestamp: Sunday May 31, 2009 @ 03:08.46 PM - by MON KEY>
(defun mon-string-ify-current-line (&optional intrp split-on delim)
  "Return line at point as a list of strings.\n
When non-nil split-on is a string which should be split on.
When non-nil delim is a delimter to be concatenated to _front_ of each string. 
Called interacively kills current line replacing with string per-word
unless in an unreadable buffer where just retruns.
Neither SPLIT-ON nor DELIM have an effect when Invoked interactively.\n
:EXAMPLE
\(mon-string-ify-current-line\) split me to a list of strings
\(mon-string-ify-current-line nil \"s\" \"S\"\) split me to a list of strings
\(mon-string-ify-current-line nil nil \"|\"\) split me to a list of strings\n\n
:SEE-ALSO `mon-line-strings-qt-region', `mon-line-strings-to-list',
`mon-string-ify-list', `mon-insert-string-ify', `mon-string-split-line',
`mon-line-drop-in-words', `mon-word-get-list-in-buffer',
`mon-string-replace-char'.\n►►►"
  (interactive "p")
  (let* ((mscl-str (if split-on " "))
	 (mscl-dlm (cond (delim delim)
		    ((not delim)
		     (if intrp  "\""  ""))))
	 (mscl-ss (split-string (mon-string-split-line) split-on t)))
    (cond ((and intrp (not buffer-read-only))
	   (save-excursion
	     (progn 
	       (kill-line)
               ;; :WAS (mapcar '(lambda (mscl-L-1) 
               ;;                (princ (format "%s%s%s " mscl-dlm mscl-L-1 mscl-dlm) (current-buffer))) mscl-ss)
               (mapc #'(lambda (mscl-L-1) 
                         (princ (format "%s%s%s " mscl-dlm mscl-L-1 mscl-dlm) (current-buffer))) mscl-ss)
	       (delete-char -1))) mscl-ss)
	  ((and intrp buffer-read-only)
	   (progn
	     (kill-new (format "%S" mscl-ss))
	     (message (concat ":FUNCTION `mon-string-ify-current-line' " 
                              "-- buffer is read only, line split is on kill ring\n %S")
                      mscl-ss)))
	  ((and (not intrp) mscl-dlm)
	   (let (mscl-ss2)
             (setq mscl-ss2 nil)
	     (mapc #'(lambda (mscl-L-2) (setq mscl-ss2 (cons (format "%s%s" mscl-dlm mscl-L-2) mscl-ss2))) mscl-ss)
       	     ;; :WAS (mapcar '(lambda (mscl-L-2) (setq mscl-ss2 (cons (format "%s%s" mscl-dlm mscl-L-2) mscl-ss2)))mscl-ss)
	     mscl-ss2))
	  (t mscl-ss))))
;;
;;; :TEST-ME (mon-string-ify-current-line) ;split me to a list of strings
;;; :TEST-ME (mon-string-ify-current-line nil \"s\" \"S\"\) split me to a list of strings
;;; :TEST-ME (mon-string-ify-current-line nil nil \"|\"\) split me to a list of strings

;;; ==============================
;;; :PREFIX "mls-"
;;; :CREATED <Timestamp: #{2009-12-09T16:14:41-05:00Z}#{09503} - by MON>
(defun mon-line-strings (start end &optional insrtp intrp)
  "Return lines of region from START to END as strings.\n
Each line is replaced with a quoted string.
When called-interactively or INSRTP is non-nil replace region with strings and 
move point to START.\n
:EXAMPLE\n(mon-help-overlay-for-example 'mon-line-strings 5 'line)\n
►\nHassan-i Sabbah\nTristan and Iseult\nBroder Rusche
Pier Gerlofs Donia\nBöŏvarr Bjarki\n◄\n
:SEE-ALSO `mon-line-strings-to-list', `mon-line-strings-region',
`mon-line-strings-region-delimited',
`mon-line-strings-qt-region',`mon-line-drop-in-words',
`mon-string-ify-list',`mon-string-ify-current-line'.\n►►►"
  (interactive "r\ni\np")
  (let ((mls-str-beg (make-marker))
        (mls-str-end (make-marker))
        (mls-ln-str))
    (set-marker mls-str-beg start)
    (set-marker mls-str-end end)
    (setq mls-ln-str ;; :WAS (buffer-substring-no-properties mls-str-beg mls-str-end))
          (mon-buffer-sub-no-prop mls-str-beg mls-str-end))
    (setq mls-ln-str
          (with-temp-buffer 
            (insert mls-ln-str)
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            (while (search-forward-regexp "^\\(.*\\)$" nil t)
              (replace-match "\"\\1\""))
            ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))
            (mon-buffer-sub-no-prop)))
      (if (or insrtp intrp)
          (progn
            (delete-region mls-str-beg mls-str-end)
            (insert mls-ln-str)
            (goto-char mls-str-beg))
          mls-ln-str)))
;;
;;; :TEST-ME
;;; (let ((legs)
;;;       (legb (1+ (search-forward-regexp "►")))
;;;       (lege (- (search-forward-regexp "◄") 2)))
;;;   (setq legs (mon-line-strings legb lege)))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |►
;; |Hassan-i Sabbah
;; |Tristan and Iseult
;; |Broder Rusche
;; |Pier Gerlofs Donia
;; |Böŏvarr Bjarki
;; |◄
;; `----

;;; ==============================
;;; :PREFIX "mlsr-"
;;; :CREATED <Timestamp: #{2009-12-08T12:36:48-05:00Z}#{09502} - by MON>
(defun mon-line-strings-region (start end &optional insrtp intrp)
  "Return each line of region as a string followed by a `\n'.
When called-interactively or INSRTP is non-nil insert strings at point.
Does not move point.\n
Use with concat for formated indentation in source.\n
:EXAMPLE\n\(mon-help-overlay-for-example 'mon-line-strings-region 4 'line)\n
►\nI-will-be-a-string\nI too will be a string.\nMe as well.
More stringification here\n◄\n
:SEE-ALSO `mon-line-strings', `mon-line-strings-to-list',
`mon-line-strings-region-delimited', `mon-line-strings-bq-qt-sym-bol',
`mon-string-ify-list', `mon-string-ify-current-line', `mon-string-split-line',
`mon-line-drop-in-words', `mon-cln-up-colon'.\n►►►"
  (interactive "r\ni\np")
  (let ((mlsr-ln-rgn-beg (make-marker))
        (mlsr-ln-rgn-end (make-marker))
        mlsr-lns-qtd)
    (set-marker mlsr-ln-rgn-beg start)
    (set-marker mlsr-ln-rgn-end end)
    (setq mlsr-lns-qtd ;; :WAS (buffer-substring-no-properties mlsr-ln-rgn-beg mlsr-ln-rgn-end))
          (mon-buffer-sub-no-prop mlsr-ln-rgn-beg mlsr-ln-rgn-end))
    (setq mlsr-lns-qtd 
          (with-temp-buffer 
            (insert mlsr-lns-qtd)
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            (while (search-forward-regexp "^\\(.*\\)$" nil t)
              (replace-match "\"\\1\\\\n\"" t)) ;; Do not alter case.
            ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))
            (mon-buffer-sub-no-prop)))
    (if (or insrtp intrp)
        (save-excursion 
          (delete-region mlsr-ln-rgn-beg mlsr-ln-rgn-end)
          (goto-char mlsr-ln-rgn-beg)
          (insert mlsr-lns-qtd))
        mlsr-lns-qtd)))
;;
;;; :TEST-ME (mon-line-strings-region
;;;           (1+ (search-forward-regexp "►")) (- (search-forward-regexp "◄") 2))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |►
;; |I-will-be-a-string
;; |I too will be a string.
;; |Me as well.
;; |More stringification here
;; |◄
;; `----

;;; ==============================
;;; :PREFIX "mlsqr-"
;;; :CREATED <Timestamp: #{2009-10-23T16:16:47-04:00Z}#{09435} - by MON KEY>
(defun mon-line-strings-qt-region (start end &optional insrtp intrp)
  "Return symbols at each BOL in region wrapped in double-quotes `\"'.\n
When INSRTP is non-nil or called-interactively replace active region and
move point to region-beginning.\n
Line's symbol should be without trailing whitespace.\n
If whitespace is present at EOL it is destructively removed.\n
When following characters are at BOL no replacement is peformed on symbol:
  ;( ) ` ' \" Likewise, do not replace if \" or ' follows symbol.\n
:NOTE will not quote symbols containing whitespace.\n
:EXAMPLE\n\n\(mon-help-overlay-for-example 'mon-line-strings-qt-region 4 'line\)
\(princ (mon-line-strings-qt-region
 \(1+ \(search-forward-regexp \"►\"\)\) \(- \(search-forward-regexp \"◄\"\) 2\)\)\)
\n►\nI-will-be-a-string\n\"I-am-almost-a-string\nI-am-a-half-string\"
I-am-not-a-string'\n◄\n 
:SEE-ALSO `mon-line-strings-bq-qt-sym-bol', `mon-line-strings-pipe-bol',
`mon-line-strings-region-delimited', `mon-cln-up-colon',
`mon-line-strings',`mon-line-strings-indent-to-col', `mon-line-strings-to-list',
`mon-line-strings-region', `mon-string-ify-list', `mon-string-ify-current-line',
`mon-string-split-line', `mon-line-drop-in-words'.\n►►►"
  (interactive "r\ni\np")
  (let (mlsqr-rtn)
    (setq mlsqr-rtn (mon-buffer-sub-no-prop start end))
    (setq mlsqr-rtn
          (with-temp-buffer 
            (insert mlsqr-rtn)
            (delete-trailing-whitespace)
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            (while (not (= (line-end-position) (mon-g2be 1 t))) 
              (beginning-of-line)            
              (when ;; Use `looking-at-p' here instead?
                  (looking-at "^\\([^;`'()\"\\[:blank:]]\\)\\([\\[:graph:]]+[^\"']\\)$")
                (replace-match (concat "\"" (match-string-no-properties 0) "\"")))
              (forward-line 1)
              (when (and (= (line-end-position) (mon-g2be 1 t) )
                         (looking-at ;; use `looking-at-p' here instead?
                          "^\\([^;`'()\\[:blank:]]\\)\\([\\[:graph:]]+\\([^\"']\\)\\)$"))
                (replace-match (concat "\"" (match-string-no-properties 0) "\""))))
            ;; :WAs (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))
            (mon-buffer-sub-no-prop)))
    (if (or insrtp intrp)
        (save-excursion (delete-region start end) (insert mlsqr-rtn))
        mlsqr-rtn)))
;;
;;; :TEST-ME
;;; (princ (mon-line-strings-qt-region
;;;  (1+ (search-forward-regexp "►")) (- (search-forward-regexp "►") 2)))
;; ,---- :UNCOMMENT-TO-TEST first case should pass, the rest fail
;; |►
;; |I-will-be-a-string
;; |"I-am-almost-a-string
;; |I-am-a-half-string"
;; |I-am-not-a-string'
;; |►
;; `----

;;; ==============================
;;; :PREFIX "mlsbqsb-"
;;; :MODIFICATIONS <Timestamp: #{2009-10-23T18:04:19-04:00Z}#{09435} - by MON KEY>
;;; :MODIFICATIONS <Timestamp: #{2009-10-16T14:30:28-04:00Z}#{09425} - by MON KEY>
;;; Updated to find with trailing symbols or (and EOL (not WSP)).
;;; :CREATED <Timestamp: #{2009-10-06T14:45:00-04:00Z}#{09412} - by MON KEY>
(defun mon-line-strings-bq-qt-sym-bol (start end &optional insrtp intrp)
  "Return symbols at BOL in region START to END wrapped in backquote and quote.\n
When INSRTP is non-nil or called-interactively replace active region and
move point to region-beginning.\n
When following characters are at BOL no replacement is peformed on symbol:\n
^ ; , . ( ) < > ` ' # ► \| Likewise, do not replace if ' follows symbol.\n
:EXAMPLE\n\n(mon-line-strings-bq-qt-sym-bol
 \(1+ \(search-forward-regexp \"►\"\)\) \(- \(search-forward-regexp \"◄\"\) 2\)\)\n
►\ncall-next-method &rest replacement-args
call-next-method &rest replacement-args
`call-next-method &rest replacement-args
call-next-method' &rest replacement-args\n◄\n
\(mon-line-strings-bq-qt-sym-bol-TEST\)\n
:SEE-ALSO `mon-line-strings-bq-qt-sym-bol-TEST', `mon-line-strings',
`mon-line-strings-qt-region', `mon-cln-up-colon',
`mon-line-strings-region-delimited', `mon-line-strings-pipe-bol',
`mon-line-strings-indent-to-col', `mon-line-strings-to-list',
`mon-line-strings-region', `mon-string-ify-list', `mon-string-ify-current-line',
`mon-string-split-line', `mon-line-drop-in-words'.\n►►►"
  (interactive "r\ni\np")
  (let (mlsbqsb-rtn)
    (setq mlsbqsb-rtn ;; :WAS (buffer-substring-no-properties start end))
          (mon-buffer-sub-no-prop start end))
    (setq mlsbqsb-rtn
          (with-temp-buffer 
            (insert mlsbqsb-rtn)
            (mon-g2be -1) ;(goto-char (buffer-end 0))
            (while (not (= (line-end-position) (buffer-end 1)))
              (beginning-of-line)            
              (save-match-data
                (when (looking-at "^\\([^;,.()<>`'#► ]\\)[\\[:graph:]]+[^']$")
                  (replace-match (concat "`" (match-string-no-properties 0) "'"))))
              (forward-line 1)
              (save-match-data
                (when (and (= (line-end-position) (buffer-end 1))       
                           (looking-at "^\\([^;,.()<>`'#► ]\\)[\\[:graph:]]+[^' ]$"))
                  (replace-match  (concat "`" (match-string-no-properties 0) "'"))))
              (save-match-data
                (when (and (= (line-end-position) (buffer-end 1))
                           (looking-at "^\\([^;,.()<>`'#► ]\\)[\\[:graph:]]+[^' ]$"))
                  (replace-match  (concat "`" (match-string-no-properties 0) "'")))))
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            ;; :WAS            
            ;; (search-forward-regexp 
            ;;  "^\\([^;,.()<>`'#►\|\\[:blank:]][\\[:graph:]]+[^'\\[:blank:]]+\\)\\( \\)\\(.*\\)$" nil t) 
            ;;  (replace-match "`\\1'\\2\\3"))
            ;; :WAS "^\\([^;,.()<>`'#►\|\\[:blank:]]\\)\\([\\[:graph:]]+[^']\\)\\([^^']\\)\\([ ]\\{1,2\\}\\)\\(.*\\)$" nil t)
            ;;       (replace-match "`\\1\\2' \\5"))
            (while 
                (search-forward-regexp 
                 "^\\([^;,.()<>`'#►\|\\[:blank:]]\\)\\([\\[:graph:]]+[^']\\)\\([^^ ']\\)\\([ ]\\{1,2\\}\\)\\(.*\\)$" nil t)
              ;; ^^^^1^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^2^^^^^^^^^^^^^^^^^^^^^^^3^^^^^^^^^^4^^^^^^^^^^^^^^^^^5^^^^^
              (replace-match "`\\1\\2\\3' \\5"))
            ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))
            (mon-buffer-sub-no-prop)))
    (if (or insrtp intrp)
        (save-excursion (delete-region start end) (insert mlsbqsb-rtn))
        mlsbqsb-rtn)))


;;; ==============================
;;; :PREFIX "mlspb-"
;;; :CREATED <Timestamp: #{2009-12-02T11:58:40-05:00Z}#{09493} - by MON>
(defun mon-line-strings-pipe-bol (start end &optional insrtp intrp)
  "Return BOL in region START to END replaced with `| '.\n
When INSRTP is non-nil or called-interactively replace active region and
move point to region-beginning.\n
:EXAMPLE\n\(save-excursion\n \(mon-line-strings-pipe-bol
   \(1+ \(search-forward-regexp \"►\"\)\)
   \(- \(search-forward-regexp \"◄\"\) 2\)\)\)\n
►\n Craig Balding\n Emmanuel Bouillon\n Bernardo Damele Assumpcao Guimarase
 Jean-Paul Fizaine\n Rob Havelt\n Chris Wysopal\n◄\n 
:SEE-ALSO `mon-line-strings-pipe-to-col', `mon-line-strings-bq-qt-sym-bol', 
`mon-line-strings', `mon-line-strings-qt-region',  `mon-line-strings-region', 
`mon-line-strings-indent-to-col', `mon-line-strings-to-list'.\n►►►"
  (interactive "r\ni\np")
  (let ((mlspb-rgn-beg (make-marker))
        (mlspb-rgn-end (make-marker))
        mlspb-rplc)
    (set-marker mlspb-rgn-beg start)
    (set-marker mlspb-rgn-end end)
    (setq mlspb-rplc ;; :WAS (buffer-substring-no-properties mlspb-rgn-beg mlspb-rgn-end))
          (mon-buffer-sub-no-prop mlspb-rgn-end))
    (setq mlspb-rplc
          (with-temp-buffer 
            (insert mlspb-rplc)
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            (while (search-forward-regexp "^\\(.*\\)$" nil t)
              (replace-match "| \\1"))
            ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))
            (mon-buffer-sub-no-prop)))
      (if (or insrtp intrp)
          (save-excursion
            (delete-region mlspb-rgn-beg mlspb-rgn-end)
            (insert mlspb-rplc))
          mlspb-rplc)))
;;
;;; :TEST-ME (save-excursion (mon-line-strings-pipe-bol
;;;          (1+ (search-forward-regexp "►")) (- (search-forward-regexp "◄") 2)))
;;
;; ,---- :UNCOMMENT-TO-TEST
;; |►
;; | Craig Balding
;; | Emmanuel Bouillon
;; | Bernardo Damele Assumpcao Guimarase
;; | Jean-Paul Fizaine
;; | Rob Havelt
;; | Chris Wysopal
;; |◄
;; `----

;;; ==============================
;;; :PREFIX "mlsitc-"
;;; :CREATED <Timestamp: #{2009-12-02T11:58:40-05:00Z}#{09493} - by MON>
(defun mon-line-strings-indent-to-col (start end col-num &optional insrtp intrp)
  "Return region lines indented to column number COL-NUM.\n
When called-interactively with non-nil prefix arg COL return region indented to
col-numumn number. When prefix arg is nil prompt for COL-NUM.\n
When INSRTP is non-nil or called-interactively replace active region and
move point to region-beginning.\n
:NOTE following example used in conjunction with `mon-line-strings-pipe-bol'.\n
:EXAMPLE\n\(let \(\(rs \(1+ \(search-forward-regexp \"►\"\)\)\)
      \(re \(- \(search-forward-regexp \"◄\"\) 2\)\)\n      \(tmp\)\)
  \(setq tmp \(buffer-substring-no-properties rs re\)\)
  \(setq tmp \(with-temp-buffer \n              \(insert tmp\)
              \(mon-line-strings-pipe-bol \(buffer-end 0\) \(buffer-end 1\) t\)
              \(mon-line-strings-indent-to-col \(buffer-end 0\) \(buffer-end 1\) 7 t\)
              \(buffer-substring-no-properties \(buffer-end 0\) \(buffer-end 1\)\)\)\)
  tmp\)\n\n►\nCraig Balding\nEmmanuel Bouillon\nBernardo Damele Assumpcao Guimaraes
Jean-Paul Fizaine\nRob Havelt\nChris Wysopal\n◄\n
:SEE-ALSO `mon-line-indent-from-to-col', `mon-line-strings-pipe-to-col',
`mon-comment-divider->col', `mon-comment-lisp-to-col',
`mon-line-strings', `mon-string-fill-to-col',
`mon-line-strings-qt-region', `mon-line-strings-region', 
`mon-line-strings-bq-qt-sym-bol',`mon-line-strings-to-list'.\n►►►"
  (interactive "r\nP\ni\np")
  (let ((mlsitc-col-n (if (and intrp (not col-num))
                  (read-number "Indent to column number: ")
                  col-num))
        (mlsitc-rgn-beg (make-marker))
        (mlsitc-rgn-end (make-marker))
        mlsitc-rplc)
    (set-marker mlsitc-rgn-beg start)
    (set-marker mlsitc-rgn-end end)
    (setq mlsitc-rplc ;; :WAS (buffer-substring-no-properties mlsitc-rgn-beg mlsitc-rgn-end))
          (mon-buffer-sub-no-prop  mlsitc-rgn-end))
    (setq mlsitc-rplc
          (with-temp-buffer 
            (insert mlsitc-rplc)
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            (while (not (mon-line-eol-is-eob))
              (indent-line-to mlsitc-col-n)
              (line-move 1 t)
              (when (mon-line-eol-is-eob)
                (indent-line-to mlsitc-col-n)))
            ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))
            (mon-buffer-sub-no-prop)))
    (if (or insrtp intrp)
        (save-excursion
          (delete-region mlsitc-rgn-beg mlsitc-rgn-end)
          (insert mlsitc-rplc))
        mlsitc-rplc)))
;;
;;; :TEST-ME 
;;; (save-excursion 
;;;   (let ((rs (1+ (search-forward-regexp "►")))
;;;         (re (- (search-forward-regexp "◄") 2)))
;;;     (goto-char rs)
;;;     (mon-line-strings-pipe-bol rs re t)
;;;     (goto-char rs)
;;;     (mon-line-strings-indent-to-col rs re 7 t)))
;;
;; ,---- :UNCOMMENT-TO-TEST
;; ,►
;; |Craig Balding
;; |Emmanuel Bouillon
;; |Bernardo Damele Assumpcao Guimaraes
;; |Jean-Paul Fizaine
;; |Rob Havelt
;; |Chris Wysopal
;; |◄
;; `----

;;; ==============================
;;; :PREFIX "mliftc-"
;;; :NOTE Does not work for one line regions.
;;; :CREATED <Timestamp: #{2009-12-08T18:12:32-05:00Z}#{09502} - by MON>
(defun mon-line-indent-from-to-col (from-col to-col start end &optional intrp)
  "Indent to column starting FROM-COL identing TO-COL in region START to END.\n
When called-interactively prompt for column numer of FROM-COL and TO-COL.\n
:EXAMPLE\n
\(mon-with-inhibit-buffer-read-only
    \(let \(\(st-pnt \(make-marker\)\)
          \(nd-pnt \(make-marker\)\)
          \(fndr  #'\(lambda \(y\) \(search-forward-regexp y nil t\)\)\)\)
      \(save-excursion
        \(set-marker st-pnt \(funcall fndr \"^►\"\)\)
        \(set-marker nd-pnt \(funcall fndr \"◄$\"\)\)
        \(goto-char st-pnt\)
        \(mon-line-indent-from-to-col 24 32 st-pnt nd-pnt\)
        \(goto-char st-pnt\)
        \(mon-line-indent-from-to-col 46 58 st-pnt nd-pnt\)
        \(set-marker st-pnt nil\)
        \(set-marker nd-pnt nil\)\)\)\)\n
►emacsen.auto_apart     001           001
emacsen.rug_compat_42   00            00
emacsen.rug_compt_adorn 00            00       
emacsen.cache_empire    080           080      
emacsen.hashdelimiter   no-hash       no-hash
emacsen.rookie_romain   no value      no value◄\n
\(mon-line-indent-from-to-col-TEST\)\n
:NOTE Does not work for one line regions.\n
:SEE :FILE align.el for alternative approaches.\n
:ALIASED-BY `mon-indent-lines-from-to-col'\n
:SEE-ALSO `mon-line-strings-indent-to-col', `mon-line-strings-pipe-to-col',
`mon-string-fill-to-col', `mon-comment-divider->col', `mon-comment-lisp-to-col'.\n►►►"
  (interactive "i\ni\ni\ni\np")
  (let ((mliftc-frm-c (cond (from-col from-col)
                            ((or intrp t)
                             (read-number 
                              (concat ":FUNCTION `mon-line-indent-from-to-col' "
                                      "-- col to start from: ")
                              (car (posn-actual-col-row (posn-at-point)))))))
        (mliftc-to-c (cond (to-col to-col)
                           ((or intrp t)
                            (read-number (concat ":FUNCTION `mon-line-indent-from-to-col' "
                                                 "-- col to indent to: ")
                                         (car (posn-actual-col-row (posn-at-point)))))))
        (mliftc-beg-c (cond (start start)
                            ((region-active-p) (region-beginning))))
        (mliftc-end-c (cond (end end)
                            ((region-active-p) (region-end))))
        (mliftc-mrk-beg  (make-marker))
        (mliftc-mrk-end  (make-marker))
        (indent-wrk t))
    (set-marker mliftc-mrk-beg mliftc-beg-c)
    (set-marker mliftc-mrk-end mliftc-end-c)
    (progn 
      (goto-char mliftc-beg-c)
      ;; (line-move -1) ;; :TODO Add logic for the single lined region.
      (beginning-of-line))
    (while indent-wrk
      (move-to-column mliftc-frm-c)
      (indent-to-column mliftc-to-c)
      (cond ((< (line-number-at-pos (line-end-position 2)) (line-number-at-pos mliftc-mrk-end))
             (prog1  
                 (line-move 1 t) 
               (beginning-of-line)))
            ((>= (line-number-at-pos (line-end-position 2)) (line-number-at-pos mliftc-mrk-end))
             (progn  
               (line-move 1 t)
               (beginning-of-line) 
               (move-to-column mliftc-frm-c)
               (indent-to-column mliftc-to-c)
               (setq indent-wrk nil)))))))
;;
;;; :TEST-ME (mon-line-indent-from-to-col-TEST)

;;; ==============================
;;; :PREFIX "mld-"
;;; :COURTESY Pascal .J Bourguignon :WAS `dolines'
;;; :CHANGESET 1773 <Timestamp: #{2010-05-26T16:14:14-04:00Z}#{10213} - by MON KEY>
;;; :CREATED <Timestamp: #{2009-12-28T15:57:08-05:00Z}#{09531} - by MON KEY>
(defmacro* mon-line-dolines (start-end &body body)
  "Executes the body with START-END `destructoring-bind'ed to the start and
end of each line of the current-buffer in turn.\n
:EXAMPLE\n\(mon-line-dolines-TEST\)\n
:SEE (URL `http://lists.gnu.org/archive/html/help-gnu-emacs/2009-12/msg00614.html')\n
:SEE-ALSO `mon-line-dolines-TEST', `mon-line-dolines-setup-TEST'.\n►►►"
  (declare (indent 2) (debug t))
  (let ((mld-vline  (make-symbol "mld-vline"))
        (mld-sm     (make-symbol "mld-sm"))
        (mld-em     (make-symbol "mld-em")))
    (destructuring-bind (start-var end-var) start-end
      `(let ((,mld-sm (make-marker))
             (,mld-em (make-marker)))
         (unwind-protect
             ;; :WAS (progn
             (save-restriction
               (when (use-region-p) ;; (region-active-p) 
                 (narrow-to-region (region-beginning) (region-end)))
               (mon-g2be -1) ;; (goto-char (buffer-end 0))
               (while (< (point) (buffer-end 1))
                 (let ((,mld-vline (point)))
                   (set-marker ,mld-sm (point)) ;; (current-buffer)
                   (set-marker ,mld-em (goto-char (line-end-position))) ;; (current-buffer)
                   (let ((,start-var  (marker-position ,mld-sm))
                         (,end-var    (marker-position ,mld-em)))
                     ,@body)
                   (goto-char ,mld-vline)
                   (forward-line 1))))
           (set-marker ,mld-sm nil)
           (set-marker ,mld-em nil))
         nil))))

;;; ==============================
;;; :PREFIX "mlsptc-"
;;; :NOTE (length "=> TO-COLM-NUM-19-!")
;;; :CREATED <Timestamp: #{2009-12-09T15:07:13-05:00Z}#{09503} - by MON>
(defun mon-line-strings-pipe-to-col (start end &optional to-col insrtp intrp)
  "Return region's BOL piped and indented to column number.\n
When TO-COL is non-nil return region indented TO-COL, default column number 7.
When called-interactively or INSRTP is non-nil replace region.\n
:EXAMPLE\n\n\(let \(\(reb \(1+ \(search-forward-regexp \"►\"\)\)\)
      \(ree \(- \(search-forward-regexp \"◄\"\) 2\)\)\)
  \(momentary-string-display
   \(concat \"\\n\\n=> TO-THE-19th-COL-!\\n\\n\"
           \(mon-line-strings-pipe-to-col reb ree 19\)
           \"\\n\\n... and beyond ... :\)\\n\"\) \(point\)\)\)\n
\(mon-help-overlay-for-example 'mon-line-strings-pipe-to-col nil 'region 28\)\n
►\nWilliam Gibson\nBruce Sterling\nDan Brown\nNeal Stephenson\nLoyd Blankenship
Erik Gordon Corley\n◄\n
\(mon-line-strings-pipe-to-col-TEST\)\n
:SEE :FILE align.el for alternative approaches.\n
:SEE-ALSO `mon-line-strings-pipe-to-col-TEST', `mon-line-strings-pipe-bol',
`mon-line-strings-indent-to-col', `mon-line-strings',
`mon-line-indent-from-to-col', `mon-comment-divider->col',
`mon-comment-lisp-to-col'.\n►►►"
  (interactive "i\n\i\nP\ni\np")
  (let  ((mlsptc-rgn-beg (make-marker))
         (mlsptc-rgn-end (make-marker))
         mlsptc-tmp-pipe)
    (set-marker mlsptc-rgn-beg (cond (intrp (region-beginning)) ;; use-region-p
                                     (start start)))
    (set-marker mlsptc-rgn-end (cond (intrp (region-end)) ;; use-region-p
                                     (end end)))
    (setq mlsptc-tmp-pipe (mon-buffer-sub-no-prop mlsptc-rgn-beg mlsptc-rgn-end))
    (setq mlsptc-tmp-pipe 
          (with-temp-buffer 
            (insert mlsptc-tmp-pipe)
            (mon-line-strings-pipe-bol (mon-g2be -1 t) (mon-g2be  1 t) t)
            (mon-line-strings-indent-to-col (mon-g2be -1 t) (mon-g2be  1 t)
                                            (if to-col to-col 7) t)
            (untabify (mon-g2be -1 t) (mon-g2be  1 t))
            (mon-buffer-sub-no-prop)))
    (prog1 
        (if (or insrtp intrp)
            (save-excursion 
              (delete-region mlsptc-rgn-beg mlsptc-rgn-end)
              (mon-g2be mlsptc-rgn-beg)
              (insert mlsptc-tmp-pipe))
          mlsptc-tmp-pipe)
      (set-marker mlsptc-rgn-beg nil)
      (set-marker mlsptc-rgn-end nil))))
;;
;;; :TEST-ME (mon-line-strings-pipe-to-col-TEST)


(declare-function mon-cln-trail-whitespace "mon-replacement-utils")
;;; ==============================
;;; :PREFIX "mlstl-"
;;; :CREATED <Timestamp: #{2009-09-13T09:30:42-04:00Z}#{09377} - by MON>
(defun mon-line-strings-to-list (start end &optional w-cdr w-wrap insrtp intrp)
  "Return region's lines as list, each list elt contains string content of line.\n
Region between START END should be passed as a line per string/symbol.\n
Strips trailing whitespace. Does not preseve tabs converts them to spaces.\n
When W-CDR is non-nil or called-interactively with prefix-arg return each
element of list with an empty string as cdr.\n
Optional arg W-WRAP is a string to put in teh car position of returned list.
Default is:\n\n  \";; defvar defconst let let* setq\"\n
:EXAMPLE\n
Mon Key\nMON\nMon\nMON KEY\n\n;; When W-CDR nil:
=>\((\"Mon Key\"\)\n   \(\"MON\"\)\n   \(\"Mon\"\)\n   \(\"MON KEY\"\)\)\n
;; When W-CDR non-nil:\n=>\(\(\"Mon Key\" \"\"\)\n   \(\"MON\" \"\"\)
   (\"Mon\" \"\"\)\n   \(\"MON KEY\" \"\"\)\)\n
\(mon-line-strings-to-list-TEST t nil\)\n
\(mon-line-strings-to-list-TEST\)\n
:SEE-ALSO `mon-line-strings-to-list-TEST', `mon-line-strings-one-list',
`mon-line-strings-region-delimited', `mon-line-string-rotate-name',
`mon-line-string-rotate-namestrings', `mon-line-string-unrotate-namestrings',
`mon-line-string-rotate-namestrings-combine', `mon-make-lastname-firstname',
`mon-make-name-lispy', `mon-make-names-list', `mon-string-ify-current-line',
`mon-line-strings-qt-region', `mon-string-ify-list', `mon-string-split-line',
`mon-line-strings', `mon-line-strings-region', `mon-line-drop-in-words'.\n►►►"
  ;; (<REGION> &optional <W-CDR> <W-WRAP> <INSRTP> <INTRP>)
  (interactive "r\ni\nP\ni\np") ;; (interactive "r\nP\ni\ni\np") make w-cdr the pref arg
  (let ((mlstl-rgn-beg start)
        (mlstl-rgn-end end)
        (w-wrap-hist '(";; defvar defconst let let* setq" 
                       "let " "let* " "setq " "setf "
                       "defvar " "defconst "))
        mlstl-rgn-lst)
    (when (and intrp w-wrap)       
      (setq w-wrap
            (read-from-minibuffer 
             (concat ":FUNCTION `mon-line-strings-to-list' " 
                     "-- string to wrap return value with: ") ;prompt
             ;; init  ;keymap  ;read   ;history         ;default
             nil    nil      nil      '(w-wrap-hist . 0))) ;; w-wrap-hist  
      ;; exited the mini-buffer empty handed 
      (unless (or (mon-string-or-null-and-zerop w-wrap)
                  (not history-add-new-input))
        (add-to-history minibuffer-history w-wrap)))
    ;; non interactive and w-wrap was non-nil but not string
    (when (and w-wrap (not intrp)) 
      (setq w-wrap
            (or (and (stringp w-wrap) w-wrap)
                ;; Maybe should signal here instead?
                (and (not (stringp w-wrap)) (car w-wrap-hist)))))
    (setq mlstl-rgn-lst (mon-buffer-sub-no-prop mlstl-rgn-beg mlstl-rgn-end))
    (save-excursion
      (setq mlstl-rgn-lst (with-temp-buffer
                            (insert mlstl-rgn-lst) 
                            (untabify (point-min) (point-max))
                            (mon-cln-trail-whitespace) ;; (point-min) (point-max))
                            (mon-g2be -1) ;; (goto-char (point-min))
                            (while (search-forward-regexp "^\\(.*\\)$" nil t)
                              (if w-cdr 
                                  (replace-match "(\"\\1\" \"\")" t)
                                (replace-match "(\"\\1\")" t)))
                            (mon-g2be 1)
                            (if w-wrap (insert "))") (insert ")"))
                            (mon-g2be -1)
                            (if w-wrap
                                (save-excursion 
                                  ;; ";; defvar defconst let let* setq"
                                  (insert "(" w-wrap "\n'(")
                                  ;; (when (or intrp insrtp)
                                  ;;   (with-syntax-table emacs-lisp-mode-syntax-table (indent-pp-sexp 1)))
                                  )
                              (insert "("))
                            (mon-buffer-sub-no-prop))))
    (if (or insrtp intrp)
        (progn
          (save-excursion 
            (delete-region mlstl-rgn-beg mlstl-rgn-end)
            (insert mlstl-rgn-lst))
          (with-syntax-table emacs-lisp-mode-syntax-table (indent-pp-sexp 1)))
      mlstl-rgn-lst)))

;;; ==============================
;;; :PREFIX "mlsol-"
;;; :CREATED <Timestamp: #{2010-01-17T12:48:16-05:00Z}#{10027} - by MON>
(defun mon-line-strings-one-list (start end &optional insrtp intrp)
  "Return lines in region from START to END as a list of strings.\n
When optional arg insrtp is non-nil or called-interactively replace region with
the list. Does not move point.\n
:SEE-ALSO `mon-line-strings-to-list', `mon-line-strings',
`mon-line-strings-region-delimited', `mon-string-ify-list'.\n►►►"
  (interactive "r\ni\np")
  (let ((mlsol-lst (mon-buffer-sub-no-prop start end)))
    ;; :WAS (let (mlsol-lst) (setq mlsol-lst (mon-buffer-sub-no-prop start end))
    (with-temp-buffer      
      (insert mlsol-lst)
      (setq mlsol-lst (mon-line-strings (buffer-end 0) (buffer-end 1))))
    (if (or insrtp intrp)
        (save-excursion 
          (goto-char start)
          (delete-region start end)
          ;; :NOTE `prin1' is probably what is wanted here but the existing caller
          ;; `mon-word-get-list-in-buffer' appears to rely on (and work OK) with `princ'
          ;; consider adding an optional arg?
          (princ (list mlsol-lst) (current-buffer)))
      mlsol-lst)))


;;; ==============================
;;; :PREFIX "mlsrn-"
;;; :CREATED <Timestamp: #{2009-09-19T13:53:29-04:00Z}#{09386} - by MON>
(defun mon-line-string-rotate-name (name-str-or-elt &optional as-list)
  "Rotate the namestring NAME-STR-OR-ELT.\n
Return the last whitespace delimited name in string at head top of string.\n
Remaining names in string returned inside a parenthetical group.\n
NAME-STR-OR-ELT is a string containing one nameform or one elt listsame 
holding a string containing one nameform.\n
:EXAMPLE\n\(mon-line-string-rotate-name \"István Tisza\")\n
\(mon-line-string-rotate-name '\(\"Stanisław Marcin Ulam\")\)\n
\(mon-line-string-rotate-name '\(\"Dmitri Pavlovich Romanov\")\)\n
\(mapconcat #'\(lambda \(x\) \(mon-line-string-rotate-name x\)\)
           '\(\(\"George Charles Aid\"\)\(\"Thomas Pollock Anshutz\"\)
             \(\"Cecilia Beaux\"\)\(\"Frank Weston Benson\"\)
             \(\"Thomas Hart Benton\"\)\(\"Saul Bernstein\"\)
             \(\"George Biddle\"\)\(\"Gutzon Borglum\"\)\)
           \"\\n\"\)\n
\(mon-line-string-rotate-name-TEST\)\n
:SEE-ALSO `mon-line-strings', `mon-line-strings-to-list',
`mon-line-string-rotate-namestrings', `mon-line-string-unrotate-namestrings',
`mon-line-string-rotate-namestrings-combine', `mon-make-lastname-firstname',
`mon-make-name-lispy', `mon-make-names-list', `mon-line-strings-region',
`mon-line-string-rotate-name-TEST'.\n►►►"
  (let* ((mlsrn-nm-elt (if (atom name-str-or-elt)
                        name-str-or-elt
                      (let ((mlsrn-hd name-str-or-elt))
                        (while (consp mlsrn-hd)
                          (setq mlsrn-hd (car mlsrn-hd)))
                        mlsrn-hd)))
         (mlsrn-splt (split-string mlsrn-nm-elt))
         (mlsrn-splt-len (length mlsrn-splt))
         (mlsrn-last-in (cond ((= mlsrn-splt-len 1) (format "%s" (car mlsrn-splt)))
                        ((> mlsrn-splt-len 1) 
                         (let ((rot-split 
                                (append (edmacro-subseq mlsrn-splt -1)
                                        (edmacro-subseq mlsrn-splt 0 (1- mlsrn-splt-len)))))
                           (format "%s %s" (car rot-split) (cdr rot-split))))
                        ((= mlsrn-splt-len 0) nil))))
    (if as-list (list mlsrn-last-in) mlsrn-last-in)))
;;
;;; :TEST-ME (mon-line-string-rotate-name-TEST)

;;; ==============================
;;; :PREFIX "mlsrn-"
;;; :CREATED <Timestamp: #{2009-09-22T16:39:59-04:00Z}#{09392} - by MON KEY>
(defun mon-line-string-rotate-namestrings (start end &optional as-strings insrtp intrp)
  "Rotate namestrings in region.\n
Namestring are formatted one name per line Firstname Middlenames Lastname.\n
Return Lastname (Firstname Middlename).\n
When AS-STRINGS is non-nil retrun namestrings as strings as with prin1.\n
When INSRTP is non-nil or called-interactively insert rotated names at point.\n
Does not move point.\n
:SEE-ALSO `mon-line-string-unrotate-namestrings', `mon-line-string-rotate-name', 
`mon-line-string-rotate-namestrings-combine', `mon-line-strings-to-list',
`mon-make-lastname-firstname', `mon-make-names-list', `mon-make-name-lispy',
`mon-line-strings-region'.\n►►►"
  (interactive "r\nP\ni\np")
  (let ((mlsrn-rot-nm-beg start)
	(mlsrn-rot-nm-end  end)
	mlsrn-get-nm-strs)
    (setq mlsrn-get-nm-strs 
	  (mapconcat #'(lambda (mlsrn-L-1) 
                         (mon-line-string-rotate-name (car mlsrn-L-1))) 
     		     (read (mon-line-strings-to-list mlsrn-rot-nm-beg mlsrn-rot-nm-end)) "\n"))
    (if (or insrtp intrp)
        (progn
          (save-excursion
            (delete-region mlsrn-rot-nm-beg mlsrn-rot-nm-end)
            (if as-strings
                (mapc #'(lambda (mlsrn-L-2) 
                          (newline) 
                          (prin1 mlsrn-L-2 (current-buffer)))
                      (split-string mlsrn-get-nm-strs "\n"))
              (insert mlsrn-get-nm-strs)))
          (when as-strings (delete-char 1)))
      (if as-strings 
          (split-string mlsrn-get-nm-strs "\n") 
        mlsrn-get-nm-strs))))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |
;; | (mon-line-string-rotate-namestrings 
;; |  (1+ (search-forward-regexp "►")) (- (search-forward-regexp "◄") 2))
;; | (mon-line-string-rotate-namestrings 
;; |  (1+ (search-forward-regexp "◄")) (- (search-forward-regexp "◄") 2) t)
;; | 
;; |►
;; |George Charles Aid
;; |Thomas Pollock Anshutz
;; |Cecilia Beaux
;; |Frank Weston Benson
;; |Thomas Hart Benton
;; |Saul Bernstein
;; |George Biddle
;; |Gutzon Borglum
;; |◄
;; | 
;; `----

;; ==============================
;;; :PREFIX "mlsun-"
;;; :CREATED <Timestamp: #{2009-09-23T20:12:26-04:00Z}#{09394} - by MON KEY>
(defun mon-line-string-unrotate-namestrings (start end &optional as-strings insrtp intrp)
  "Unrotate namestrings in region.\n
Namestrings are formatted name per line e.g. `Lastname (Firstname Middlenames)'
Return `Firstname Middlename Lastname'
When INSRTP is non-nil or Called-interactively insert rotated names at point.
Does not move point. When AS-STRINGS is non-nil return rotated names as strings.\n
:EXAMPLE\n\(mon-line-string-unrotate-namestrings 
   (1+ \(search-forward-regexp \"►\"\)) \(- \(search-forward-regexp \"◄\"\) 2\)\)\n
►\nKennan (George Frost)\nAlbert (Lukács János)\nAchesonn (Dean Gooderham)
Harriman (William Averell)\nMcCloy (John Jay)\nBohlen (Charles Eustis)
Lovett (Robert Abercrombie)\n◄\n
:SEE-ALSO `mon-line-string-rotate-name', `mon-line-string-rotate-namestrings',
`mon-line-string-rotate-namestrings-combine', `mon-line-strings-to-list',
`mon-make-lastname-firstname', `mon-make-name-lispy', `mon-make-names-list',
`mon-line-strings-region'.\n►►►"
  (interactive "r\nP\ni\np")
  (let ((mlsun-rgn-beg start)
        (mlsun-rgn-end end)
        mlsun-go-tmp)
    (setq mlsun-go-tmp ;; :WAS (buffer-substring-no-properties mlsun-rgn-beg mlsun-rgn-end))
          (mon-buffer-sub-no-prop mlsun-rgn-beg mlsun-rgn-end))
    (save-excursion
      (setq mlsun-go-tmp
            (with-temp-buffer
              (insert mlsun-go-tmp)
              (whitespace-cleanup)
              (mon-g2be -1) ;; (goto-char (buffer-end 0))
              (while (search-forward-regexp  
                      "^\\([A-z-]+\\) \\((\\)\\(.*\\)\\()\\)$" (buffer-end 1) t)
                      ;;^^1^^^^^^^^^^^^^2^^^^^^^3^^^^^^4^^^^
                (replace-match  "\\3 \\1"))
              (if as-strings
                  (mon-line-strings-to-list (buffer-end 0) (buffer-end 1))
                ;; :WAS (buffer-substring-no-properties (buffer-end 0) (buffer-end 1)) ))))
                (mon-buffer-sub-no-prop)))))
    (if (or insrtp intrp)
        (progn
          (save-excursion 
            (delete-region mlsun-rgn-beg mlsun-rgn-end)
            (if as-strings
                (let ((mlsun-as-str1 (read mlsun-go-tmp)))
                  (mapc #'(lambda (mlsun-L-1) 
                            (newline) 
                            (prin1 (car mlsun-L-1) (current-buffer)))
                        mlsun-as-str1))
              (insert mlsun-go-tmp)))
          (when as-strings (delete-char 1)))
      ;; elseif
      (if as-strings
          (let ((mlsun-as-str2 (read mlsun-go-tmp))
                mlsun-rtn-str)
            (setq mlsun-rtn-str (mapcar #'(lambda (mlsun-L-2) 
                                            (car mlsun-L-2))
                                        mlsun-as-str2))
            mlsun-rtn-str)
        mlsun-go-tmp))))
;;
;;,---- :UNCOMMENT-TO-TEST:
;;| (mon-line-string-unrotate-namestrings 
;;|   (1+ (search-forward-regexp "►")) (- (search-forward-regexp "►") 2))
;;| 
;;| ►
;;| George Frost Kennan
;;| Dean Gooderham Acheson
;;| William Averell Harriman
;;| Lukács János Albert 
;;| John Jay McCloy
;;| Charles Eustis Bohlen 
;;| Robert Abercrombie Lovett
;;| ◄
;;`----

;;; ==============================
;;; :PREFIX "mlsrnc-"
;;; :CREATED <Timestamp: #{2009-09-24T14:18:44-04:00Z}#{09394} - by MON>
(defun mon-line-string-rotate-namestrings-combine (start end &optional insrtp intrp)
  "Return lists of namestrings from START to END both rotated and normalalized.\n
Elements of list returned have the form:\n
 \(\"Fname Lname\" \"Lname \(Fname\)\"\)\n
:EXAMPLE\n\n\(mon-line-string-rotate-namestrings-combine
   (1+ \(search-forward-regexp \"►\"\)) \(- \(search-forward-regexp \"◄\"\) 2\)\)\n
►\nEmil Max Hödel\nJohn Wilkes Booth\nLeon Frank Czolgosz\nLee Harvey Oswald
Dmitry Grigoriyevich Bogrov\nPaul Gorguloff\nJohn Bellingham
Charles Julius Guiteau\n◄\n
:SEE-ALSO `mon-line-string-rotate-namestrings',
`mon-line-string-unrotate-namestrings', `mon-make-lastname-firstname',
`mon-make-name-lispy', `mon-make-names-list', `mon-line-string-rotate-name',
`mon-line-strings-to-list', `mon-line-string-insert-chars-under'.\n►►►"
  (interactive "r\ni\np")
  (let ((mlsrnc-rotd-nms (mon-line-string-rotate-namestrings start end t))
        mlsrnc-unrotd
        mlsrnc-cmbnd)
    (with-temp-buffer
      (progn
        (save-excursion
          (mapc #'(lambda (mlsrnc-L-1) 
                    (newline) 
                    (princ mlsrnc-L-1 (current-buffer)))
                mlsrnc-rotd-nms))
        (delete-char 1))
      (setq mlsrnc-unrotd
            (mon-line-string-unrotate-namestrings (point-min) (point-max) t)))
    (mapc #'(lambda (mlsrnc-L-2)
            (let ((mlsrnc-orig (pop mlsrnc-rotd-nms)))
              (setq mlsrnc-cmbnd (cons `(,mlsrnc-L-2 ,mlsrnc-orig) mlsrnc-cmbnd))))
          mlsrnc-unrotd)
    (if (or insrtp intrp)
        (prin1 mlsrnc-cmbnd (current-buffer))
        mlsrnc-cmbnd)))
;;
;; ,---- :UNCOMMENT-TO-TEST
;; | 
;; | (mon-line-string-rotate-namestrings-combine
;; |    (1+ (search-forward-regexp "►")) (- (search-forward-regexp "◄") 2))
;; | 
;; | ►
;; | Emil Max Hödel
;; | John Wilkes Booth
;; | Leon Frank Czolgosz
;; | Lee Harvey Oswald
;; | Dmitry Grigoriyevich Bogrov
;; | Paul Gorguloff
;; | John Bellingham
;; | Charles Julius Guiteau
;; | ◄
;; `----


;;; ==============================
;;; :PREFIX "mlsicu-"
;;; CREATED: <Timestamp: #{2009-10-20T16:16:44-04:00Z}#{09432} - by MON>
(defun mon-line-string-insert-chars-under (&optional w-char intrp)
  "Insert a string of `='s \(char 61\) beneath the current line.\n
Inserted string has the length of current line. Does not move point.\n
When WITH-CHAR (char or string) is non-nil insert that char instead.\n
When called-interactively with prefix-arg prompt for a char to use.\n
:EXAMPLE\n
\(mon-with-inhibit-buffer-read-only \(mon-line-string-insert-chars-under\)\)\n
\(mon-with-inhibit-buffer-read-only \(mon-line-string-insert-chars-under 9658\)\)\n
\(mon-with-inhibit-buffer-read-only \(mon-line-string-insert-chars-under 9668\)\)\n
\(mon-with-inhibit-buffer-read-only \(mon-line-string-insert-chars-under \"►\"\)\)\n
\(mon-with-inhibit-buffer-read-only \(mon-line-string-insert-chars-under t t\)\)\n
\(mon-line-string-insert-chars-under-TEST\)\n
:SEE-ALSO `mon-line-strings-to-list', `mon-line-strings-region-delimited'.\n►►►"
  (interactive "P\np")
  (let ((mlsicu-ln-spec
         (if (looking-at "^$")
             (error (concat ":FUNCTION `mon-line-string-insert-chars-under' "
                            "-- no line at point: %d") (point))
           (bounds-of-thing-at-point 'line)))
        (w-char (if (and w-char intrp)
                    (read-char (concat ":FUNCTION `mon-line-string-insert-chars-under' "
                                       "-- char to use: "))
                  w-char)))
    (save-excursion
      (end-of-line)
      (when (= (buffer-end 1)(cdr mlsicu-ln-spec))
        (setcdr mlsicu-ln-spec (1+ (cdr mlsicu-ln-spec))))
      (open-line 1)
      (forward-char 1)
      (insert (make-string ;;(- (1- (cdr mlsicu-ln-spec)) (car mlsicu-ln-spec)) 
               (- (1- (cdr mlsicu-ln-spec)) (car mlsicu-ln-spec))
               (if w-char                              
                   (if (stringp w-char)
                       (string-to-char w-char)
                     w-char)
                 61))))))
;;
;;; :TEST-ME (mon-line-string-insert-chars-under-TEST)

;;; ==============================
;;; :PREFIX "mwgn-"
;;; :COURTESY Nelson H. F. Beebe :HIS clsc.el :VERSION 1.53 of 2001-05-27
;;; :WAS `get-next-word' -> `mon-word-get-next'
(defun mon-word-get-next ()
  "Return the next 'word' in the buffer.\n
Point is left following the word.\n
When `eopb' return nil with point unchanged.\n
:NOTE Words motion is per `inhibit-field-text-motion' where a word is defined by
`forward-word' according to the syntax-table settings.\n
:SEE-ALSO `mon-line-get-next', `mon-word-get-list-in-buffer'.\n►►►"
  (let (mwgn-start mwgn-end)
    (if (eobp)
	nil
      (progn
	(setq mwgn-start (point))
	(forward-word 1)
	(setq mwgn-end (point))
	(forward-word -1)
	(if (< (point) mwgn-start)           ;; Then we're already past last word.
	    (progn
	      (mon-g2be -1) ;;(goto-char (buffer-end 0))
              nil)
	  (setq mwgn-start (point))
	  (goto-char mwgn-end)
	  ;; :WAS (buffer-substring-no-properties mwgn-start mwgn-end) )))))
          (mon-buffer-sub-no-prop mwgn-start mwgn-end))))))

;;; ==============================
;;; :PREFIX "mwglib-"
;;; :COURTESY Nelson H. F. Beebe :HIS clsc.el :VERSION 1.53 of 2001-05-27
;;; :CREATED <Timestamp: #{2010-08-20T13:24:05-04:00Z}#{10335} - by MON KEY>
(defun mon-word-get-list-in-buffer (&optional intrp)
  "Convert entirety of current-buffer to list of `newline' separated \"words\".\n
A \"word\" is gathered with `forward-word' the heuristics of which are informed
by ther current syntax-table settings.\n
When called-interactively return and display results in a new buffer `\"*MON-WORD-LIST*\", 
:EXAMPLE\n\n(mon-word-get-list-in-buffer\)\n
\(mon-word-get-list-in-buffer t\)\n
:NOTE Apply `sort-lines', `unique-lines', etc. to obtain a list of all the
unique words in a buffer of document.\n
:ALIASED-BY `mon-buffer-get-word-list'\n
:SEE-ALSO `mon-word-count-occurrences', `mon-line-strings-to-list',
`mon-string-ify-current-line', `mon-stringify-list', `mon-dropin-line-word',
`mon-insert-string-ify', `mon-word-count-analysis', `mon-word-count-region',
`mon-word-count-chars-region'.\n►►►"
  ;; :WAS
  ;; (interactive)
  ;; (let (word)
  ;;   (with-output-to-temp-buffer "*MON-WORD-LIST*"
  ;;     (save-excursion
  ;;       (goto-char (point-min))
  ;;       (while (setq word (mon-word-get-next))
  ;;         (princ (format "%s\n" word)))))))
  (interactive "p")
  (let* ((mwglib-MWL (get-buffer-create "*MON-WORD-LIST*"))
         ;; (generate-new-buffer-name "*MON-WORD-LIST*")
         ;; We use this buffer to accumlate results 
         (standard-output (get-buffer mwglib-MWL))
         mwglib-tmp)
    (with-current-buffer mwglib-MWL (erase-buffer))
    (save-excursion
      (mon-g2be -1) ;;(goto-char (point-min))
      (while (setq mwglib-tmp (mon-word-get-next))
        (princ (format "%s\n" mwglib-tmp))))
    (setq mwglib-tmp (buffer-name (current-buffer)))
    (with-current-buffer  mwglib-MWL
      (setq mwglib-MWL `(:BUFFER ,mwglib-tmp 
                         :TOTAL-WORDS ,(count-lines (buffer-end 0) (buffer-end 1))))
      (if intrp 

          (progn
            (mon-g2be -1) ;; (goto-char (buffer-end 0))
            (save-excursion            
              (insert  ";; :FUNCTION `mon-word-get-list-in-buffer'\n;; ")
              (princ mwglib-MWL (current-buffer))
              (insert "\n" (make-string 68 59) "\n"))
              (display-buffer (current-buffer) t))
        (progn
          (setq mwglib-MWL (append mwglib-MWL 
                                   (mon-line-strings-one-list (buffer-end 0) (buffer-end 1))))
          (kill-buffer (current-buffer)))))
    mwglib-MWL))

;;; ==============================
;;; :CHANGESET 2202 <Timestamp: #{2010-10-20T15:43:46-04:00Z}#{10423} - by MON KEY>
(defun mon-word-reverse-region (beg end &optional insrtp intrp)
  "Reverse the order of words in region.\n
When optional arg INSRTP is non-nil or called-interactively delete existing
region and replace with the reversed words. Does not move point.\n
Return value has the format:\n
 \(<REVERSED-STRING> \(<REVERSED-STRING-AS-LIST>\)
                     \(\(<BEG> <END>\) <ORIGINAL-STRING>\)\)\n
:EXAMPLE\n\n\(save-excursion \(forward-line 2\)
  \(mon-word-reverse-region \(line-beginning-position\) \(line-end-position\)\)\)\n
deleted maybe and reversed be will I\n
:ALIASED-BY `mon-region-reverse-words'\n
:ALIASED-BY `mon-reverse-region-words'\n
:SEE-ALSO `mon-region-reverse'.\n►►►"
  (interactive "r\ni\np")
  (let* ((mwrr-str   (mon-buffer-sub-no-prop beg end))
         (mwrr-rvrsd (save-match-data (split-string mwrr-str "\\b"))))
    (setq mwrr-rvrsd 
          `(,(mapconcat #'identity  (reverse mwrr-rvrsd) "")
            ,(nreverse mwrr-rvrsd)
            ((,beg ,end) ,mwrr-str)))
    (if (or insrtp intrp)
        (save-excursion
          (delete-region beg end)
          (insert (car mwrr-rvrsd))
          (prin1 mwrr-rvrsd))
      mwrr-rvrsd)))
;; 
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (equal 
;; |  (car (save-excursion 
;; |         (forward-line 1)
;; |         (mon-word-reverse-region (line-beginning-position) (line-end-position))))
;; |  "I will be reversed and maybe deleted")
;; | deleted maybe and reversed be will I
;; | ^--< column 0 
;; `----

;;; ==============================
;;; :PREFIX "mwio-"
;;; :COURTESY Jonathan Rockway :VERSION 2009-01-18
;;; :SEE (URL `http://blog.jrock.us/articles/Iterators%20in%20elisp.pod')
(defun mon-word-iterate-over (buffer)
  "Return an iterator that gets the next word in buffer.\n
Extract one word at a time by calling (funcall next-word).\n
:EXAMPLE For BUFFER test-buffer containing \"This is text.\"
\(setq next-word \(mon-word-iterate-over-in \(get-buffer \"test buffer\")))
The first time next-word is called, return \"This\".
The next time, retrun \" is\". Then, \" text.\". 
Finally, return nil forever.\n
:NOTE Uses lexical-let to close over over local vars mwio-bfr and mwio-psn.\n
:SEE-ALSO `mon-word-get-list-in-buffer'.\n►►►"
  (lexical-let ((mwio-bfr buffer)
                (mwio-psn 1))
    (lambda ()
      (save-excursion
        (let ((mwio-cur-bfr (current-buffer)) 
              mwio-rslt)
          (switch-to-buffer mwio-bfr)
          (goto-char mwio-psn)
          (forward-word)
          (let ((mwio-pnt (point)))
            (if (not (eq mwio-psn mwio-pnt))
                (progn 
                  (setq mwio-rslt ;; :WAS (buffer-substring-no-properties mwio-psn mwio-pnt))
                        (mon-buffer-sub-no-prop  mwio-psn mwio-pnt))
                  (setq mwio-psn mwio-pnt))))
          (switch-to-buffer mwio-cur-bfr) mwio-rslt)))))

;;; ==============================
;;; :PREFIX "mwca-"
;;; :CHANGESET 1973 <Timestamp: #{2010-07-12T20:20:45-04:00Z}#{10281} - by MON KEY>
(defun mon-word-count-analysis (start end &optional intrp)
  "Count number of times each word is used in the region.\n
Count anything with word syntax when `with-syntax-table' uses`standard-syntax-table'.\n
:EXAMPLE\n\n\(mon-word-count-analysis \(buffer-end 0\) \(buffer-end 1\)\)\n
\(mon-word-count-analysis \(buffer-end 0\) \(buffer-end 1\) t\)\n
:SEE-ALSO `mon-line-count-region', `mon-word-count-chars-region',
`mon-word-count-occurrences', `mon-word-count-region', 
`mon-word-get-list-in-buffer'.\n►►►"
  (interactive "r\np")
  (let (mwca-wrds mwca-hshd mwca-oba)
    (setq mwca-oba (make-vector (/ (- end start) 2) 0))
    (setq mwca-wrds (make-hash-table :test #'eq :weakness 'key))
    (unwind-protect 
        (narrow-to-region start end)
      (save-excursion
        (mon-g2be -1)    ;; (goto-char (buffer-end 0))
        (with-syntax-table (syntax-table)
          (while (search-forward-regexp "\\w+" end t)
            (let* ((mwca-wrd (intern (match-string-no-properties 0) mwca-oba))
                   (mwca-cell (gethash mwca-wrd mwca-wrds)))
              (if (and (not (numberp mwca-wrd)) mwca-cell)
                  (puthash mwca-wrd (1+ mwca-cell) mwca-wrds)
                (puthash mwca-wrd 1 mwca-wrds))))))
      (widen))
    (maphash #'(lambda (mwca-k mwca-v) 
                 (push `(,mwca-k . ,mwca-v) mwca-hshd)) mwca-wrds)
    (setq mwca-hshd (nreverse mwca-hshd))
    (if intrp
        (message (concat ":FUNCTION `mon-word-count-analysis' "
                         "-- :WORDS-FOUND %S")
                 mwca-hshd)
      `(:WORDS-FOUND ,@mwca-hshd))))

;;; ==============================
;;; :COURTESY Francois Fleuret <fleuret@idiap.ch> :HIS fleuret.emacs.el :WAS `ff/word-occurrences'
;;; :SEE (URL `http://www.idiap.ch/~fleuret/files/fleuret.emacs.el')
;;; :SEE git clone http://fleuret.org/git/elisp/ 
;;; Added `with-current-buffer', `message', `with-silent-modifications', `window-min-height'
;;; :CHANGESET 1969 <Timestamp: #{2010-07-12T13:40:08-04:00Z}#{10281} - by MON KEY>
;;; :CHANGESET 2316 <Timestamp: #{2010-11-12T22:21:45-05:00Z}#{10455} - by MON KEY>
(defun mon-word-count-occurrences (&optional intrp)
  "Display in a new buffer the list of words sorted by number of occurrences.\n
Count contains multiple occurences of words with > word-length 3 in buffer.\n
Return results and display in buffer named \"*WORD-COUNT*\".\n
:EXAMPLE\n\n\(mon-word-count-occurrences\)\n
\(mon-word-count-occurrences t\)\n
:ALIASED-BY `mon-buffer-get-word-count'\n
:SEE-ALSO `mon-line-count-region', `mon-word-count-region', `mon-word-count-analysis',
`mon-word-count-chars-region', `mon-word-get-list-in-buffer'.\n►►►"
  (interactive "p")
  (let ((mwco-cnt-buf (when intrp (get-buffer-create "*WORD-COUNT*")))
        (mwco-dpt-buf (when intrp (current-buffer)))
        (mwco-dpt-win (when intrp (get-buffer-window (current-buffer))))
        (mwco-map (when intrp (make-sparse-keymap)))
        (mwco-nb (make-hash-table 
                  ;; split the difference we're looking for words > length 3
                  ;; avv Engrish word has length 5, 1+ for whitespce 
                  ;; So, 3.5 seems like a reasonable amount to divide by.
                  :size (mon-next-almost-prime (floor (/ (buffer-size) 3.5))) 
                  :weakness 'key))
        (mwco-st  (make-hash-table 
                   :size (mon-next-almost-prime (floor (/ (buffer-size) 3.5))) 
                   :weakness 'key))
        (mwco-wrds-chrs (mon-word-count-chars-region (mon-g2be -1 t) (mon-g2be 1 t)))
        mwco-rslt)
    ;; Collect all words into a pair of hash-tables.
    (save-excursion
      (mon-g2be -1)
      (with-syntax-table (standard-syntax-table)
        (while (search-forward-regexp "\\([\\-a-zA-Z\\\\]+\\)" nil t)
          (let* ((mwco-s (downcase (match-string-no-properties 1)))
                 (mwco-k1 (sxhash mwco-s)))
            (puthash mwco-k1 mwco-s mwco-st)
            (puthash mwco-k1 (1+ (gethash mwco-k1 mwco-nb 0)) mwco-nb)))))
    (if (<= (hash-table-count mwco-nb) 0)
        (if intrp 
            (message (concat ":FUNCTION `mon-word-count-occurrences' "
                             "-- did not find re-occurences for words "
                             "with > word-length 3 in buffer: %s") 
                     mwco-dpt-buf)
          `(,@mwco-wrds-chrs :WORDS-W-LEN-GT-3 0))
      (progn
        (maphash #'(lambda (mwco-k2 mwco-v)
                     (setq mwco-rslt (cons (cons mwco-v (gethash mwco-k2 mwco-st)) mwco-rslt)))
                 mwco-nb)
        ;; Find the longest string
        (if (not intrp)
            (progn (setq mwco-nb) (setq mwco-st))
          (progn
            (setq mwco-nb)
            (setq mwco-st '(0 . " "))
            (dolist (strl mwco-rslt (setq mwco-st (length (cdr mwco-st))))
              (let ((mwco-strl (length (cdr strl))))
                (when (> mwco-strl (car mwco-st)) 
                  (setq mwco-st `(,mwco-strl . ,(cdr strl))))))))
        (setq mwco-rslt (sort mwco-rslt #'(lambda (a b) (> (car a) (car b)))))
        (dolist (mwco-wc mwco-rslt (setq mwco-nb (nreverse mwco-nb)))
          (if (and (> (car mwco-wc) 1)
                   ;; No leading backslash and at least four characters.
                   (string-match "^[^\\]\\{4,\\}" (cdr mwco-wc)))
              (if intrp 
                  (push (concat (cdr mwco-wc) 
                                (if (< (length (cdr mwco-wc)) mwco-st)
                                    (make-string (- mwco-st (length (cdr mwco-wc))) 32)
                                  " ")
                                (number-to-string (car mwco-wc))) mwco-nb)
                (push `(,(cdr mwco-wc) . ,(car mwco-wc)) mwco-nb))))
        (if (not intrp)
            `(,@mwco-wrds-chrs :WORDS-W-LEN-GT-3 ,(length mwco-nb) (:WORDS-W-COUNTS ,@mwco-nb))
          ;; Create the mwco-rslt buffer if called-interactively
          (with-current-buffer mwco-cnt-buf
            (erase-buffer)
            (set (make-local-variable 'show-trailing-whitespace) nil)
            (save-excursion
              (insert ";; :W-FUNCTION     `mon-word-count-occurrences' \n"
                      ";; :IN-BUFFER       " (buffer-name mwco-dpt-buf) "\n"
                      ";; :W-SYNTAX-TABLE `standard-syntax-table'\n"
                      ";; " (mapconcat #'(lambda (wrdch) (format "%s" wrdch)) mwco-wrds-chrs " ") "\n"
                      ";; :NOTE To return to buffer counted type: \"C-c q\"\n;;\n"
                      (cond ((> mwco-st 8) (concat ";; :WORD"  (make-string (- mwco-st 9) 32) ":COUNT\n"))
                            ((< mwco-st 8) (concat ";; :WORD  :COUNT\n")))
                      (mapconcat #'identity mwco-nb "\n")))
            (define-key mwco-map "\C-cq" `(lambda () 
                                       (interactive)
                                       (if (buffer-live-p ,(buffer-name mwco-dpt-buf))
                                           (progn (switch-to-buffer ,(buffer-name mwco-dpt-buf))
                                                  (when (get-buffer "*WORD-COUNT*")
                                                    (kill-buffer (get-buffer "*WORD-COUNT*"))))
                                         (kill-this-buffer))))
            (use-local-map mwco-map)
            (display-buffer (current-buffer) t)
            (with-silent-modifications
              (let ((window-min-height 10)
                    (mwco-win-max-hgt-myb 
                     (let* ((mwco-wh (window-height 
                                      (if (equal mwco-dpt-buf (window-buffer mwco-dpt-win))
                                          mwco-dpt-win
                                        (other-window 1))))
                            (mwco-wh-2 (cond ((>= (length mwco-nb) 20)
                                              (+ mwco-wh (/ (length mwco-nb) 2)))
                                             ((>= (+ mwco-wh (length mwco-nb)) 20)
                                              (+ mwco-wh (length mwco-nb)))
                                             (t 12))))
                       mwco-wh-2)))
                (fit-window-to-buffer 
                 (get-buffer-window (current-buffer)) mwco-win-max-hgt-myb 10)))))))))

;;; =======================
(defun mon-word-count-region (start end &optional intrp)
  "Return the number of words in the region.\n
:SEE-ALSO `mon-line-count-region', `mon-word-count-chars-region',
`mon-word-count-analysis', `mon-word-count-occurrences',
`mon-word-get-list-in-buffer'.\n►►►"
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (mon-g2be -1)
      (let ((mwcr-mtchd (count-matches "\\sw+")))
        (if intrp 
            (message (concat ":FUNCTION `mon-word-count-region' "
                             "-- :WORDS %d in the region") mwcr-mtchd)
          `(:WORDS ,mwcr-mtchd))))))

;;; ==============================
(defun mon-word-count-chars-region (beginning end &optional intrp)
  "Return message indicating the number of words and chars that are in a region.\n
:EXAMPLE\n\n\(mon-word-count-chars-region \(buffer-end 0\) \(buffer-end 1\)\)\n
\(mon-word-count-chars-region \(buffer-end 0\) \(buffer-end 1\) t\)\n
:SEE-ALSO `mon-line-count-region', `mon-word-count-region',
`mon-word-count-analysis', `mon-word-count-occurrences', 
`mon-word-get-list-in-buffer', `mon-string-from-sequence'.\n►►►"
  (interactive "r\np")
  (let ((mwccr-wrd-cnt 0) 
        (mwccr-chr-cnt (- end beginning)))
    (save-excursion
      (goto-char beginning)
      (while (and (< (point) end) (search-forward-regexp "\\w+\\W*" end t))
        (incf mwccr-wrd-cnt))
      (if intrp 
          (message  (concat ":FUNCTION `mon-word-count-chars-region' "
                            "-- counted :WORDS %d :CHARS %d")
                    mwccr-wrd-cnt mwccr-chr-cnt)
        `(:WORDS ,mwccr-wrd-cnt :CHARS ,mwccr-chr-cnt)))))

;;; ==============================
;;; :COURTESY Henrik Enberg but prob. pulled out of:
;;; :COURTESY Stefan Reichor, stefan@xsteve.at :HIS xsteve-functions.el  
;;; :NOT-WORKING-AS-OF
;;; :CREATED <Timestamp: Tuesday February 17, 2009 @ 04:53.44 PM - by MON KEY>
;;; ==============================
;; (defun mon-query-remove-doubled-words (&optional force)
;;   "Find all doubled words and ask to remove them.
;; With optional arg FORCE remove them without asking."
;;   (interactive "P")
;;   (let ((case-fold-search t)
;; 	(del-counter 0))
;;     (while (re-search-forward
;; 	    "\\(\\<\\w\\{3,\\}\\>\\)[ \t\n]*\\(\\1\\)" nil t)
;;       (replace-highlight (match-beginning 2) (match-end 2))
;;       (unwind-protect
;; 	  (when (or force (y-or-n-p "Remove this doubled word? "))
;; 	    (delete-region (match-beginning 2) (match-end 2))
;; 	    (canonically-space-region (match-beginning 0) (match-end 0))
;; 	    (setq del-counter (1+ del-counter)))
;; 	(replace-dehighlight)))
;;     (if (> del-counter 0)
;; 	(message "Removed %d doubled %s." del-counter
;; 		 (if (< del-counter 1) "words" "word"))
;;       (message "No doubled words found or removed."))))
;;; =======================

;;; ==============================
;;; :RANDOM UID's
;;; ==============================

;;; ==============================
;;; :COURTESY :FILE fns.c `next_almost_prime'
;;; :CREATED <Timestamp: #{2010-08-05T16:09:48-04:00Z}#{10314} - by MON>
(defun mon-next-almost-prime (w-integer)
  "From W-INTEGER return either a prime or a number nearer the next prime.\n
Return a value I where (>= I w-integer) and (>= W-INTEGER 0).\n
Useful for generating a reasonable arg for `make-hash-table's :size keyword.\n
:EXAMPLE\n\n\(let* \(\(prms-lt-100 '\(2 3 5 7 11 13 17 19 23 29 31 37 41 
                     43 47 53 59 61 67 71 73 79 83 89 97\)\)
       \(n->100 \(number-sequence 1 99 1\)\)
       next-almost\)
  \(mapc #'\(lambda \(nx-ap\)
            \(let \(\(non-prime \(unless \(memq nx-ap prms-lt-100\)
                               nx-ap\)\)\)
              \(when non-prime 
                \(push `\(,nx-ap . ,\(mon-next-almost-prime non-prime\)\) 
                      next-almost\)\)\)\)
        n->100\)
  \(setq next-almost \(nreverse next-almost\)\)\)\n
\(let \(\(n->100 \(number-sequence 100 300 1\)\)
      next-almost\)
  \(mapc #'\(lambda \(nx-ap\)
            \(push `\(,nx-ap . ,\(mon-next-almost-prime nx-ap\)\) 
                      next-almost\)\) 
        n->100\)
  \(setq next-almost \(nreverse next-almost\)\)\)\n
:NOTE The original C definition:\n
  ,----
  |  int
  |  next_almost_prime (int n)
  |  {
  |    if (n % 2 == 0)
  |      n += 1;
  |    if (n % 3 == 0)
  |      n += 2;
  |    if (n % 7 == 0)
  |      n += 4;
  |    return n;
  |  }
  `----\n
:ALIASED-BY `mon-get-next-almost-prime'
:ALIASED-BY `next-almost-prime'\n
:SEE-ALSO `mon-gensym-counter-randomizer', `mon-make-random-state',
`mon-generate-prand-seed', `mon-generate-WPA-key', `mon-generate-prand-id',
`mon-string-wonkify', `random'.\n►►►"
  (let ((mnapN w-integer))
    (when (= (% mnapN 2) 0) (setq mnapN (1+ mnapN)))
    (when (= (% mnapN 3) 0) (setq mnapN (+ mnapN 2)))
    (when (= (% mnapN 7) 0) (setq mnapN (+ mnapN 4)))
    ;; (when (= (% mnapN 5) 0) (setq mnapN (+ (- mnapN 2) 3)))
    ;; (when (= (% mnapN 2) 0) (setq mnapN 
    ;;                              (mon-next-almost-prime mnapN)))
  mnapN))

;;; ==============================
;;; :CHANGESET 2043
;;; :CREATED <Timestamp: #{2010-08-04T22:08:00-04:00Z}#{10313} - by MON KEY>
(defun mon-make-random-state ()
  "Return an integer with some randomness.\n
:EXAMPLE\n\n\(mon-make-random-state\)\n
:SEE-ALSO `mon-next-almost-prime', `mon-gensym-counter-randomizer', `mon-make-random-state',
`mon-generate-prand-seed', `mon-generate-WPA-key', `mon-generate-prand-id',
`mon-string-wonkify', `random'.\n►►►"
  (let ((mmrst8 
         (lsh (+ cons-cells-consed floats-consed vector-cells-consed symbols-consed
                 string-chars-consed misc-objects-consed intervals-consed
                 strings-consed
                 pure-bytes-used
                 num-nonmacro-input-events
                 (floor (* gcs-done (sqrt gcs-done)) 1)
                 (floor gc-elapsed 1))
              (aref (mon-nshuffle-vector [17 13 5 19 11 7 3 23]) 0))))
    (logxor
     (if (not (zerop mmrst8)) mmrst8 (mon-make-random-state))
     (random))))

;;; ==============================
;;; :CREATED <Timestamp: #{2009-10-13T17:40:20-04:00Z}#{09422} - by MON>
(defun mon-generate-prand-id (&optional cnt)
  "Return a pseudo-rand UID.\n
Return value is a 40 char hex string generated as sha1 sum from seed
`mon-generate-prand-seed'. When > CNT 1 return N UID's.\n
:EXAMPLE\n\n\(mon-generate-prand-id 6\)\n
Only the first sum has random qualities and subsequent sha1 sums are taken from
sum calculated in previous iteration.\n 
Thus, if CNT is 4 then the sha1 of sum1 -> sum2 -> sum3 -> sum4.\n
This means:\n
a) the return value of all elts after car are _not_ random at all;\n
b) where UID assignment occurs in parallel with time-stamping we can infer
   when the UID was generated relative the index of previous/subsequent elts.
Item b is a Featured-Bug®.\n
:SEE-ALSO `mon-string-to-hex-string', `mon-generate-WPA-key', `mon-string-wonkify',
`url-hexify-string', `url-unhex-string', `url-unhex'.\n►►►"
  (eval-when-compile (require 'sha1))
  (let ((mgpi-cnt (if cnt cnt 1))
        mgpi-gthr)
    (do* ((mgpi-i 1 (1+ mgpi-i))
          (mgpi-j (sha1 (mon-generate-prand-seed)) (sha1 (car mgpi-gthr)))
          (mgpi-k (push mgpi-j mgpi-gthr) (push mgpi-j mgpi-gthr)))
        ((>= mgpi-i mgpi-cnt) mgpi-k))
    (nreverse mgpi-gthr)))
;;;
;;; :TEST-ME 
;;; (save-excursion 
;;;   (newline) 
;;;   (dolist (i (mon-generate-prand-id 1000))
;;;     (newline) (prin1 i (current-buffer))))

;;; ==============================
;;; :CREATED <Timestamp: #{2009-10-12T15:07:02-04:00Z}#{09421} - by MON KEY>
(defun mon-generate-prand-seed ()
  "Generate a seed for 'unique random identifier' a 32 character hex string.
Seed is only pseudo random/unique but it will suffice for our needs.
Don't call this function in a loop it won't work b/c TIME is slow as hell.
Instead, use as a seed for `mon-generate-prand-id'.
On MON system min. 0.85 seconds is needed between calls to produce unique id's.\n
:EXAMPLE\n(mon-generate-prand-id)\n
\(let \(\(i 11\) \(k\)\)
  \(while \(/= i 0\)
    \(sleep-for 0.85\)
    \(setq k \(cons `\(,\(mon-generate-prand-id\)\) k\)\)
    \(setq i \(1- i\)\)\)
\(prin1 k\)\)\n
:SEE-ALSO `mon-generate-WPA-key', `mon-string-wonkify', `mon-list-nshuffle',
`mon-nshuffle-vector', `url-cache-create-filename-using-md5'.\n►►►"
  ;(eval-when-compile (require 'cookie1))
  (let* ((pseudo-r #'(lambda () 
                       (mon-string-to-sequence 
                        (number-to-string (abs (random t))))))
         (seq->v #'(lambda (x) (apply 'vector x)))
         (shufv #'(lambda (x) 
                    ;; :WAS (shuffle-vector x))))                    
                    (mon-nshuffle-vector x))))
    (md5    
     (mon-string-from-sequence
      (funcall shufv
               (funcall seq->v    
                        (mon-string-to-sequence
                         (md5
                          (mon-string-from-sequence
                           (funcall shufv
                                    (vconcat
                                     (funcall seq->v
                                              (mon-string-to-sequence
                                               (md5 
                                                (mon-string-from-sequence
                                                 (funcall shufv 
                                                          (funcall seq->v  
                                                                   (nreverse  
                                                                    (funcall pseudo-r))))))))
                                     (funcall shufv 
                                              (funcall seq->v 
                                                       (funcall pseudo-r))))))))))))))
;;;
;;; :TEST-ME (mon-generate-prand-seed)
;;; :TEST-ME (length (mon-generate-prand-seed))
;;; :TEST-ME (let ((i 11) (k))
;;;               (while (/= i 0)
;;;                 (sleep-for 0.85)
;;;                 (setq k (cons `(,(mon-generate-prand-seed)) k))
;;;                 (setq i (1- i)))
;;;               (prin1 k))

;;; ==============================
;;; :PREFIX "mswnky-"
;;; :NOTE Used in :FILE mon-site-local-defaults.el 
;;; This function shadows that symbol so that it can be compiled.
;;; :CREATED <Timestamp: #{2010-02-10T19:47:57-05:00Z}#{10064} - by MON KEY>
(defun mon-string-wonkify (wonk-words wonkify-n-times)
  "Wonkify the string WONK-WORDS.\n
:EXAMPLE\n\n\(mon-string-wonkify \"These are some wonky words\" 10\)\n
\(mon-string-wonkify \"These are some wonky words\" 3\)\n
:ALIASED-BY `mon-generate-wonky'\n
:SEE-ALSO `mon-zippify-region', `mon-generate-prand-seed', `mon-generate-prand-id',
`mon-generate-WPA-key', `mon-nshuffle-vector', `mon-list-nshuffle'\n►►►" 
  (let* ((mswnky-wrds wonk-words)
         ;; :PREFIX "wnkusr-"
         (wonk-USR #'(lambda (wnkusr-L-1 wnkusr-L-2) 
              (let (wnkusr-lt-0)
                (dolist (wnkusr-D-1 wnkusr-L-1)
                  (let ((wnkusr-lt-1 wnkusr-D-1))
                    (dotimes (wnkusr-D-2 (random (length wnkusr-lt-1)))
                      (let ((wnkusr-lt-2 (random (length wnkusr-lt-1))))
                        (setf (nth wnkusr-lt-2 wnkusr-lt-1)
                              (if wnkusr-L-2 
                                  (upcase (nth wnkusr-lt-2 wnkusr-lt-1)) 
                                (downcase (nth wnkusr-lt-2 wnkusr-lt-1))))))
                    (push (apply 'string wnkusr-lt-1) wnkusr-lt-0)))
                (setq mswnky-wrds wnkusr-lt-0))))
         ;; :PREFIX "sqfy-"
         (mswnky-seqify #'(lambda (sqfy-L-1)
                     (let (sqfy-lt-1)
                       (mapc #'(lambda (sqfy-L-2) 
                                 (push (string-to-list sqfy-L-2) sqfy-lt-1)) 
                             (cond ((listp sqfy-L-1) sqfy-L-1)
                                   ((stringp sqfy-L-1) (list sqfy-L-1))))
                       sqfy-lt-1)))
         ;; :PREFIX "lcgc-"
         (mswnky-GCD #'(lambda (&rest lcgc-L-1)
                      (let ((lcgc-lt-1 (abs (or (pop lcgc-L-1) 0))))
                        (while lcgc-L-1
                          (let ((lcgc-lt-2 (abs (pop lcgc-L-1))))
                            (while (> lcgc-lt-2 0) 
                              (setq lcgc-lt-2 
                                    (% lcgc-lt-1 
                                       (setq lcgc-lt-1 lcgc-lt-2))))))
                        lcgc-lt-1))))
    (setq mswnky-wrds (make-list wonkify-n-times (car (funcall mswnky-seqify mswnky-wrds))))
    (do ((mswnky-D-1 wonkify-n-times))
         ((< mswnky-D-1 0)  mswnky-wrds)
      (setq mswnky-D-1 (1- mswnky-D-1))
      (setq mswnky-wrds (apply 'vector mswnky-wrds))
      (setq mswnky-wrds (mon-nshuffle-vector mswnky-wrds))
      (setq mswnky-wrds (append mswnky-wrds nil))
      (when (stringp (car mswnky-wrds))
        (setq mswnky-wrds (funcall mswnky-seqify mswnky-wrds)))
      (funcall wonk-USR mswnky-wrds 
               (if (eq (apply mswnky-GCD `(,mswnky-D-1 2)) 2) t)))))
;;
;;; :TEST-ME (mon-string-wonkify "These are some wonky words" 10)
;;; :TEST-ME (mon-string-wonkify "These are some wonky words" 3)

;;; ==============================
;;; :CREATED <Timestamp: #{2010-04-10T13:17:24-04:00Z}#{10146} - by MON>
(defun mon-string-to-hex-list-cln-chars (rep-str)
  "Return list of hex chars in REP-STR with chars: `,' `00' `\\' removed.\n
:EXAMPLE\n\n\(mon-string-to-hex-list-cln-chars
 \"72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\\ \"\)\n
\(mon-hex-list-as-string
 \(mon-string-to-hex-list-cln-chars 
  \"72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\\ \"\)\)\n
:NOTE Intended usage is for quick conversion of registry keys e.g.:\n
 [HKEY_CLASSES_ROOT\\InternetShortcut\\shell\\printto\\command]
 @=hex(2):72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\\
 { ... }
 22,00,00,00\n
:SEE-ALSO `mon-string-to-hex-string', `mon-string-from-hex-list',
`mon-string-to-hex-list', `url-hexify-string', `url-unhex-string',
`url-unhex'.\n►►►"
  (car (read-from-string 
        (format "(%s)" (replace-regexp-in-string "00\\|[,\]" " " rep-str)))))
;;
;;: :TEST-ME (mon-string-to-hex-list-cln-chars 
;;;              "72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\ ")
;;; :TEST-ME(mon-hex-list-as-string
;;;             (mon-string-to-hex-list-cln-chars 
;;;              "72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\ "))
 
;;; ==============================
;;; :CREATED <Timestamp: #{2009-11-06T17:41:33-05:00Z}#{09455} - by MON>
(defun* mon-string-to-hex-string (&key hxify-str w-dlim prand-hex-len)
  "Return HXIFY-STR as a string of hex numbers.  When keyword W-DLIM is non-nil
delimit hex numbers w-dlim.  When keyword PRAND-HEX-LEN (a number >= 80 ) is
non-nil, return a pseudo-random string of length N generated with
`mon-generate-prand-id'. Useful for generating throw-away WPA keys.\n
:EXAMPLE\n\(mon-string-to-hex-string :hxify-str \"bubba\"\)
\(mon-string-to-hex-string :hxify-str \"bubba\" :w-dlim \":\"\)
\(mon-string-to-hex-string :hxify-str \"bubba\" :w-dlim \" \"\)
\(mon-string-to-hex-string :prand-hex-len 64\)
\(mon-string-to-hex-string :prand-hex-len 81\) ;<-Should Fail.\n
:NOTE :HEXADECIMAL 0 1 2 3 4 5 6 7 8 9  A  B  C  D  E  F
      :DECIMAL     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15\n
:SEE-ALSO `mon-string-from-hex-list', `mon-string-to-hex-list',
`mon-string-to-hex-list-cln-chars', `mon-generate-WPA-key',
`mon-generate-prand-seed', `mon-string-replace-char',
`hexl-hex-string-to-integer', `url-hexify-string', `url-unhex-string',
`url-unhex'.\n►►►"
  (let (msths)
    (unless prand-hex-len
      ;; :NOTE Consider using (append hxify-str nil) instead of the mapping.
      (mapc #'(lambda (x) (setq msths (cons x msths)))  hxify-str)
      (setq msths (reverse msths))
      (setq msths
            (mapconcat #'(lambda (x) (format "%x" x))
                       msths (if (and w-dlim (stringp w-dlim)) w-dlim ""))))
    (when prand-hex-len 
      (if (<= prand-hex-len 80)
          (setq msths
                (substring 
                 (concat (car (mon-generate-prand-id))
                         (car (mon-generate-prand-id))) 0 prand-hex-len))
        (error (concat ":FUCTION `mon-string-to-hex-string' "
                       "-- %s is too large or not a number") prand-hex-len)))
    msths))
;;
;;; :TEST-ME (mon-string-to-hex-string :hxify-str "bubba")
;;; :TEST-ME (mon-string-to-hex-string :hxify-str "bubba" :w-dlim ":")
;;; :TEST-ME (mon-string-to-hex-string :hxify-str "bubba" :w-dlim " ")
;;; :TEST-ME (mon-string-to-hex-string :prand-hex-len 64)
;;; :TEST-ME (mon-string-to-hex-string :prand-hex-len 81) ;Should Fail.

;;; ==============================
;;; :CREATED <Timestamp: #{2009-11-07T14:50:16-05:00Z}#{09456} - by MON>
(eval-when-compile (require 'hexl)) ;; `hexl-hex-string-to-integer'a
(defun mon-string-from-hex-list (hx-l)
  "Return HX-l \(a list of hex chars) as a string.\n
Useful for working with w32 registry keys of type REG_BINARY.
:EXAMPLE\n\(mon-hex-list-as-string 
 '(43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00
 6c 00 65 00 73 00 5c 00 74 00 65 00 78 00 6c 00 69 00 76 00 65 00 5c 00 32 00
 30 00 30 00 38 00 5c 00 62 00 69 00 6e 00 5c 00 77 00 69 00 6e 00 33 00 32 00
 5c 00 70 00 61 00 74 00 67 00 65 00 6e 00 2e 00 65 00 78 00 65 \)\)\n
\(mon-string-from-hex-list
 \(split-string \(mon-string-to-hex-string :hxify-str \"bubba\" :w-dlim \":\"\) \":\" t\)\)\n
:NOTE :HEXADECIMAL 0 1 2 3 4 5 6 7 8 9  A  B  C  D  E  F
      :DECIMAL     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15\n
:ALIASED-BY `mon-hex-list-as-string'\n
:SEE-ALSO `mon-string-to-hex-list', `mon-string-to-hex-string',
`mon-string-to-hex-list-cln-chars', `hexl-hex-string-to-integer',
`url-hexify-string', `url-unhex-string', `url-unhex'.\n►►►"
  (let (hex-key-as-strings hex-key-as-int)
    (mapc #'(lambda (hk-s) (push (format "%s" hk-s) hex-key-as-strings))
          hx-l)
    (mapc #'(lambda (hs-i) (push (hexl-hex-string-to-integer hs-i) hex-key-as-int))
          hex-key-as-strings)
    (mon-string-from-sequence hex-key-as-int)))
;;
;;; :TEST-ME 
;;; (mon-string-from-hex-list
;;;  (split-string 
;;;   (mon-string-to-hex-string :hxify-str "bubba" :w-dlim ":")
;;;   ":" t))

;;; ==============================
;;; :CREATED <Timestamp: #{2010-01-30T19:41:27-05:00Z}#{10047} - by MON KEY>
(defun mon-string-to-hex-list (string-hexify)
  "Return string as a list of hex values.\n
:NOTE Can roundtrip the output of `mon-string-to-hex-list'.\n
:EXAMPLE\n\(mon-string-to-hex-list \"bùbbä_◄\\\"\t\\\"►mô'búbbá\"\)\n
\(mon-string-from-hex-list 
  \'(62 f9 62 62 e4 5f 25c4 22 9 22 25ba 6d f4 27 62 fa 62 62 e1\)\)\n
\(mon-string-from-hex-list 
  \(mon-string-to-hex-list \"bùbbä_◄\\\"\t\\\"►mô'búbbá\"\)\)\n
:NOTE :HEXADECIMAL 0 1 2 3 4 5 6 7 8 9  A  B  C  D  E  F
      :DECIMAL     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15\n
:SEE-ALSO `mon-string-from-hex-list', `mon-generate-prand-id',
`mon-string-to-hex-list-cln-chars', `mon-string-to-hex-string',
`hexl-hex-string-to-integer', `url-hexify-string', `url-unhex-string',
`url-unhex'.\n►►►"
  (let (hexamification)
    (mapc #'(lambda (hx)
              (let ((car-char (car (read-from-string (format "%x" hx)))))
                (push car-char hexamification)))
          (if (stringp string-hexify)
              (append string-hexify nil)
            (error (concat ":FUNCTION `mon-string-to-hex-string' "
                           " -- arg STRING-HEXIFY not a string"))))
    (setq hexamification (nreverse hexamification))))
;; 
;;; :TEST-ME (mon-string-to-hex-list "bubba\x09mo'bubba")
;;; :TEST-ME (mon-string-from-hex-list (mon-string-to-hex-list "bubba"))

;;; ==============================
;;; :CREATED <Timestamp: #{2009-11-06T17:49:43-05:00Z}#{09455} - by MON KEY>
(defun mon-generate-WPA-key (&optional insrtp intrp)
  "Return a 64 char pseudo-random hex-string.
When INSRTP is non-nil or called-interactively insert string at point.
Does not move point.\n
:EXAMPLE\n(mon-generate-WPA-key)\n
:SEE-ALSO `mon-generate-prand-id', `mon-generate-prand-seed',
`mon-string-wonkify', `mon-string-from-hex-list',
`mon-string-to-hex-list', `mon-string-to-hex-string'.\n►►►"
  (interactive "i\np")
  (let ((wk (mon-string-to-hex-string :prand-hex-len 64)))
    (if (or insrtp intrp)
        (save-excursion (princ (format " \"%s\" " wk) (current-buffer)))
        wk)))
;;
;;; :TEST-ME (mon-generate-WPA-key)
;;; :TEST-ME (call-interactively 'mon-generate-WPA-key)

;;; ==============================
;;; CREATED: <Timestamp: #{2009-10-21T14:27:09-04:00Z}#{09433} - by MON KEY>
(defun mon-sha1-region (start end &optional insrtp intrp)
  "Return the sha1sum for contents of region.\n
When INSRTP is non-nil or called-interactively insert sha1 on newline.
Does not move point.\n
:SEE-ALSO `sha1-region', `sha1-string'.\n►►►."
  (interactive "r\ni\np")
  (eval-when-compile (require 'sha1))
  (let ((sha1-r (sha1-region start end)))
    ;; (sha1-string (buffer-substring-no-properties start end))))
    (if (or insrtp intrp)
        (save-excursion (newline) (princ sha1-r (current-buffer)))
        sha1-r)))

;;; ==============================
;;; :CHANGESET 2064
;;; :CREATED <Timestamp: #{2010-08-13T19:53:24-04:00Z}#{10325} - by MON KEY>
(defun mon-bool-vector-pp (bool-vec)
"Return print representation of bool-vector BOOL-VECT in various formats.\n
When BOOL-VECT length is greater than 29 return value has the format:\n
 \( :bit-string \"#*10 ... 01\" :true-table [t t ... nil t] :bool-vector BOOL-VEC \)\n
When BOOL-VECT length is less than 29 in addition to the values above return
value contains the following key value pairs:\n
 ( :binary \"#b10 ... 01\" :decimal 123 ... 9 :octal \"#o7 ... 77\" :hex \"#xFF...00\" 
   :bin-table [101 ... 010] :true-table [t t ... nil t] :bool-vector BOOL-VEC \)\n
The difference in return value for the first key as `:bit-string` instead of
`:binary` and with the string prefixed by sharpsign asterisks \"#*\" instead of
sharpsign b \"#b\" ensures that Emacs Lisp reader won't try to read the :binary
string as a number _but_ still allows us a to use the value where reasonable
with Common Lisp as a `simple-bit-vector' e.g.:\n
 \(setf  *<SOME-BIT-ARRAY>* \(make-array 8 :element-type 'bit\)\)\n
:EXAMPLE\n
\(mon-sublist 0 2 \(mon-bool-vector-pp \(make-bool-vector 29 t\)\)\)\n
\(mon-sublist 0 2 \(mon-bool-vector-pp \(make-bool-vector 30 nil\)\)\)\n
\(setq tt--bv \(make-bool-vector 28 t\)\)\n
 ;=> #&29\"\\377\\377\\377\x1f\"\n
\(vconcat tt--bv\)\n
 ;=> [t t t t t t t t t t t t t t t t t t t t t t t t t t t t t]\n
\(dolist \(tgl \(number-sequence 1 28 3\)\)
  \(unless \(eq tgl 28\)
    \(aset tt--bv tgl nil\)\)\)
\n
 ;=> #&29\"m\\333\\266\xd\"\n
\(vconcat tt--bv\)\n
 ;=> [t nil t t nil t t nil t t nil t t nil t t nil t t nil t t nil t t nil t t nil]
 ;       1       4       7        10     13     16       19       22     25      28\n
 \(mon-bool-vector-pp tt--bv\)\n
 ;=> \(:binary \"#b10110110110110110110110110110\"
      :decimal 383479222
      :octal  \"#o2666666666\"
      :hex    \"#x16db6db6\"
      :bin-table [1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0]
      :true-table [t nil t t nil t t nil t t nil t t nil
                   t t nil t t nil t t nil t t nil t t nil]
      :bool-vector #&29\"m\\333\\266\xd\"\)\n
;; Beyond the 29th bit\n
\(setq tt--bv \(make-bool-vector 31 t\)\)\n
 ;=> #&31\"\\377\\377\\377\x7f\"\n
\(dolist \(tgl \(number-sequence 1 30 3\) tt--bv\)
   \(aset tt--bv tgl nil\)\)\n
 ;=> #&31\"m\\333\\266m\"\n
\(mon-bool-vector-pp tt--bv\)\n
 ;=> \(:bin-table  [1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1]
      :true-table [t nil t t nil t t nil t t nil t t nil t
                    t nil t t nil t t nil t t nil t t nil t t]
      :bool-vector #&31\"m\\333\\266m\"\)\n
\(unintern \"tt--bv\" obarray\)\n
:NOTE Changing the prefix for the :binary keyword gets us Common Lisp's print
representation for `bit-vector's e.g.:\n
\(let \(\(bv \(make-bool-vector 29 t\)\)
      el/cl\)
  \(dolist \(tgl \(number-sequence 1 28 3\) bv\)
    \(aset bv tgl nil\)\)
  \(setq el/cl `\(:elisp-bv ,@\(mon-subseq \(mon-bool-vector-pp bv\) 1 2\)\)\)
  `\(:common-bv ,\(store-substring \(copy-sequence \(cadr el/cl\)\) 1 42\) ,@el/cl\)\)\n
:ALIASED-BY `mon-bool-vector-to-list'
:ALIASED-BY `mon-boolean-vector-to-list'
:ALIASED-BY `mon-list-ify-bool-vector'\n
:NOTE Assumes return value of `byteorder' is 108 \(big end first\).\n
:SEE-ALSO `mon-get-bit-table', `*mon-bit-table*', `mon-booleanp',
`mon-booleanp-to-binary', `mon-zero-or-onep', `mon-help-char-raw-bytes',
`mon-help-binary-representation', `fillarray'.\n►►►"
 (if (= (length bool-vec) 0)
     (error (concat 
             ":FUNCTION `mon-bool-vector-pp' "
             "-- arg BOOL-VEC has length 0 Emacs won't fetch that index, IHMO an Emacs bug"))
   (let* ((bv-len (length bool-vec))
          (w-props (<= bv-len 29))
          ;; vector of numberic 0's
          (to-bin (make-vector bv-len 0))
          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
          ;; :NOTE Can't the entire array frobbing rigmarole below be replaced:
          ;;
          ;; (mapconcat #'(lambda (vc) (format "%d" (mon-booleanp-to-binary vc))) bool-vec "") 
          ;;
          ;; Including when 0 length bvs:
          ;;
          ;; (and (mon-string-or-null-and-zerop
          ;;       (mapconcat #'(lambda (vc) 
          ;;                      (format "%d" (mon-booleanp-to-binary vc)))
          ;;                  (make-bool-vector 0 t) "")) 0)
          ;;
          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
          ;;
          ;; Make a string array of Os (char 48) -> "000 {...} 000"
          (to-bin-str (when w-props (make-string bv-len 48))))
     (dotimes (blv bv-len)
       ;; If current element bool-vector is `t'
       (when (aref bool-vec blv)
         ;; Set string char "0" at idx to "1"
         (when w-props (aset to-bin-str blv 49))
         ;; Set numeric 0 at vector idx to numeric 1
         (aset to-bin blv 1)))
     (if w-props
         (let ( ;; read the decimal numeric value of var to-bin-str "#b10{...}01"
               ;; (string-to-number "11111111111111111111111111111" 2)
               ;; :WAS (bin-str-dec (read to-bin-str)))
               (bin-str-dec (string-to-number to-bin-str 2)))
           ;; Make a binary number string "#b10{...}01" for `read'
           ;; pad it out to the MSB (bit 29) w/ "0"s
           (when w-props 
             (setq to-bin-str 
                   (concat "#b" (make-string (- 29 bv-len) 48) to-bin-str)))
            
           `(:binary      ,to-bin-str
             :decimal     ,bin-str-dec
             :octal       ,(format "#o%o" bin-str-dec)
             :hex         ,(format "#x%x" bin-str-dec)
             :bin-table   ,to-bin
             :true-table  ,(vconcat bool-vec)
             :bool-vector ,bool-vec))
         ;; Don't let it be readabe by Elisp, but let Common Lisp still
         ;; have a chance at frobbing it as a `simple-bit-vector'
       `(:bit-string ,(concat "#*" (mapconcat #'(lambda (vc) 
                                     (format "%d" (mon-booleanp-to-binary vc)))
                                 bool-vec ""))
         :bin-table   ,to-bin 
         :true-table  ,(vconcat bool-vec)
         :bool-vector ,bool-vec)))))
;;
;;; :TEST-ME (progn (setq tt--bv (make-bool-vector 29 t)) (mon-bool-vector-pp tt--bv))
;;; :TEST-ME (progn (setq tt--bv (make-bool-vector 256 t)) (mon-bool-vector-pp tt--bv))
;;; :TEST-ME (progn (setq tt--bv (make-bool-vector 0 t)) (mon-bool-vector-pp tt--bv))

;;; ==============================
;;; :CHANGESET 2064
;;; :CREATED <Timestamp: #{2010-08-16T20:10:59-04:00Z}#{10331} - by MON KEY>
(defvar *mon-bit-table* nil
  "Variable caching the results of `mon-get-bit-table'.\n
:EXAMPLE\n\n\(mapcar #'\(lambda \(urng\) 
            \(memq :max-unsigned urng\)\) *mon-bit-table*\)\n
:SEE-ALSO `mon-bool-vector-pp', `mon-help-binary-representation',
`mon-help-char-raw-bytes'.\n►►►")

;;; ==============================
;;; :PREFIX "mgbt-"
;;; :CHANGESET 2064
;;; :CREATED <Timestamp: #{2010-08-16T20:11:02-04:00Z}#{10331} - by MON KEY>
(defun mon-get-bit-table (&optional dsplyp intrp)
  "Return a list of bit values for bits 1-29.\n
When optional arg DSPLYP is non nil or called-interactively display results in
buffer named \"*MON-BIT-TABLE*\".\n
Return a list with the format:\n
 \(:bit-<N> :bit-weight N :2^ N :max-signed N :max-unsigned \(N . N\)\)\n
The values of these keys map as follows:\n
:bit-<N>       The bit identity \(0 indexed\)
:byte          The byte of the bit.
:2^            The bits value as a power of 2.
:bit-dec       The decimal value of bit at index.
:bit-oct       The octal value of bit at index.
:bit-hex       The hex value of bit at index.
:max-int       The maximimun signed number representable by bit.
:max-uint      A cons bounding the maximum unsigned range representable by bit.\n
:EXAMPLE\n\n\(assq :bit-28 \(mon-get-bit-table\)\)\n
\(memq :max-uint \(assq :bit-29 \(mon-get-bit-table\)\)\)\n
\(mon-get-bit-table t\)\n
:NOTE The first time this function is called it caches the results of its
evaluation to the variable `*mon-bit-table*'.\n
:ALIASED-BY `mon-byte-table-bits'
:ALIASED-BY `mon-bit-table-bits'\n
:SEE-ALSO `mon-bool-vector-pp' `mon-help-binary-representation',
`mon-help-char-raw-bytes', `fillarray'.\n►►►"
  (interactive "i\np")
  (let ((mgbt-gthr (when (bound-and-true-p *mon-bit-table*)
                *mon-bit-table*)))
    (when (null mgbt-gthr)
      ;; :PREFIX mgbt-D-1-
      (dotimes (mgbt-D-1 29 (progn (setq mgbt-gthr (nreverse mgbt-gthr))
                            (setq *mon-bit-table* mgbt-gthr)))
        (let* ((mgbt-D-1-nxt-i (1+ mgbt-D-1))
               (mgbt-D-1-bky       (car (read-from-string (format ":bit-%d" mgbt-D-1-nxt-i))))
               (mgbt-D-1-bit-wgt   (expt 2 mgbt-D-1))
               (mgbt-D-1-byt-wgt   (if (eq (% mgbt-D-1-nxt-i 8) 0)
                              (/ mgbt-D-1-nxt-i 8)
                            (1+ (/ (- mgbt-D-1-nxt-i (% mgbt-D-1-nxt-i 8)) 8))))
               (mgbt-D-1-oct-wgt (make-symbol (format "#o%o" mgbt-D-1-bit-wgt)))
               (mgbt-D-1-hex-wgt (make-symbol (format "#x%X" mgbt-D-1-bit-wgt)))
               ;; What no CL `reduce' at compile time w/out a
               ;; byte-compile-warning?  Thanks Emacs for protecting my
               ;; namespace... After all its not like `reduce' isn't stupid
               ;; fukcking usefull!!! Goddamn how I loathe thee CL runtime ban.
               ;; :WAS (mgbt-D-1-mx-sgn (+ mgbt-D-1-bit-wgt (reduce '+ mgbt-gthr :key 'caddr)))
               ;; 
               (mgbt-D-1-mx-sgn  (apply #'+ mgbt-D-1-bit-wgt 
                                        (mapcar #'(lambda (mgbt-L-1-fk-rdc) 
                                                    (nth 6 mgbt-L-1-fk-rdc)) mgbt-gthr)))
               (mgbt-D-1-unsgn-bot (/ (lognot mgbt-D-1-mx-sgn) 2))
               (mgbt-D-1-unsgn-top (lognot mgbt-D-1-unsgn-bot)))
          (push `(,mgbt-D-1-bky 
                  :byte ,mgbt-D-1-byt-wgt 
                  :2^ ,mgbt-D-1
                  :bit-weight ,mgbt-D-1-bit-wgt 
                  :bit-oct ,mgbt-D-1-oct-wgt 
                  :bit-hex ,mgbt-D-1-hex-wgt 
                  :max-int ,mgbt-D-1-mx-sgn 
                  :max-uint (,mgbt-D-1-unsgn-bot . ,mgbt-D-1-unsgn-top)) mgbt-gthr))))
    (when (or intrp dsplyp)
      (with-current-buffer 
          (get-buffer-create (upcase (symbol-name '*mon-bit-table*)))
        (erase-buffer)
        (save-excursion 
          (princ mgbt-gthr (current-buffer))
          (newline))
        (down-list)
        (ignore-errors (while (forward-list) (newline)))
        (save-excursion
          (mon-g2be -1)
          (forward-list)
          (backward-char 2)
          (delete-char 1))
        (emacs-lisp-mode)
        (display-buffer (current-buffer) t)))
    mgbt-gthr))
;;
;;; :TEST-ME (progn (makunbound '*mon-bit-table*) (mon-get-bit-table t))
;;; :TEST-ME (assq :bit-29 (mon-get-bit-table))
;;; :TEST-ME (memq :max-uint (assq :bit-29 (mon-get-bit-table)))

;;; ==============================
;;; :RECTANGLE-RELATED-FUNCTIONS
;;; ==============================

;;; ==============================
;;; :BUG #1184 of Thu, 16 Oct 2008 19:45:02 UTC
;;; "document how to deal with beer belly rectangles"
;;; :SEE (URL `http://emacsbugs.donarmstrong.com/cgi-bin/bugreport.cgi?bug=1184')
;;; :TODO Currently only handles situations where point is at column 0.\n
;;; :CREATED <Timestamp: #{2010-01-10T21:26:28-05:00Z}#{10017} - by MON>
(defun mon-kill-rectangle-w-beer-belly (belly-start belly-end)
  "Like `kill-rectangle' but adds trailing whitespace when column at mark is less
than the longest line in rectangle.\n
Does not handle situations where point is not at column 0.\n
The
following
is a rectangle-w-beer-belly.
The paragraph you are reading is a
potential rectangle. It is a PITA for the 
`kill-rectangle' command because it is hard to
put point and mark around being in that it is fat
in the middle. Thus, while it is easy to mark
its left side, how are you going to mark its
right upper or lower corner without
altering the buffer to add spaces
in order to get the cursor there?\n
:ALIASED-BY `mon-rectangle-kill-w-longest-line'\n
:SEE-ALSO `mon-rectangle-apply-on-region-points', `mon-rectangle-capitalize',
`mon-rectangle-columns', `mon-rectangle-downcase', `mon-rectangle-operate-on',
`mon-rectangle-sum-column', `mon-rectangle-upcase', `mon-line-length-max',
`mon-line-indent-from-to-col', `mon-line-strings-indent-to-col'.\n►►►"
  (interactive "r\n")
  (let ((max-len 0)
        fat-belly)
    (unwind-protect
         (narrow-to-region belly-start belly-end)
      (mon-g2be -1)
      (while (eq (forward-line) 0)
        (end-of-line)
        (when (> (current-column) max-len)
          (setq max-len (current-column))))
      (when (= (current-column) max-len)
        (setq fat-belly t)
        (kill-rectangle belly-start belly-end))
      (unless fat-belly
        (setq fat-belly ;; :WAS (buffer-substring-no-properties belly-start belly-end))
              (mon-buffer-sub-no-prop belly-start belly-end))
        (goto-char belly-start)
        (kill-line)
        (while (eq (forward-line) 0) (kill-line))
        (when (stringp fat-belly)
          (with-temp-buffer 
            (insert fat-belly)
            (mon-g2be -1)
            (while (eq (forward-line) 0)
              (let ((lebp `(,(line-beginning-position) . ,(line-end-position))))
                (unless (= (- (car lebp) (cdr lebp)) max-len)
                  (end-of-line) 
                  (insert (make-string (- max-len (- (cdr lebp) (car lebp))) 32)))))
            ;; :WAS (kill-rectangle (buffer-end 0) (buffer-end 1)) )))
            (kill-rectangle (mon-g2be -1 t) (mon-g2be 1 t)) )))
      (widen))))

;;; ==============================
;;; :CREATED <Timestamp: Friday June 05, 2009 @ 07:03.00 PM - by MON KEY>
(defun mon-rectangle-columns (start end)
  "Return column positions at START and END.\n
Mostly useful as a code template for rectangle related functions.\n
:SEE-ALSO `mon-rectangle-sum-column'.\n►►►"
  (interactive "r")
  (let ((col-s (make-marker))
	(col-e (make-marker))
	(cols))
    (save-excursion
      (goto-char start)
      (set-marker col-s (point))
      (goto-char end)
      (set-marker col-e (point)))
    (setq cols    `(,(car (nth 6 (posn-at-point (marker-position col-s))))
		    ,(car (nth 6 (posn-at-point (marker-position col-e))))))
    cols))

;;; ==============================
;;; :COURTESY Alex Schroeder
;;; :MODIFICATIONS Charlie Hethcoat <- Improved number regex.
;;; :MODIFICATIONS <Timestamp: #{2010-03-09T14:47:59-05:00Z}#{10102} - by MON KEY>
;;; Now dumps to temp-buffer. Added optional arg INTRP.
(defun mon-rectangle-sum-column (start end &optional intrp)
  "Add all integer, decimal, and floating-point numbers in selected rectangle.\n
Numbers which can be read include (nonexhaustive):\n
 2 +2 -2 2. +2. -2. 2.0 +2.0 -2.0 2e0 +2e0 -2e0 2E0 2e+0 2e-0, 2.e0, 2.0e0, etc.\n
:SEE-ALSO `mon-rectangle-columns', `mon-string-incr-padded',
`mon-line-number-region', `mon-string-incr', `mon-line-number-region-incr'.\n►►►"
  (interactive "r\np")
  (let ((rec-sumd 0))
    (save-excursion
      (kill-rectangle start end)
      (exchange-point-and-mark)
      (yank-rectangle)
      ;; :WAS (set-buffer (get-buffer-create "*calc-sum*")) 
      ;;        (erase-buffer) (yank-rectangle) (exchange-point-and-mark)
      (with-temp-buffer
        (save-excursion (yank-rectangle))
        (while (re-search-forward
                "[-+]?\\([0-9]+\\(\\.[0-9]*\\)?\\|\\.[0-9]+\\)\\([eE][-+]?[0-9]+\\)?"
                nil t)
          (setq rec-sumd (+ rec-sumd (string-to-number (match-string 0))))))
      (if intrp
          (message "Sum: %f" rec-sumd)
          rec-sumd))))

;;; ==============================
;;; :NOTE Functions for modifying buffer contents or display.
;;; Brings in `operation-on-rectangle' for the old-school holmessss.
;;; :COURTESY Noah Friedman <friedman@splode.com> :HIS buffer-fns.el 
;;; :WAS `operate-on-rectangle' -> `apply-on-rectangle' -> `mon-rectangle-operate-on'
;;; ==============================
(defun mon-rectangle-operate-on (rec-fun start end &rest args)
  "Call REC-FUN for each line of rectangle with corners at START, END.
REC-FUN is called with two arguments: the start and end columns of the
rectangle, plus ARGS extra arguments.  Point is at the beginning of line when
REC-FUN is called.\n
:SEE `apply-on-rectangle' in :FILE rect.el
:SEE-ALSO `mon-rectangle-operate-on', `mon-rectangle-apply-on-region-points',
`mon-rectangle-downcase', `mon-rectangle-upcase', `mon-rectangle-capitalize'.\n►►►"
  (let (startcol startpt endcol endpt)
    (save-excursion
      (goto-char start)
      (setq startcol (current-column))
      (beginning-of-line)
      (setq startpt (point))
      (goto-char end)
      (setq endcol (current-column))
      (forward-line 1)
      (setq endpt (point-marker))
      ;; Ensure the start column is the left one.
      (if (< endcol startcol)
	  (let ((col startcol))
	    (setq startcol endcol endcol col)))
      ;; Start looping over lines.
      (goto-char startpt)
      (while (< (point) endpt)
	(apply rec-fun startcol endcol args)
	(forward-line 1)))))

;;; ==============================
;;; :COURTESY Noah Friedman <friedman@splode.com> :HIS buffer-fns.el
(defun mon-rectangle-apply-on-region-points (fun start end &rest args)
  "Like `apply-on-rectangle', but pass points in the buffer instead of columns.\n
:SEE-ALSO`mon-rectangle-operate-on', `mon-rectangle-apply-on-region-points',
`mon-rectangle-downcase' `mon-rectangle-upcase' `mon-rectangle-capitalize'.\n►►►"
  (mon-rectangle-operate-on
   (lambda (bcol ecol)
     (apply fun
            (progn
              (move-to-column bcol 'coerce)
              (point))
            (progn
              (move-to-column ecol 'coerce)
              (prog1
                  (point)
                (beginning-of-line)))
            args))
   start end))

;;; ==============================
;;; :COURTESY Noah Friedman <friedman@splode.com> :HIS buffer-fns.el
(defun mon-rectangle-downcase (beg end)
  "Convert the marked rectangle to lower case.\n
:SEE-ALSO `mon-rectangle-upcase', `mon-rectangle-capitalize',
`mon-rectangle-operate-on', `mon-rectangle-apply-on-region-points'.\n►►►"
  (interactive "r")
  (mon-rectangle-apply-on-region-points 'downcase-region beg end))

;;; ==============================
;;; :COURTESY Noah Friedman <friedman@splode.com> :HIS buffer-fns.el
(defun mon-rectangle-upcase (beg end)
  "Convert the marked rectangle to upper case.
:SEE-ALSO `mon-rectangle-downcase' ,`mon-rectangle-operate-on',
`mon-rectangle-apply-on-region-points', `rect.el'."
  (interactive "r")
  (mon-rectangle-apply-on-region-points 'upcase-region beg end))

;;; ==============================
(defun mon-rectangle-capitalize (beg end)
  "Convert the marked rectangle to Title case.\n
:SEE-ALSO `mon-rectangle-downcase', `mon-rectangle-upcase', `mon-rectangle-capitalize'
`mon-rectangle-operate-on', `mon-rectangle-apply-on-region-points'.\n►►►"
  (interactive "r")
  (mon-rectangle-apply-on-region-points 'mon-region-capitalize beg end))

;;; ==============================
;;; :SYNTAX-CLASS
;;; ==============================

;;; ==============================
;;; :PREFIX "mgsa-"
;;; :CHANGESET 2180
;;; :CREATED <Timestamp: #{2010-10-10T09:17:24-04:00Z}#{10407} - by MON KEY>
(defun mon-get-syntax-at (&optional syntax-at-psn)
  "Get syntax at position. Default is position 1+ point.\n
When SYNTAX-AT-PSN an integer is non-nil examine that position from point.\n
:EXAMPLE\n\n\(mon-get-syntax-at\)\n
\(mon-get-syntax-at -8\)\n
:SEE-ALSO `mon-get-syntax-class-at'.\n►►►"
  (interactive)
  (let ((mgsa-at-pnt (if syntax-at-psn (+ (point) syntax-at-psn) (point))))
    (and (or (eobp)
             (and syntax-at-psn (or (< mgsa-at-pnt (mon-g2be -1 t))
                                    (>= mgsa-at-pnt (mon-g2be 1 t)))))
         (error (concat ":FUNCTION `mon-get-syntax-class-at' " 
                        "-- point or arg PSN exceed buffer-bounds, at point: %d")
                mgsa-at-pnt))
    `(:sytax-at  ,(syntax-after mgsa-at-pnt)
                 :char-at   ,(char-after mgsa-at-pnt)
                 :string-at ,(char-to-string (char-after mgsa-at-pnt))
                 ;; it isn't clear when/if this is relevant
                 ;; :syntax-class-at ,(mon-get-syntax-class-at mgsa-at-pnt)
                 :point-at     ,mgsa-at-pnt)))

;;; ==============================
;;; :PREFIX "mgsca-"
;;; :CHANGESET 1974
;;; :CREATED <Timestamp: #{2010-07-13T14:21:34-04:00Z}#{10282} - by MON KEY>
(defun mon-get-syntax-class-at (at-syntax-psn)
  "Return `syntax-class' at AT-SYNTAX-PSN.\n
This is just a combination of `syntax-after' and `syntax-class'.\n
 \(logand \(syntax-class \(char-syntax \(char-after \(point\)\)\)\)\n
:EXAMPLE\n\n(mon-get-syntax-class-at (1+ (point))) (\n
:SEE-ALSO `syntax-after', `syntax-class', `string-to-syntax', `char-syntax'
`mon-help-syntax-class', `mon-help-syntax-functions'.\n►►►"
  (let ((mgsca-aftr-syn 
         (progn 
           (unless (or (< at-syntax-psn  (mon-g2be -1 t))
                       (>= at-syntax-psn (mon-g2be 1 t)))
             (let ((mgsca-syn-tbl 
                    (and parse-sexp-lookup-properties
                         (get-char-property at-syntax-psn 'syntax-table))))
               (if (consp mgsca-syn-tbl) mgsca-syn-tbl
                 (aref (or mgsca-syn-tbl (syntax-table))
                       (char-after at-syntax-psn))))))))
    (and mgsca-aftr-syn (logand (car mgsca-aftr-syn) 65535))))
;;
;; This is neat:
;; (lsh 1 17) => 131072 
;; (logior 131072 255) => 131327  
;; (- 131327 131072) => 255 (#o377, #xff)

;; (lsh 4 17) ;=> 524288 
;; (logior 524288 255) ;=> 
;; (- 524543 524288) => 255

;;; ==============================
;;; :PREFIX "mltc-" rtrn-as-list
;;; :CREATED <Timestamp: Monday May 11, 2009 @ 05:07.49 PM - by MON KEY>
(defun mon-line-test-content (w-syntax-sym &optional w-return-lst)
  "Examine Syntax Location of W-SYNTAX-SYM from point.\n
When syntax W-SYNTAX-SYM is t advances point to end of syntax.
Return a formatted string describing syntax locations.
W-SYNTAX-SYM arg is a symbol of type: 'word 'whitespace or 'punctuation.
When W-RETURN-LST is non-nil returns as list.\n
:EXAMPLE\n
\(mon-line-test-content 'word)word =>
\"[line:413 word:word word-start:20267 word-end:20271]\"\n
\(mon-line-test-content 'word t\)word => 
\(413 word \"word\" 20269 20273\)
\(car cadr caddr cadddr cddddr\)
 line type found satart end\n
\(if \(> \(skip-syntax-forward \"^-\"\) 0\)
     \(mon-line-test-content 'whitespace t\)\)word more-word\n
:NOTE Function relies on current buffers local syntax table.\n
:SEE-ALSO `mon-get-syntax-class-at', `mon-get-text-properties-category', `mon-view-help-source',
`mon-help-syntax-class', `mon-help-syntax-functions'.\n►►►"
  (let* ((mltc-sytx-typ (cond ((eq w-syntax-sym 'word) 'word)
                              ((eq w-syntax-sym 'whitespace) 'whitespace)
                              ((eq w-syntax-sym 'punctuation) 'punctuation)))
	 (mltc-sytx-w-w-p (cond ((eq mltc-sytx-typ 'word)  
                                 '(mltc-sytx-typ "\w" "word-start:" "word-end:"))
                                ((eq mltc-sytx-typ 'whitespace) 
                                 '(mltc-sytx-typ "-" "spc-start:" "spc-end:"))
                                ((eq mltc-sytx-typ 'punctuation) 
                                 '(mltc-sytx-typ "." "punct-start:" "punct-end:"))))
	 (mltc-sytx-beg (caddr mltc-sytx-w-w-p))
	 (mltc-sytx-end (cadddr mltc-sytx-w-w-p))
         ;; These appear to be unused
	 ;; (starting) (ending)
         mltc-mrkr
         next)
    (setq mltc-mrkr (point-marker))
    (setq next (skip-syntax-forward (cadr mltc-sytx-w-w-p)))
    (let* ((mltc-lnap (line-number-at-pos))
	   (mltc-rng-beg (marker-position mltc-mrkr))
	   (mltc-rng-end (point))
	   (mltc-w-bfr-substr (mon-buffer-sub-no-prop mltc-rng-beg mltc-rng-end))
	   (mltc-sytx-mtch mltc-w-bfr-substr)
	   (mltc-sytx-is (cond ((and (eq mltc-sytx-typ 'whitespace) 
                                     (eq (string-match " " mltc-sytx-mtch) 0)) t)
                               ((and (eq mltc-sytx-typ 'whitespace)
                                     (not (eq (string-match " " mltc-sytx-mtch) 0))) nil)
                               ;; not testing for numbers add another case if thats whats wanted
                               ((and (eq mltc-sytx-typ 'word)
                                     (eq (string-match "[[:alpha:]]" mltc-sytx-mtch) 0)) t)
                               ((and (eq mltc-sytx-typ 'word) 
                                     (not (eq (string-match "[[:alpha:]]" mltc-sytx-mtch) 0))) nil)
                               ((and (eq mltc-sytx-typ 'punctuation)
                                     (eq (string-match "[[:punct:]]" mltc-sytx-mtch) 0)) t)
                               ((and (eq mltc-sytx-typ 'punctuation)
                                     (not (eq (string-match "[[:punct:]]" mltc-sytx-mtch) 0))) nil)))
	   (mltc-rslt-psn (cond (;; test word
                                 (and mltc-sytx-is (eq mltc-sytx-typ 'word))
                                 (format "[line:%d %s:%s %s%d %s%d]" 
                                         mltc-lnap mltc-sytx-typ mltc-sytx-mtch 
                                         mltc-sytx-beg mltc-rng-beg mltc-sytx-end mltc-rng-end))
                                ((and (not mltc-sytx-is) (eq mltc-sytx-typ 'word))
                                 (format "[line:%d %s:_no_ %s%d %s%d]"
                                         mltc-lnap mltc-sytx-typ  mltc-sytx-beg
                                         mltc-rng-beg  mltc-sytx-end mltc-rng-end))
                                (;; test whitespace
                                 (and mltc-sytx-is (eq mltc-sytx-typ 'whitespace)) 
                                 (format "[line:%d %s:_yes_ %s%d %s%d]" 
                                         mltc-lnap mltc-sytx-typ mltc-sytx-beg
                                         mltc-rng-beg mltc-sytx-end mltc-rng-end))
                                ((and (not mltc-sytx-is) (eq mltc-sytx-typ 'whitespace))
                                 (format "[line:%d %s:_no_ %s%d %s%d]"
                                         mltc-lnap mltc-sytx-typ mltc-sytx-beg
                                         mltc-rng-beg  mltc-sytx-end mltc-rng-end))
                                (;; test punctuation
                                 (and mltc-sytx-is (eq mltc-sytx-typ 'punctuation)) 
                                 (format "[line:%d %s:%s %s%d %s%d]" 
                                         mltc-lnap mltc-sytx-typ mltc-sytx-mtch
                                         mltc-sytx-beg mltc-rng-beg mltc-sytx-end mltc-rng-end))
                                ((and (not mltc-sytx-is) (eq mltc-sytx-typ 'punctuation))
                                 (format "[line:%d %s:_no_ %s%d %s%d]"
                                         mltc-lnap mltc-sytx-typ mltc-sytx-beg
                                         mltc-rng-beg  mltc-sytx-end mltc-rng-end))))
	   (mltc-rslt-lst-psn (cond (;; test word
                                     (and mltc-sytx-is (eq mltc-sytx-typ 'word))
                                     `(,mltc-lnap ,mltc-sytx-typ ,mltc-sytx-mtch
                                       ,mltc-rng-beg ,mltc-rng-end))
                                    ;; test whitespace
                                    ((and (not mltc-sytx-is) (eq mltc-sytx-typ 'word))
                                     `(,mltc-lnap ,mltc-sytx-typ
                                       nil ,mltc-rng-beg ,mltc-rng-end))
                                    ((and mltc-sytx-is (eq mltc-sytx-typ 'whitespace))	
                                     `(,mltc-lnap ,mltc-sytx-typ ,mltc-sytx-mtch
                                       ,mltc-rng-beg ,mltc-rng-end))
                                    ((and (not mltc-sytx-is) (eq mltc-sytx-typ 'whitespace))
                                     `(,mltc-lnap ,mltc-sytx-typ
                                       nil ,mltc-rng-beg ,mltc-rng-end))
                                    ;; test punctuation
                                    ((and mltc-sytx-is (eq mltc-sytx-typ 'punctuation)) 
                                     `(,mltc-lnap ,mltc-sytx-typ ,mltc-sytx-mtch
                                       ,mltc-rng-beg ,mltc-rng-end))
                                    ((and (not mltc-sytx-is) (eq mltc-sytx-typ 'punctuation))
                                     `(,mltc-lnap ,mltc-sytx-typ 
                                       nil ,mltc-rng-beg ,mltc-rng-end)))))
      (if w-return-lst
	  mltc-rslt-lst-psn
	mltc-rslt-psn))))
;;
;;; :TEST-ME (mon-line-test-content 'word t)this-word
;;; :TEST-ME (mon-line-test-content 'word)this-word
;;; :TEST-ME (mon-line-test-content 'word) this-word
;;; :TEST-ME (mon-line-test-content 'word t) this-word
;;; :TEST-ME (mon-line-test-content 'whitespace) this-word
;;; :TEST-ME (mon-line-test-content 'whitespace t) this-word
;;; :TEST-ME (mon-line-test-content 'whitespace)this-word
;;; :TEST-ME (mon-line-test-content 'whitespace t)this-word
;;; :TEST-ME (mon-line-test-content 'punctuation t),this-word
;;; :TEST-ME (mon-line-test-content 'punctuation),this-word
;;; :TEST-ME (mon-line-test-content 'punctuation t)this-word
;;; :TEST-ME (mon-line-test-content 'punctuation),his-word
;;; :TEST-ME (car (mon-line-test-content 'word t))word
;;; :TEST-ME (car (nthcdr 1 (mon-line-test-content 'word t)))word
;;; :TEST-ME (car (nthcdr 2 (mon-line-test-content 'word t)))word
;;; :TEST-ME (car (nthcdr 3 (mon-line-test-content 'word t)))word
;;; :TEST-ME (car (nthcdr 4 (mon-line-test-content 'word t)))word
;;; :TEST-ME (mon-line-test-content 'word)word => "[line:413 word:word word-start:20267 word-end:20271]"
;;; :TEST-ME (mon-line-test-content 'word t)word => (413 word "word" 20269 20273)
;;; :TEST-ME (car cadr caddr cadddr cddddr)
;;; :TEST-ME (if (> (skip-syntax-forward "^-") 0) (mon-line-test-content 'whitespace t))word more-word

;;; ==============================
;;; :PREFIX "mvhs-"
(defun mon-view-help-source ()
  "
:SEE-ALSO `mon-get-text-properties-category', `mon-line-test-content'.\n►►►"
  (interactive)
  (eval-when-compile (require 'ffap))
  (unwind-protect			;body
      (let (mvhs-get-bfr)
        (if (or (equal (buffer-name)(help-buffer))
                (string= "*Help*" (buffer-name)))
            (save-window-excursion
              (mon-g2be -1)
              (while (not (eobp))       ;
                (let ((mvhs-next-chng
                       (or (next-property-change (point) (current-buffer))
                           (point-max)))
                      mvhs-this-chng)
                  (progn
                    (goto-char mvhs-next-chng)
                    (setq mvhs-this-chng (mon-get-text-properties-category))
                    ;; Whats up with all the needless `and's?
                    (when (and (and (string= mvhs-this-chng 'help-function-def-button))
                               (and (ffap-file-at-point)))
                      (let* ((mvhs-ffap-fl (ffap-file-at-point)))
                        (view-file-other-window (ffap-file-at-point))
                        (setq mvhs-get-bfr (find-buffer-visiting mvhs-ffap-fl)))
                      mvhs-get-bfr)))))))))

;;; ==============================
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-05-27T20:09:25-04:00Z}#{10214} - by MON KEY>
(defun mon-map-obarray-symbol-plist-props (w-prop-sym &optional display-in-buffer intrp)
  "Map atoms in obarray looking for the plist property W-PROP-SYM.\n
Return the list of symbols with plist property W-PROP-SYM.\n
When called-interactively or optional arg DISPLAY-IN-BUFFER is non-nil return
values to buffer named \"*OBARRY-W-PROP-SYM-MATCHES*\".\n
If DISPLAY-IN-BUFFER is a string or buffer object that satisfies `buffer-live-p'
return results in that buffer creating one if it doesn't exist.\n
:EXAMPLE\n\n\(mon-map-obarray-symbol-plist-props 'permanent-local\)\n
\(mon-map-obarray-symbol-plist-props 'permanent-local t\)\n
\(mon-map-obarray-symbol-plist-props 'side-effect-free \(get-buffer-create \"*SIDE-EFFECT-FREE*\"\)\)\n
\(mon-map-obarray-symbol-plist-props 'side-effect-free \"*SIDE-EFFECT-FREE*\"\)\n
:SEE-ALSO `mon-plist-remove!', `mon-map-obarray-symbol-plist-props',
`mon-plist-remove-if', `mon-plist-remove-consing', `remf', `remprop',
`mon-plist-keys', `mon-help-plist-functions', `mon-help-plist-properties'.\n►►►"
  (interactive "SSearch obarray for plist property: \npp")
  ;; (intern-soft (read-string "w-prop-sym: ") )
  (let* ((mmospp-clbrp 'mmospp-clbrp)
         (mmospp-bfr (when display-in-buffer 
                       (cond ((buffer-live-p display-in-buffer) 
                              (setplist mmospp-clbrp '(no-clobber t))
                              display-in-buffer)
                             ((stringp display-in-buffer)
                              (when (buffer-live-p (get-buffer display-in-buffer)) 
                                (setplist mmospp-clbrp '(no-clobber t))
                                (get-buffer-create display-in-buffer)))
                             ((or intrp t) 
                              (setplist mmospp-clbrp '(no-clobber nil))
                              (get-buffer-create "*OBARRY-W-PROP-SYM-MATCHES*"))))))
    ;; (get mmospp-clbrp 'no-clobber)))
    ;; (mon-map-obarray-symbol-plist-props nil (current-buffer))
    (when (and mmospp-bfr (not (get mmospp-clbrp 'no-clobber)))
      (with-current-buffer mmospp-bfr (erase-buffer)))
    (mapatoms #'(lambda (mmospp-L-1) 
                  (when (plist-get (symbol-plist mmospp-L-1)  w-prop-sym)
                    (if display-in-buffer
                        (progn
                          ;;(princ (identity mmospp-L-1)  (get-buffer mmospp-bfr))
                          (princ (format "%s\n" (identity mmospp-L-1))
                                 (get-buffer mmospp-bfr)))
                      ;;(princ "\n" (get-buffer mmospp-bfr)))
                      (push mmospp-L-1 mmospp-bfr)))))
    (if display-in-buffer 
        (with-current-buffer mmospp-bfr
          (if (eq (mon-g2be -1 t)(mon-g2be 1 t))
              (unwind-protect
                  (message (concat ":FUNCTION `mon-map-obarray-symbol-plist-props' " 
                                   "-- search in obarray for symbols with property `%S' "
                                   "did not return displayable results") w-prop-sym)
                (when (eq (current-buffer) 
                          (get-buffer "*OBARRY-W-PROP-SYM-MATCHES*"))
                  (kill-buffer)))
            (progn
              (sort-lines nil (mon-g2be -1 t)(mon-g2be 1 t))
              (mon-line-strings-bq-qt-sym-bol (mon-g2be -1 t)(1- (mon-g2be 1 t)) t)
              (let ((comment-start ";;")
                    (comment-style 'indent))
                (comment-region (mon-g2be -1 t)(mon-g2be 1 t)))
              (emacs-lisp-mode)
              (mon-g2be -1)
              (insert (format ";; (mon-map-obarray-symbol-plist-props '%S)" w-prop-sym))
              (display-buffer mmospp-bfr t)))))
    mmospp-bfr))
;;
;;; :TEST-ME (mon-map-obarray-symbol-plist-props 'permanent-local)
;;; :TEST-ME (mon-map-obarray-symbol-plist-props 'permanent-local t)

;;; ==============================
;;; :NOTE Fashioned after `with-help-window's `list-of-window-tuples' :FILE help.el
;;; :CHANGESET 2101
;;; :CREATED <Timestamp: #{2010-08-31T19:04:24-04:00Z}#{10352} - by MON KEY>
(defun mon-map-windows->plist ()
  "Return a list of plist's mapping window properties of windows on all frames.\n
Does not return for mini-buffers.\n
plist elements of returned list have the format:\n
 \(:window                 <WINDOW>
  :window-frame           <FRAME>
  :window-buffer          <BUFFER>
  :window-buffer-name     <BUFFER-NAME>
  :window-buffer-visiting <FILE-NAME> 
  :window-point           <INTEGER>
  :window-start           <INTEGER>
  :window-end             <INTEGER>
  :window-point-col-row \(:posn-col <INTEGER> 
                         :posn-row <INTEGER>\)
  :window-edges \(:left   <INTEGER> 
                 :top    <INTEGER>
                 :right  <INTEGER>
                 :bottom <INTEGER>\)
  :window-point-char-width-height \(:char-width  <INTEGER>
                                   :char-height <INTEGER>\)\)\n
:EXAMPLE\n\n(mon-map-windows->plist\)\n
\(mapcar #'\(lambda \(pl\) \(plist-get pl :window-buffer-name\)\) \(mon-map-windows->plist\)\)\n
\(mapcar #'\(lambda \(pl\) \(plist-get pl :window\)\) \(mon-map-windows->plist\)\)\n
\(mapcar #'\(lambda \(pl\) \(plist-get pl :window-point\)\) \(mon-map-windows->plist\)\)\n
\(mon-mapcar #'mon-plist-keys \(mon-map-windows->plist\)\)\n
:ALIASED-BY `mon-get-window-plist'
:ALIASED-BY `mon-window-map-active-to-plist'\n
:SEE-ALSO `mon-get-buffer-window-if', `mon-plist-keys',
`mon-map-obarray-symbol-plist-props', `mon-list-all-properties-in-buffer',
`mon-help-window-functions', `mon-help-plist-functions',
`mon-help-plist-properties'.\n►►►"
  (let (mmwp-wdo-l)
    (walk-windows
     #'(lambda (window)
         (let* ((mmwp-wdo         window)
                (mmwp-wdo-pnt     (window-point mmwp-wdo))
                (mmwp-wdo-dbind   
                 (destructuring-bind (dbnd-w psn-area psn-area-cns tsmp obj 
                                            pos pos-col/row img img-x/y w/h)
                     (posn-at-point mmwp-wdo-pnt mmwp-wdo)
                   (list :window dbnd-w
                         :window-frame (window-frame   dbnd-w)
                         :window-buffer (window-buffer dbnd-w)
                         :window-buffer-name (buffer-name (window-buffer dbnd-w))
                         :window-buffer-visiting (buffer-file-name (window-buffer dbnd-w))
                         :window-point pos
                         :window-start (window-start dbnd-w)    
                         :window-end   (window-end   dbnd-w)
                         :window-point-col-row 
                         `(:posn-col ,(car pos-col/row) :posn-row ,(cdr pos-col/row))
                         :window-edges 
                         (destructuring-bind (lft top rgt btm) (window-edges dbnd-w)
                           (list :left lft :top top :right rgt :bottom btm))
                         ;; psn-area psn-area-cns ;; tsmp ;; obj ;; img img-x/y
                         :window-point-char-width-height 
                         `(:char-width ,(car w/h) :char-height ,(cdr w/h))))))
           (push mmwp-wdo-dbind mmwp-wdo-l)))
     'no-mini t)
    mmwp-wdo-l))

;;; ==============================
;;; :ELISP-RELATED
;;; ==============================

;;; ==============================
;;; :CHANGESET 2202 <Timestamp: #{2010-10-21T13:03:09-04:00Z}#{10424} - by MON KEY>
;;; :CREATED <Timestamp: Wednesday June 03, 2009 @ 06:31.33 PM - by MON KEY>
;;; ==============================
(defun mon-elt-> (w-after-lst after-elt w-insert-after-elt)
  "Insert W-INSERT-AFTER-ELT AFTER-ELT into W-AFTER-LST.\n
:SEE-ALSO `mon-elt->', `mon-elt->elt', `mon-elt-<', `mon-elt-<elt',
`mon-sublist', `mon-sublist-gutted', `mon-map-append', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-combine', `mon-recursive-apply',
`mon-intersection', `mon-remove-if', `mon-mapcar'.\n►►►"
  (unless (mon-list-proper-p  w-after-lst) 
    (error (concat ":FUNCTION `mon-elt->' " 
                   "-- arg W-AFTER-LST does not satisfy `mon-list-proper-p', got: %S")
           w-after-lst))
  (push w-insert-after-elt (cdr (member after-elt w-after-lst)))
  w-after-lst)
;;
(defun mon-elt-<  (w-before-lst before-elt w-insert-before-elt)
  "Insert W-INSERT-BEFORE-ELT before BEFORE-ELT in W-BEFORE-LST.\n
:EXAMPLE\n\n\(let \(\(mutate-lst  '\(a b c d\)\)\)
              \(mon-elt-< mutate-lst 'b '\(bu bb a\)\)
              mutate-lst\)\n
:SEE-ALSO `mon-elt->', `mon-elt->elt', `mon-elt-<', `mon-elt-<elt',
`mon-sublist', `mon-sublist-gutted', `mon-map-append', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-combine', `mon-recursive-apply',
`mon-intersection', `mon-remove-if', `mon-mapcar'.\n►►►"
  (unless (mon-list-proper-p  w-before-lst) 
    (error (concat ":FUNCTION `mon-elt-<' " 
                   "-- arg W-BEFORE-LST does not satisfy `mon-list-proper-p', got: %S")
           w-before-lst))
  (nreverse (mon-elt-> (nreverse w-before-lst) before-elt w-insert-before-elt)))
;;
(defun mon-elt->elt (w-old-make-new-lst w-old-elt w-new-elt)
  "Set W-OLD-ELT to W-NEW-ELT in W-OLD-MAKE-NEW-LST.\n
:EXAMPLE\n\n\(mon-elt-<elt '\(a b c d\) 'd  'b\)\n
:SEE-ALSO `mon-elt->', `mon-elt->elt', `mon-elt-<', `mon-elt-<elt',
`mon-sublist', `mon-sublist-gutted', `mon-map-append', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-combine', `mon-recursive-apply',
`mon-intersection', `mon-mapcar'.\n►►►"
  (unless (mon-list-proper-p  w-old-make-new-lst) 
    (error (concat ":FUNCTION 'mon-elt->elt " 
                   "-- arg W-OLD-MAKE-NEW-LST does not satisfy `mon-list-proper-p', got: %S")
           w-old-make-new-lst))
  (setcar (member w-old-elt w-old-make-new-lst) w-new-elt)
  w-old-make-new-lst)
;;
(defun mon-elt-<elt (w-exchange-lst w-exchange-from-elt w-exchange-to-elt) ;; (list el1 el2)
  "Exchange places of w-exchange-from-elt and w-exchange-to-elt in W-EXCHANGE-LST.\n
W-EXCHANGE-LST is a proper-list which satisfies the predicate `mon-list-proper-p'.
Signal an error when it is not.\n
Args W-EXCHANGE-FROM-ELT W-EXCHANGE-TO-ELT are existing elts in list which satisfy `member'
Signal an error when wither is not.\n
:EXAMPLE\n\n\(mon-elt-<elt '\(a b c d\) 'd  'b\)\n
:SEE-ALSO `mon-elt->', `mon-elt->elt', `mon-elt-<', `mon-elt-<elt',
`mon-sublist', `mon-sublist-gutted', `mon-map-append', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-combine', `mon-recursive-apply',
`mon-intersection', `mon-remove-if', `mon-mapcar'.\n►►►"
  (or (and (not (mon-list-proper-p  w-exchange-lst))
           (error (concat ":FUNCTION `mon-elt-<elt' " 
                          "-- arg W-EXCHANGE-LST does not satisfy `mon-list-proper-p', got: %S")
                  w-exchange-lst))
      (and (null (member w-exchange-from-elt w-exchange-lst))
           (error (concat ":FUNCTION `mon-elt-<elt' "
                          "-- arg W-EXCHANGE-FROM-ELT not member of W-EXCHANGE-LST, got: %S")
                  w-exchange-from-elt))
      (and (null (member w-exchange-to-elt  w-exchange-lst))
           (error (concat ":FUNCTION `mon-elt-<elt' "
                          "-- arg W-EXCHANGE-TO-ELT not member of W-EXCHANGE-LST, got: %S")
                  w-exchange-to-elt)))
  (mon-elt->elt w-exchange-lst w-exchange-from-elt w-exchange-to-elt)
  (mon-elt->elt w-exchange-lst w-exchange-to-elt w-exchange-from-elt))

;;; ==============================
;;; :COURTESY :FILE macroexp.el :WAS `maybe-cons'
;;; :CHANGESET 2017
;;; :CREATED <Timestamp: #{2010-07-31T16:27:59-04:00Z}#{10306} - by MON KEY>
(defun mon-maybe-cons (w-car w-cdr original-cons)
  "Return a consed pair W-CAR and W-CDR. 
If W-CAR and W-CDR are each cons cells of ORIGINAL-CONS return ORIGINAL-CONS.\n
If not, cons em up.\n
:EXAMPLE\n\n\(let \(\(oc '\(q . z\)\)\)
 `\(,\(mon-maybe-cons 'q  'z oc\) ,\(mon-maybe-cons 'q  '8 oc\) ,oc\)\)=n
:SEE-ALSO `mon-delq-cons', `mon-list-make-unique', `mon-list-match-tails',
`mon-list-reorder', `mon-list-proper-p', `mon-intersection', `mon-remove-if',
`mon-combine', `mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-sublist', `mon-sublist-gutted', `mon-remove-dups',
`mon-assoc-replace', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-mapcar'.\n►►►"
  (if (and (eq w-car (car original-cons)) 
           (eq w-cdr (cdr original-cons)))
      original-cons
    (cons w-car w-cdr)))

;;; ==============================
;;; :PREFIX "mdc-"
;;; :COURTESY :FILE lisp/format.el :WAS `format-delq-cons'
;;; :CHANGESET 2000 
;;; :CREATED <Timestamp: #{2010-07-27T16:38:27-04:00Z}#{10302} - by MON KEY>
(defun mon-delq-cons (w-cons w-list)
  "Remove the given CONS from LIST by side effect and return the new LIST.\n
:NOTE CONS may be the first elt of LIST, to ensure changing value of `foo' do:\n
 \(setq foo \(mon-delq-cons element foo\)\)\n
:SEE-ALSO `mon-delq-dups', `mon-remove-dups', `mon-remove-if',
`mon-list-make-unique', `mon-delq-alist' `mon-maybe-cons', `mon-list-match-tails',
`mon-list-reorder', `mon-nshuffle-vector', `mon-list-nshuffle',
`mon-list-shuffle-safe', `mon-list-proper-p', `mon-intersection', `mon-combine',
`mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-sublist', `mon-sublist-gutted', `mon-remove-dups',
`mon-assoc-replace', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt'.\n►►►"
  (if (eq w-cons w-list)
      (cdr w-list)
    (let ((mdc-p w-list))
      (while (not (eq (cdr mdc-p) w-cons))
	(if (null mdc-p) 
            (error (concat ":FUNCTION `mon-delq-cons' "
                         " -- cell of W-LIST not an element: %S") mdc-p))
	(setq mdc-p (cdr mdc-p)))
      ;; Now (cdr p) is the cons to delete
      (setcdr mdc-p (cdr w-cons))
      w-list)))

;;; ==============================
;;; :CHANGESET 2211
;;; :CREATED <Timestamp: #{2010-10-27T13:45:58-04:00Z}#{10433} - by MON KEY>
;; (unless (and (intern-soft "mon-list-get-non-zerop")
;;              (fboundp 'mon-list-get-non-zerop))
;; (defalias 'mon-list-get-non-zerop 'version-list-not-zero))


;;; ==============================
;;; :WAS `randomize'
;;; :COURTESY gene.ressler@gmail.com comp.lang.lisp 2010-08-01
(defun mon-list-nshuffle (mk-list-random)
  "Destructively permute a list in place by changing cdr's.\n
It provably generates all permutations with equal probability, is
probabilistically faster than quicksort on randomly ordered input, and
uses O(log n) space.\n
:EXAMPLE\n\n\(mon-list-nshuffle-TEST 1000\)\n
\(let \(\(froggy '\(\"went\" \"a\" \"courtin'\" \"and\" \"he\" \"did\" \"ride\"\)\)
      bubba\)
  \(setq bubba froggy\)
  \(setq froggy `\(,:froggy-shuffled ,\(mon-list-nshuffle froggy\) 
                 ,:froggy-clobbered ,bubba\)\)\)
:NOTE To to be sure of changing the value of froggy, setters should write:\n
 \(setq froggy \(mon-list-nshuffle froggy\)\)\n 
:SEE (URL `http://groups.google.com/group/comp.lang.lisp/browse_frm/thread/230204ed6c092b6d#')
:SEE-ALSO `mon-list-shuffle-safe', `mon-nshuffle-vector', `mon-delq-dups',
`mon-remove-dups', `mon-remove-if', `mon-list-make-unique', `mon-maybe-cons',
`mon-list-match-tails', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe',`mon-list-proper-p',
`mon-intersection', `mon-combine', `mon-map-append', `mon-maptree',
`mon-mapcar',`mon-transpose', `mon-flatten', `mon-recursive-apply',
`mon-sublist', `mon-sublist-gutted', `mon-remove-dups', `mon-assoc-replace',
`mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt',
`slime-shuffle-list', `shuffle-vector'.\n►►►"
  (labels ((mrndz-f (mrndz-p mrndz-len mrndz-tl)
              (cond ((null mrndz-p) mrndz-tl)
                   (t (loop
                         with mrndz-ne = (random mrndz-len)
                         with mrndz-e = nil
                         with mrndz-n1 = 0
                         with mrndz-n2 = 0
                         with mrndz-l1 = nil
                         with mrndz-l2 = nil
                         with mrndz-nxt = nil
                         repeat mrndz-len
                         do
                           (setf mrndz-nxt (cdr mrndz-p))
                           (cond ((zerop mrndz-ne) (setf mrndz-e mrndz-p))
                                 (t
                                  (cond ((zerop (random 2))
                                         (setf (cdr mrndz-p) mrndz-l1)
                                          (setf mrndz-l1 mrndz-p)
                                         (incf mrndz-n1))
                                        (t
                                         (setf (cdr mrndz-p) mrndz-l2)
                                         (setf mrndz-l2 mrndz-p)
                                         (incf mrndz-n2)))))
                           (decf mrndz-ne)
                           (setf mrndz-p mrndz-nxt)
                         finally
                           (setf (cdr mrndz-e) mrndz-tl)
                           (return (if (> mrndz-n1 mrndz-n2)
                                       (mrndz-f mrndz-l1 mrndz-n1 (mrndz-f mrndz-l2 mrndz-n2 mrndz-e))
                                       (mrndz-f mrndz-l2 mrndz-n2 (mrndz-f mrndz-l1 mrndz-n1 mrndz-e)))))))))
    (mrndz-f mk-list-random (length mk-list-random) nil)))

;;; ==============================
;;; :PREFIX "mlss-"
;;; :CREATED <Timestamp: #{2010-08-09T16:40:02-04:00Z}#{10321} - by MON>
(defun mon-list-shuffle-safe (list-to-shuffle &optional w-no-errors)
  "Shuffle contents of LIST-TO-SHUFFLE non-destructively.\n
When LIST-TO-SHUFFLE is non-nil, not a `type-of' cons or vector, or does not
satisfy the predicate `mon-list-proper-p' signal an error.\n
When optional arg W-NO-ERRORS is non-nil do not signal an error instead return nil.\n
:EXAMPLE\n\n\(let \(\(tst-mlss '\(a \(b . c\) q\)\)\)
  `\(:w-shuffle ,\(mon-list-shuffle-safe tst-mlss\) :w/o-shuffle ,tst-mlss\)\)\n
\(mon-list-shuffle-safe '\(a b c q\)\)\n
\(mon-list-shuffle-safe '\(a \(b . c\) q\)\)\n
\(mon-list-shuffle-safe  [a \(b . c\) q]\)\n
\(mon-list-shuffle-safe  [a \[b c\] q]\)\n
\(mon-list-shuffle-safe nil\)\n
\(mon-list-shuffle-safe '\(\)\)\n
;; :NOTE Following will fail:
\(mon-list-proper-p '\(a \(b . c\) . q\)\)\n
\(mon-list-shuffle-safe \"won't shuffle\"\)\n
:SEE-ALSO `mon-list-nshuffle', `mon-nshuffle-vector', `mon-delq-dups',
`mon-remove-dups', `mon-remove-if', `mon-list-make-unique', `mon-maybe-cons',
`mon-list-match-tails', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe',`mon-list-proper-p',
`mon-intersection', `mon-combine', `mon-map-append', `mon-maptree',
`mon-mapcar', `mon-transpose', `mon-flatten', `mon-recursive-apply', `mon-sublist',
`mon-sublist-gutted', `mon-remove-dups', `mon-assoc-replace', `mon-moveq',
`mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt',
`mon-list-nshuffle-TEST', `shuffle-vector', `slime-shuffle-list'.\n►►►"
  (let* ((vflg (vectorp list-to-shuffle))
         (mlss-lst (or (and vflg (copy-tree list-to-shuffle t))
                       (copy-tree list-to-shuffle))))
    (if (null mlss-lst)
        mlss-lst
      (if (or vflg
              (and (not vflg)
                   (eq (type-of mlss-lst) 'cons)
                   (mon-list-proper-p mlss-lst)))
          (setq mlss-lst 
                (or (and vflg (mon-nshuffle-vector mlss-lst))
                    (append (mon-nshuffle-vector (vconcat mlss-lst)) nil)))
        (if w-no-errors
            nil
          (error 
           (concat ":FUNCTION `mon-list-shuffle-safe' "
                   "-- arg LIST-TO-SHUFFLE null or not `mon-list-proper-p', got: %S") 
           list-to-shuffle))))))
;;
;;; :TEST-ME (let ((tst-mlss '(a (b . c) q)))
;;;          `(:w-shffl ,(mon-list-shuffle-safe tst-mlss) :w/o-shffl ,tst-mlss))

;;; ==============================
;;; :PREFIX "mls-"
;;; :COURTESY Geoff Summerhayes comp.lang.lisp :WAS `sift-list'
;;; :DATE Tue, 21 May 2002 18:41:19 GMT
;;; :SUBJECT Re: Stumped (basic LISP question)
(defmacro mon-list-sift (sift-list &rest sift-tests)
  "SIFT-LIST with SIFT-TESTS.\n
On a Common Lisp return is as if by values.\n
:EXAMPLE\n\n
\(mon-list-sift '\( 1 2 3 4 5 6 7 8 9 10\) #'\(lambda \(x\) \(> x 4\)\)\)
;=> \(10 9 8 7 6 5\) \(4 3 2 1\)\n
\(mon-list-sift '\(1 2 3 -1 -2 -3\) #'oddp #'plusp\)
;=> \(-3 -1 3 1\) \(2\) \(-2\)\n
\(mon-list-sift '\(1 2 3 -1 -2 -3\) #'plusp #'oddp\)
;=> \(3 2 1\) \(-3 -1\) \(-2\)\n
:SEE-ALSO `mon-list-filter', `mon-list-last'.\n►►►"
  ;; Common Lisp version, note the functional `values' in the tail:
  ;; (defmacro list-sift (sift-list &rest sift-tests)
  ;; (let ((mls-gthr-sftd (mapcar #'(lambda (x) (declare (ignore x))
  ;;       				(gensym)) sift-tests))
  ;;       (sft-last (gensym)))
  ;;   `(let (,@mls-gthr-sftd ,sft-last)
  ;;      (dolist (sft-itm ,sift-list)
  ;;        (cond ,@(mapcar #'(lambda (sft-x sft-y)
  ;;                            `((funcall ,sft-x sft-itm) (push sft-itm ,sft-y)))
  ;;                        sift-tests mls-gthr-sftd)
  ;;              (t (push sft-itm ,sft-last))))
  ;;      (values ,@mls-gthr-sftd ,sft-last))))
  (let ((mls-gthr-sftd (mon-mapcar #'(lambda (mls-L-1) 
                                       (edebug-gensym "--mon-sift-cllct--")) 
                                   sift-tests))
        (mls-sft-last (edebug-gensym "--mon-sift-last--")))
    `(let (,@mls-gthr-sftd ,mls-sft-last)
       (dolist (mls-sft-itm ,sift-list)
         (cond ,@(mon-mapcar #'(lambda (mls-L-2 mls-l-3)
                                 `((funcall ,mls-L-2 mls-sft-itm) 
                                   (push mls-sft-itm ,mls-l-3)))
                             sift-tests mls-gthr-sftd)
               (t (push mls-sft-itm ,mls-sft-last))))
       (list ,@mls-gthr-sftd ,mls-sft-last))))

;;; ==============================
;;; :PREFIX "mdd-"
;;; :CHANGESET 2035
;;; :CREATED <Timestamp: #{2010-08-04T21:51:44-04:00Z}#{10313} - by MON KEY>
(defun mon-delq-dups (dup-list)
  "Like `delete-dups' but destructively removes `eq' duplicates from DUP-LIST.\n
Store the result in DUP-LIST and return it.  DUP-LIST must be a proper list.\n
Of several `eq' occurrences of an element in DUP-LIST, the first one is kept.\n
:EXAMPLE\n\n\(concat 
 \(mon-delq-dups \(append \(vconcat \"ABRAHADABRA\"\) nil\)\) 
 \"\"\)\n
:ALIASED-BY `delq-dups'
:ALIASED-BY `mon-list-delq-dups'\n
:SEE-ALSO `mon-delq-cons', `mon-delq-alist', `mon-remove-dups', `mon-remove-if',
`mon-list-make-unique', `mon-assoc-replace', `mon-list-match-tails',
`mon-list-reorder', `mon-maybe-cons', `mon-list-proper-p', `mon-intersection',
`mon-nshuffle-vector', `mon-list-nshuffle', `mon-list-shuffle-safe',
`mon-combine', `mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose',
`mon-flatten', `mon-recursive-apply', `mon-sublist', `mon-sublist-gutted',
`mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt'.\n►►►"
  (let ((md-dq-tail dup-list))
    (while md-dq-tail
      (setcdr md-dq-tail (delq (car md-dq-tail) (cdr md-dq-tail)))
      (setq   md-dq-tail (cdr md-dq-tail))))
  dup-list)
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (string-equal 
;; |  (concat (mon-delq-dups (append (vconcat "ABRAHADABRA") nil))  "")
;; |  "ABRHD")
;; `----

;;; ==============================
;;; :PREFIX "mdql-"
;;; :CREATED <Timestamp: #{2010-09-21T19:49:18-04:00Z}#{10382} - by MON>
(defun mon-deleql-dups (dup-eql-list)
  "Destructively removes `eql' duplicates from DUP-EQL-LIST.\n
Like `mon-delq-dups' and `delete-dups' but only deletes elts from list that 
are the same Lisp object.\n
:EXAMPLE\n\n
\(let \(\(cs \(copy-sequence \"q\"\)\)\)
  \(mon-deleql-dups `\(a 2.2 ,cs b q 3.3 ,cs f d e 3.3 e 1 a d  2.2 f 1 g\)\)\)\n
\(mon-deleql-dups `\(a 2.2 \"q\" b q 3.3 \"q\" f d e 3.3 e 1 a d  2.2 f 1 g\)\)\n
\(length `\(\(a a\) #2=\(#1=a #1#\) #2#\)\)\n
\(length \(mon-deleql-dups `\(\(a a\) #2=\(#1=a #1#\) #2#\)\)\)\n
:NOTE In the second example the \"q\" strings are no eql.\n
:ALIASED-BY `mon-delete-dups-eql'
:ALIASED-BY `mon-list-deleql-dups'\n
:SEE-ALSO `mon-delete-first', `mon-list-last', `mon-delete-if',
`mon-remove-if-not', `mon-remove-dups'.\n►►►"
  (let (mdql-gthr-eql mdql-fnlz-eql)
    (while dup-eql-list
      (let* ((mdql-mmql-pop (car (push (pop dup-eql-list) mdql-gthr-eql)))
             (mdql-is-mmql (memql mdql-mmql-pop dup-eql-list)))
        (if (null mdql-is-mmql)
            (push (pop mdql-gthr-eql) mdql-fnlz-eql)
          (while (and mdql-is-mmql (memql mdql-mmql-pop mdql-is-mmql)) 
            (let ((mdql-in-mmql (memql mdql-mmql-pop mdql-is-mmql)))
              (when mdql-in-mmql (setq mdql-is-mmql (cdr mdql-is-mmql)))
              (when (null (memql mdql-mmql-pop dup-eql-list))
                (push (pop mdql-gthr-eql) mdql-fnlz-eql)))))))
    (setq dup-eql-list (nreverse mdql-fnlz-eql))))

;;; ==============================
;;; :PREFIX "mdf-"
;;; :COURTESY bytecomp.el, gnus-util.el  
;;; :WAS `byte-compile-delete-first' :WAS `gnus-delete-first'
(defun mon-delete-first (list-elt in-list &optional test-pred)
  "Delete by side effect the first `eq' occurrence of LIST-ELT as member of IN-LIST.\n
:EXAMPLE\n\n \(let \(\(mdf '\(\(a b c\) b\)\)\) \(mon-delete-first '\(a b c\) mdf\) mdf\)\n
:ALIASED-BY `mon-list-delete-first'\n
:SEE-ALSO `mon-delq-dups', `mon-deleql-dups', `mon-list-last', `mon-delete-if',
`mon-remove-if-not', `mon-remove-dups', `mon-list-make-unique'.\n"
  ;; :NOTE `defsubst'd in bytecomp.el
  ;; (byte-compile-delete-first list-elt in-list))
  (if ;; :WAS (eq (car in-list) list-elt)
      (case test-pred
        (equal (equal (car in-list) list-elt))
        (eql   (eql (car in-list) list-elt))
        (t     (eq (car in-list) list-elt)))
      ;; :WAS 
      ;; (cdr in-list)
      (setq in-list (cdr in-list))
    (let ((mdf-total in-list))
      (while (and (cdr in-list)
                  ;; :WAS (not (eq (cadr in-list) list-elt))
                  (not (case test-pred
                         (equal (equal (cadr in-list) list-elt))
                         (eql   (eql   (cadr in-list) list-elt))
                         (t     (eq    (cadr in-list) list-elt)))))
        (setq in-list (cdr in-list)))
      (when (cdr in-list)
        (setcdr in-list (cddr in-list)))
      mdf-total))
  in-list)

;;; ==============================
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T17:18:18-04:00Z}#{10381} - by MON KEY>
(defun mon-list-last (in-list) ;; :NOTE Can't `defsubst' inline b/c it recurses.
  "Return the last element IN-LIST.\n
When IN-LIST satisfies `listp' and `mon-list-proper-p' return the car of last
elt in list else return the cdr of IN-LIST.\n
When IN-LIST does not satisfy `listp' return IN-LIST.\n
:EXAMPLE\n\n\(mon-list-last '\(a . b\)\)\n
\(mon-list-last '\(a b\)\)\n
\(mon-list-last '\(a b \"c\"\)\)\n
\(mon-list-last '\(a d a b . \"e\"\)\)\n
\(mon-list-last nil\)\n
:NOTE Contrast to `last' which when IN-LIST is a dotted list does not returns
the dotted list at tail not the atom in cdr of dotted list, e.g.\n
 \(last '\(a d \(a b . \"e\"\)\)\)\n
 \(mon-list-last '\(a d \(a b . \"e\"\)\)\)\n
 \(last '\(a d . \(a b . \"e\"\)\)\)\n
 \(mon-list-last '\(a d . \(a b . \"e\"\)\)\)\n
 \(last '\(\"e\" nil\)\)\n
 \(mon-list-last '\(\"e\" nil\)\)\n
 \(last '\(nil \"e\"\)\)\n
 \(mon-list-last '\(nil \"e\"\)\)\n
:SEE-ALSO `mon-list-sift', `mon-list-filter', `mon-delete-first'.\n►►►"
  (if (listp in-list)
      (cond ((mon-list-proper-p  in-list)
             (car (last in-list)))
            (t (if (atom in-list)
                   in-list
                 (progn (while (consp in-list)
                          (unless (or (null (cdr in-list))
                                      (atom in-list))
                            (setq in-list (cdr in-list)))
                          (setq in-list (mon-list-last in-list)))
                        in-list))))
    in-list))

;;; ==============================
;;; :COURTESY :FILE lisp/format.el :WAS `format-make-relatively-unique'
;;; :CHANGESET 2001
;;; :CREATED <Timestamp: #{2010-07-27T16:48:53-04:00Z}#{10302} - by MON KEY>
(defun mon-list-make-unique (list-a list-b &optional as-two-list)
  "Delete common elements of LIST-A and LIST-B.\n
Return a two elt list of with common elts of LIST-A and LIST-B removed.\n
Comparison as if by `equal'/`member'.
When optional arg AS-TWO-LIST is non-nil return as two elt list.\n
:EXAMPLE\n\n\(mon-list-make-unique '\(a b c d e f\) '\(a c e q r z\)\)\n
\(mon-list-make-unique '\(\"a\" b c d e f\) '\(a c e q r z\)\)\n
\(mon-list-make-unique '\(\"a\" b c d e g \(g g\)\) '\(\"a\" b c d e f \(f f\)\) t\)\n
:SEE-ALSO `mon-delq-dups', `mon-delq-cons', `mon-remove-if', `mon-remove-dups',
`mon-list-match-tails', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe', `mon-list-proper-p',
`mon-intersection', `mon-combine', `mon-map-append', `mon-maptree',
`mon-mapcar', `mon-transpose', `mon-flatten', `mon-recursive-apply',
`mon-sublist', `mon-sublist-gutted', `mon-assoc-replace', `mon-moveq',
`mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt'.\n►►►"
  (let* ((mlma-acopy (copy-sequence list-a))
	 (mlma-bcopy (copy-sequence list-b))
	 (mlma-tail mlma-acopy))
    (while mlma-tail
      (let ((mlma-dup (member (car mlma-tail) mlma-bcopy))
            (mlma-next (cdr mlma-tail)))
        (when mlma-dup (setq mlma-acopy (mon-delq-cons mlma-tail mlma-acopy)
                             mlma-bcopy (mon-delq-cons mlma-dup mlma-bcopy)))
        (setq mlma-tail mlma-next)))
    (if as-two-list
         `(,mlma-acopy ,mlma-bcopy)
      (cons mlma-acopy mlma-bcopy))))
;;
;;; :TEST-ME (mon-list-make-unique '("a" b c d e g (g g)) '("a" b c d e f (f f)))
;;; :TEST-ME (cdr (mon-list-make-unique '("a" b c d e g (g g)) '("a" b c d e f (f f))))
;;; :TEST-ME (car (mon-list-make-unique '("a" b c d e g (g g)) '("a" b c d e f (f f))))
;;; :TEST-ME (mon-list-make-unique '("a" b c d e g (g g)) '("a" b c d e f (f f)) t)
;;; :TEST-ME (cdr (mon-list-make-unique '("a" b c d e g (g g)) '("a" b c d e f (f f)) t))
;;; :TEST-ME (equal (mon-list-make-unique '(a b c d e f) '(a c e q r z)) '((b d f) q r z))
;;; :TEST-ME (equal (mon-list-make-unique '("a" b c d e f) '(a c e q r z)) '(("a" b d f) a q r z))

;;; ==============================
;;; :PREFIX "mrd-"
;;; :COURTESY Jared D. :WAS `remove-dupes'
;;; (URL `http://curiousprogrammer.wordpress.com/2009/07/26/emacs-utility-functions/')
;;; :CREATED <Timestamp: #{2009-08-19T20:10:43-04:00Z}#{09344} - by MON KEY>
(defun mon-remove-dups (maybe-twins-lst)
  "Remove duplicate adjoining elts in MAYBE-TWINS-LST.\n
:EXAMPLE\n\n\(mon-remove-dups '\(a a b b c a c c d\)\)\n
:ALIASED-BY `mon-list-remove-dups'\n
:SEE-ALSO `mon-list-make-unique', `mon-delq-dups', `mon-delq-alist',
`mon-delete-first', `mon-delq-cons', `mon-remove-if', `mon-intersection',
`mon-combine', `mon-map-append', `mon-mapcar', `mon-maptree', `mon-transpose',
`mon-flatten', `mon-recursive-apply', `mon-sublist', `mon-sublist-gutted',
`mon-remove-dups', `mon-assoc-replace', `mon-moveq', `mon-elt->', `mon-elt-<',
`mon-elt->elt', `mon-elt-<elt', `mon-list-match-tails', `mon-list-reorder',
`mon-list-proper-p', `mon-maybe-cons'.\n►►►"
  (let (mrd-tmp-list mrd-head)
    (while maybe-twins-lst
      (setq mrd-head (pop maybe-twins-lst))
      (unless (equal mrd-head (car maybe-twins-lst))
        (push mrd-head mrd-tmp-list)))
    (reverse mrd-tmp-list)))
;;
;; :TEST-ME (mon-remove-dups '(a a b b c a c c d))

;;; ==============================
;;; :PREFIX "mrf-"
;;; :COURTESY :FILE pcomplete.el :WAS `pcomplete-pare-list'
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T17:19:26-04:00Z}#{10381} - by MON KEY>
(defun mon-list-filter (from-lst match-lst &optional w-pred)
  "Destructively remove FROM-LST all elements matching any in MATCH-LST.
Return the resultant list.\n
Test is as if by `equal'.
When W-PRED is non-nil, it is a function which further filters FROM-LST for removal.\n
:EXAMPLE\n\n\(let \(\(l1 '\(a b c q e d 1\)\)
      \(l2 '\(q e d \"1\"\) \)\)
`\(:l1-filtered ,\(mon-list-filter l1 l2\) :l1-modified ,l1\)\)\n
\(let \(\(l1 '\(a b c q e d 1\)\)
      \(l2 '\(q e d \"1\"\) \)\)
`\(:l1-filtered-w-pred 
  ,\(mon-list-filter l1 l2 #'\(lambda \(ch\) \(and \(> \(mon-char-code ch\) 97\)\)\)\)
   :l1-modified ,l1\)\)\n
:SEE-ALSO `mon-list-sift', `mon-list-last', `mon-list-match-tails'.\n►►►"
  (while (and from-lst (or (and match-lst (member (car from-lst) match-lst))
                           (and w-pred
                                (funcall w-pred (car from-lst)))))
    (setq from-lst (cdr from-lst))) 
  (let ((mlf-w-match from-lst))
    (while mlf-w-match
      (while (and (cdr mlf-w-match)
		  (or (and match-lst (member (cadr mlf-w-match) match-lst))
		      (and w-pred
			   (funcall w-pred (cadr mlf-w-match)))))
	(setcdr mlf-w-match (cddr mlf-w-match)))
      (setq mlf-w-match (cdr mlf-w-match))))
  from-lst)

;;; ==============================
;;; :COURTESY :FILE lisp/format.el  :WAS `format-common-tail'
;;; :CHANGESET 2001
;;; :CREATED <Timestamp: #{2010-07-27T16:48:50-04:00Z}#{10302} - by MON KEY>
(defun mon-list-match-tails (comp-a comp-b)
  "Given two lists that have a common tail, return the common tail.\n
Compare and return the part of COMP-A satisfying `equal' predicate for the
equivalent part of COMP-B.\n
When the last items of the two do not satsify equivialence return nil.\n
:EXAMPLE\n\n\(mon-list-match-tails '\(\"a\" b c d e g \) '\(q z w b e g\)\)\n
\(mon-list-match-tails '\(\"a\" b c \"d\" e g q\) '\(a \"b\" \"c\" \"d\" \"e\" g q\)\)\n
\(mon-list-match-tails '\(b c \(\"d\" e g q\)\) '\(\"b\" \"c\" \(\"d\" e g q\)\)\)\n
:SEE-ALSO `mon-list-make-unique', `mon-delq-dups', `mon-list-proper-p',
`mon-list-reorder', `mon-nshuffle-vector', `mon-list-nshuffle',
`mon-list-shuffle-safe', `mon-intersection', `mon-remove-if', `mon-combine',
`mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-maybe-cons', `mon-delq-cons', `mon-remove-dups',
`mon-sublist', `mon-sublist-gutted', `mon-assoc-replace', `mon-moveq',
`mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt'.\n►►►"
  (let ((mlct-a (length comp-a))
	(mlct-b (length comp-b)))
    ;; Make sure they are the same length
    (if (> mlct-a mlct-b)
	(setq comp-a (nthcdr (- mlct-a mlct-b) comp-a))
      (setq comp-b (nthcdr (- mlct-b mlct-a) comp-b))))
  (while (not (equal comp-a comp-b))
    (setq comp-a (cdr comp-a)
          comp-b (cdr comp-b)))
    comp-a)
;;
;;; :TEST-ME (mon-list-match-tails '("a" b c d e g ) '(q z w b e g))
;;; :TEST-ME (mon-list-match-tails '("a" b c "d" e g q) '(a "b" "c" "d" "e" g q))
;;; :TEST-ME (mon-list-match-tails '(b c ("d" e g q)) '("b" "c" ("d" e g q)))

;;; ==============================
;;; :PREFIX "mlann-"
;;; :CHANGESET 2119
;;; :CREATED <Timestamp: #{2010-09-13T14:58:49-04:00Z}#{10371} - by MON KEY>
(defun mon-list-add-non-nil (add-elts-to add-elts-frm)
  "Add non-nil elements to tail of list.\n
ADD-ELTS-TO list with ADD-ELTS-FRM list. 
:EXAMPLE\n\n\(let \(\(atl  '\(8 9 10\)\)
      \(afl  '\(a nil b nil c nil d\)\)\)
  `\(:ADD-ELTS-TO ,atl 
    :ADD-ELTS-FRM ,afl
    :RETURN ,\(mon-list-add-non-nil atl afl\)\)\)\n
:SEE-ALSO `mon-list-last', `mon-delete-first', `mon-list-make-unique',
`mon-delq-dups', `mon-list-proper-p', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe', `mon-intersection',
`mon-remove-if', `mon-combine', `mon-mapcar', `mon-map-append', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-recursive-apply', `mon-maybe-cons',
`mon-delq-cons', `mon-remove-dups', `mon-sublist', `mon-sublist-gutted',
`mon-assoc-replace', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt'.\n►►►"
  (let ((mlann-atl 
         (and (not (unless (consp add-elts-to)
                     (error 
                      (concat ":FUNCTION `mon-list-add-non-nil' " 
                              "-- arg ADD-ELTS-TO does not satisfy `consp'"))))
              (reverse add-elts-to)))
        (mlann-afl 
         (and (not (unless (consp add-elts-to)
                     (error (concat 
                             ":FUNCTION `mon-list-add-non-nil' " 
                             "-- arg ADD-ELTS-FRM does not satisfy `consp'"))))
              add-elts-frm)))
    (dolist (mlann-i  mlann-afl (nreverse mlann-atl))
      (unless (car (push mlann-i mlann-atl))
        (pop mlann-atl)))))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (let ((atl  '(8 9 10)) (afl  '(a nil b nil c nil d)))
;; |   `(:ADD-ELTS-TO ,atl :ADD-ELTS-FRM ,afl 
;; |     :RETURN ,(mon-list-add-non-nil atl afl)))
;; `----

;;; ==============================
;;; :COURTESY ert/lisp/emacs-lisp/ert.el :WAS `ert--proper-list-p'
;; (defun mon-list-proper-p (x)
;;   "Return non-nil if X is a proper list, nil otherwise."
;;   (loop
;;    for firstp = t then nil
;;    for fast = x then (cddr fast)
;;    for slow = x then (cdr slow) do
;;    (when (null fast) (return t))
;;    (when (not (consp fast)) (return nil))
;;    (when (null (cdr fast)) (return t))
;;    (when (not (consp (cdr fast))) (return nil))
;;    (when (and (not firstp) (eq fast slow)) (return nil))))
;;; ==============================

;;; ==============================
;;; :COURTESY :FILE lisp/format.el :WAS `format-proper-list-p'
;;; :CHANGESET 2001
;;; :CREATED <Timestamp: #{2010-07-27T16:48:36-04:00Z}#{10302} - by MON KEY>
(defun mon-list-proper-p (putatively-proper)
  "Return t if list PUTATIVELY-PROPER is a proper list.\n
A proper list is a list ending with a nil or cdr, not an atom.\n
:EXAMPLE\n\n\(mon-list-proper-p '\(a . b\)\)\n
\(mon-list-proper-p '\(a  b\)\)\n
\(mon-list-proper-p nil\)\n
\(mon-list-proper-p '\(\)\)\n
\(mon-list-proper-p '\(nil\)\)\n
\(mon-list-proper-p '\(\(\) nil\)\)\n
\(mon-list-proper-p '\(\(\) nil . a\)\)\n
\(mon-list-proper-p '\(\(\) nil . nil\)\)\n
\(mon-list-proper-p '\(\(\) \(\) . \(\)\)\)\n
\(mon-list-proper-p '\(\(\) . \(\(\) . \(\)\)\)\)\n
:ALIASED-BY `proper-list-p'
:ALIASED-BY `mon-proper-list-p'\n
:SEE-ALSO `mon-sequence-mappable-p', `mon-maybe-cons', `mon-list-match-tails',
`mon-list-make-unique', `mon-delq-cons', `mon-delq-cons', `mon-remove-dups',
`mon-remove-if', `mon-list-reorder', `mon-assoc-replace', `mon-intersection',
`mon-combine', `mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose',
`mon-flatten', `mon-recursive-apply', `mon-sublist', `mon-sublist-gutted',
`mon-nshuffle-vector', `mon-list-nshuffle', `mon-list-shuffle-safe',
`mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt'.\n►►►"
  (when (listp putatively-proper)
    (while (consp putatively-proper)
      (setq putatively-proper (cdr putatively-proper)))
    (null putatively-proper)))
;;
;;; :TEST-ME (mon-list-proper-p '(a . b))
;;; :TEST-ME (mon-list-proper-p '(a  b))

;;; ==============================
;;; :CHANGESET 2211
;;; :CREATED <Timestamp: #{2010-10-27T15:43:58-04:00Z}#{10433} - by MON KEY>
(defun mon-sequence-mappable-p (seq-putatively-mappable &optional no-map-null
                                                        w-return-as-list)
  "Is SEQ-PUTATIVELY-MAPPABLE with: `mapc', `mapcar', or `mapconcat'.\n
Like `sequencep' but returns non-nil when an object satisfies one of the
following predicates:\n
  `stringp' `mon-list-proper-p' `bool-vector-p' `vectorp'\n
When optional arg NO-MAP-NULL is non-nil do not consider `nil' mappable.\n
When optional arg W-RETURN-AS-LIST is non-nil return a list or consed pair.
The car is non-nil if the object is mappable.
The cdr contains a type designator describing object.
Whether cdr is a cons or an atom depends on the value of the NO-MAP-NULL arg.
When NO-MAP-NULL is non-nil and object is either `t' `nil' or the empty-list
cdr of return value is a list. In such cases, its cadr will be either the symbol
`cons` or `boolean` and caddr is a truth-table as per `mon-booleanp'.
Return value when W-RETURN-AS-LIST is non-nil will have one of these forms:\n
  \(t   . cons\)                      ;; <PROPER> nil t
  \(t   . string\)                    ;; <STRING> nil t
  \(t   . vector\)                    ;; <VECTOR> nil t
  \(t   . boole-vector\)              ;; <BVECTR> nil t
  \(nil . <TYPE>\)                    ;; <TYPE>   nil t
  \(t     cons    \(nil t\)\)           ;; nil      nil t
  \(nil   boolean \(nil t\)\)           ;; nil        t t
  \(nil   boolean \(t   t\)\)           ;; t        nil t\n 
:EXAMPLE\n
\(mon-sequence-mappable-p t\)
\(mon-sequence-mappable-p t nil t\)\n
\(mon-sequence-mappable-p \(\)\)
\(mon-sequence-mappable-p \(\) nil t\)\n
\(mon-sequence-mappable-p \(\) 'no-map-null\)
\(mon-sequence-mappable-p \(\) 'no-map-null t\)\n
\(mon-sequence-mappable-p \(cons nil t\)\)
\(mon-sequence-mappable-p \(cons nil t\) nil t\)\n
\(mon-sequence-mappable-p \(make-list   8 1\) nil t\)
\(mon-sequence-mappable-p \(make-list   8 1\) nil t\)\n
\(mon-sequence-mappable-p \(make-string 8 32\)\)
\(mon-sequence-mappable-p \(make-string 8 32\) nil t\)\n
\(mon-sequence-mappable-p \(make-vector 8 0\) nil t\)
\(mon-sequence-mappable-p \(make-vector 8 0\) nil t\)\n
\(mon-sequence-mappable-p \(make-bool-vector 8 t\)\)
\(mon-sequence-mappable-p \(make-bool-vector 8 t\) nil t\)\n
\(mon-sequence-mappable-p \(current-buffer\)\)
\(mon-sequence-mappable-p \(current-buffer\) nil t\)\n
:NOTE char-tables and hashtables aren't mappable sequences use:
 `map-char-table', `maphash'\n
:NOTE This function is `print-gensym' agnostic and while following returns
correctly reporting  null when the cons is not mappable:\n
 \(let \(\(empty-cons  '\(#::not-really-here . #::neither-am-i\)\)\)
  `\(#::was-mappable   ,\(mon-sequence-mappable-p empty-cons\)
    #::was-consp      ,\(consp empty-cons\)
    #::w-empty-cons   ,empty-cons    
    #::car-empty-p ,\(not \(intern-soft \(car empty-cons\)\)\)
    #::cdr-empty-p ,\(not \(intern-soft \(cdr empty-cons\)\)\)\)\)\n
Its list conterpart however returns non-nil, maybe no what you are expecting:\n
 \(mon-with-print-gensyms
   \(let \(\(not-a-sym \(list '#::not-really-here '#::neither-am-i\)\)\)
     \(prin1 \(list '#::was-mappable
                  \(mon-sequence-mappable-p not-a-sym\)
                  not-a-sym\)\)\)\)\n
:NOTE This function differs with `sequencep' in some subtle but useful ways:\n
 - It can preempt attempts to map consed lists:\n
    \(sequencep '\(nil . t\)\)
    \(mon-sequence-mappable-p '\(nil . t\)\)\n
 - It can short-circuit a potential mapping over the empty list:\n
   Now, with NO-MAP-NULL we can say, \"Don't bother mapping if thing is null\":\n
   \(sequencep \(\)\)           
   \(mon-sequence-mappable-p \(\) t\)\n
- Likewise, if needed, we can now find out when thing was a boolean and whether
  that boolean was `t' or `nil':\n
    \(mon-sequence-mappable-p \(\) 'no-map-null t\)\n
- Additionally, when we want to map nil or the empty list but would still like
  to have access to the type of things given/gotten we can do this too,
  e.g. when passing strings, vectors, lists, (and possibly sordid other junk):\n
   \(let \(gthr \(minibuffer-message-timeout  3\)\)
     \(dolist \(mspp  `\(t nil \(a . b\) \(l i s t\) 
                      \"string\" [v e c t o r]
                      ,\(make-bool-vector 8 t\)
                      ;; Whoops, how'd these get in there?
                      ,\(make-marker\) ,\(current-buffer\)\)
                    \(setq gthr \(nreverse gthr\)\)\)
       \(let \(\(can-map \(mon-sequence-mappable-p mspp nil t\)\)\)
         \(when \(car can-map\)
           \(ignore 'do-something-here 'with 'car 'of 'can-map\)\)
         \(push can-map gthr\)\)\)
     \(prog1 gthr
       \(mapc #'\(lambda \(x\) 
                 \(when \(and \(consp \(cdr x\)\)
                            \(eq  \(cadr x\) 'cons\)
                            \(minibuffer-message \"Got us a sneaky cons.\"\)
                            \(minibuffer-message \"Dutifully mapped it anyways: %s\"
                                                \(when \(car x\) \"yep\"\)\)
                            \(minibuffer-message  
                             \"But, was it really just a `nil' in cons clothing: %s\"
                             \(when \(car \(cdaddr x\)\) \"the evidence suggests it\"\)\)\)\)\)
             gthr\)\)\)\n
:ALIASED-BY `mon-list-mappable-p'
:ALIASED-BY `mon-mappable-sequence-p'\n
:SEE-ALSO `mon-list-string-longest', `mon-map-append', `mon-map-combine',
`mon-map1', `mon-mapcan', `mon-mapcar', `mon-mapcar-mac', `mon-mapcon',
`mon-mapl', `mon-maplist', `mon-maptree', `mon-bool-vector-pp', `type-of',
`mon-get-text-properties-parse-prop-val-type-chk',
`mon-help-sequence-functions'.\n►►►"
  (let ((msmp-typ  (type-of seq-putatively-mappable))
        (msmp-bool (mon-booleanp seq-putatively-mappable))
        msmp-mybe-rtn)
    (setq msmp-typ
          (not (or (and 
                    ;; We got a boolean `t', `nil', or an empty-list.
                    ;; We make a record of this for later.
                    ;; When its a null-like we first consider both
                    ;; `nil'/empty-list to be 'boolean not a 'cons and not a
                    ;; 'symbol.  If needed we loosen accordingly in the final
                    ;; branch according to args W-RETURN-AS-LIST and NO-MAP-NULL
                    (and (cadr msmp-bool) (setq msmp-mybe-rtn 'boolean))
                    ;; If its `t' we're done.
                    (or (and (car msmp-bool) (cadr msmp-bool))
                        ;; If not its `nil' or an empty list are we gonna map it?
                        (and no-map-null (and (not (car msmp-bool)) (cadr msmp-bool)))))
                   (and (memq msmp-typ *mon-non-mappable-object-types*)
                        (setq msmp-mybe-rtn msmp-typ))
                   (and (eq msmp-typ 'cons)
                        (not (mon-list-proper-p seq-putatively-mappable))
                        (setq msmp-mybe-rtn msmp-typ))
                   ;; It is a mappable store the type into msmp-mybe-rtn but don't
                   ;; trigger the `or' conditional in so doing, and don't step
                   ;; on 'boolean if its already there.
                   (and (not msmp-mybe-rtn)
                        (setq msmp-mybe-rtn msmp-typ)
                        nil))))
    (if w-return-as-list 
        (cond ((eq msmp-mybe-rtn 'boolean)
               (if no-map-null 
                   ;; Call it a boolean, e.g: -> (t boolean ( <t|nil> t))) 
                   `(,msmp-typ ,msmp-mybe-rtn ,msmp-bool)
                 ;; If its `nil' or empty-list call it a cons but record that it
                 ;; wasn't really, e.g:
                 ;;  (t cons (nil t))
                 ;; Else, its `t' do as above and calling it a boolean.
                 (if (listp seq-putatively-mappable)
                     `(,msmp-typ cons ,msmp-bool)
                   `(,msmp-typ ,msmp-mybe-rtn ,msmp-bool))))
              ;; Return anything else as a consed pair 
              (t `(,msmp-typ . ,msmp-mybe-rtn)))
      msmp-typ)))

;;; ==============================
;;; :PREFIX "mlr-"
;;; :COURTESY :FILE lisp/format.el :WAS `format-reorder'
;;; :CHANGESET 2233
;;; :ADDED Ability to support vectors transparently.
;;; :CHANGESET 2001
;;; :CREATED <Timestamp: #{2010-10-29T13:17:11-04:00Z}#{10435} - by MON KEY>
(defun %mon-list-reorder (list-items list-order &optional remv-dups)
  "Build the partial order return value for `mon-list-reorder'.\n 
Args LIST-ITEMS and LIST-ORDER are actual proper-lists.\n
Return value from `mon-list-reorder' is coerced back to vector when SEQ-ITEMS
arg was `vectorp'.\n
:SEE-ALSO `mon-list-reorder-TEST'.\n►►►"
  (let ((mlr-lst-itm  list-items)
        (mlr-lst-ordr list-order)
        mlr-rtn)
    (setq mlr-rtn
          (if mlr-lst-ordr
              (let ((mlr-itm (member (car mlr-lst-ordr) mlr-lst-itm)))
                (if mlr-itm
                    (cons (car mlr-itm)
                          (mon-list-reorder (mon-delq-cons mlr-itm mlr-lst-itm)
                                            (cdr mlr-lst-ordr)))
                  (mon-list-reorder mlr-lst-itm (cdr mlr-lst-ordr))))
            mlr-lst-itm))
    (if remv-dups
        (delete-dups mlr-rtn)
      mlr-rtn)))

;;; ==============================
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-07-27T16:47:20-04:00Z}#{10302} - by MON KEY>
(defun mon-list-reorder (seq-items seq-order &optional remv-dups)
  "Arrange SEQ-ITEMS to follow partial order of SEQ-ORDER.\n
Arrange elts of SEQ-ITEMS `equal' to elts of SEQ-ORDER to follow SEQ-ORDER.\n
Any unmatched elts of SEQ-ITEMS will occur last in return value \(including
duplicate elts\).\n
Args SEQ-ITEMS and SEQ-ORDER are either proper-lists or vectors and should
satisfy either `mon-list-proper-p' or `vectorp', signal an error if not.\n
When SEQ-ITEMS is `vectorp' return a vector with partial order of SEQ-ORDER.\n
When SEQ-ITEMS is null return nil.\n
When SEQ-ORDER is null return SEQ-ITEMS.\n
When optional arg REMV-DUPS is non-nil return value with duplicate elements
removed \(which may be useful when the two sets are arbitrarily disjoint\).\n
Abstractly, when elt in SEQ-ORDER has a match in SEQ-ITEMS the order of elt in
SEQ-ORDER takes precedence else default to elt at index in SEQ-ITEMS, e.g.:\n
 \(mon-list-reorder 
   ; 0 1 2  3      4 5 6 7   ; index \(imaginary\)
   '\(2 6 3 \(a . b\) 1 7 7 7\)  ; seq-items
   '\(1 2 3  4      5 6 7 8\)\) ; seq-order\n
;=> \(1 2 3 6 7 \(a . b\) 7 7\)
     0 1 2 3 4  5      6 7   ; return value index 
     5 0 2 1 6  3      6 7   ; seq-items index
     4 1 2 5 5  -      6 -   ; seq-order index\n
:EXAMPLE\n\n\(mon-list-reorder '\(2 6 3 2 1\) '\(1 2 3 4 5 6\)\)\n
\(mon-list-reorder '\(q w b c s a w\) '\(a b c q z w\)\)\n
\(mon-list-reorder '(q w b c s a w) '(a b c q z w) t)\n
\(mon-list-reorder '\(q w \"string\" b c a w\) '\(a \"string\" b c q z w\)\)\n
\(mon-list-reorder '\(\(e . g\) q w b c s a w\) '\(a b c q z w\)\)\n
\(mon-list-reorder '\(q w [1 2 3] b c a w\) '\(a b c q z w\)\)\n
\(mon-list-reorder [a b q z w c] '\(a b c q z w\)\)\n
\(mon-list-reorder [a b q z w c] '[a b c q z w]\)\n
\(mon-list-reorder '\(a b q z w c\) '[a b c q z w]\)\n
\(mon-list-reorder nil nil\)\n
\(mon-list-reorder nil '\(z z a b z c q w z\)\)\n
\(mon-list-reorder '\(z z a b z c q w z\) nil\)\n
\(mon-list-reorder '\(z z a b z c q w z\) nil t\)\n
\(mon-list-reorder [z z a b z c q w z] nil\)\n
\(mon-list-reorder [z z a b z c q w z] nil t\)\n
\(mon-list-reorder-TEST\)\n
:NOTE Actual sequence reordering performed by `%mon-list-reorder'.\n
:ALIASED-BY `mon-sequence-reorder'
:ALIASED-BY `mon-reorder-vector'\n
:SEE-ALSO `mon-list-reorder-TEST', `mon-nshuffle-vector', `mon-list-nshuffle',
`mon-list-shuffle-safe', `mon-maybe-cons', `mon-delq-cons',
`mon-list-make-unique', `mon-delq-dups', `mon-list-match-tails',
`mon-list-proper-p', `mon-intersection', `mon-remove-if', `mon-combine',
`mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-sublist', `mon-sublist-gutted', `mon-remove-dups',
`mon-assoc-replace', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt'.\n►►►"
  (let (mlr-vec-flag)
    (if ;; Both SEQ-ITEMS/SEQ-ORDER or SEQ-ITEMS null. Don't bother.
        (or (and (not seq-items) (not seq-order)) (not seq-items))
        nil
      (and 
       ;; Take a gander at SEQ-ITEMS and record its type 'vec or '(...)      
       (or 
        ;; SEQ-ITEMS might be `vectorp'. If so, store that for later.
        (setq mlr-vec-flag (and (vectorp seq-items) 'vec))
        ;; SEQ-ITEMS can't be nil but could be a consed pair.
        ;; If its not, we've got a proper list, store that for later.
        (setq mlr-vec-flag (and (mon-list-proper-p seq-items) seq-items))
        ;; Its either a consed pair or something else. So, bail.
        (error (concat ":FUNCTION `mon-list-reorder' "
                       "-- arg SEQ-ITEMS not `mon-list-proper-p', "
                       "got: %S type-of: %S")
               seq-items (cdr (mon-sequence-mappable-p seq-items t t))))
       (or ;; When SEQ-ORDER is null return will always be SEQ-ITEMS so return.
        ;; (and (null seq-order)  seq-items) 
        ;; But, make sure to remove dups when REMV-DUPS is non-nil.
        (and (null seq-order)
             (or (and remv-dups
                      (setq seq-items 
                            (or (and (eq mlr-vec-flag 'vec)
                                     (vconcat (delete-dups (append seq-items nil))))
                                (delete-dups seq-items))))
                 seq-items))
        (and 
         ;; Its not null. Sould now be either `vectorp' or `mon-list-proper-p'.
         (or 
          ;; Check if SEQ-ORDER is `vectorp'. If so, coerce to list. 
          (and (vectorp seq-order) (setq seq-order (append seq-order nil)))
          (or 
           ;; Make sure its not a consed pair. 
           (mon-list-proper-p seq-order) 
           ;; Anything else signals an error.
           (error (concat ":FUNCTION `mon-list-reorder' "
                          "-- arg SEQ-ORDER not `mon-list-proper-p', "
                          "got: %S type-of: %S")
                  seq-order (cdr (mon-sequence-mappable-p seq-order t t)))))
         ;; Unless we signaled above don't stop inside the `and'.
         nil)
        ;; We now know we have sequences, no consed pairs or null values.
        (and  
         (or 
          ;; Check if SEQ-ITEMS is `vectorp'. If so, coerce to list and move on.
          (and (eq mlr-vec-flag 'vec) (setq seq-items (append seq-items nil))) t)
         (or 
          ;; When SEQ-ITEMS is `vectorp', return a vector.  We're done.
          (and (eq mlr-vec-flag 'vec) 
               (vconcat (%mon-list-reorder seq-items seq-order remv-dups)))
          ;; Args are `mon-list-proper-p', w/ `mlr-vec-flag` holding SEQ-ITEMS.
          (%mon-list-reorder mlr-vec-flag  seq-order remv-dups))))))))
;;
;;; :TEST-ME (mon-list-reorder-TEST)

;;; ==============================
;;; :CHANGESET 2178
;;; :CREATED <Timestamp: #{2010-10-04T22:35:56-04:00Z}#{10401} - by MON KEY>
(defun mon-union (lst-1 lst-2 &optional predicate)
  "Like `union' but without the CL keywords.\n
Combine lst1 and lst2 using a set-union operation.\n
The result list contains all items that appear in either lst1 or lst2.\n
This is a non-destructive function; it makes a copy of the data if necessary
to avoid corrupting the original lst1 and lst2.\n
:EXAMPLE\n\n\(mon-union '\(a b c d e\) '\(f q g h\)\)\n
\(mon-union '\(a b c d e\) nil\)\n
\(mon-union '\(c b a \"a\" d e\)  '\(\"a\" \"b\" \"c\" \"d\" \"e\"\)\)\n
\(mon-union '\(c b a \"a\" d e\)  '\(\"a\" \"b\" \"c\" \"d\" \"e\"\)
           #'\(lambda \(q y\) \(and \(stringp q\) \(not \(stringp y\)\)\)\)\)\n
\(let \(\(L1 '\(a b c d e\)\)
      \(L2 '\(f q g h\)\)\)
  `\(,\(mon-union L1 L2\) ,L1 ,L2\)\)\n
:ALIASED-BY `mon-list-union'\n
:SEE-ALSO `mon-intersection', `mon-member-if', `mon-equality-or-predicate'.\n►►►"
  (or (and (null lst-1) lst-2)
      (and (null lst-2) lst-1)
      (and (equal lst-1 lst-2) lst-1)
      (let (pred)
        
        (or (>= (length lst-1) (length lst-2))
            (setq lst-1 (prog1 lst-2 (setq lst-2 lst-1))))
        (while lst-2
          (or (mon-equality-or-predicate (or predicate 'memq) (car lst-2) lst-1)
              ;; (memq (car lst-2) lst-1)
              (push (car lst-2) lst-1))
          (pop lst-2))
        lst-1)))

;;; ==============================
;;; :PREFIX "mmi-"
;;; :COURTESY lisp/erc/erc-compat.el :WAS `erc-member-if'
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T20:41:52-04:00Z}#{10381} - by MON KEY>
(defun mon-member-if (predicate in-list)
  "Find the first item satisfying PREDICATE in IN-LIST.\n
Return the sublist of IN-LIST whose car matches.\n
:EXAMPLE\n\n\(mon-member-if #'\(lambda \(p\) \(>= p 6\)\) '\(3 2 6 7\)\)\n
:NOTE This is a keywordless replacement for CL's `member-if'.\n
:ALIASED-BY `mon-list-member-if'\n
:SEE-ALSO `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan', `mon-mapcon',
`mon-remove-if', `mon-remove-if-not', `mon-delete-if', `mon-char-code',
`mon-union', `mon-intersection'.\n►►►"
  ;; :TODO incorporate `mon-function-object-p'/`mon-mappable-sequence-p'
  (unless (functionp predicate)
    (error (concat ":FUNCTION `mon-member-if' "
                   "-- arg PREDICATE does not satisfy `functionp'")))
  (let ((mmi-ptr in-list))
    (catch 'mmi-found
      (while mmi-ptr
	(when (funcall predicate (car mmi-ptr))
	  (throw 'mmi-found mmi-ptr))
	(setq mmi-ptr (cdr mmi-ptr))))))

;;; ==============================
;;; :COURTESY lisp/erc/erc-compat.el :WAS `erc-delete-if'
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T20:41:43-04:00Z}#{10381} - by MON KEY>
(defun mon-delete-if (predicate in-seq)
  "Remove all items satisfying PREDICATE in IN-SEQ.\n
This is a destructive function: it reuses the storage of IN-SEQ
whenever possible.\n
:EXAMPLE\n\n\(mon-delete-if 'stringp '\(\"a\" \"b\" d q \(a \"a\" \"b\"\)\)\)
:NOTE This is a keywordless replacement for CL's `delete-if'.
:ALIASED-BY `mon-list-delete-if'\n
:SEE-ALSO `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan', `mon-mapcon',
`mon-remove-if', `mon-remove-if-not', `mon-delete-if', `mon-member-if',
`mon-char-code', `mon-subseq'.\n►►►"
  ;; :TODO incorporate `mon-function-object-p'/`mon-mappable-sequence-p'
  (unless (functionp predicate)
    (error (concat ":FUNCTION `mon-delete-if' "
                   "-- arg PREDICATE does not satisfy `functionp'")))
  ;; remove from car
  (while (when (funcall predicate (car in-seq))
	   (setq in-seq (cdr in-seq))))
  ;; remove from cdr
  (let ((mdi-ptr in-seq)
	(mdi-nxt (cdr in-seq)))
    (while mdi-nxt
      (when (funcall predicate (car mdi-nxt))
	(setcdr mdi-ptr (if (consp mdi-nxt)
                            (cdr mdi-nxt)
                          nil)))
      (setq mdi-ptr (cdr mdi-ptr))
      (setq mdi-nxt (cdr mdi-ptr))))
  in-seq)

;;; ==============================
;;; :PREFIX "mrin-"
;;; :COURTESY lisp/erc/erc-compat.el :WAS erc-remove-if-not
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T20:41:35-04:00Z}#{10381} - by MON KEY>
(defun mon-remove-if-not (predicate in-seq)
  "Remove all items not satisfying PREDICATE IN-SEQ.\n
This is a non-destructive function; it makes a copy of IN-SEQ to
avoid corrupting IN-SEQ.\n
:EXAMPLE\n\n
:NOTE This is a keywordless replacement for CL's `remove-if-not'.\n
:ALIASED-BY `mon-list-remove-if-not'\n
:SEE-ALSO `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan', `mon-mapcon',
`mon-remove-if', `mon-remove-if-not', `mon-delete-if', `mon-member-if',
`mon-subseq', `mon-intersection', `mon-char-code'.\n►►►"
  ;; :TODO incorporate `mon-function-object-p'/`mon-mappable-sequence-p'/`mon-equality-or-predicate'
  (unless (functionp predicate)
    (error (concat ":FUNCTION `mon-remove-if-not' "
                   "-- arg PREDICATE does not satisfy `functionp'")))
  (let (mrin-seq)
    (dolist (mrin-el in-seq)
      (when (funcall predicate mrin-el)
	(setq mrin-seq (cons mrin-el mrin-seq))))
    (nreverse mrin-seq)))

;;; ==============================
;;; :PREFIX "mri-"
;;; :COURTESY Tassilo Horn :HIS lisp/doc-view.el :WAS `doc-view-remove-if'
;;; :MODIFICATIONS <Timestamp: #{2010-04-01T11:22:35-04:00Z}#{10134} - by MON KEY>
;;; :RENAMED parameter PREDICATE -> RMV-IF-PREDICATE; LIST -> RMV-LIST; 
;;; :RENAMED local var NEW-LIST -> MRI-NEW-LIST
;;; :CREATED <Timestamp: #{2010-04-01T11:08:43-04:00Z}#{10134} - by MON KEY>
(defun mon-remove-if (rmv-if-predicate rmv-list)
  "Return RMV-LIST with all items removed that satisfy RMV-PREDICATE.\n
RMV-IF-PREDICATE is unary function.\n
:EXAMPLE\n\n\(let \(\(mri-l \(number-sequence 0 10\)\)\)
  \(mon-remove-if #'\(lambda \(chk-it\) \(oddp chk-it\)\) mri-l\)\)\n
:NOTE This is a keywordless replacement for CL's `remove-if'.\n
:ALIASED-BY `mon-list-remove-if'\n
:SEE-ALSO `mon-intersection', `mon-remove-if', `mon-combine', `mon-mapcar',
`mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-sublist', `mon-sublist-gutted', `mon-remove-dups',
`mon-assoc-replace', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-delq-cons', `mon-list-make-unique', `mon-list-match-tails',
`mon-nshuffle-vector', `mon-list-nshuffle', `mon-list-shuffle-safe',
`mon-list-reorder', `mon-list-proper-p', `mon-maybe-cons',
`mon-delq-cons'.\n►►►"
  ;; :TODO incorporate `mon-function-object-p'/`mon-mappable-sequence-p'/`mon-equality-or-predicate'
  (unless (functionp rmv-if-predicate)
    (error (concat ":FUNCTION `mon-remove-if' "
                   "-- arg RMV-IF-PREDICATE does not satisfy `functionp'")))
  (let (mri-new-list)
    (dolist (mri-item rmv-list (setq mri-new-list (nreverse mri-new-list)))
      (when (not (funcall rmv-if-predicate mri-item))
	(push mri-item mri-new-list)))))
;;
;;; :TEST-ME (let ((mri-l (number-sequence 0 10)))
;;;             (mon-remove-if #'(lambda (chk-it) (oddp chk-it)) mri-l))
;;; :WANTING (0 2 4 6 8 10)

;;; ==============================
;;; :PREFIX "mintr-"
;;; :CREATED <Timestamp: #{2010-01-22T15:12:02-05:00Z}#{10035} - by MON>
(defun mon-intersection (list1 list2 &optional do-eql do-eq)
  "Combine list1 and list2 using a set-intersection operation.\n
The result list contains all items that appear in both list1 and list2.
This is a non-destructive function; it makes a copy of the data if necessary
to avoid corrupting the original list1 and list2.\n
By default comparsion made as with `member'.\n
When optional arg DO-EQl uses `memql'.\n
When optional arg DO-EQ uses `memq'.\n
:EXAMPLE\n
\(mon-intersection \(number-sequence 8 20 2\) \(number-sequence 0 20 4\)\)\n
\(mon-intersection \(number-sequence 8 20 2\) \(number-sequence 8 20 2\)\)\n
\(mon-intersection \(number-sequence 8 20 2\) nil\)\n
\(mon-intersection nil \(number-sequence 8 20 2\)\)\n
\(mon-intersection nil nil\)\n
\(mon-intersection '\(\"str1\" sym1 \"str2\"\) '\(sym1 \"str2\"\)\)       ;`member'\n
\(mon-intersection '\(\"str1\" sym1 \"str2\"\) '\(sym1 \"str2\"\) t\)     ;`memql'\n
\(mon-intersection '\(\"str1\" \"str2\"\) '\(\"str2\"\) t\)               ;`memql'\n
\(mon-intersection '\(\"str1\" sym1 \"str2\"\) '\(sym1 \"str2\"\) nil t\) ;`memq'\n
\(mon-intersection '\(\"str1\" \"str2\"\) '\(\"str2\"\) nil t\)           ;`memq'\n
\(mon-intersection '\(sym1 sym2\) '\(sym1\)\)                       ;`memq'\n
\(mon-intersection \(number-sequence 8 20 2\) 8)                 ;Signal Error\n
:NOTE Like `intersection' from :FILE cl-seq.el adapted for use without keywords
and does not provide intelligent type checking.\n
:ALIASED-BY `mon-list-intersect'\n
:SEE-ALSO `mon-set-difference', `mon-remove-if', `mon-mapcar', `mon-map-append',
`mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan', `mon-mapcon',
`mon-remove-if-not', `mon-delete-if', `mon-member-if', `mon-subseq',
`mon-char-code' `mon-sublist', `mon-sublist-gutted', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-combine', `mon-recursive-apply',
`mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt', `mon-delq-cons',
`mon-list-make-unique', `mon-list-match-tails', `mon-list-reorder',
`mon-nshuffle-vector', `mon-list-nshuffle', `mon-list-shuffle-safe',
`smtpmail-intersection', `mon-list-proper-p'.\n►►►"
  ;; :TODO Use `mon-list-proper-p'/`mon-sequence-mappable-p' here instead.
  (unless (and (or (consp list1) (null list1))
               (or (consp list2) (null list2)))
    (error (concat ":FUNCTION `mon-intersection' "
                   "-- args LIST1 and LIST2 must be either a list or nil, " 
                   " LIST1 got: %S LIST2 got: %S") list1 list2))
  (and list1 list2
       (if (equal list1 list2)
           list1
         (let ((mintr-res nil)
               (mintr-l1 list1)
               (mintr-l2 list2)
               (mintr-cmpare-w #'(lambda (mintr-L-1 mintr-L-2) 
                              (if (or do-eql do-eq)
                                  (cond (do-eql (memql mintr-L-1 mintr-L-2))
                                        (do-eq  (memq mintr-L-1 mintr-L-2)))
                                (member mintr-L-1 mintr-L-2)))))
           (or (>= (length mintr-l1) (length mintr-l2))
               (setq mintr-l1 (prog1 mintr-l2 (setq mintr-l2 mintr-l1))))
           (while mintr-l2
             (when (funcall mintr-cmpare-w (car mintr-l2) mintr-l1)
               (push (car mintr-l2) mintr-res))
             (pop mintr-l2))
           (unless (null mintr-res)
             (setq mintr-res (nreverse mintr-res)))))))
;;
;;; (defun hfy-interq (set-a set-b)
;;;   "Return the intersection \(using `eq'\) of 2 lists."
;;;   (let ((sa set-a) (interq nil) (elt nil))
;;;     (while sa
;;;       (setq elt (car sa)
;;;             sa  (cdr sa))
;;;       (if (memq elt set-b) (setq interq (cons elt interq)))) interq))

;;; ==============================
;; :COURTESY :FILE lisp/mail/smtpmail.el :WAS `smtpmail-intersection'
;; (defun smtpmail-intersection (list1 list2)
;;   (let ((result nil))
;;     (dolist (el2 list2)
;;       (when (memq el2 list1)
;; 	(push el2 result)))
;;     (nreverse result)))
;;; ==============================

;;; ==============================
;;; :COURTESY ediff-util.el `ediff-set-difference', `ediff-member' 
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-11-02T14:14:09-04:00Z}#{10442} - by MON KEY>
(defun mon-set-difference (set1-lst set2-lst comparison-func)
  "Return all items that appear in SET1-LST but not SET2-LST.\n
The result list contains the set-difference operation of SET1-LST and SET2-LST.
Eliminates duplicates between SET1-LST and SET2-LST using COMPARISON-FUNC.\n
:EXAMPLE\n\n
\(let \(\(seta '\(b c q t\)\)
      \(setb '\(b r z v t\)\)\)
  \(equal
   \(set-difference seta setb :test 'eq\)
   \(mon-set-difference seta setb 'eq\)\)\)\n
:ALIASED-BY `mon-list-set-diff'\n
:SEE-ALSO `mon-equality-or-predicate', `mon-intersection', `mon-union',
`mon-mismatch', `mon-remove-if', `mon-mapcar', `mon-map-append', `mon-mapl',
`mon-maplist', `mon-mapcar', `mon-mapcan', `mon-mapcon', `mon-remove-if-not',
`mon-delete-if', `mon-member-if', `mon-subseq', `mon-char-code'.\n►►►"
  (let ((msd-rslt (list 'a)) ;; The 'a gives `list' something to hold onto.
        ;; :WAS `ediff-member' Use comparison-func to decide who is a member
        (msd-pred 
         #'(lambda (msd-L-1-elt msd-L-1-lst)
             (while (and msd-L-1-lst 
                         ;; :WAS (not (funcall comparison-func (car msd-L-1-lst) msd-L-1-elt)) )
                         (not (mon-equality-or-predicate comparison-func (car msd-L-1-lst) msd-L-1-elt)))
               (setq msd-L-1-lst (cdr msd-L-1-lst)))
             msd-L-1-lst)))
    (while set1-lst
      (or 
       ;; :WAS (ediff-member (car set1-lst) (cdr msd-rslt) comparison-func)
       (funcall msd-pred (car set1-lst) (cdr msd-rslt))
       ;; :WAS (ediff-member (car set1-lst) set2-lst comparison-func)
       (funcall msd-pred (car set1-lst) set2-lst)
       (nconc msd-rslt (list (car set1-lst))))
      (setq set1-lst (cdr set1-lst)))
    ;; :WAS (cdr msd-rslt)))
    (nreverse (cdr msd-rslt))))

;;
;; mon-pairlis
;; (pairlis (number-sequence 1 26) (mon-alphabet-as-list-symbolD))
;; (mon-alphabet-as-list-symbolD)
;; 
;;; (let ((bubba '(a b c d)))
;; (pairlis (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26)
;;          (a b c d e f g h i j k l m n o p q r s t u v w x y z) 


;;; ==============================
;;; :PREFIX "mclm-"
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-21T16:48:46-04:00Z}#{10382} - by MON KEY>
(defmacro mon-copy-list-mac (cpy-lst)
  "Macrofied version of `copy-list'/`copy-tree'.\n
Return a copy of list, which may be a dotted list.\n
Elements of list are not copied, just the list structure itself.\n
:EXAMPLE\n\n\(mon-copy-list-mac '\(a nil . \(c . d\)\)\)\n
\(mon-copy-list-mac '\(a b \(nil . \(c . d\)\)\)\)\n
\(mon-copy-list-mac '\(a b \(c . d\)\)\)\n
\(mon-copy-list-mac [nil 3]\)\n
\(mon-copy-list-mac '\(a b . \(c . d\)\)\)\n
\(pp-macroexpand-expression '\(mon-copy-list-mac '\(a b \(c . d\)\)\)\)\n
\(pp-macroexpand-expression '\(mon-copy-list-mac '\(a b . \(c d\)\)\)\)\n
\(pp-macroexpand-expression '\(mon-copy-list-mac '\(a b . \(c . d\)\)\)\)\n
:NOTE `copy-sequence' signals an error when we try to copy the dotted list.\n
CL `copy-list' returns a copy of CPY-LST even when a dotted list as does
`copy-tree', but the latter copies recursively along cdrs with additional checks
for vectors which we don't need/want.\n So, to avoid byte compiler warnings for
the `mon-map1' fncns we will use this litle fella instead.\n
Following checks help verify that list copies returned from `mon-copy-list-mac' and
`copy-tree' are functionaly equivalent:\n
\(let \(\(cp '\(a b . \(nil . \(c . d\)\)\)\) ;≣ \(a b nil c . d\)
      cp-mac cp-tree cp-lst-CL\)
  \(setq cp-mac    \(mon-copy-list-mac cp\)\)
  \(setq cp-tree   \(copy-tree cp\)\)
  \(setq cp-lst-CL \(copy-list cp\)\)
  `\(:macro-vrsn ,\(progn \(setcdr \(cdddr cp-mac\) \"bubba mac\"\) cp-mac\)
    :tree-vrsn  ,\(progn \(setcdr \(cdddr cp-tree\) \"bubba tree\"\) cp-tree\)
    :CL-vrsn    ,\(progn \(setcdr \(cdddr cp-lst-CL\) \"bubba CL\"\) cp-lst-CL\)
    :orig-dttd-l ,cp \)\)\n
\(let \(chk-equal\)
  \(setq chk-equal
        `\(,\(let \(\(mac-cmplx-strct '\([a nil] . \(nil . [c \(d . [q z]\)]\)\)\)
                 mac-aset-cmplx\)  
             \(setq mac-aset-cmplx \(mon-copy-list-mac mac-cmplx-strct\)\)
             \(aset \(cdr \(aref \(cddr mac-aset-cmplx\) 1\)\) 1 'bubba-aset\)
             `\(:asetd-mac ,mac-aset-cmplx :orig ,mac-cmplx-strct\)\)
          ,\(let \(\(tree-cmplx-strct '\([a nil] . \(nil . [c \(d . [q z]\)]\)\)\)
                 tree-aset-cmplx\)
             \(setq tree-aset-cmplx \(mon-copy-list-mac tree-cmplx-strct\)\)
             \(aset \(cdr \(aref \(cddr tree-aset-cmplx\) 1\)\) 1 'bubba-aset\)
             `\(:asetd-tre ,tree-aset-cmplx :orig ,tree-cmplx-strct\)\)
          ,\(let \(\(mac-setf-cmplx '\([a nil] . \(nil . [c \(d . [q z]\)]\)\)\)
                 mac-setfd\)
             \(setq mac-setfd \(mon-copy-list-mac mac-setf-cmplx\)\)
             \(setf  \(aref \(cdr \(aref \(cddr mac-setfd\) 1\)\) 1\) 'bubba-setfd\)
             `\(:setfd-mac ,mac-setfd :orig ,mac-setf-cmplx\)\)
          ,\(let \(\(tre-setf-cmplx '\([a nil] . \(nil . [c \(d . [q z]\)]\)\)\)
                 tree-setfd\)
             \(setq tree-setfd \(mon-copy-list-mac tre-setf-cmplx\)\)
             \(setf \(aref \(cdr \(aref \(cddr tree-setfd\) 1\)\) 1\) 'bubba-setfd\)
             `\(:setfd-tre ,tree-setfd :orig ,tre-setf-cmplx\)\)\)\)
  \(setq chk-equal  `\(:equal-tre-aset-orig 
                     ,\(equal \(cadr  \(assq :asetd-tre chk-equal\)\)
                             \(cadddr  \(assq :asetd-tre chk-equal\)\)\)
                     :equal-mac-aset-orig
                     ,\(equal \(cadr    \(assq :asetd-mac chk-equal\)\)
                             \(cadddr  \(assq :asetd-mac chk-equal\)\)\)
                     :equal-asetd-mac-orig-tre-orig
                     ,\(equal \(cadddr  \(assq :asetd-tre chk-equal\)\)
                             \(cadddr  \(assq :asetd-mac chk-equal\)\)\)
                     :equal-tre-setfd-orig
                     ,\(equal \(cadr  \(assq :setfd-tre chk-equal\)\)
                             \(cadddr  \(assq :setfd-tre chk-equal\)\)\)
                     :equal-mac-setfd-orig
                     ,\(equal \(cadr  \(assq :setfd-mac chk-equal\)\)
                             \(cadddr  \(assq :setfd-mac chk-equal\)\)\)
                     :equal-mac-setfd-orig-tre-setfd-orig
                     ,\(equal \(cadddr  \(assq :setfd-tre chk-equal\)\)
                             \(cadddr  \(assq :setfd-mac chk-equal\)\)\)
                     ,@chk-equal\)\)\)\n
:SEE-ALSO `mon-mapl', `mon-maplist',  `mon-mapcar', `mon-mapcan', `mon-mapcon'.\n►►►"
  (let ((mclm-res (make-symbol "mclm-res"))
        (mclm-cpy (make-symbol "mclm-cpy")))
    `(let ((,mclm-cpy ,cpy-lst)
           (,mclm-res nil))
       (if (consp ,mclm-cpy)
           (if (mon-list-proper-p ,mclm-cpy)
               ;; Could also check `vectorp' here and coerce with:
               ;; (append <VECTOR> nil) which might allow extending elisp
               ;; handling of vectors to the cl mapping fncns but would need to
               ;; record that it occured so we could coerce it back to a vector
               ;; once finished...
               (copy-sequence ,mclm-cpy)
             (progn
               (while (consp ,mclm-cpy) (push (pop ,mclm-cpy) ,mclm-res))
               (prog1 (nreverse ,mclm-res) (setcdr ,mclm-res ,mclm-cpy))))
         (car ,mclm-cpy)))))

;;; ==============================
;;; :PREFIX "mmp1-"
;;; :COURTESY SBCL :FILE sblc/src/code/list.lisp
;;; :MODIFICATIONS Now uses catch/throw instead of `return' and `setcdr' instead
;;; of `rplacd'. local var arglists now uses `mon-copy-list-mac' instead of
;;; `copy-list' to silence byte-compiler.  Elided the outer let binding of fun
;;; around `%coerce-callable-to-fun' on `fun-designator'.
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T21:07:39-04:00Z}#{10381} - by MON KEY>
(defun mon-map1 (fun-designator original-arglists accumulate take-car)
  "Helper function for implementation of CL mapping functions.\n
Used to implement following MON versions of:\n
 `mon-mapc' `mon-mapl' `mon-maplist' 
 `mon-mapcar' `mon-mapcan' `mon-mapcon'\n
Map the designated FUN-DESIGNATOR over ORIGINAL-ARGLISTS in an appropriate way.
Mapping is complete when any of the arglists runs out.\n
Until then, cdr down the arglists applying FUN-DESIGNATOR and ACCUMULATE
results as specified.\n
FUNCTION-DESIGNATOR ia a function that must take as many arguments as there are
lists in ORIGINAL-ARGLISTS.
ORIGINAL-ARGLISTS
ACCUMULATE is keyword style symbol either `:nconc` or :`list`.\n
TAKE-CAR
The mapping operation involves applying FUN-DESIGNATOR to successive sets of
ORIGINAL-ARGLISTS in which one argument is obtained from each sequence.\n
Except for `mon-mapc' and `mon-mapl', the result returned contains the results
returned by FUN-DESIGNATOR.\n
Whereas with `mon-mapc' and `mon-mapl', the resulting sequence
returned is the first-list-arg of ORIGINAL-ARGLISTS.\n
FUN-DESIGNATOR is called first on all the elements with index \"0\", then on
all those with index \"1\", and so on.  RESULT-TYPE specifies the type of
the resulting sequence.\n
 `mon-mapc'    fun-designator &rest original-arglists -> first-list-arg
 `mon-mapl'    fun-designator &rest original-arglists -> first-list-arg
 `mon-mapcar'  fun-designator &rest original-arglists -> result-list
 `mon-maplist' fun-designator &rest original-arglists -> result-list
 `mon-mapcan'  fun-designator &rest original-arglists -> concatenated-results
 `mon-mapcon'  fun-designator &rest original-arglists -> concatenated-results\n
:NOTE These mapping functions sourced from Steel Bank Common Lisp \(SBCL\).\n
:SEE :FILE sblc/src/code/list.lisp
:SEE-ALSO `mon-remove-if-not', `mon-delete-if', `mon-member-if', `mon-subseq',
`mon-intersection', `mon-mismatch', `mon-set-difference', `mon-char-code'.\n►►►"
  ;; :TODO Use (memq (mon-function-object-p fun-designator)
  ;;                 (remq 'macro *mon-function-object-types*))
  (unless 
      (functionp fun-designator) ;; (functionp 'subrp) (functionp '(lambda (x) x)) 
    (error (concat ":FUNCTION `mon-map1' "
                   "-- arg FUN-DESIGNATOR does not satisfy `functionp'")))
  ;;
  ;; :NOTE CL ANSI spec says:
  ;; "If FUNCTION is a symbol, it is `coerce'd to a function as if by
  ;; `symbol-function'."
  ;; :WAS (let ((fun (%coerce-callable-to-fun fun-designator)))
  ;;
  (let* (;; :WAS (arglists  (copy-list original-arglists))
         (mmp1-arg-lsts (mon-copy-list-mac original-arglists))
         (mmp1-rtn-list (list nil))
         (mmp1-tmp mmp1-rtn-list))
    (do ((mmp1-rslt nil)
         (mmp1-args '() '()))
        ((catch 'is-null ;; :ADDED
           (dolist (mmp1-thrw mmp1-arg-lsts nil) 
             (when (null mmp1-thrw) ;; :WAS (return t)))
               (throw 'is-null t))))
         (if accumulate
             (cdr mmp1-rtn-list)
           (car original-arglists)))
      (do ((mmp1-arg-l mmp1-arg-lsts (cdr mmp1-arg-l)))
          ((null mmp1-arg-l))
        (push (if take-car (caar mmp1-arg-l) (car mmp1-arg-l)) mmp1-args)
        (setf (car mmp1-arg-l) (cdar mmp1-arg-l)))
      (setq mmp1-rslt ;; :WAS (apply fun (nreverse mmp1-args))
            (apply fun-designator (nreverse mmp1-args)))
      (case accumulate
        (:nconc (setq mmp1-tmp (last (nconc mmp1-tmp mmp1-rslt))))
        ;; :WAS (:list (rplacd mmp1-tmp (list mmp1-rslt)) (setq mmp1-tmp (cdr mmp1-tmp)))
        (:list (setcdr mmp1-tmp (list mmp1-rslt)) 
               (setq mmp1-tmp (cdr mmp1-tmp)))))))

;;; ==============================
;;; :CHANGESET 2233
;;; :CREATED <Timestamp: #{2010-11-01T10:55:50-04:00Z}#{10441} - by MON KEY>
(defun mon-mapc (mapc-fun mapc-lst &rest more-lsts)
  ;; #!+sb-doc
  "Apply function MAPC-FUN to successive elements of MAPC-LST and MORE-LSTS.\n
`mon-mapc' is like `mon-mapcar' except that the results of applying MAPC-FUN
are not accumulated.  Return the second argument.\n
With one sequence like elisp's `mapc' with several, it is like the Common Lisp
`mapc' but without the extension to arbitrary sequence types.\n
:EXAMPLE\n
\(let \(\(dummy nil\)\)
  `\(#::w-result ,\(mon-mapc #'\(lambda \(&rest x\) 
                             \(setq dummy \(append dummy x\)\)\)
                         '\(1 2 3 4\)
                         '\(a b c d e\)
                         '\(x y z\)\)
              #::dummy ,dummy\)\)\n
:SEE-ALSO `mon-map1', `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan',
`mon-mapcon', `mon-remove-if-not', `mon-delete-if', `mon-member-if',
`mon-intersection', `mon-set-difference', `mon-mismatch', `mon-subseq'.\n►►►"
  (if more-lsts
      (mon-map1 mapc-fun (cons mapc-lst more-lsts) nil t)
    (mapc mapc-fun mapc-lst)))

;;; ==============================
;;; :COURTESY sblc/src/code/list.lisp
;;; :MODIFICATIONS renamed args function -> mapcar-fun mapcar-list -> mapcan-list
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T21:07:32-04:00Z}#{10381} - by MON KEY>
(defun mon-mapcar (mapcar-fun mapcar-lst &rest more-lsts)
  ;;#!+sb-doc
  "Apply MAPCAR-FUN to successive elements of MAPCAR-LST.\n
Return a list of values returned by successive evaluations of MAPCAR-FUN.\n
`mon-mapcar' operates on successive elements of the list arguments.\n
MAPCAR-FUN is applied to the first element of each list,, then to the second
element of each list, and so on. Iteration terminates when the shortest
list runs out, any excess elements remaining in other lists are ignored.\n
:EXAMPLE\n\n\(mon-mapcar #'\(lambda \(x &rest y\) \(cons x y\)\)
 '\(b q\) '\(c r\) '\(d s\) '\(q f\) '\(r g\) '\(s t\) 
 '\(b q\) '\(c r\) '\(d s\) '\(q f\) '\(r g\) '\(s t\)\)\n
;=> \(\(b c d q r s b c d q r s\) \(q r s f g t q r s f g t\)\)\n
\(mon-mapcar #'car '\(\(1 a\) \(2 b\) \(3 c\)\)\)\n
\(mon-mapcar #'abs '\(3 -4 2 -5 -6\)\)\n
\(mon-mapcar #'cons '\(a b c\) '\(1 2 3\)\)\n
:SEE-ALSO `mon-map1', `mon-mapc', `mon-mapl', `mon-maplist', `mon-mapcar',
`mon-mapcan', `mon-mapcon', `mon-remove-if-not', `mon-delete-if',
`mon-member-if', `mon-intersection', `mon-subseq', `mon-char-code'.\n►►►"
  (mon-map1 
   ;; fun-designator
   mapcar-fun 
   ;; original-arglists   
   (cons mapcar-lst more-lsts)
   ;; accumulate 
   :list  
   ;; take-car
   t
   ))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |
;; | ;; :NOTE Examples from the CL-ansi spec:    :EXPECT
;; |
;; | (mon-mapcar #'car '((1 a) (2 b) (3 c)))  ;; (1 2 3)
;; | (mon-mapcar #'abs '(3 -4 2 -5 -6))       ;; (3 4 2 5 6)
;; | (mon-mapcar #'cons '(A B C) '(1 2 3))    ;; ((A . 1) (B . 2) (C . 3))
;; |
;; `----

;;; ==============================
;;; :COURTESY sblc/src/code/list.lisp
;;; :MODIFICATIONS Renamed args function -> mapcan-fun list -> mapcan-list
;;; :CREATED <Timestamp: #{2010-09-19T18:25:08-04:00Z}#{10377} - by MON>
(defun mon-mapcan (mapcan-fun mapcan-lst &rest rest-lst)
  ;;#!+sb-doc
  "Apply MAPCAN-FUN to successive elts of MAPCAN-LST and if provided REST-LST.\n
Return `nconc' of MAPCAN-FUN results.\n
`mon-mapcan' is like `mon-mapcar' except the results of applying MAPCAN-FUN are
combined into a list as if by `nconc' rather than `list', e.g.:\n
 \(mon-mapcand f x1 { ... } xn\) ≡ \(apply #'nconc \(mapcar f x1 { ... } xn\)\)\n
:EXAMPLE\n\n\(mon-mapcan #'\(lambda \(x &rest y\) \(cons x y\)\)
            '\(b q\) '\(c r\) '\(d s\) '\(q f\) '\(r g\) '\(s t\) 
            '\(b q\) '\(c r\) '\(d s\) '\(q f\) '\(r g\) '\(s t\)\)\n
\(mapcan #'\(lambda \(x &rest y\) \(cons x y\)\)
        '\(b q\) '\(c r\) '\(d s\) '\(q f\) '\(r g\) '\(s t\) 
        '\(b q\) '\(c r\) '\(d s\) '\(q f\) '\(r g\) '\(s t\)\)\n
\(mon-mapcan #'\(lambda \(x y\) \(if \(null x\) nil \(list x y\)\)\)
          '\(nil nil nil d e\)
          '\(1 2 3 4 5 6\)\)\n
\(mon-mapcan #'\(lambda \(x\) \(and \(numberp x\) \(list x\)\)\)
            '\(a 1 b c 3 4 d 5\)\)\n
:SEE-ALSO `mon-map1', `mon-mapc', `mon-mapl', `mon-maplist', `mon-mapcar',
`mon-mapcan', `mon-mapcon', `mon-intersection', `mon-subseq'.\n►►►"
  (mon-map1 mapcan-fun (cons mapcan-lst rest-lst) :nconc t))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | 
;; | ;; :NOTE Examples from the CL-ansi spec:          :EXPECT
;; | 
;; | (mon-mapcan #'(lambda (x y) 
;; |                 (if (null x) nil (list x y))) ;; (D 4 E 5)
;; |             '(nil nil nil D E) ;<- Cheating :)
;; |             '(1 2 3 4 5 6))
;; | 
;; | (mon-mapcan #'(lambda (x) 
;; |                 (and (numberp x) (list x)))   ;; (1 3 4 5)
;; |             '(a 1 b c 3 4 d 5))
;; | 
;; `----

;;; ==============================
;;; :COURTESY sblc/src/code/list.lisp
;;; :MODIFICATIONS renamed args function -> mapl-fun list -> mapl-list
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T21:07:11-04:00Z}#{10381} - by MON KEY>
(defun mon-mapl (mapl-fun mapl-lst &rest more-lsts)
  ;;#!+sb-doc
  "Apply MAPL-FUN to successive cdrs of MAPL-LST. Return nil.\n
`mon-mapl' is like `mon-maplist' except that the results of applying MAPL-FUN
are not accumulated; mapl-lst is returned.
:EXAMPLE\n\n
:SEE-ALSO `mon-map1', `mon-mapc', `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan',
`mon-mapcon', `mon-remove-if-not', `mon-delete-if', `mon-member-if',
`mon-intersection', `mon-subseq', `mon-char-code'.\n►►►"
  (mon-map1 mapl-fun (cons mapl-lst more-lsts) nil nil))

;;; ==============================
;;; :COURTESY sblc/src/code/list.lisp
;;; :MODIFICATIONS renamed args function -> mapcon-fun list -> mapcon-list
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T21:06:57-04:00Z}#{10381} - by MON KEY>
(defun mon-mapcon (mapcon-fun mapcon-lst &rest more-lsts)
  ;;#!+sb-doc
  "Apply MAPCON-FUN to successive cdrs of MAPCON-LST. Return `nconc'd results.\n
mon-mapcon is like `mon-maplist' except that the results of applying MAPCON-FUN
are combined into a list as if by `nconc' rather than `list', e.g:
 \(mon-mapcon f x1 ... xn\) ≡ \(apply #'nconc \(mon-maplist f x1 ... xn\)\)\n
:EXAMPLE\n\n\(mon-mapcon #'\(lambda \(x &rest y\) `\(,\(cadr x\) ,\(car x\)\)\)
            '\(b q \(c r\) \(d s\)\)\)\n
\(mapcon #'\(lambda \(x &rest y\) `\(,\(cadr x\) ,\(car x\)\)\)
            '\(b q \(c r\) \(d s\)\)\)\n
:SEE-ALSO `mon-map1', `mon-mapc', `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan',
`mon-mapcon', `mon-remove-if-not', `mon-delete-if', `mon-member-if',
`mon-intersection', `mon-subseq', `mon-char-code'.\n►►►"
  (mon-map1 mapcon-fun (cons mapcon-lst more-lsts) :nconc nil))

;;; ==============================
;;; :COURTESY sblc/src/code/list.lisp
;;; :MODIFICATIONS renamed args function -> maplist-fun list -> maplist-list
;;; :CHANGESET 2142
;;; :CREATED <Timestamp: #{2010-09-20T21:06:44-04:00Z}#{10381} - by MON KEY>
(defun mon-maplist (maplist-fun maplist-lst &rest more-lsts)
  ;;  #!+sb-doc
  "Apply MAPLIST-FUN to successive cdrs of MAPLIST-LST. Return list of results.\n
`mon-maplist' is like `mon-mapcar' except that MAPLIST-FUN is applied to
successive sublists of the MAPLIST-LST and (optionally) MORE-LSTS.
MAPLIST-FUN is first applied to the list arguments themselves, and then to the
cdr of each list, and then to the cdr of the cdr of each list, and so on.\n
:EXAMPLE\n\n\(mon-maplist #'\(lambda \(x &rest y\) `\(,\(cadr x\) ,\(car x\)\)\)
            '\(b q \(c r\) \(d s\)\)\)\n
\(maplist #'\(lambda \(x &rest y\) `\(,\(cadr x\) ,\(car x\)\)\)
            '\(b q \(c r\) \(d s\)\)\)\n
\(mon-maplist #'append '\(1 2 3 4\) '\(1 2\) '\(1 2 3\)\)\n
\(mon-maplist #'\(lambda \(x\) \(cons 'foo x\)\) '\(a b c d\)\)\n
\(mon-maplist #'\(lambda \(x\) 
                 \(if \(member \(car x\) \(cdr x\)\) 0 1\)\)
             '\(a b a c d b c\)\)\n
:NOTE In last example, an entry is 1 if the corresponding element of the input
list was the last instance of that element in the input list.\n
:SEE-ALSO `mon-map1', `mon-mapc', `mon-mapl', `mon-maplist', `mon-mapcar', `mon-mapcan',
`mon-mapcon', `mon-remove-if-not', `mon-delete-if', `mon-member-if',
`mon-intersection', `mon-subseq', `mon-char-code'.\n►►►"
  (mon-map1 maplist-fun (cons maplist-lst more-lsts) :list nil))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; |
;; | ;; :NOTE Examples from the CL-ansi spec:                 :EXPECT
;; | 
;; | (mon-maplist #'append '(1 2 3 4) '(1 2) '(1 2 3))     ;; ((1 2 3 4 1 2 1 2 3) (2 3 4 2 2 3))
;; | (mon-maplist #'(lambda (x) (cons 'FOO x)) '(A B C D)) ;; ((FOO A B C D) (FOO B C D) (FOO C D) (FOO D))
;; | (mon-maplist #'(lambda (x)                            ;; (0 0 1 0 1 1 1)
;; |                 (if (member (car x) (cdr x)) 0 1))
;; |                '(a b a c d b c))
;; `----

;;; ==============================
;;; :TODO write `mon-subseq-TEST'
;;; :PREFIX "msbsq-"
;;; :COURTESY `widget-sublist'/`subseq'
;;; :CHANGESET 2119
;;; :CREATED <Timestamp: #{2010-09-14T14:37:01-04:00Z}#{10372} - by MON KEY>
(defun mon-subseq (in-seq seq-start &optional seq-end)
  "Return the sublist of SEQ from SEQ-START to SEQ-END.\n
SEQ-END are positive integer indexes into SEQ.\n
If SEQ-END is omitted, it defaults to the length of SEQ.\n
:EXAMPLE\n\n\(mon-subseq \"bubbas\" 3  3\)\n
\(mon-subseq \"bubbas\" 3\) \n
\(mon-subseq '\(0 1 2 3 4 5\)  2 3\)\n
\(mon-subseq '\(0 1 2 3 4 5\)  2\)\n
\(mon-subseq  [0 1 2 3 4 5]  1 3\)\n
\(mon-subseq  [0 1 2 3 4 5]  1\)\n
\(mon-subseq \(make-bool-vector 4 t\) 0 3\)\n
\(mon-subseq \(make-bool-vector 3 t\) 0\)\n
\(mon-subseq \(make-bool-vector 0 t\) 0 0\)\n
;; :NOTE Following fail:\n
\(mon-subseq composition-function-table 1 3\)\n
\(mon-subseq \(make-bool-vector 4 t\)  3 5\)\n
\(mon-subseq  [0 1 2 3 4 5]  7 3\)\n
\(mon-subseq \"bubbas\"\  3 7\)\n
\(mon-subseq '\(0 1 2 3 4 5\) -1  3\)\n
\(mon-subseq  [0 1 2 3 4 5] 3  0\)\n
\(mon-subseq \"bubbas\"  3 -7\)\n
\(mon-subseq  [0 1 2 3 4 5]  6 -3\)\n
\(mon-subseq  [0 1 2 3 4 5] -3\)\n
\(mon-subseq '\(0 1 2 3 4 5\)  7  6\)\n
\(mon-subseq  nil  3  0\)\n
:SEE-ALSO `mon-map1', `mon-mapc', `mon-mapl', `mon-maplist', `mon-mapcar',
`mon-mapcan', `mon-mapcon', `mon-map-append', `mon-remove-if-not',
`mon-remove-if', `mon-delete-if', `mon-member-if', `mon-char-code',
`mon-intersection' `mon-mismatch', `mon-set-difference', `subseq',
`mon-sublist-gutted' `mon-list-proper-p', `mon-maybe-cons', `mon-remove-dups',
`mon-remove-if', `mon-delq-cons', `mon-delq-dups' `mon-list-make-unique',
`mon-list-match-tails', `mon-assoc-replace', `mon-moveq', `mon-flatten',
`mon-transpose', `mon-maptree', `mon-mapcar', `mon-recursive-apply',
`mon-combine', `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt',
`mon-moveq', `mon-nshuffle-vector', `mon-list-nshuffle',
`mon-list-shuffle-safe', `mon-list-reorder'.\n►►►"
  (cond ((null in-seq) (error (concat ":FUNCTON `mon-subseq'"
                                      "-- arg IN-SEQ can not be null")))
        ((listp in-seq)
         (and (or seq-end (setq seq-end (length in-seq)))
              (or (and (>= (length in-seq) seq-start) (>= (length in-seq) seq-end)
                       (>= seq-end seq-start) (>= seq-start 0) (>= seq-end 0))
                  (signal 'args-out-of-range `(,seq-start . ,seq-end))))
         (if (> seq-start 0) 
             (setq in-seq (nthcdr seq-start in-seq)))
         (if seq-end
             (unless (<= seq-end seq-start)
               (setq in-seq (copy-sequence in-seq))
               (setcdr (nthcdr (- seq-end seq-start 1) in-seq) nil)
               in-seq)
           (copy-sequence in-seq)))
        ((arrayp in-seq)
         (let ((msbsq-ez-cas (type-of in-seq)))
           (and (or (eq msbsq-ez-cas 'string) (eq msbsq-ez-cas 'vector)
                    (and (eq msbsq-ez-cas 'char-table)
                         (signal 'wrong-type-argument `(vectorp . ,msbsq-ez-cas)))
                    (prog1 (eq msbsq-ez-cas 'bool-vector)
                      (setq in-seq (vconcat in-seq))))
                (or (and (or seq-end (setq seq-end (length in-seq)))
                         (>= (length in-seq) seq-start) (>= (length in-seq) seq-end)
                         (>= seq-end seq-start) (>= seq-start 0) (>= seq-end 0))
                    (signal 'args-out-of-range `(,seq-start . ,seq-end)))
                (substring in-seq seq-start seq-end))))))
;;
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (mon-subseq "bubbas" 3  3)
;; | (mon-subseq "bubbas" 3) 
;; | (mon-subseq '(0 1 2 3 4 5)  2 3)
;; | (mon-subseq '(0 1 2 3 4 5)  2)
;; | (mon-subseq  [0 1 2 3 4 5]  1 3)
;; | (mon-subseq  [0 1 2 3 4 5]  1)
;; | (mon-subseq (make-bool-vector 4 t) 0 3)
;; | (mon-subseq (make-bool-vector 3 t) 0)
;; | (mon-subseq (make-bool-vector 0 t) 0 0)
;; | ;; :NOTE Following fail:
;; | (mon-subseq composition-function-table 1 3)
;; | (mon-subseq (make-bool-vector 4 t)  3 5)
;; | (mon-subseq  [0 1 2 3 4 5]  7 3)
;; | (mon-subseq  [0 1 2 3 4 5]  6 -3)
;; | (mon-subseq  [0 1 2 3 4 5] -3)
;; | (mon-subseq "bubbas"  3 7)
;; | (mon-subseq "bubbas"  3 -7)
;; | (mon-subseq '(0 1 2 3 4 5) -1  3)
;; | (mon-subseq '(0 1 2 3 4 5)  1  -3)
;; | (mon-subseq '(0 1 2 3 4 5)  7  6)
;; | (mon-subseq  [0 1 2 3 4 5] -3  )
;; | (mon-subseq  nil  3  0)
;; `----

;;; ==============================
;;; :PREFIX "msbl-"
;;; :COURTESY Jean-Marie Chauvet :HIS ncloseemacs-ml-dataset.el :WAS `sublist'
;;; :CREATED <Timestamp: #{2009-09-19T19:10:14-04:00Z}#{09386} - by MON>
(defun mon-sublist (skip-n return-n in-list)
  "RETURN-N elements IN-LIST skipping the first SKIP-N.\n
:EXAMPLE\n\n\(let \(\(piece-work
       '\(A B \(C D\) E \(F G\) \(Q \(H I\)\) K\)\)\)
       ; 0 1   2   3  4     5        6
  \(mon-sublist 4 2 piece-work\)\)\n
; => \((F G) (Q (H I)))
     ; 4     5\n
:SEE-ALSO `mon-sublist-gutted' `mon-list-proper-p', `mon-maybe-cons',
`mon-remove-dups', `mon-remove-if', `mon-delq-cons', `mon-delq-dups'
`mon-list-make-unique', `mon-list-match-tails', `mon-assoc-replace',
`mon-moveq', `mon-flatten', `mon-transpose', `mon-maptree', `mon-mapcar',
`mon-recursive-apply', `mon-map-append', `mon-combine', `mon-intersection',
`mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe', `mon-list-reorder'.\n►►►"
  (let* ((msbl-sub (nthcdr skip-n in-list)) 
	 (msbl-q (length msbl-sub)))
    (reverse (nthcdr (- msbl-q return-n) (reverse msbl-sub)))))
;;
;;; :TEST-ME (mon-sublist 0 1 '(A B (C D) E (F G) (Q (H I)) K))
;;; :TEST-ME (mon-sublist 3 3 '(A B (C D) E (F G) (Q (H I)) K))
;;; :TEST-ME (mon-sublist 5 2 '(A B (C D) E (F G) (Q (H I)) K))
;;; :TEST-ME (mon-sublist 1 2 '(A B (C D) E (F G) (Q (H I)) K))  
;;; :TEST-ME (mon-sublist 6 1 '(A B (C D) E (F G) (Q (H I)) K))  

;;; ==============================
;;; :PREFIX "msblg-"
;;; :COURTESY Jean-Marie Chauvet :HIS ncloseemacs-ml-dataset.el :WAS `sublist-rest'
;;; :CREATED <Timestamp: #{2009-09-19T18:55:37-04:00Z}#{09386} - by MON>
(defun mon-sublist-gutted (gut-from-n to-n-ards gut-lst)
  "Return GUT-LST with GUTS-FROM-N TO-N-ARDS extracted.\n
:EXAMPLE\n\(let \(\(eviscerate-me 
       '\(A B \(C D\) E \(F G\) \(Q \(H I\)\) K\)\)\)
        ;0 1   2   3  4     5        6
  \(mon-sublist-gutted 4 2 eviscerate-me\)\)\n;=> \(A B \(C D\) E K\)\n
     ;0 1   2   3 6\n
:SEE-ALSO `mon-sublist', `mon-intersection', `mon-combine', `mon-map-append',
`mon-mapcar', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-remove-if', `mon-remove-dups', `mon-delq-dups',
`mon-delq-cons', `mon-list-make-unique', `mon-assoc-replace',
`mon-nshuffle-vector', `mon-list-nshuffle', `mon-list-shuffle-safe',
`mon-maybe-cons', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-list-match-tails', `mon-list-reorder',
`mon-list-proper-p'.\n►►►"
  (let* ((msblg-pre-guts 
          (nthcdr (length (nthcdr gut-from-n gut-lst)) (reverse gut-lst))) ;; msblg-pre-guts reversed
	 (msblg-pst-guts 
          (nthcdr (+ to-n-ards (length msblg-pre-guts)) gut-lst)))
    (append (reverse msblg-pre-guts) msblg-pst-guts))) ;;:WAS (append prefix postfix)
;;
;;; :TEST-ME (mon-sublist-gutted 3 1 '(A B (C D) E (F G) (Q (H I)) K))
;;; :TEST-ME (mon-sublist-gutted 5 2 '(A B (C D) E (F G) (Q (H I)) K))
;;; :TEST-ME (mon-sublist-gutted 5 1 '(A B (C D) E (F G) (Q (H I)) K))
;;; :TEST-ME (mon-sublist-gutted 0 6 '(A B (C D) E (F G) (Q (H I)) K))

;;; ==============================
;;; :COURTESY Jean-Marie Chauvet nclose-eieio.el :WAS `map-append'
;;; :CREATED <Timestamp: #{2009-09-21T15:26:14-04:00Z}#{09391} - by MON KEY>
(defun mon-map-append (mapping-lst)
  "Append all subseqs \(proper-lists or vectors\) in MAPPING-LST.\n
:EXAMPLE\n\n\(mon-map-append '\(\(1 a\) \(2 b\) \(3 c\)\)\)\n
\(mon-map-append '\([1 a] [2 b] [3 c]\)\)\n
:NOTE Compare with `mon-flatten' with handles both conses and vectors:\n
\(mon-flatten '\([1 a] \(2 . b\) [3 c]\)\)\n
:SEE-ALSO `mon-intersection', `mon-combine', `mon-mapcar', `mon-maptree',
`mon-transpose', `mon-flatten', `mon-recursive-apply', `mon-list-proper-p',
`mon-maybe-cons', `mon-sublist', `mon-sublist-gutted', `mon-list-match-tails',
`mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt',
`mon-delq-cons', `mon-delq-dups', `mon-list-make-unique', `mon-remove-if',
`mon-remove-dups', `mon-assoc-replace', `mon-list-reorder',
`mon-nshuffle-vector', `mon-list-nshuffle', `mon-list-shuffle-safe'.\n►►►"
  (cond ((null mapping-lst) nil)
	(t (append (car mapping-lst) (mon-map-append (cdr mapping-lst))))))


;;; ==============================
;;; :PREFIX "mar-"
;;; :COURTESY Jared D. :WAS `assoc-replace'
;;; (URL `http://curiousprogrammer.wordpress.com/2009/07/26/emacs-utility-functions/')
;;; :MODIFICATIONS <Timestamp: #{2010-02-10T20:17:04-05:00Z}#{10064} - by MON KEY>
;;; Now returns the full association not just the value of key.
;;; :CREATED <Timestamp: #{2009-08-19T20:00:51-04:00Z}#{09344} - by MON KEY>
(defun mon-assoc-replace (seq1 seq2)
  "Return alist with elts of the alist SEQ1 substituted with the element of
SEQ1 where the car of elt SEQ1 matches the car of elt SEQ2.\n
:EXAMPLE\n\n\(mon-assoc-replace '\(\(a \(a c d\)\) \(b \(c d e\)\) \(c \(f g h\)\)\)
                   '\(\(a \(c d g\)\) \(b \(c d f\)\) \(g \(h g f\)\)\)\)\n
:SEE-ALSO `mon-delq-dups', `mon-delq-cons', `mon-remove-dups',`mon-remove-if',
`mon-list-make-unique', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe', `mon-intersection', `mon-combine',
`mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-list-match-tails', `mon-sublist',
`mon-sublist-gutted', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-maybe-cons', `mon-list-proper-p'.\n►►►"
  (let (mar-rtn)
    (setq mar-rtn
          (mapcar #'(lambda (mar-L-1)
                      (let* ((mar-L-1-key (car mar-L-1))
                             (mar-L-1-val (assoc mar-L-1-key seq2)))
                        ;; :WAS (if (cadr val) val elem))) seq1)) 
                        (if mar-L-1-val mar-L-1-val mar-L-1))) seq1))))
;;                          
;;; :TEST-ME (mon-assoc-replace '((a (a c d)) (b (c d e)) (c (f g h)))
;;;                             '((a (c d g)) (b (c d f)) (g (h g f))))

;; ==============================
;;; :COURTESY Henry Kautz :HIS refer-to-bibtex.el :WAS `moveq'
;;; (URL `http://www.tex.ac.uk/tex-archive/bibliography/bibtex/utils/refer-tools/refer-to-bibtex.el')
;;; :CREATED <Timestamp: 2009-08-04-W32-2T18:57:30-0400Z - by MON KEY>
(defmacro mon-moveq (enqueue-new with-old-to-null)
  "Set value of ENQUEUE-NEW to value of WITH-OLD-TO-NULL return ENQUEUE-NEW.\n
On return, ENQUEUE-NEW has WITH-OLD-TO-NULL's value and WITH-OLD-TO-NULL is
well... null.\n
:EXAMPLE\n\n(let ((new1 '(a b c)) (old1 '(q e d)))
  `(,(mon-moveq new1 old1) ,old1))\n
:ALIASED-BY `mon-list-nqueue'\n
:SEE-ALSO `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt',
`mon-list-proper-p', `mon-maybe-cons' `mon-sublist', `mon-sublist-gutted',
`mon-remove-if', `mon-intersection', `mon-combine', `mon-mapcar',
`mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-delq-cons', `mon-delq-dups', `mon-remove-if',
`mon-remove-dups', `mon-list-make-unique', `mon-assoc-replace',
`mon-list-match-tails', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle', `mon-list-shuffle-safe'.\n►►►"
  ;; :WAS  (list 'progn (list 'setq enqueue-new with-old-to-null) 
  ;;       (list 'setq with-old-to-null 'nil)) )
  `(prog1 
       (setq ,enqueue-new ,with-old-to-null) 
     (setq ,with-old-to-null nil)) )

;;; ==============================
;;; :PREFIX "mfltn-"
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-list.el :WAS `flatten'
(defun mon-flatten (tree-to-flatten)
  "Return sequence TREE-TO-FLATTEN as a proper-list with all elements flattened.\n
TREE-TO-FLATTEN is a proper-list, consed pair, or vector.\n
:EXAMPLE\n\n\(mon-flatten '\(\(1 a\) \(2 b\) \(3 c\)\)\)\n
\(mon-flatten '\([1 a] \(2 . b\) [3 c]\)\)\n
\(mon-flatten '\(\(1 . a\) \(2 . b\) \(3 . c\)\)\)\n
:NOTE Compare with `mon-map-append' with also handles vectors but not conses:\n
\(mon-map-append '\([1 a] \(2 b\) [3 c]\)\)\n
:ALIASED-BY `mon-list-flatten'\n
:SEE-ALSO `mon-list-proper-p', `mon-maybe-cons', `mon-intersection',
`mon-combine', `mon-mapcar', `mon-map-append', `mon-maptree-to-flatten', `mon-transpose',
`mon-flatten', `mon-recursive-apply', `mon-list-match-tails', `mon-sublist',
`mon-sublist-gutted', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-remove-if', `mon-remove-dups', `mon-delq-dups'
`mon-delq-cons', `mon-list-make-unique', `mon-remove-dups', `mon-assoc-replace',
`mon-list-reorder', `mon-nshuffle-vector', `mon-list-nshuffle',
`mon-list-shuffle-safe'.\n►►►"
  ;; (copy-tree tree-to-flatten)
  (do ((mfltn-rslt   nil)
       (mfltn-stack  nil))
      ((not (or tree-to-flatten mfltn-stack)) (nreverse mfltn-rslt))
    (cond ((null tree-to-flatten)
           (setq tree-to-flatten (pop mfltn-stack)))
          ;; :WAS ((atom tree-to-flatten)
          ((and (atom tree-to-flatten) 
                ;; :ADDED support for vectors
                (not (vectorp tree-to-flatten)))
           (push tree-to-flatten mfltn-rslt)
           (setq tree-to-flatten (pop mfltn-stack)))
          ((listp (car tree-to-flatten))
           (push (cdr tree-to-flatten) mfltn-stack)
           (setq tree-to-flatten (car tree-to-flatten)))
          ;; :ADDED support for vectors
          ((vectorp (car tree-to-flatten))
           (push (cdr tree-to-flatten) mfltn-stack)
           (setq tree-to-flatten (append (car tree-to-flatten) nil)))
          ;;
          (t (push (car tree-to-flatten) mfltn-rslt)
             (setq tree-to-flatten (cdr tree-to-flatten))))))

;;; ==============================
;; mon-list-flatten-rotated
;;; :CHANGESET 2202 <Timestamp: #{2010-10-20T12:28:20-04:00Z}#{10423} - by MON KEY>
(defun mon-list-flatten-rotated (list-of-lists)
  "Flatten LIST-OF-LISTS - a list of lists.\n
:EXAMPLE\n\n\(mon-list-flatten-rotated '\(\(a b c\) \(1 \(\(2 3\)\)\)\)\)\n
:ALIASED-BY `mon-rotate-flatten-list'\n
:SEE-ALSO `mon-flatten', `mon-rotate-string', `mon-rotate-next',
`mon-rotate-region', `mon-rotate-get-rotations-for',
`mon-string-rotate-to-regexp', `mon-indent-or-rotate'.\n►►►"
  (if (null list-of-lists)
      list-of-lists
    (if (listp list-of-lists)
	(append (mon-list-flatten-rotated (car list-of-lists))
		(mon-list-flatten-rotated (cdr list-of-lists)))
      (list list-of-lists))))
;;
;;; :TEST-ME (mon-rotate-flatten-list '((a b c) (1 ((2 3)))))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS list.lisp :WAS TRANSPOSE
;;; :CREATED <Timestamp: #{2009-09-28T17:40:47-04:00Z}#{09401} - by MON>
(defun mon-transpose (trans-tree)
  "Return TRANS-TREE transposed such that all car and cdr's are exchanged.\n
:EXAMPLE\n\n\(mon-transpose '\(a \(bb cc\) dd\)\)\n
\(mon-flatten \(mon-transpose '\(a \(bb cc\) dd\)\)\)\n
:SEE-ALSO `mon-mismatch', `mon-intersection', `mon-combine', `mon-mapcar',
`mon-map-append', `mon-maptrans-tree', `mon-flatten', `mon-recursive-apply',
`mon-sublist', `mon-sublist-gutted', `mon-list-match-tails',
`mon-list-proper-p', `mon-maybe-cons', `mon-moveq', `mon-elt->', `mon-elt-<',
`mon-elt->elt', `mon-elt-<elt', `mon-delq-cons', `mon-delq-dups'
`mon-remove-if', `mon-remove-dups', `mon-assoc-replace', `mon-list-make-unique',
`mon-list-reorder', `mon-nshuffle-vector', `mon-list-nshuffle'\n►►►"
  (if (atom trans-tree)
      trans-tree
      (cons (mon-transpose (cdr trans-tree)) (mon-transpose (car trans-tree)))))
;;
;;; :TEST-ME (mon-transpose '(a (bb cc) dd)))
;;; :TEST-ME (mon-flatten (mon-transpose '(a (bb cc) dd)))

;;; ==============================
;;; :CREATED <Timestamp: #{2010-06-15T14:40:11-04:00Z}#{10242} - by MON KEY>
(defun* mon-mismatch (sqn1 sqn2 &key (sqn1-str 0) (sqn1-end (length sqn1))
                           (sqn2-str 0) (sqn2-end (length sqn2)))
  "Implementation of `edmacro-mismatch' function with keywords.\n
Compare SQN1 with SQN2, return index of first mismatching element.
Return nil if the sequences match.  If one sequence is a prefix of the
other, the return value indicates the end of the shorted sequence.\n
:EXAMPLE\n
\(mon-sequence-mismatch  '\(a b c 1 8\) '\(a b c 2 9\)\)\n
\(mon-sequence-mismatch  '\(a b c 2 8\) '\(a b c 2 8\) :sqn1-str 2  :sqn2-str 2\)\n
\(mon-sequence-mismatch  '\(a b c 2 8\) '\(a b c a b c 2 8 a b c\) :sqn2-str 3\)\n
:NOTE `edmacro-mismatch' was a kludge needed in order to use CL `mismatch'.\n
Should byte-compile without CL runtime package warnings.\n
:ALIASED-BY `mon-list-mismatch'\n
:SEE-ALSO `mon-intersection', `mon-set-difference', `mon-sublist',
`mon-sublist-gutted', `mon-mapcar', `mon-map-append', `mon-string-chop-spaces',
`mon-maptree', `mon-transpose', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-flatten', `mon-combine', `mon-recursive-apply',
`mon-delq-cons', `mon-list-make-unique', `mon-list-match-tails',
`mon-list-reorder', `mon-list-proper-p', `mon-maybe-cons'.\n►►►"
  (edmacro-mismatch sqn1 sqn2 sqn1-str sqn1-end  sqn2-str sqn2-end))

;;; ==============================
;;; :PREFIX "mcmbn-"
;;; :COURTESY Pascal J. Bourguignon :HIS ???
(defun mon-combine (&rest combine-lsts)
  "Return the set of tuples built taking one item in order from each list
in COMBINE-LSTS.\n
:EXAMPLE\n\n\(mon-combine '\(www ftp\) '\(exa\) '\(com org\)\)\n
;=> \(\(www exa com\) \(www exa org\) \(ftp exa com\) \(ftp exa org\)\)\n
:ALIASED-BY `mon-map-combine'
:ALIASED-BY `mon-list-combine'\n
:SEE-ALSO `mon-intersection', `mon-set-difference', `mon-remove-if',
`mon-combine', `mon-mapcar', `mon-map-append', `mon-maptree', `mon-transpose',
`mon-flatten', `mon-recursive-apply', `mon-list-match-tails',
`mon-list-proper-p', `mon-maybe-cons', `mon-sublist', `mon-sublist-gutted',
`mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt',
`mon-delq-cons', `mon-delq-dups', `mon-remove-dups', `mon-remove-if',
`mon-assoc-replace', `mon-list-make-unique', `mon-list-reorder',
`mon-nshuffle-vector', `mon-list-nshuffle'\n►►►"
  ;; :NOTE cl--mapcan -> `mapcan' from cl*.el 
  ;; :WAS (defun mon-combine (&rest rest) 
  ;; (flet ((cl--mapcan (func seq &rest rest)
  ;;          (apply 'nconc (apply 'mapcar* func seq rest))))
  ;;   (cond ((null args) '(nil))
  ;;         ((consp (car args))
  ;;          (cl--mapcan
  ;;            (lambda (item) (apply (function mon-combine) item (cdr args)))
  ;;                      (car args)))
  ;;         (t (cl--mapcan
  ;;             (lambda (rest) (list (cons (car args) rest)))
  ;;                        (apply (function mon-combine) (cdr args)))))))
  (cond ((null combine-lsts) '(nil))
        ((consp (car combine-lsts))
         (mon-mapcan #'(lambda (mcmbn-L-1) 
                         (apply #'mon-combine mcmbn-L-1 (cdr combine-lsts)))
                     (car combine-lsts)))
        (t (mon-mapcan #'(lambda (mcmbn-L-rst) 
                           (list (cons (car combine-lsts) mcmbn-L-rst)))
                       (apply #'mon-combine (cdr combine-lsts))))))
;;
;;; :TEST-ME (mon-combine '(www ftp) '(exa) '(com org))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS list.lisp :WAS `maptree'
;;; :MODIFICATIONS <Timestamp: #{2010-01-16T19:20:11-05:00Z}#{10027} - by MON>
;;; `mon-maptree' uses `flet' cl--every -> `every'
;;; :CREATED <Timestamp: #{2009-09-28T17:40:37-04:00Z}#{09401} - by MON>
(defun mon-maptree (fun &rest trees)
  "Map function FUN over trees or TREES.\n
:EXAMPLE\n\n\(mon-maptree #'stringp '\(a \(\"b\" b cc\) dd\)\)\n
\(mon-maptree  #'\(lambda \(x\) \(when \(stringp x\) x\)\)
               '\(a \(\"b\" b cc \"bb\"\) dd\)\)\n
:SEE-ALSO `mon-intersection', `mon-remove-if', `mon-combine', `mon-mapcar',
`mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-list-match-tails', `mon-list-proper-p',
`mon-maybe-cons', `mon-moveq', `mon-elt->', `mon-elt-<', `mon-elt->elt',
`mon-elt-<elt', `mon-sublist', `mon-sublist-gutted', `mon-remove-if',
`mon-remove-dups', `mon-delq-dups', `mon-delq-cons', `mon-list-make-unique',
`mon-assoc-replace', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle'\n►►►"
  ;; :WAS
  ;; (cond ((null trees) nil)
  ;;       ((every (function null)  trees) nil)
  ;;       ((every (function atom)  trees) (apply fun trees))
  ;;       ((every (function consp) trees)
  ;;        (cons (apply (function mon-maptree) fun (mapcar (function car) trees))
  ;;              (apply (function mon-maptree) fun (mapcar (function cdr) trees))))
  ;;       (t nil)))
  ;; :NOTE flet `every' to prevent compiler warning.
  (flet ((cl--every (cl-pred cl-seq &rest cl-rest)
           (if (or cl-rest (nlistp cl-seq))
               (catch 'cl-every-mon
                 (apply 'map nil
                        (function (lambda (&rest cl-x)
                          (or (apply cl-pred cl-x) (throw 'cl-every-mon nil))))
                        cl-seq cl-rest) t)
               (while (and cl-seq (funcall cl-pred (car cl-seq)))
                 (setq cl-seq (cdr cl-seq)))
               (null cl-seq))))
    (cond ((null trees) nil)
          ((cl--every (function null)  trees) nil)
          ((cl--every (function atom)  trees) (apply fun trees))
          ((cl--every (function consp) trees)
           (cons (apply (function mon-maptree) fun (mapcar (function car) trees))
                 (apply (function mon-maptree) fun (mapcar (function cdr) trees))))
          (t nil))))
;;
;;; :TEST-ME (mon-maptree #'stringp '(a ("b" b cc) dd))
;;; => "b" (nil ("b" nil nil) nil)

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-utilities.el :WAS recursive-apply?
(defun mon-recursive-apply (atom-fun list-a list-b)
  "Apply ATOM-FUN recursively on each pair in parallel structures A-LIST and LIST-B.
Only the elements from LIST-A must be an atom to be passed to ATOM-FUN.\n
:EXAMPLE\n\n\(mon-recursive-apply #'\(lambda \(atom other\) \(cons atom other\)\)
                     '\(apple orange peach\) 
                     '\(\(red yellow green\) \(orange\) \(yellow white\)\)\)\n
:ALIASED-BY `mon-list-recurse-apply'\n
:SEE-ALSO `mon-intersection', `mon-remove-if', `mon-combine', `mon-mapcar',
`mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-list-proper-p', `mon-maybe-cons',
`mon-list-match-tails', `mon-sublist', `mon-sublist-gutted', `mon-moveq',
`mon-elt->', `mon-elt-<', `mon-elt->elt', `mon-elt-<elt', `mon-delq-cons',
`mon-delq-dups', `mon-remove-dups', `mon-remove-if', `mon-list-make-unique',
`mon-assoc-replace', `mon-list-reorder', `mon-nshuffle-vector',
`mon-list-nshuffle'.\n►►►"
  (cond ((null list-a) nil)
        ((atom list-a) (apply atom-fun (list list-a list-b)))
        (t (cons (mon-recursive-apply atom-fun (car list-a) (car list-b)) 
                 (mon-recursive-apply atom-fun (cdr list-a) (cdr list-b))))))

;;; ==============================
;;; :PREFIX "mlm-"
;;; :COURTESY :FILE gnus-util.el :WAS `gnus-merge'
;;; :CHANGESET 2112
;;; :CREATED <Timestamp: #{2010-09-06T21:02:35-04:00Z}#{10361} - by MON KEY>
(defun mon-list-merge (type list1 list2 pred)
  "Destructively merge lists LIST1 and LIST2 to produce a new list.\n
Argument TYPE is for compatibility and ignored.\n
Ordering of the elements is preserved according to PRED, a `less-than'
predicate on the elements.\n
:ALIASED-BY `mon-merge-list'\n
:SEE-ALSO `mon-intersection', `mon-remove-if', `mon-combine', `mon-mapcar',
`mon-map-append', `mon-maptree', `mon-transpose', `mon-flatten',
`mon-recursive-apply', `mon-list-match-tails', `mon-list-proper-p',
`mon-maybe-cons', `mon-sublist', `mon-sublist-gutted', `mon-moveq', `mon-elt->',
`mon-elt-<', `mon-elt->elt', `mon-elt-<elt', `mon-delq-cons', `mon-delq-dups',
`mon-remove-dups', `mon-remove-if', `mon-assoc-replace', `mon-list-make-unique',
`mon-list-reorder', `mon-nshuffle-vector', `mon-list-nshuffle'\n►►►"
  (let ((mlm-res nil))
    (while (and list1 list2)
      (if (funcall pred (car list2) (car list1))
          (push (pop list2) mlm-res)
        (push (pop list1) mlm-res)))
    (nconc (nreverse mlm-res) list1 list2)))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-utilities.el :WAS foreach
(defmacro mon-foreach (w-var on-list &rest body)
  "A foreach style macro idiom for looping W-VARS ON-LIST with BODY.\n
:EXAMPLE\n\n\(mon-foreach for-var                 ; <- w-var
             '\(1 2 3 4)              ; <- on-list
             \(+ for-var for-var\)\)    ; <- body\n
\(pp-macroexpand-expression 
 '\(mon-foreach for-var '\(1 2 3 4\) \(+ for-var for-var\)\)\)\n
:SEE-ALSO `mon-for', `mon-loop', `mon-mapcar'.\n►►►"
  `(mapcar #'(lambda (,w-var) ,@body) ,on-list))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-utilities.el :WAS `for'
(defmacro mon-for (var init final &rest body)
  "Execute a simple for loop .\n
:EXAMPLE\n\n\(mon-for i  1  10  \(print i\)\)\n
\(pp-macroexpand-expression '\(mon-for i 1 10  \(print i\)\)\)\n
:SEE-ALSO `mon-foreach', `mon-loop', `mon-mapcar'.\n►►►"
  (let ((mf-tempvar (make-symbol "mf-tempvar")))
    `(let ((,var ,init)
           (,mf-tempvar ,final))
       (if (< ,var ,mf-tempvar)
           (while (<= ,var ,mf-tempvar)
             ,@body
             (setq ,var (+ ,var 1)))
         (while (>= ,var ,mf-tempvar)
           ,@body
           (setq ,var (- ,var 1)))))))

;;; ==============================
;;; :COURTESY Pascal J. Bourguignon :HIS pjb-emacs.el :WAS `rloop'
;;; :MODIFICATIONS <Timestamp: #{2009-09-29T13:35:36-04:00Z}#{09402} - by MON KEY>
(defmacro mon-loop (clauses &rest body)
  "Macro to execute a loop over clauses.\n
:SEE-ALSO `mon-foreach', `mon-for', `mon-mapcar'.\n►►►"
  (if (null clauses)
      `(progn ,@body)
    `(loop ,@(car clauses) do (mon-loop ,(cdr clauses) ,@body))))

;;; ==============================
;;; CREATED: <Timestamp: #{2009-10-22T17:58:11-04:00Z}#{09434} - by MON>
(defun mon-escape-string-for-cmd (unescape a-string &rest more-strings)
  "Return A-STRING escaped for passing to the w32 cmd.exe e.g `/' -> `\\\\'.
When MORE-STRINGS is non-nil escape these also.\n
When UNESCAPE is non-nil unescape A-STRING and/or MORE-STRINGS.\n
:SEE-ALSO `convert-standard-filename', `w32-shell-dos-semantics'.
`w32-quote-process-args', `mon-exchange-slash-and-backslash',
`mon-escape-lisp-string-region', `mon-unescape-lisp-string-region'.\n►►►"
  (let ((got-more-p (if more-strings
                        (cons a-string more-strings)
                        a-string))
        (rgxp-rplc (if unescape
                       #'(lambda (u)(replace-regexp-in-string  "\\\\" "/" u))
                       #'(lambda (e)(replace-regexp-in-string "/" "\\\\" e)))))
    (if (consp got-more-p)
        (mapconcat rgxp-rplc got-more-p " ")
        (funcall rgxp-rplc got-more-p))))

;;; ==============================
;;; :MODIFICATIONS <Timestamp: Saturday May 30, 2009 @ 06:26.12 PM - by MON KEY>
(defun mon-escape-lisp-string-region (start end)
  "Escape special characters in the region as if a lisp string.
Insert backslashes in front of special characters (namely  `\' backslash,
`\"' double quote, `(' `)' parens in the region, according to the docstring escape 
requirements.\n
Region should only contain the characters actually comprising the string
supplied without the surrounding quotes.\n
:NOTE Don't evaluate on docstrings containing regexps and expect sensible
return values.\n
:ALIASED-BY `mon-string-escape-lisp-region'
:ALIASED-BY `mon-lisp-escape-region'\n
:SEE-ALSO `mon-unescape-lisp-string-region', `mon-escape-string-for-cmd',
`mon-exchange-slash-and-backslash', `mon-quote-sexp'.\n►►►"
  (interactive "*r")
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (goto-char start)
      (while (search-forward "\\" nil t)
	(replace-match "\\\\" nil t))
      (goto-char start)
      (while (search-forward "\"" nil t)
        (replace-match "\\\"" nil t))
      ;; :MON-ADDITIONS
      (goto-char start)
      (while (search-forward "(" nil t)
	(replace-match "\\\(" nil t))
      (goto-char start)
      (while (search-forward ")" nil t)
	(replace-match "\\\)" nil t)))))

;;; ==============================
(defun mon-unescape-lisp-string-region (start end)
  "Unescape special characters inregion from START to END.\n
This amounts to removing preceeding backslashes from characters they escape.\n
:NOTE region should only contain the characters actually comprising the string
without the surrounding quotes.\n
:ALIASED-BY `mon-string-unescape-lisp-region'
:ALIASED-BY `mon-lisp-unescape-region'\n
:SEE-ALSO `mon-escape-lisp-string-region', `mon-quote-sexp',
`mon-escape-string-for-cmd', `mon-exchange-slash-and-backslash'.\n►►►"
  (interactive "*r")
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (goto-char start)
      (while (search-forward "\\" nil t)
	(replace-match "" nil t)
	(forward-char)))))

;;; ==============================
;;; :COURTESY :FILE custom.el :WAS `custom-quote'
;;; :CHANGESET 1997
;;; :CREATED <Timestamp: #{2010-07-27T15:29:09-04:00Z}#{10302} - by MON KEY>
(defun mon-quote-sexp (sexp)
  "Quote SEXP as if by `quote' if it is not self quoting.\n
:EXAMPLE\n\n(mon-quote-sexp '(a list))\n
\(mon-quote-sexp #'\(lambda \(x\)\(x\)\)\)\n
\(mon-quote-sexp '\(lambda \(x\)\(x\)\)\)\n
\(mon-quote-sexp '\(a . b\)\)\n
\(mon-quote-sexp :test)\n
\(mon-quote-sexp #:is-not\)\n
:SEE-ALSO `mon-escape-lisp-string-region', `mon-unescape-lisp-string-region'.\n►►►"
  (if (or (memq sexp '(t nil))
	  (keywordp (intern-soft (format "%S" sexp) obarray))
	  (and (listp sexp) (eq (car sexp) '(lambda)))
	  (stringp sexp)
	  (numberp sexp)
	  (vectorp sexp)
          ;; :NOTE Commented in original defun in custom.el
          ;;  	  (and (fboundp 'characterp)
          ;;  	       (characterp sexp))
	  )
      sexp
    (list 'quote sexp)))

;;; ==============================
;;; :CHANGESET 2233 <Timestamp: #{2010-11-06T20:47:12-04:00Z}#{10446} - by MON KEY>
;;; :CREATED: <Timestamp: #{2009-10-20T15:56:02-04:00Z}#{09432} - by MON>
(defun mon-pretty-print-sexp-at-point (start end &optional CL->downcase);; intrp)
  "Pretty print the region in buffer. Do not move point.\n
 When CL->DOWNCASE is non-nil it is used to clean CL that is `UPCASE'd.\n
:NOTE This function is meant for interactive use only.\n
:SEE-ALSO `mon-princ-cb', `mon-eval-sexp-at-point', `mon-eval-expression',
`mon-eval-print-last-sexp', `mon-toggle-eval-length'.\n►►►"
  (interactive "r\nP")
  ;; (interactive "r\nP\nip")
  ;; (and (not intrp)
  ;;      (or (null start)
  ;;          (null end))
  ;;      (or (not (integer-or-marker-p start))
  ;;          (not (integer-or-marker-p end)))
  ;;      (or (and (use-region-p)
  ;;               (setq start (region-beginning)
  ;;                     end   (region-end)))
  ;;          (error (concat ":FUNCTON `mon-pretty-print-sexp-at-point' "
  ;;                         "-- with region START to END in funky state " 
  ;;                         "unable to satisfy `use-region-p'"))))
  (let ((fw  (if CL->downcase
                 "(save-excursion (newline) (princ (downcase (pp '("
               "(save-excursion (newline) (princ (pp '("))
        (bw  (if CL->downcase
                 "))) (current-buffer)))"
               ")) (current-buffer)))"))
        (mk1 (make-marker))
        (mk2 (make-marker))
        (mk3 (make-marker))
        (mk4 (make-marker)))
    (unwind-protect
        (save-restriction    
          (narrow-to-region start end)
          (goto-char start)
          (set-marker mk3 start)
          (set-marker mk4 end)
          (mon-wrap-with (concat fw "\n") (concat "\n" bw) t)
          (search-forward-regexp (concat "\n" bw))
          (set-marker mk2 (point))
          (eval (preceding-sexp))
          (search-backward-regexp (concat "\n" bw) nil t)
          (set-marker mk1 (point))
          (delete-region mk1 mk2)
          (search-backward-regexp (concat fw "\n") nil t)
          (set-marker mk1 (point))
          (search-forward-regexp (concat fw "\n") nil t)
          (set-marker mk2 (point))
          (delete-region mk1 mk2)
          (delete-region mk3 mk4)
          (forward-sexp)
          (set-marker mk2 (point))
          (backward-sexp)
          (set-marker mk1 (point))
          (delete-region mk1 (1+ mk1))
          (delete-region mk2 (1- mk2))
          (backward-delete-char 1))
      (mapc #'(lambda (mrk)
                (set-marker mrk nil))
            (list mk1 mk2 mk3 mk4)))))

;;; ==============================
;;; :CREATED <Timestamp: Wednesday May 20, 2009 @ 02:13.22 PM - by MON KEY>
(defun mon-princ-cb (&optional insrtp intrp)
  "Wrap region in a princ->current-buffer to eval and print newline\\result
after point.\n
:SEE-ALSO `mon-eval-sexp-at-point', `mon-pretty-print-sexp-at-point', `mon-eval-expression',
`mon-eval-print-last-sexp'.\n►►►"
  (interactive "i\np")
  (save-excursion
    ;; (let (sexp-pnt
    (mon-wrap-text "(progn (newline) (princ '\n" "\n(current-buffer)))" insrtp intrp)))

;;; ==============================
;;; :PREFIX "mesap-"
;;; :NOTE Consider using: (pp-eval-last-sexp t)
;;; :CREATED <Timestamp: Wednesday May 20, 2009 @ 03:14.44 PM - by MON KEY>
(defun mon-eval-sexp-at-point ()
  "Evaluate S-expression at point print commented result on newline.\n
Return point after commented result. Best on trivial expressions.\n
:EXAMPLE\n\(+ 1 3)\n;;;=> 4\n^point^\n
:SEE-ALSO `mon-princ-cb', `mon-pretty-print-sexp-at-point', `mon-eval-expression',
`mon-eval-print-last-sexp', `mon-eval-sexp-at-point', `mon-toggle-eval-length'.
►►►"
  (interactive)
  (let* ((mesap-wrap (sexp-at-point))
	 (mesap-val (eval mesap-wrap))      
	 ;; :WAS (mesap-comnt "\n;;;=>")
         (mesap-comnt "\n;;;=> ")
	 (mesap-comn-sxp (format "%S%s%S"  mesap-wrap mesap-comnt mesap-val))
	 (mesap-bnds))
    (save-excursion
      (if (not (eobp))
	  (forward-line)
	(newline))
      (insert mesap-comn-sxp))
    (setq mesap-bnds (bounds-of-thing-at-point 'sexp))
    ;; :WAS (delete-region (car mesap-bnds) (cdr mesap-bnds))
    (setq mesap-wrap (delete-and-extract-region (car mesap-bnds) (cdr mesap-bnds)))
    (when (mon-line-bol-is-eol)
      (delete-char 1))
    ;; :WAS (search-forward-regexp "^;;;=> .*$" nil t)
    (search-forward-regexp (format "^;;;=> %S" mesap-val) nil t)
    mesap-val))
;;
(defun mon-eval-print-last-sexp ()
  "Like `eval-print-last-sexp' but does not move point.\n
:SEE-ALSO `mon-eval-expression', `mon-eval-sexp-at-point',
`mon-pretty-print-sexp-at-point', `mon-princ-cb', `mon-toggle-eval-length',
`pp-eval-last-sexp'.\n►►►"
  (interactive)
  (save-excursion
    (eval-print-last-sexp)))
;;
;;; :TEST-ME (+ 1 3) (mon-eval-print-last-sexp)

;;; ==============================
;;; :CREATED <Timestamp: Thursday June 25, 2009 @ 12:59.22 PM - by MON KEY>
(defun mon-eval-expression (eval-expression-arg &optional eval-expression-insert-value)
  "This is `eval-expression' with EVAL-EXPRESSION-INSERT-VALUE defaulted to t.\n
Gets us eval-expression automatically inserted into current-buffer.\n
:SEE-ALSO `mon-eval-print-last-sexp', `mon-eval-sexp-at-point',
`mon-pretty-print-sexp-at-point', `mon-princ-cb', `mon-toggle-eval-length'.\n►►►"
  (interactive
   (list (let ((minibuffer-completing-symbol t))
	   (read-from-minibuffer "Eval: "
				 nil read-expression-map t
				 'read-expression-history))
         ;; :NOTE Only point of this is to set current-prefix-arg default to t.
         ;; :CHANGED
         ;; current-prefix-arg)) 
	 t))
  (if (null eval-expression-debug-on-error)
      (setq values (cons (eval eval-expression-arg) values))
    (let ((old-value (make-symbol "t")) new-value)
      (let ((debug-on-error old-value))
	(setq values (cons (eval eval-expression-arg) values))
	(setq new-value debug-on-error))
      (unless (eq old-value new-value)
	(setq debug-on-error new-value))))
  (let ((print-length eval-expression-print-length)
	(print-level  eval-expression-print-level))
    (if eval-expression-insert-value
	(with-no-warnings
          (let ((standard-output (current-buffer)))
            (prin1 (car values))))
      (prog1
          (prin1 (car values) t)
        (let ((str (eval-expression-print-format (car values))))
          (if str (princ str t)))))))

;;; ==============================
;;; :CHANGESET 1980
;;; :CREATED <Timestamp: #{2010-07-16T12:57:27-04:00Z}#{10285} - by MON KEY>
;; (defun mon-error-format (symbol-type symbol-name descr-spec &rest fmt-args)
;;   "Return a formatted error string.\n
;; SYMBOL-TYPE is the type of symbol to report about it is one of:
;;  function macro variable constant\n
;; SYMBOL-NAME is the name of the symbol for report.\n
;; DESCR-SPEC format spec string as per format.\n
;; FMT-ARGS any number of individual arguments to format DESCR-SPEC string.\n
;; Return value is a string with the form:
;;  \":<SYMBOL-TYPE> <SYMBOL-NAME> \\n
;;   -- <DESCR-SPEC>\"
;; "
;;   (let* ((styp (case symbol-type
;;                  (function ":FUNCTION")
;;                  (macro ":MACRO")
;;                  (variable ":VARIABLE")
;;                  (constant ":CONSTANT")
;;                  ;;(face ":FACE "))
;;                  ;;(theme ":THEME "))
;;                  ))
;;          (synm (format "`%s'" symbol-name))
;;          (rtn-fmt
;;           (apply 'format (concat styp " " synm " \n-- " descr-spec) fmt-args)))
;;     (signal 'error (list rtn-fmt))))
;; 
;; ,---- :UNCOMMENT-BELOW-TO-TEST
;; | (mon-error-format 'function 'mon-error-format 
;; |                   "has signalled an error with FMT-ARGS %d and %d" 5 5)
;; | 
;; | (mon-error-format 'function 'mon-error-format 
;; |                   "has signalled an error with FMT-ARGS")
;; | 
;; | (mon-error-format 'variable 'mon-error-format 
;; |                   " signalled an error with FMT-ARGS %d and %d" 5 5)
;; | 
;; | (mon-error-format 'constant 'mon-error-format 
;; |                   " signalled an error with FMT-ARGS %d and %d" 5 5)
;; `----


;;; ==============================
;;; :TODO `mon-semnav-up' and `mon-extend-selection' need default key bindings.
;;; :COURTESY Nikolaj Schumacher :VERSION 2008-10-20
(defun mon-extend-selection (arg &optional incremental)
  "Mark symbol surrounding point.\n
Subsequent calls mark higher levels of sexps.\n
:SEE-ALSO `mon-semnav-up'.\n►►►"
  (interactive
   (list (prefix-numeric-value current-prefix-arg)
	 (or (and transient-mark-mode mark-active)
	     (eq last-command this-command))))
  (if incremental
      (progn
        (mon-semnav-up (- arg))
        (forward-sexp)
        (mark-sexp -1))
    (if (> arg 1)
        (mon-extend-selection (1- arg) t)
      (if (looking-at "\\=\\(\\s_\\|\\sw\\)*\\_>")
          (goto-char (match-end 0))
        (unless (memq (char-before) '(?\) ?\"))
          (forward-sexp)))
      (mark-sexp -1))))

;;; ==============================
;;; :COURTESY Nikolaj Schumacher  :VERSION 2008-10-20
;;; :SEE (URL `http://xahlee.org/emacs/syntax_tree_walk.html')
;;; :CREATED <Timestamp: Sunday January 18, 2009 - by MON KEY>
(defun mon-semnav-up (arg)
  "
:SEE-ALSO `mon-extend-selection'.\n►►►"
  (interactive "p")
  (when (nth 3 (syntax-ppss))
    (if (> arg 0)
        (progn
          (skip-syntax-forward "^\"")
          (goto-char (1+ (point)))
          (decf arg))
      (skip-syntax-backward "^\"")
      (goto-char (1- (point)))
      (incf arg)))
  (up-list arg))

;;; ==============================
;;; :PREFIX "msc-"
;;; :COURTESY Nelson H. F. Beebe :HIS clsc.el :WAS `show-columns'
;;; :CREATED <Timestamp: 2009-08-04-W32-2T19:07:47-0400Z - by MON KEY>
(defun mon-show-columns ()
  "Show a numbered column display above the current line.\n
With ARG, begin column display at current column, not at left margin.\n
:SEE-ALSO `mon-indent-lines-from-to-col', `mon-line-strings-pipe-to-col',
`mon-string-fill-to-col', `mon-comment-lisp-to-col',
`mon-mysql-cln-pipes-map-col-field', `mon-mysql-csv-map-col-field',
`mon-mysql-get-field-col', `mon-rectangle-columns',
`mon-rectangle-sum-column', `show-point-mode'.\n►►►"
  (interactive)
  (let* ((msc-lead-blnks
          (if (null current-prefix-arg) 0 (current-column)))
         (msc-col-dsply (concat (make-string msc-lead-blnks ?\ )
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789."
                                 "123456789.123456789.123456789.")))
    (save-excursion
      (forward-line -1)
      (momentary-string-display
       (substring msc-col-dsply
                  0 (min (1- (window-width)) (length msc-col-dsply)))
       (point)))))
;;
;;; :TEST-ME (call-interactively 'mon-show-columns)

;;; ==============================
;;; :PREFIX "mnae-"
;;; :COURTESY Dave Pearson <davep@davep.org> :HIS nukneval.el :WAS `nuke-and-eval'
;;; :VERSION 1.1 Copyright 2002 GPL V2 (URL `http://www.davep.org/emacs/nukneval.el')
;;; :NOTE Nukes and reevaluates an elisp buffer. 
;;; ==============================
(defun mon-nuke-and-eval ()
  "Attempt to cleanly re-evaluate a buffer of elisp code.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-compile-when-needed' `mon-load-or-alert',
`mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-after-mon-utils-loadtime'.\n►►►"
  (interactive)
  (save-excursion
    (setf (point) (point-min))
    (loop for form = (condition-case nil
                         (read (current-buffer))
                       (error nil))
          while form
          do (let ((mnae-typ (car form))
                   (mnae-nm (cadr form)))
               (cond
                ((memq mnae-typ '(defun defun* defsubst defalias defmacro))
                 (fmakunbound mnae-nm))
                ((memq mnae-typ '(defvar defparameter defconst defcustom))
                 (makunbound mnae-nm))))))
  (eval-buffer))

;;; ==============================
;;; :COURTESY Dave Pearson <davep@davep.org> :HIS unbind.el
;;; :VERSION 1.3 - Copyright 2002 - GPL v2 (URL `http://www.davep.org/emacs/unbind.el')
;;; :WAS `unbind-command'    -> `mon-unbind-command'
;;; :WAS `unbind-variable'   -> `mon-unbind-variable'
;;; :WAS `unbind-defun'      -> `mon-unbind-defun'
;;; :WAS `unbind-symbol'     -> `mon-unbind-symbol'
;;; :WAS `unbind-function'   -> `mon-unbind-function'
;;; :NOTE Commands for unbinding things.
;;; ==============================
;;;###autoload
(defun mon-unbind-defun ()
  "Unbind the `defun' near `point' in `current-buffer'.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-compile-when-needed' `mon-load-or-alert',
`mon-byte-compile-and-load', `mon-dump-object-to-file', `mon-nuke-and-eval',
`mon-after-mon-utils-loadtime'.\n►►►"
  (interactive)
  (save-excursion
    (if (and (beginning-of-defun) (looking-at "(defun"))
        (fmakunbound (cadr (read (current-buffer))))
      (error ":FUNCTION `mon-unbind-defun' -- no defun found near point"))))
;; :KEEP-WITH-ABOVE
;;;###autoload
(defun mon-unbind-symbol (symbol)
  "Totally unbind SYMBOL.\n
Includes unbinding function binding, variable binding, and property list.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (interactive "S:FUNCTION `mon-unbind-symbol' -- unbind symbol: ")
  (fmakunbound symbol)
  (makunbound symbol)
  (setf (symbol-plist symbol) nil))
;; :KEEP-WITH-ABOVE
;;;###autoload
(defun mon-unbind-function (fncn-symbol)
  "Remove the function binding of FNCN-SYMBOL.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (interactive "aFunction: ")
  (fmakunbound fncn-symbol))
;; :KEEP-WITH-ABOVE
;;;###autoload
(defun mon-unbind-command (cmd-symbol)
  "Remove the command binding of CMD-SYMBOL.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (interactive "CCommand: ")
  (fmakunbound cmd-symbol))
;; :KEEP-WITH-ABOVE
;;;###autoload
(defun mon-unbind-variable (var-symbol)
  "Remove the variable binding of VAR-SYMBOL.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (interactive (list 
                (completing-read "Variable: "
                                 (loop for s being the symbols
                                    when (boundp s) collect (list (symbol-name s))))))
  (makunbound (if (stringp var-symbol) (intern var-symbol) var-symbol)))
;;; 
;; 
;;; ==============================
;;; :END Pearson's commands for unbinding things.
;;; ==============================

;;; ==============================
;;; :COURTESY Thierry Volpiatto :WAS `tv-dump-object-to-file'
;;; :SEE (URL `http://lists.gnu.org/archive/html/emacs-devel/2009-09/msg00846.html')
;;; :CREATED <Timestamp: #{2009-10-01T12:31:29-04:00Z}#{09404} - by MON>
;;;###autoload
(defun mon-dump-object-to-file (obj file)
  "Save symbol object OBJ to the byte compiled version of FILE.\n
OBJ can be any lisp object, list, hash-table, etc.
FILE is an elisp file with ext *.el.
Loading the *.elc file will re-institute object.\n
:NOTE This function utilizes an documented feature of `eval-when-compile'. It
can be interesting way to save a persistent elisp object. Using `setf' combined
with `eval-when-compile' is a convenient way to save lisp objects like
hash-table.
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  ;; (require 'cl) ;; Be sure we use the CL version of `eval-when-compile'.
  (if (file-exists-p file)
      (error (concat ":FUNCTION `mon-dump-object-to-file' "
                     "-- already existent FILE: %s") file)
    (with-temp-file file
      (erase-buffer)
      (let* ((str-obj (symbol-name obj))
             (fmt-obj (format "(setq %s (eval-when-compile %s))" str-obj str-obj)))
        (insert fmt-obj)))
    (byte-compile-file file)
    (delete-file file)
    (message (concat ":FUNCTION `mon-dump-object-to-file' "
                     "-- OBJ `%s' dumped to FILE: %sc")
             obj file)))

;;; ==============================
;;;###autoload
(defun mon-byte-compile-and-load ()
  "Byte compile and load the current .el file.\n
The function `byte-compile-file' was only easily accesible from the menu.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (interactive)
  (byte-compile-file buffer-file-name t))


;;; ==============================
;;; :PREFIX "mcwn-"
;;; :COURTESY Francois Fleuret <fleuret@idiap.ch> :HIS fleuret.emacs.el
;;; :SEE (URL `http://www.idiap.ch/~fleuret/files/fleuret.emacs.el')
;;; :WAS `ff/compile-when-needed' -> `mon-compile-when-needed'
;;; ==============================
;;;###autoload
(defun mon-compile-when-needed (comp-fname)
  "Compile the given file with COMP-FNAME only if needed.\n
Add .el if required, and use `load-path' to find it.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (if (not (string-match "\.el$" comp-fname))
      (mon-compile-when-needed (concat comp-fname ".el"))
    (mapc #'(lambda (dir)
              (let* ((mcwn-src (concat dir "/" comp-fname)))
                (when (file-newer-than-file-p mcwn-src (concat mcwn-src "c"))
                  (message (concat ":FUNCTION `mon-compile-when-needed' "
                                   (if (let ((byte-compile-verbose nil))
                                         (condition-case nil
                                             (byte-compile-file mcwn-src)
                                           (error nil)))
                                       "-- compiled: %s"
                                     "-- failed compilation of: %s"))
                           mcwn-src))))
          load-path)))

;;; ==============================
;;; :PREFIX "mloa-"
;;; :COURTESY Francois Fleuret <fleuret@idiap.ch> :WAS `ff/load-or-alert'
;;; This is useful when using the same .emacs in many places.
;;; :MODIFICATIONS <Timestamp: #{2010-03-05T16:17:17-05:00Z}#{10095} - by MON KEY>
;;;###autoload
(defun mon-load-or-alert (lib-name &optional compile-when-needed)
  "Try to load the specified file LIB-NAME.\n
When optional arg COMPILE-WHEN-NEEDED `mon-compile-when-needed' the file
LIB-NAME first. Insert a warning message in a load-warning buffer in case of
failure.\n
:SEE-ALSO `mon-unbind-command', `mon-unbind-symbol', `mon-unbind-function',
`mon-unbind-variable', `mon-unbind-defun', `mon-compile-when-needed',
`mon-load-or-alert', `mon-byte-compile-and-load', `mon-dump-object-to-file',
`mon-nuke-and-eval', `mon-after-mon-utils-loadtime'.\n►►►"
  (when compile-when-needed (mon-compile-when-needed lib-name))
  (if (load lib-name t nil) 
      t
      (let ((mloa-bfr (get-buffer-create "*MON-LOADING-WARNINGS*")))
        (display-buffer mloa-bfr)
        (set-buffer mloa-bfr)
        (insert 
         (propertize "Warning: :FUNCTION `mon-load-or-alert' -- " 
                     'face 'font-lock-warning-face 'fontified t)
         " could not load '" lib-name "'\n")
        (fit-window-to-buffer (get-buffer-window mloa-bfr))
        (set-buffer-modified-p nil))
      nil))

;;; ==============================
(provide 'mon-utils)
;;; ==============================

(eval-after-load "mon-utils" 
  '(mon-utils-require-features-at-loadtime))

 
;; Local Variables:
;; mode: EMACS-LISP
;; generated-autoload-file: "./mon-loaddefs.el"
;; End:

;;; ==============================
;;; mon-utils.el ends here
;;; EOF

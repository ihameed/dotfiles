(provide 'colorscheme-wombat)
(require 'regex-dsl)

(setq derpherp-number '(concat (\? (literal "-")) (+ (char-set "0-9"))))
(setq derpherp-numdec '(cap-group (concat (literal ".") (+ (char-set "0-9")))))
(setq derpherp-float `(concat ,derpherp-number (\? ,derpherp-numdec)))
(setq derpherp-exp `(cap-group (concat (char-set "eE") ,derpherp-number (\? ,derpherp-numdec))))
(setq derpherp-engfloat `(concat (word-bound) ,derpherp-float (\? ,derpherp-exp)))
(setq derpherp-engfloat-regex (redsl-to-regexp derpherp-engfloat))
(setq derpherp-engfloatdoof-regex (redsl-to-regexp derpherp-exp))


(defun font-lock-fontify-numbers ()
  "Use this function as a hook to fontify numbers as constant"
  (font-lock-add-keywords nil
      `(("\\b\\(0x[0-9a-fA-F]+\\)" 1 font-lock-constant-face) ; hexa
        (,derpherp-engfloat-regex . font-lock-constant-face)
        ("[\`^(\{\[,\+\-\*/\%=\s-]\\(-?[0-9]+U?L?L?\\)" 1 font-lock-constant-face)
        )))
(add-hook 'font-lock-mode-hook 'font-lock-fontify-numbers)

(set-background-color "#242424")
(set-foreground-color "#cccccc")
;(set-cursor-color "#ecee90")
(set-face-foreground 'font-lock-comment-face "#c0bc6c")
(set-face-foreground 'font-lock-doc-face "#c0bc6c")
(set-face-foreground 'font-lock-constant-face "#e5786d")
(set-face-foreground 'font-lock-string-face "#95e454")
(set-face-foreground 'font-lock-variable-name-face "#cccccc")
(set-face-foreground 'font-lock-function-name-face "#caeb82")
(set-face-foreground 'font-lock-type-face "#caeb82")
(set-face-foreground 'font-lock-builtin-face "#87afff")
(set-face-foreground 'font-lock-keyword-face "#87afff")
(set-face-foreground 'font-lock-preprocessor-face "#e5786d")
(set-face-foreground 'font-lock-negation-char-face "#e7f6da")
(set-face-foreground 'link "#8ac6f2")
;(set-face-foreground 'show-paren-match "#f6f3e8")
;(set-face-background 'show-paren-match "#857b6f")

(set-face-background 'region "#597418")
(set-face-foreground 'region "#ecee90")

(set-face-foreground 'lazy-highlight "black")
(set-face-background 'lazy-highlight "yellow")
(global-hl-line-mode 1)
(set-face-background 'hl-line "#32322e")

(set-face-background 'modeline "#444444")

(setq evil-default-cursor '("#ecee90" t))

(setq markdown-bold-face '((t (:weight normal))))
(setq markdown-header-face '((t (:weight normal))))
(setq markdown-header-face-1 '((t (:weight normal))))
(setq markdown-header-face-2 '((t (:weight normal))))
(setq markdown-header-face-3 '((t (:weight normal))))
(setq markdown-header-face-4 '((t (:weight normal))))
(setq markdown-header-face-5 '((t (:weight normal))))
(setq markdown-header-face-6 '((t (:weight normal))))

;; setq set multiple options at once
(setq evil-search-wrap t
      evil-regexp-search t)

;; set indent
(setq-default indent-tabs-mode nil
	      tab-width 4)

;; can use `setq-local' set the local value of a variabel
;; if the variable is not already buffer local,it will be made buffer local.
;; lambda is a anonymous function
(add-hook 'c-mode-hook
	  (lambda () (setq-local indent-tabs-mode t)))

;; string key notation 
(require 'evil)
(define-key evil-normal-state-map "\C-j" 'evil-previous-visual-line)

;; unset a keybind
;; global-unset-key

;; customize Leader key
;;(defvar my-leader-map(make-sparse-keymap)
  ;;"Keymap for \"leader key\" shortcuts.")

;; binding "." to the keymap
;;(define-key evil-normal-state-map "," my-leader-map)

(provide 'init-evil)

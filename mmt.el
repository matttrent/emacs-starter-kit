
;; --- EXISTING ----------------------------------------------------------------

(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
(add-to-list 'load-path (concat dotfiles-dir "/mtrent"))

(load (concat dotfiles-dir "topfunky.el"))

;; --- PEEPOPEN ----------------------------------------------------------------

(require 'peepopen)
(setq ns-pop-up-frames nil)

;; --- MAXFRAME ----------------------------------------------------------------

(require 'maxframe)
(setq mf-offset-x 40)
(add-hook 'window-setup-hook 'maximize-frame t)

;; --- REVBUFS -----------------------------------------------------------------

(require 'revbufs)

;; --- EDITTING ----------------------------------------------------------------

;(tool-bar-mode 1)
(menu-bar-mode 1)

(global-set-key "\M- " 'set-mark-command)

(global-set-key [(super shift left)] 'previous-multiframe-window)
(global-set-key [(super shift right)] 'next-multiframe-window)

;; --- ORG MODE ----------------------------------------------------------------

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)

;; --- TEXT APPEARANCE ---------------------------------------------------------

;; --- Theme

(load (concat dotfiles-dir "mtrent/twilight.el"))
(color-theme-twilight)

;; --- PROGRAMMING -------------------------------------------------------------

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cc-other-file-alist
   (quote
    (("\\.cc\\'" (".hh" ".h"))
     ("\\.hh\\'" (".cc" ".C"))
     ("\\.m\\'" (".h"))
     ("\\.c\\'" (".h"))
     ("\\.h\\'" (".c" ".cc" ".C" ".CC" ".cxx" ".cpp" ".m"))
     ("\\.C\\'" (".H" ".hh" ".h"))
     ("\\.H\\'" (".C" ".CC"))
     ("\\.CC\\'" (".HH" ".H" ".hh" ".h"))
     ("\\.HH\\'" (".CC"))
     ("\\.c\\+\\+\\'" (".h++" ".hh" ".h"))
     ("\\.h\\+\\+\\'" (".c++"))
     ("\\.cpp\\'" (".hpp" ".hh" ".h"))
     ("\\.hpp\\'" (".cpp"))
     ("\\.cxx\\'" (".hxx" ".hh" ".h"))
     ("\\.hxx\\'" (".cxx")))))
 '(javascript-indent-level 2))



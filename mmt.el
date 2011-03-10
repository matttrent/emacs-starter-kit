
;; --- PATH CONFIGURATION ------------------------------------------------------

(let ((path))
  (setq path (concat "~/.gem/ruby/1.8/bin:"
                     "~/bin:"
                     "~/Applications:"
                     "~/src/homebrew/bin:"
                     "/usr/local/texlive/2010/bin/x86_64-darwin:"
                     "/Library/Frameworks/EPD64.framework/Versions/Current/bin:"
                     "/opt/local/bin:"
                     "/usr/local/bin:"
                     "/usr/bin:"
                     "/bin"))
  (setenv "PATH" path))

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

;; --- WORD COUNT --------------------------------------------------------------

(require 'word-count)

;(add-to-list 'auto-mode-alist '(".md"    . word-count-mode))
;(add-to-list 'auto-mode-alist '(".mdown" . word-count-mode))

(add-hook 'text-mode-hook 'word-count-mode-on)

;; --- EDITTING ----------------------------------------------------------------

;(tool-bar-mode 1)
(menu-bar-mode 1)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(global-set-key "\M- " 'set-mark-command)

(global-set-key [(super shift left)] 'previous-multiframe-window)
(global-set-key [(super shift right)] 'next-multiframe-window)

;; --- ORG MODE ----------------------------------------------------------------

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-directory "~/Archive/Filing/organizer")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
; (setq org-agenda-files (quote ("~/Archive/Filing/organizer/test.org")))
(setq org-mobile-inbox-for-pull "~/Archive/Filing/organizer/inbox.org")

(setq org-log-done t)

;; --- SCONS -------------------------------------------------------------------

(add-to-list 'auto-mode-alist '("SConstruct" . python-mode))
(add-to-list 'auto-mode-alist '("SConscript" . python-mode))

(defvar compile-command "scons")

;; --- ZSH ---------------------------------------------------------------------

(add-to-list 'auto-mode-alist '(".zsh" . shell-script-mode))

;; --- TEXT APPEARANCE ---------------------------------------------------------

;; --- Theme

(load (concat dotfiles-dir "mtrent/twilight.el"))
(color-theme-twilight)

;; --- Fonts

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil 
                         :inverse-video nil :box nil
                         :strike-through nil :overline nil :underline nil
                         :slant normal :weight normal :height 110 :width normal
                         :foundry "apple" :family "Anonymous Pro")))))

(setq-default line-spacing 1)

;(setq mac-allow-anti-aliasing nil)

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




(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
;(add-to-list 'load-path (concat dotfiles-dir "/topfunky"))
(add-to-list 'load-path (concat dotfiles-dir "/mtrent"))

(load (concat dotfiles-dir "topfunky.el"))
;(require 'topfunky)

(add-to-list 'load-path (concat dotfiles-dir "/vendor/textmate.el"))
(require 'textmate)
(require 'peepopen)
(textmate-mode)
(setq ns-pop-up-frames nil)

(require 'maxframe)
(setq mf-display-padding-width 50)
(add-hook 'window-setup-hook 'maximize-frame t)

(require 'revbufs)

(load (concat dotfiles-dir "mtrent/twilight.el"))
(color-theme-twilight)

(setq mac-allow-anti-aliasing nil)

(global-set-key (kbd "M- ") 'set-mark-command)

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

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil 
                         :inverse-video nil :box nil
                         :strike-through nil :overline nil :underline nil
                         :slant normal :weight normal :height 110 :width normal
                         :foundry "apple" :family "Menlo")))))

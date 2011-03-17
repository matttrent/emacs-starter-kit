
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

;; (add-hook 'word-count-mode-hook
;;           (lambda()
;;             (global-set-key "\M- " 'set-mark-command)
;;             ))

(add-hook 'text-mode-hook 'word-count-mode-on)

;; --- EDITTING ----------------------------------------------------------------

;; turn on menu bar
;(tool-bar-mode 1)
(menu-bar-mode 1)

;; set line wrap for text mode
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; change setting mark to play nice with all my something-spacebar hotkeys
(global-set-key "\M- " 'set-mark-command)

;; set up shifting between different frames
(global-set-key [(super meta left)] 'previous-multiframe-window)
(global-set-key [(super meta right)] 'next-multiframe-window)

;; set up emacsclient to accept requests to edit files from command
;; line EDITOR
(defvar server-buffer-clients)
(when (and (fboundp 'server-start) (string-equal (getenv "TERM") 'xterm))
  (server-start)
  (defun fp-kill-server-with-buffer-routine ()
    (and server-buffer-clients (server-done)))
  (add-hook 'kill-buffer-hook 'fp-kill-server-with-buffer-routine))

;; --- ORG MODE ----------------------------------------------------------------

(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-directory "~/Archive/Filing/organizer")
(setq org-agenda-files (file-expand-wildcards (concat org-directory "/*.org")))
(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull (concat org-directory "/inbox.org"))

(setq org-startup-indented t)

;; --- PYTHON / IPYTHON --------------------------------------------------------

(setq ipython-command "/Library/Frameworks/EPD64.framework/Versions/Current/bin/ipython")
(require 'ipython)

(setq py-python-command-args '("-pylab"))

;;pdb setup, note the python version
(setq pdb-path '/Library/Frameworks/EPD64.framework/Versions/Current/lib/python2.6/pdb.py
       gud-pdb-command-name (symbol-name pdb-path))
 (defadvice pdb (before gud-query-cmdline activate)
   "Provide a better default command line when called interactively."
   (interactive
    (list (gud-query-cmdline pdb-path
	 		    (file-name-nondirectory buffer-file-name)))))

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



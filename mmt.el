
;; Default font
; (set-default-font "-misc-fixed-medium-*-normal-*-*-80-*-*-c-*-*-*")

(add-to-list 'load-path (concat dotfiles-dir "/mtrent"))

(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

(require 'revbufs)

 (setq mac-allow-anti-aliasing nil)
;; color theme
(require 'color-theme-sanityinc-tomorrow)

;; melpa package archive
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#4d4d4c"))
 '(beacon-color "#c82829")
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(custom-safe-themes
   '("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default))
 '(fci-rule-color "#d6d6d6")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(font-use-system-font t)
 '(frame-background-mode 'light)
 '(package-selected-packages
   '(poly-R markdown-mode color-theme-sanityinc-tomorrow rainbow-delimiters ess ranger auctex slime evil))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#c82829")
     (40 . "#f5871f")
     (60 . "#eab700")
     (80 . "#718c00")
     (100 . "#3e999f")
     (120 . "#4271ae")
     (140 . "#8959a8")
     (160 . "#c82829")
     (180 . "#f5871f")
     (200 . "#eab700")
     (220 . "#718c00")
     (240 . "#3e999f")
     (260 . "#4271ae")
     (280 . "#8959a8")
     (300 . "#c82829")
     (320 . "#f5871f")
     (340 . "#eab700")
     (360 . "#718c00")))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; evil mode
(require 'evil)
(evil-mode 1)

(define-key evil-insert-state-map (kbd "C-;") 'evil-normal-state)

;; common lisp (slime)
(setq inferior-lisp-program "/usr/bin/sbcl")

;; LaTeX (auctex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; display line numbers (https://www.emacswiki.org/emacs/LineNumbers)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; disable bell sound (https://www.emacswiki.org/emacs/AlarmBell)
(setq visible-bell 1)

;; enables recent file feature
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; delimter highlighting
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; R markdown (https://plantarum.ca/2021/10/03/emacs-tutorial-rmarkdown/)
(require 'poly-R)
(add-to-list 'auto-mode-alist
	     '("\\.[rR]md\\'" . poly-gfm+r-mode))
(setq markdown-code-block-braces t)


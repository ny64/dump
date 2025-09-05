;; Theme
(load-theme 'modus-vivendi t)
;; Font
(set-face-attribute 'default nil
		    :font "IBM Plex Mono"
		    :height 100)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:slant italic)))))
;; Titlebar
(when (window-system)
  (set-frame-parameter nil 'undecorated t))
;; Disable menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Evil mode setup
(setq evil-want-keybinding nil)
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; Vim-like key bindings in various modes
(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(use-package csv-mode
  :ensure t
  :mode "\\.csv\\'"
  :config
  ;; Enable evil keybindings in csv-mode
  (evil-define-key 'normal csv-mode-map
    "gh" 'csv-header-line
    "ga" 'csv-align-fields
    "gu" 'csv-unalign-fields
    "gs" 'csv-sort-fields-region
    "gS" 'csv-sort-numeric-fields-region))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(csv-mode markdown-mode evil-collection evil)))


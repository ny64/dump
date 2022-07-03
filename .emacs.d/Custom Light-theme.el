(deftheme Custom Light
  "Created 2022-05-16.")

(custom-theme-set-variables
 'Custom Light
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#ffffff" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#4d4d4c"])
 '(custom-safe-themes '("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default))
 '(font-use-system-font t)
 '(frame-background-mode 'light)
 '(package-selected-packages '(poly-R markdown-mode color-theme-sanityinc-tomorrow rainbow-delimiters ess ranger auctex slime evil))
 '(window-divider-mode nil))

(provide-theme 'Custom Light)

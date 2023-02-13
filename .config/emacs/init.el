;; -*- lexical-binding: t; -*-

;; use-package ----
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; use-package ----

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)

(use-package gcmh
  :ensure t
  :init (gcmh-mode 1))

(use-package try
  :ensure t)

;; Don’t compact font caches during GC.
(setq inhibit-compacting-font-caches t)

;; Garbage-collect on focus-out, emacs should feel snappier overall.
(add-function :after after-focus-change-function
              (defun me/garbage-collect-maybe ()
                (unless (frame-focus-state)
                  (garbage-collect))))

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 16777216 ; 16mb
          gc-cons-percentage 0.1)))

;; This is the actual config file.
;; It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.config/emacs/config.org")
  (org-babel-load-file (expand-file-name "~/.config/emacs/config.org")))

;; Visit config.org
(defun config-visit ()
  (interactive)
  (find-file "~/.config/emacs/config.org"))
(global-set-key (kbd "C-c e") 'config-visit)

;; Reload config.org
(defun config-reload ()
  "Reloads ~/.config/emacs/config.org at runtime"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.config/emacs/config.org")))
(global-set-key (kbd "C-c r") 'config-reload)

;; init.el ends here.

(require 'tramp)
(setq tramp-default-method "scp")
(setq default-tab-width 7)

;;(add-to-list 'load-path "~/.emacs.d/emacs-jabber")
;;(require 'jabber-autoloads)

(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-c1" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)
(add-hook 'org-mode-hook 'turn-on-font-lock)

(setq org-agenda-files (list "~/Documents/org/work.org"
                             "~/Documents/org/home.org"
                             "~/Documents/org/recognition.org"
                             "~/Documents/org/warthog.org"))

;;;; TODOs

(setq org-todo-keywords
           '((sequence "TODO(t)" "|" "DONE")
             (sequence "REQUEST" "|" "SUBMITTED" "|" "RECEIVED" | "APPLIED")
             (sequence "|" "CANCELED")))

(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "red" :weight bold))
  ("ACTION" . (:foreground "red" :weight bold))
  ("DONE" . (:foreground "green" :weight bold))
  ("CANCELED" . (:foreground "brown" :weight bold))
  ("WAITING" . (:foreground "DarkOrchid1" :weight bold))
  ("PROJECT" . (:foreground "blue" :weight bold))
  ("FINISHED" . (:foreground "green" :weight bold))
  ("STOPPED" . (:foreground "brown" :weight bold))))

(setq compilation-scroll-output 1)
;;(add-hook 'org-mode-hook)
(setq rcirc-default-nick "coderdad")

(setq rcirc-authinfo
      '(("freenode" nickserv "coderdad" "password")))

(require 'arduino-mode)
(require 'rspec-mode)
(require 'csharp-mode)
;;(autoload 'autotest-switch "autotest" "doco" t)
;;(autoload 'autotest "autotest" "doco" t)
;;(add-hook 'ruby-mode-hook
          '(lambda ()
             (define-key ruby-mode-map (kbd "C-c C-a") 'autotest-switch))

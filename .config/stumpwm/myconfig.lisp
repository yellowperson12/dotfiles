(in-package :stumpwm)

;;; ===== AUTOCOMMANDS =====
(run-shell-command "wmname LG3D")
(run-shell-command "pgrep -x dunst || dunst &")
(run-shell-command "~/.fehbg &")
(run-shell-command "xsct 4500 0.8")
(run-shell-command "pactl set-sink-volume @DEFAULT_SINK@ 100%")
(run-shell-command "pgrep -x picom || picom &")
(run-shell-command "pgrep -x xscreensaver || xscreensaver --no-splash &")
(run-shell-command "xrdb ~/.Xresources")

;;; ===== APARENCY =====
(setf *message-window-font* "Monospace-11"
      *input-window-font*   "Monospace-11"
      *window-border-style* :thin
      *border-color*        "#2e3440"
      *focus-color*         "#88c0d0"
      *unfocus-color*       "#4c566a")

;;; ===== BEHAVIOR =====
(setf *mouse-focus-policy*     :click
      *float-window-modifier*  :super
      *new-frame-action*       :last-window
      *startup-message*        nil
      *ignore-wm-inc-hints*    t
      *message-window-gravity* :center
      *input-window-gravity*   :center)

;;; ===== MODE-LINE =====
; (mode-line-mode +1)
; (setf *mode-line-format*
;       (list " %g " " %w " " [%d] " " %b " " %v " " %I " " %T "))

;;; ===== PREFIX =====
(set-prefix-key (kbd "C-ç"))

;; Navigation
; (define-key *root-map* (kbd "h") "move-focus left")
; (define-key *root-map* (kbd "j") "move-focus down")
; (define-key *root-map* (kbd "k") "move-focus up")
; (define-key *root-map* (kbd "l") "move-focus right")
; (define-key *root-map* (kbd "r") "remove-split")
; (define-key *root-map* (kbd "s") "split-frame-h")
; (define-key *root-map* (kbd "v") "split-frame-v")

;; Apps (Super)
(define-key *top-map* (kbd "s-ESC") "exec xterm -e htop")
(define-key *top-map* (kbd "s-F")   "exec zen-browser")
(define-key *top-map* (kbd "s-RET") "exec xterm")
(define-key *top-map* (kbd "s-T")   "exec Telegram")
(define-key *top-map* (kbd "s-V")   "exec xterm -e nvim")
(define-key *top-map* (kbd "s-a")   "exec xterm -e qalc")
(define-key *top-map* (kbd "s-f")   "exec freetube")
(define-key *top-map* (kbd "s-t")   "exec pcmanfm")

;;; ===== MODULES =====
; (add-to-load-path "~/.config/stumpwm/contrib/util/swm-gaps")
; (load-module "swm-gaps")
; (setf swm-gaps:*inner-gaps-size* 8
;       swm-gaps:*outer-gaps-size* 8)
; (define-key *top-map* (kbd "s-u") "toggle-gaps")

;;; ===== WINDOW'S RULES =====
; (defun my-make-window-float-and-above (window)
;   (when (or (string-match "Picture-in-Picture" (window-title window))
;             (string-match "Picture-in-picture" (window-title window)))
;     (focus-window window)
;     (float-this)
;     (toggle-always-on-top)))
;
; (add-hook *new-window-hook* 'my-make-window-float-and-above)

;;; ===== FINISH =====
(echo "started")

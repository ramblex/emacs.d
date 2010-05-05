(require 'jabber)

(setq jabber-account-list
      '(("alexduller@googlemail.com"
	 (:network-server . "talk.google.com")
	 (:connection-type . ssl)
	 (:port . 5223))))

(setq always-jabber-growl t)

(when *is-a-mac*
  (defun my-jabber-notify (from buf text proposed-alert)
    "Show a growl notification when we're not in the chat buffer"
    (when (or always-jabber-growl
	   (not (memq (selected-window) (get-buffer-window-list buf))))
      (growl-notification 
       (format "(PM) %s" 
	       (jabber-jid-displayname (jabber-jid-user from))) text)))
  (add-hook 'jabber-alert-message-hooks 'my-jabber-notify)
)
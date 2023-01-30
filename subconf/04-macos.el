(add-hook 'window-setup-hook
	  (lambda (&optional frame)
	    (when-let (frame (or frame (selected-frame)))
	      (when (display-graphic-p frame)
		(set-frame-parameter frame 'menu-bar-lines 1)))))

(provide '04-macos)
;; 04-macos ends here
				     

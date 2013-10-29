(define
	(SaveAsPNG inIMG)
	(gimp-image-merge-visible-layers inIMG 0)
	(file-png-save-defaults
		RUN-NONINTERACTIVE
		inIMG
		(car
			(gimp-image-get-active-layer inIMG)
		)
		(string-append
			(car
				(strbreakup
					(car
						(gimp-image-get-filename inIMG)
					)
					"."
				)
			)
			".png"
		)
		(car
			(strbreakup
				(car
					(gimp-image-get-filename inIMG)
				)
				"."
			)
		)
	)
)
  (script-fu-register
    "SaveAsPNG"            ;func name
    "SaveAsPNG"                      ;menu label
    "Saves file as PNG using same base name"             ;description
	""
	""
	""
	""
	SF-IMAGE     "Image"          0   			
  )
  (script-fu-menu-register "SaveAsPNG" "<Image>/MySt_uff")

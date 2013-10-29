(define
	(SaveAsXCF inIMG)
	(gimp-xcf-save
		0
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
			".xcf"
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
    "SaveAsXCF"            ;func name
    "SaveAsXCF"                      ;menu label
    "Saves file as XCF using same base name"             ;description
	""
	""
	""
	""
	SF-IMAGE     "Image"          0   			
  )
  (script-fu-menu-register "SaveAsXCF" "<Image>/MySt_uff")

  (define (SurveyMagic inIMG)
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
	(gimp-image-scale inIMG 619 825)
	(gimp-image-set-resolution inIMG 300 300)
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
    "SurveyMagic"            ;func name
    "SurveyMagic"                      ;menu label
    "Saves XCF, resizes, then saves PNG"             ;description
	""
	""
	""
	""
	SF-IMAGE     "Image"          0   			
  )
  (script-fu-menu-register "SurveyMagic" "<Image>/MySt_uff")

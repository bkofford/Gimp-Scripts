  (define (script-fu-scale-v825-300dpi inIMG)
  (gimp-image-scale inIMG 619 825)
  (gimp-image-set-resolution inIMG 300 300)
  )
  (script-fu-register
    "script-fu-scale-v825-300dpi"            ;func name
    "Scale v825 300dpi"                      ;menu label
    "Scales images for site survey documentation"             ;description
	""
	""
	""
	""
	SF-IMAGE     "Image"          0   			
  )
  (script-fu-menu-register "script-fu-scale-v825-300dpi" "<Image>/MySt_uff")

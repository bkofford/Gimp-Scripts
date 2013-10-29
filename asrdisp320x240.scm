  (define (script-fu-crop-ASRDisp-320x240 inIMG)
  (gimp-image-crop inIMG 320 240 4 42)
  )
  (script-fu-register
    "script-fu-crop-ASRDisp-320x240"            ;func name
    "Crop _ASRDisp 320x240"                      ;menu label
    "Crops screen cap of ASRDisp window for 320x240 devices"             ;description
	""
	""
	""
	""
	SF-IMAGE     "Image"          0   			
  )
  (script-fu-menu-register "script-fu-crop-ASRDisp-320x240" "<Image>/MySt_uff")

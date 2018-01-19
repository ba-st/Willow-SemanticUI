Supplying
asynchronicButtonLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicButtonWebView
		labeled: aRenderable
		applying:
			[ :theButton | (theButton addClass semantic: [ :style | style ui button ]) + aComponentCommand ]
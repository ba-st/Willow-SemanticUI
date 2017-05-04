uploaded metadata
LatoLatinMediumWoff2

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'LatoLatin-Medium.woff2'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #LatoLatinMediumWoff2Content)
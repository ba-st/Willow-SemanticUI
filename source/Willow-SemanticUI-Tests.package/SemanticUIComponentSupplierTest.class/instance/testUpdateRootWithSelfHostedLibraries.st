tests-Processing
testUpdateRootWithSelfHostedLibraries

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			(SemanticUIComponentSupplier
				withSemanticUILibrary: SemanticUIDevelopmentMetadataLibrary default) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/semantic-ui-2.2.13/semantic.css"/><script type="text/javascript" src="/files/semantic-ui-2.2.13/semantic.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
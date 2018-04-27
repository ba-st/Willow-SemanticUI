Class {
	#name : #SemanticUIDeploymentMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-SemanticUI-Tests-Libraries'
}

{ #category : #tests }
SemanticUIDeploymentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: SemanticUIDeploymentMetadataLibrary default
		createsAsFolders: #('semantic-ui-2.2.13' 'semantic-ui-2.2.13/themes/default/assets/fonts' 'semantic-ui-2.2.13/themes/default/assets/images')
		andFileContentsMatching:
			{('semantic-ui-2.2.13/LatoLatin-Medium.eot' -> '233bea35f0aaedc48fdf6c98e8624b20d8455afd').
			('semantic-ui-2.2.13/LatoLatin-Medium.ttf' -> '4120fa743b3cfce5e4e32423c55aa4a63c338b9e').
			('semantic-ui-2.2.13/LatoLatin-Medium.woff' -> 'af3616d6e989baa6f49c8faac0a8d61d042d9bc8').
			('semantic-ui-2.2.13/LatoLatin-Medium.woff2' -> '944b38f9c7883df6d16eda00d5deb81813465ffb').
			('semantic-ui-2.2.13/latolatinfonts.css' -> '98526ca0c32bb1e6809275bfda13e6f520f4ce2b').
			('semantic-ui-2.2.13/semantic.min.css' -> '380405d16e944ea8c6632f0cedcca46f49232c94').
			('semantic-ui-2.2.13/semantic.min.js' -> 'f274c77554ff6aabead8e1a31087c8441cc030b9').
			('semantic-ui-2.2.13/themes/default/assets/fonts/icons.eot' -> 'd980c2ce873dc43af460d4d572d441304499f400').
			('semantic-ui-2.2.13/themes/default/assets/fonts/icons.otf' -> 'cde9eb92c8a3ba23d648f76ea3931511f30813f4').
			('semantic-ui-2.2.13/themes/default/assets/fonts/icons.svg' -> '98a8aa5cf7d62c2eff5f07ede8d844b874ef06ed').
			('semantic-ui-2.2.13/themes/default/assets/fonts/icons.ttf' -> '13b1eab65a983c7a73bc7997c479d66943f7c6cb').
			('semantic-ui-2.2.13/themes/default/assets/fonts/icons.woff' -> '28b782240b3e76db824e12c02754a9731a167527').
			('semantic-ui-2.2.13/themes/default/assets/fonts/icons.woff2' -> 'd6f48cba7d076fb6f2fd6ba993a75b9dc1ecbf0c').
			('semantic-ui-2.2.13/themes/default/assets/images/flags.png' -> '4a552ecb123ded5040ddda01d626103cc65db055')}
]

{ #category : #tests }
SemanticUIDeploymentMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: SemanticUIDeploymentMetadataLibrary isForDeployment;
		deny: SemanticUIDeploymentMetadataLibrary isForDevelopment
]

{ #category : #tests }
SemanticUIDeploymentMetadataLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | SemanticUIDeploymentMetadataLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/semantic-ui-2.2.13/semantic.min.css"/><script type="text/javascript" src="/files/semantic-ui-2.2.13/semantic.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

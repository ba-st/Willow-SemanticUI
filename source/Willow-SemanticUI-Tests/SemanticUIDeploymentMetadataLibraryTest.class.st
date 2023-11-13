Class {
	#name : #SemanticUIDeploymentMetadataLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-SemanticUI-Tests-Libraries'
}

{ #category : #tests }
SemanticUIDeploymentMetadataLibraryTest >> testDeployFiles [

	self
		assertFileDeploymentOf: SemanticUIDeploymentMetadataLibrary default
		createsAsFolders: #('semantic-ui-2.5.0' 'semantic-ui-2.5.0/themes/default/assets/fonts' 'semantic-ui-2.5.0/themes/default/assets/images')
		andFileContentsMatching:
			{('semantic-ui-2.5.0/LatoLatin-Medium.eot' -> '233bea35f0aaedc48fdf6c98e8624b20d8455afd').
			('semantic-ui-2.5.0/LatoLatin-Medium.ttf' -> '4120fa743b3cfce5e4e32423c55aa4a63c338b9e').
			('semantic-ui-2.5.0/LatoLatin-Medium.woff' -> 'af3616d6e989baa6f49c8faac0a8d61d042d9bc8').
			('semantic-ui-2.5.0/LatoLatin-Medium.woff2' -> '944b38f9c7883df6d16eda00d5deb81813465ffb').
			('semantic-ui-2.5.0/latolatinfonts.css' -> '98526ca0c32bb1e6809275bfda13e6f520f4ce2b').
			('semantic-ui-2.5.0/semantic.min.css' -> '1781383876cb8612d7030c32f4fd6cf3df5343ae').
			('semantic-ui-2.5.0/semantic.min.js' -> '7b695d16ef9a19fbea0644e2f4e52d85b08da92d').
			('semantic-ui-2.5.0/themes/default/assets/fonts/icons.eot' -> 'b7de2e1d65766852486de24b36a46240f4ae5994').
			('semantic-ui-2.5.0/themes/default/assets/fonts/icons.otf' -> 'cde9eb92c8a3ba23d648f76ea3931511f30813f4').
			('semantic-ui-2.5.0/themes/default/assets/fonts/icons.svg' -> 'c74bfaa0b440a2c13463aabcdbb349fa412268cb').
			('semantic-ui-2.5.0/themes/default/assets/fonts/icons.ttf' -> 'cedd7227091b22f873e3856d84c3dfd974745048').
			('semantic-ui-2.5.0/themes/default/assets/fonts/icons.woff' -> '9c293328f39dc54bd654d273d0cc5af0d11905c6').
			('semantic-ui-2.5.0/themes/default/assets/fonts/icons.woff2' -> '6ec6d36cb2464b4e821cfabb532f310bd342601c').
			('semantic-ui-2.5.0/themes/default/assets/images/flags.png' -> '4a552ecb123ded5040ddda01d626103cc65db055')}
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
		'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/semantic-ui-2.5.0/semantic.min.css"/><script type="text/javascript" src="/files/semantic-ui-2.5.0/semantic.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

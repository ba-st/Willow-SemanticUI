Class {
	#name : #SemanticUIDeploymentMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-SemanticUI-Tests-Libraries'
}

{ #category : #tests }
SemanticUIDeploymentMetadataLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ SemanticUIDeploymentMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders
					equals:
					#('semantic-ui-2.2.13' 'semantic-ui-2.2.13/themes/default/assets/fonts' 'semantic-ui-2.2.13/themes/default/assets/images');
				assert: GRPlatform current createdFiles
					equals:
					#('semantic-ui-2.2.13/LatoLatin-Medium.eot' 'semantic-ui-2.2.13/LatoLatin-Medium.ttf' 'semantic-ui-2.2.13/LatoLatin-Medium.woff' 'semantic-ui-2.2.13/LatoLatin-Medium.woff2' 'semantic-ui-2.2.13/latolatinfonts.css' 'semantic-ui-2.2.13/semantic.min.css' 'semantic-ui-2.2.13/semantic.min.js' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.eot' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.otf' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.svg' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.ttf' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.woff' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.woff2' 'semantic-ui-2.2.13/themes/default/assets/images/flags.png') ]
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

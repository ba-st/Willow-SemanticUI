Class {
	#name : #SemanticUIDevelopmentMetadataLibraryTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-SemanticUI-Tests-Libraries'
}

{ #category : #tests }
SemanticUIDevelopmentMetadataLibraryTest >> testDeployFiles [

	self
		useFileTestingPlatformDuring: [ SemanticUIDevelopmentMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders
					equals:
					#('semantic-ui-2.2.13' 'semantic-ui-2.2.13/themes/default/assets/fonts' 'semantic-ui-2.2.13/themes/default/assets/images');
				assert: GRPlatform current createdFiles
					equals:
					#('semantic-ui-2.2.13/LatoLatin-Medium.eot' 'semantic-ui-2.2.13/LatoLatin-Medium.ttf' 'semantic-ui-2.2.13/LatoLatin-Medium.woff' 'semantic-ui-2.2.13/LatoLatin-Medium.woff2' 'semantic-ui-2.2.13/latolatinfonts.css' 'semantic-ui-2.2.13/semantic.css' 'semantic-ui-2.2.13/semantic.js' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.eot' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.otf' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.svg' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.ttf' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.woff' 'semantic-ui-2.2.13/themes/default/assets/fonts/icons.woff2' 'semantic-ui-2.2.13/themes/default/assets/images/flags.png') ]
]

{ #category : #tests }
SemanticUIDevelopmentMetadataLibraryTest >> testHandlesFolder [

	self
		assert:
			(SemanticUIDevelopmentMetadataLibrary
				handlesFolder: SemanticUIDevelopmentMetadataLibrary folderName);
		deny: (SemanticUIDevelopmentMetadataLibrary handlesFolder: #files)
]

{ #category : #tests }
SemanticUIDevelopmentMetadataLibraryTest >> testIsForDevelopment [

	self
		assert: SemanticUIDevelopmentMetadataLibrary isForDevelopment;
		deny: SemanticUIDevelopmentMetadataLibrary isForDeployment
]

{ #category : #tests }
SemanticUIDevelopmentMetadataLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | SemanticUIDevelopmentMetadataLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/semantic-ui-2.2.13/semantic.css"/><script type="text/javascript" src="/files/semantic-ui-2.2.13/semantic.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

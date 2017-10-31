tests
testDeployFiles

	self
		useFileTestingPlatformDuring: [ SemanticUIDevelopmentMetadataLibrary default deployFiles.
			self
				assert: GRPlatform current createdFolders equals: #('semantic-ui-2.2.13');
				assert: GRPlatform current createdFiles
					equals:
					#('semantic-ui-2.2.13/LatoLatin-Medium.eot' 'semantic-ui-2.2.13/LatoLatin-Medium.ttf' 'semantic-ui-2.2.13/LatoLatin-Medium.woff' 'semantic-ui-2.2.13/LatoLatin-Medium.woff2' 'semantic-ui-2.2.13/latolatinfonts.css' 'semantic-ui-2.2.13/semantic.css' 'semantic-ui-2.2.13/semantic.js') ]
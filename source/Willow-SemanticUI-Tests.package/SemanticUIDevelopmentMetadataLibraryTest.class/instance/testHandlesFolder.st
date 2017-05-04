tests
testHandlesFolder

	self
		assert:
			(SemanticUIDevelopmentMetadataLibrary
				handlesFolder: SemanticUIDevelopmentMetadataLibrary folderName);
		deny: (SemanticUIDevelopmentMetadataLibrary handlesFolder: #files)
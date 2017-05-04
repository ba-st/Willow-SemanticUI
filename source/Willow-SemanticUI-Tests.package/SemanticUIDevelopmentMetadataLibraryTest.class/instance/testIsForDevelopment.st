tests
testIsForDevelopment

	self
		assert: SemanticUIDevelopmentMetadataLibrary isForDevelopment;
		deny: SemanticUIDevelopmentMetadataLibrary isForDeployment
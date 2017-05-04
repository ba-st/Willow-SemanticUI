tests
testIsForDevelopment

	self
		assert: SemanticUIDeploymentMetadataLibrary isForDeployment;
		deny: SemanticUIDeploymentMetadataLibrary isForDevelopment
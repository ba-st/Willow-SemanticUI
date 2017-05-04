tests
testVersionCompatibility

	self
		assert: SemanticUIDeploymentMetadataLibrary version
			equals: SemanticUIDevelopmentMetadataLibrary version;
		assert: SemanticUIDeploymentMetadataLibrary version
			equals: SemanticUIOnlineLibrary default version
Class {
	#name : #SemanticUIMetadataLibraryTest,
	#superclass : #TestCase,
	#category : 'Willow-SemanticUI-Tests-Libraries'
}

{ #category : #tests }
SemanticUIMetadataLibraryTest >> testForDeployment [

	self
		assert: SemanticUIMetadataLibrary forDeployment
		equals: SemanticUIDeploymentMetadataLibrary
]

{ #category : #tests }
SemanticUIMetadataLibraryTest >> testForDevelopment [

	self
		assert: SemanticUIMetadataLibrary forDevelopment
		equals: SemanticUIDevelopmentMetadataLibrary
]

{ #category : #tests }
SemanticUIMetadataLibraryTest >> testVersionCompatibility [

	self
		assert: SemanticUIDeploymentMetadataLibrary version
			equals: SemanticUIDevelopmentMetadataLibrary version;
		assert: SemanticUIDeploymentMetadataLibrary version
			equals: SemanticUIOnlineLibrary default version
]

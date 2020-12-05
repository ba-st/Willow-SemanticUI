Class {
	#name : #BaselineOfWillowSemanticUI,
	#superclass : #BaselineOf,
	#category : #BaselineOfWillowSemanticUI
}

{ #category : #baselines }
BaselineOfWillowSemanticUI >> baseline: spec [

	<baseline>
	spec
		for: #pharo
		do: [ self
				setUpDependencies: spec;
				setUpPackages: spec.
			spec
				group: 'CI' with: 'Tests';
				group: 'Dependent-SUnit-Extensions' with: 'Willow-SUnit';
				group: 'Tools' with: 'Willow-Tools';
				group: 'Development' with: #('Tests' 'Tools')
			]
]

{ #category : #accessing }
BaselineOfWillowSemanticUI >> projectClass [

	^ MetacelloCypressBaselineProject
]

{ #category : #baselines }
BaselineOfWillowSemanticUI >> setUpDependencies: spec [

	spec
		baseline: 'Willow' with: [ spec repository: 'github://ba-st/Willow:v14/source' ];
		project: 'Willow-Deployment' copyFrom: 'Willow' with: [ spec loads: 'Deployment' ];
		project: 'Willow-SUnit' copyFrom: 'Willow' with: [ spec loads: 'Dependent-SUnit-Extensions' ];
		project: 'Willow-Core-Tests' copyFrom: 'Willow' with: [ spec loads: 'Tests' ];
		project: 'Willow-Tools' copyFrom: 'Willow' with: [ spec loads: 'Tools' ]
]

{ #category : #baselines }
BaselineOfWillowSemanticUI >> setUpPackages: spec [

	spec
		package: 'Willow-SemanticUI' with: [ spec requires: #('Willow-Deployment') ];
		group: 'Deployment' with: #('Willow-SemanticUI');
		package: 'Willow-SemanticUI-Tests'
			with: [ spec requires: #('Willow-SemanticUI' 'Willow-Core-Tests') ];
		group: 'Tests' with: 'Willow-SemanticUI-Tests'
]

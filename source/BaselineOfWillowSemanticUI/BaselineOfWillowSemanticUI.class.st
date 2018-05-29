Class {
	#name : #BaselineOfWillowSemanticUI,
	#superclass : #BaselineOf,
	#category : 'BaselineOfWillowSemanticUI'
}

{ #category : #baselines }
BaselineOfWillowSemanticUI >> baseline: spec [

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Willow-SemanticUI' with: [ spec requires: #('Willow') ];
				package: 'Willow-SemanticUI-Tests'
					with: [ spec requires: #('Willow-SemanticUI' 'Willow-Tests') ].
			spec
				group: 'Deployment' with: #('Willow-SemanticUI');
				group: 'Development' with: #('Deployment' 'Willow-SemanticUI-Tests');
				group: 'default' with: #('Deployment') ]
]

{ #category : #baselines }
BaselineOfWillowSemanticUI >> setUpDependencies: spec [

	spec
		baseline: 'Willow'
			with: [ spec
				repository: 'github://ba-st/Willow:v10/source';
				loads: #('Willow') ];
		project: 'Willow-Tests' copyFrom: 'Willow' with: [ spec loads: #('Willow-Tests') ]

]

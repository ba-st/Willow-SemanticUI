baselines
baseline: spec

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
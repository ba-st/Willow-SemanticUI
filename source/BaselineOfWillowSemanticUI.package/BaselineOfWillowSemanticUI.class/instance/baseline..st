baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec package: 'Willow-SemanticUI' with: [ spec requires: #('Willow') ].
			spec
				group: 'Deployment' with: #('Willow-SemanticUI');
				group: 'Development' with: #('Deployment');
				group: 'default' with: #('Deployment') ]
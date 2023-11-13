Class {
	#name : #SemanticStyleTest,
	#superclass : #TestCase,
	#category : #'Willow-SemanticUI-Tests-WebViews'
}

{ #category : #tests }
SemanticStyleTest >> testCards [

	self assert: SemanticStyle for attached bottom asString equals: 'attached bottom'
]

{ #category : #tests }
SemanticStyleTest >> testColor [

	self
		assert: SemanticStyle for approve brown error inverted ok olive orange success yellow asString
		equals: 'approve brown error inverted ok olive orange success yellow'
]

{ #category : #tests }
SemanticStyleTest >> testContainer [

	self
		assert: SemanticStyle for container list message modal segment segments asString
		equals: 'container list message modal segment segments'
]

{ #category : #tests }
SemanticStyleTest >> testGeneral [

	self
		assert: SemanticStyle for action actions active author basic button buttons close compact default
				description disabled divided dividing doubling dropdown field fields fitted fluid form header
				hidden icon image info item items label labeled longer metadata negative pointing positive
				primary relaxed reply selection stackable sub submit text ui asString
		equals:
		'action actions active author basic button buttons close compact default description disabled divided dividing doubling dropdown field fields fitted fluid form header hidden icon image info item items label labeled longer metadata negative pointing positive primary relaxed reply selection stackable sub submit text ui'
]

{ #category : #tests }
SemanticStyleTest >> testGrid [

	self assert: SemanticStyle for divider equal grid width asString equals: 'divider equal grid width'
]

{ #category : #tests }
SemanticStyleTest >> testIcons [

	self
		assert: SemanticStyle for alternate cloud download edit file outline signOut trash upload asString
		equals: 'alternate cloud download edit file outline sign-out trash upload'
]

{ #category : #tests }
SemanticStyleTest >> testInput [

	self
		assert: SemanticStyle for checkbox input radio slider toggle asString
		equals: 'checkbox input radio slider toggle'
]

{ #category : #tests }
SemanticStyleTest >> testMenu [

	self
		assert: SemanticStyle for borderless menu secondary top asString
		equals: 'borderless menu secondary top'
]

{ #category : #tests }
SemanticStyleTest >> testNumbers [

	self
		assert: SemanticStyle for eight five four one seven six thirteen three two asString
		equals: 'eight five four one seven six thirteen three two'
]

{ #category : #tests }
SemanticStyleTest >> testPositioning [

	self
		assert: SemanticStyle for aligned fixed floated inline left middle right vertical asString
		equals: 'aligned fixed floated inline left middle right vertical'
]

{ #category : #tests }
SemanticStyleTest >> testSizes [

	self
		assert: SemanticStyle for big circular huge large mini rounded small tiny wide asString
		equals: 'big circular huge large mini rounded small tiny wide'
]

{ #category : #tests }
SemanticStyleTest >> testTable [

	self
		assert: SemanticStyle for column definition row selectable striped table asString
		equals: 'column definition row selectable striped table'
]

{ #category : #tests }
SemanticStyleTest >> testViews [

	self
		assert: SemanticStyle for avatar card cards comment comments content asString
		equals: 'avatar card cards comment comments content'
]

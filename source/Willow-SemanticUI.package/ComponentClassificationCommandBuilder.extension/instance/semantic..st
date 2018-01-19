*Willow-SemanticUI
semantic: aBlock

	| style |

	style := SemanticStyle new.
	aBlock value: style.
	styleProviderBinding := Binding to: style.
	^self commandStyledWith: styleProviderBinding content
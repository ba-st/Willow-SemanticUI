Class {
	#name : #SemanticUIComponentSupplierTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-SemanticUI-Tests-Frontend'
}

{ #category : #private }
SemanticUIComponentSupplierTest >> assertRenderingOf: aComponentCreationBlock equals: anExpectedHtml [

	| component html |

	component := aComponentCreationBlock value: SemanticUIComponentSupplier online.

	html := self render: component.

	self assert: html equals: anExpectedHtml
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testAsynchronicButtonLabeledApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier asynchronicButtonLabeled: 'Buy' applying: [ :button | button addClass willow ] ]
		equals: '<button class="ui button willow" type="button">Buy</button>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testAsynchronicLinkLabeledApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass willow ] ]
		equals:
			'<a id="a-id1" class="willow">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testDropdownListApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier dropdownListApplying: [ :dropdownList | dropdownList addClass willow ] ]
		equals:
			'<select name="1" id="id2" class="willow"></select><script type="text/javascript">$("#id2").dropdown();</script>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testFieldSetContainingApplyingWithLegendApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				fieldSetContaining: 'The View'
				applying: [ :fieldSet | fieldSet beDisabled ]
				withLegend: 'Its Title'
				applying: [ :legend | legend beAutofocused ] ]
		equals:
			'<fieldset disabled="disabled"><legend autofocus="autofocus">Its Title</legend>The View</fieldset>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testMultiLineTextFieldApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier multiLineTextFieldApplying: [ :textField | textField addClass willow ] ]
		equals: '<textarea rows="auto" cols="auto" name="1" class="willow"></textarea>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testSingleLineTextFieldApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier singleLineTextFieldApplying: [ :textField | textField addClass willow ] ]
		equals: '<input value="" name="1" class="willow" type="text"/>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testSingleSelectionListBoxDisplayingAtOnceApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				singleSelectionListBoxDisplayingAtOnce: 15
				applying: [ :listBox | listBox addClass willow ] ]
		equals: '<select name="1" size="15" class="willow"></select>'
]

{ #category : #'tests-Processing' }
SemanticUIComponentSupplierTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | SemanticUIComponentSupplier online updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css" integrity="sha256-/Z28yXtfBv/6/alw+yZuODgTbKZm86IKbPE/5kjO/xY=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js" integrity="sha256-Bhi6GMQ/72uYZcJXCJ2LToOIcN3+Cx47AZnq/Bw1f7A=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #'tests-Processing' }
SemanticUIComponentSupplierTest >> testUpdateRootWithSelfHostedLibraries [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			(SemanticUIComponentSupplier
				withSemanticUILibrary: SemanticUIDevelopmentMetadataLibrary default) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/semantic-ui-2.2.13/semantic.css"/><script type="text/javascript" src="/files/semantic-ui-2.2.13/semantic.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

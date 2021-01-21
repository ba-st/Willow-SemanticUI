Class {
	#name : #SemanticUIComponentSupplierTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-SemanticUI-Tests-Frontend'
}

{ #category : #private }
SemanticUIComponentSupplierTest >> assertRenderingOf: aComponentCreationBlock equals: anExpectedHtml [

	| component html |

	component := aComponentCreationBlock value: SemanticUIComponentSupplier online.

	html := self render: component.

	self assert: html equals: anExpectedHtml
]

{ #category : #accessing }
SemanticUIComponentSupplierTest >> componentSupplier [

	^ SemanticUIComponentSupplier online
]

{ #category : #accessing }
SemanticUIComponentSupplierTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
SemanticUIComponentSupplierTest >> isSession [

	^ true
]

{ #category : #accessing }
SemanticUIComponentSupplierTest >> scriptGeneratorClass [

	^ WADefaultScriptGenerator
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

{ #category : #'tests-Supplying - Non Portable' }
SemanticUIComponentSupplierTest >> testDialogBuilder [

	| dialog |

	dialog := self componentSupplier dialogBuilder
		dismissableHeaderTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		confirmWith: 'Ok';
		build.
	dialog on trigger inform: 'Triggered!'.

	self
		assert: ( self render: dialog )
		equals:
			'<div class="ui modal" id="id1"><i class="close icon"></i><div class="header">Terms and Conditions</div><div class="content">Some very large legal stuff. ;)</div><div class="actions"><div id="container-id2" class="ui primary approve button">Ok</div></div></div><script type="text/javascript">$("#id1").modal({"allowMultiple":true,"onHidden":function(){$(this).remove();$("#willow-dialog-section").html("")},"autofocus":false,"closable":false}).modal("show");$("#container-id2").click(function(event){alert("Triggered!")});</script>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testDropdownListApplying [

	self
		assertRenderingOf: [ :supplier | 
			| list |

			list := supplier dropdownListApplying: [ :dropdownList | dropdownList addClass willow ].
			list on trigger inform: 'Triggered!'.
			list
			]
		equals:
			'<select name="1" id="select-id2" class="willow"></select><script type="text/javascript">$("#select-id2").change(function(event){alert("Triggered!")});$("#select-id2").dropdown();</script>'
]

{ #category : #'tests-Supplying - Non Portable' }
SemanticUIComponentSupplierTest >> testDropdownListNamedApplying [

	self
		assertRenderingOf: [ :supplier | 
			| list |

			list := supplier
				dropdownListNamed: 'The name'
				applying: [ :dropdownList | dropdownList addClass willow ].
			list on trigger inform: 'Triggered!'.
			list
			]
		equals:
			'<div class="item willow ui selection dropdown item" id="id1"><input name="2" id="input-id3" type="hidden"/><i class="dropdown icon"></i><div class="default text">The name</div><div class="menu"></div></div><script type="text/javascript">$("#id1").dropdown();$("#input-id3").change(function(event){alert("Triggered!")});</script>'
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
			'<fieldset disabled><legend autofocus>Its Title</legend>The View</fieldset>'
]

{ #category : #'tests-Supplying - Non Portable' }
SemanticUIComponentSupplierTest >> testInteractiveButtonDescribedBy [

	self
		assertRenderingOf: [ :supplier | 
			| button |

			button := supplier interactiveButtonDescribedBy: 'Buy'.
			button on trigger inform: 'Triggered!'.
			button
			]
		equals:
			'<button id="button-id1" class="ui button" type="submit">Buy</button><script type="text/javascript">$("#button-id1").click(function(event){alert("Triggered!")});</script>'
]

{ #category : #'tests-Supplying - Non Portable' }
SemanticUIComponentSupplierTest >> testInteractiveCheckBoxDescribedBy [

	self
		assertRenderingOf: [ :supplier | 
			| button |

			button := supplier interactiveCheckBoxDescribedBy: 'Buy'.
			button on trigger inform: 'Triggered!'.
			button
			]
		equals:
			'<div class="ui checkbox"><input name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/><label for="input-id2">Buy</label></div><script type="text/javascript">$("#input-id2").click(function(event){alert("Triggered!")});</script>'
]

{ #category : #'tests-Supplying - Non Portable' }
SemanticUIComponentSupplierTest >> testInteractiveSelectableInputItemNamedInterpretedByDefaultingTo [

	self
		assertRenderingOf: [ :supplier | 
			| view |

			view := supplier
				interactiveSelectableInputItemNamed: 'The label'
				interpretedBy: IntegerCodec new
				defaultingTo: 18.
			view on trigger inform: 'Triggered!'.
			view
			]
		equals:
			'<div class="item"><div class="ui checkbox toggle fitted"><input checked name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/><label></label></div><div class="ui input" data-content="The label" id="id4"><input value="0" name="5" id="input-id6" type="text"/></div></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).parent().next().toggleClass("disabled");alert("Triggered!")});$("#id4").popup({"inline":true});$("#input-id6").change(function(event){alert("Triggered!")});</script>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testMultiLineTextFieldApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier multiLineTextFieldApplying: [ :textField | textField addClass willow ] ]
		equals: '<textarea rows="auto" cols="auto" name="1" class="willow"></textarea>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testNaturalNumberFieldApplying [

	self
		assertRenderingOf: [ :supplier | 
			| field |

			field := supplier naturalNumberFieldApplying: [ :link | link addClass willow ].
			field on trigger inform: 'Triggered!'.
			field
			]
		equals:
			'<div class="ui input"><input value="" name="1" type="number" min="0" class="willow" id="input-id2"/></div><script type="text/javascript">$("#input-id2").change(function(event){alert("Triggered!")});</script>'
]

{ #category : #'tests-Supplying' }
SemanticUIComponentSupplierTest >> testRadioRenderingWithApplyingToLabelApplyingToInput [

	self
		assertRenderingOf: [ :supplier | 
			| radio |

			radio := supplier
				radioRenderingWith: #asUppercase
				applyingToLabel: [ :label | label setTitleTo: 'The letters' ]
				applyingToInput: [ :input | input addClass willow ].
			radio allowAnyOf: #(f h).
			radio on trigger inform: 'Triggered!'.
			radio
			]
		equals:
			'<div class="inline fields"><div class="field"><div class="ui radio checkbox"><input name="1" class="willow" id="input-id2" value="1" type="radio"/><label>F</label></div></div><div class="field"><div class="ui radio checkbox"><input name="1" class="willow" id="input-id3" value="2" type="radio"/><label>H</label></div></div></div><script type="text/javascript">$("#input-id2").change(function(event){alert("Triggered!")});$("#input-id3").change(function(event){alert("Triggered!")});$(".ui.checkbox").checkbox();</script>'
]

{ #category : #'tests-Supplying - Non Portable' }
SemanticUIComponentSupplierTest >> testSimpleInput [

	self
		assertRenderingOf: [ :supplier | supplier simpleInput ]
		equals: '<div class="ui input"><input value="" name="1" type="text"/></div>'
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

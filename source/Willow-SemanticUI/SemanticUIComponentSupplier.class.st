"
The catalog implementation when using Semantic UI
"
Class {
	#name : #SemanticUIComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#instVars : [
		'semanticUILibraries'
	],
	#category : #'Willow-SemanticUI-Frontend'
}

{ #category : #'instance creation' }
SemanticUIComponentSupplier class >> online [

	^ self usingAll: {SemanticUIOnlineLibrary default}
]

{ #category : #'instance creation - private' }
SemanticUIComponentSupplier class >> usingAll: aLibraryCollection [

	^ self new initializeUsingAll: aLibraryCollection
]

{ #category : #'instance creation' }
SemanticUIComponentSupplier class >> withSemanticUILibrary: aSemanticUILibrary [

	^ self usingAll: {aSemanticUILibrary}
]

{ #category : #accessing }
SemanticUIComponentSupplier >> activeElementStyle [

	^ SemanticStyle for active
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> asynchronicButtonLabeled: aRenderable applying: aComponentCommand [

	^ AsynchronicButtonWebView
		  labeled: aRenderable
		  applying: [ :theButton |
		  ( theButton addClass semantic: [ :style | style ui button ] ) + aComponentCommand ]
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> asynchronicLinkLabeled: aRenderable applying: aComponentCommand [

	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> bottomMenuWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle ui bottom fixed borderless inverted olive menu;
		with: aContentBlock ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> cardContainerWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle ui two cards container;
		with: aContentBlock ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> dialogBuilder [

	^ SemanticModalBuilder new
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> dropdownListApplying: aComponentCommand applyingToOptions: anOptionCommand [

	^ SingleSelectionWebView
		  dropDownListApplying: [ :view |
			  ( view addScript js: [ :canvas | canvas jQuery this call: 'dropdown' ] ) + aComponentCommand ]
		  applyingToOptions: anOptionCommand
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> dropdownListNamed: aName applying: aComponentCommand [

	^ SemanticDropdown
		named: aName
		interactingThrough: EventInterpreterDispatcher defaultingToChange
		applying: [ :theDropdown | ( theDropdown addClass semantic: [ :style | style item ] ) + aComponentCommand ]
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand [

	^ FieldSetWebView
		containing: aWebView
		applying: fieldSetCommand
		withLegend: aTitle
		applying: legendCommand
]

{ #category : #initialization }
SemanticUIComponentSupplier >> initializeUsingAll: aLibraryCollection [

	semanticUILibraries := aLibraryCollection
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> interactiveButtonDescribedBy: aString [

	^ SemanticButton
		labeled: aString
		interactingThrough: EventInterpreterDispatcher defaultingToClick
		applying: [ :theButton |  ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> interactiveCheckBoxDescribedBy: aDescription [

	^ SemanticCheckbox
		labeled: aDescription
		interactingThrough: EventInterpreterDispatcher defaultingToClickHidden
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> interactiveInputItemNamed: aName interpretedBy: aTextCodec [

	^ SemanticInput
		interpretedBy: aTextCodec
		interactingThrough: EventInterpreterDispatcher defaultingToChange
		applying: ( SemanticPopup toDisplay: aName )
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> interactiveSelectableInputItemNamed: aName interpretedBy: anInputInterpreter defaultingTo: aDefaultModel [

	| inputView |

	inputView := self interactiveInputItemNamed: aName interpretedBy: anInputInterpreter.
	^ SemanticSelectableInput
		selecting: inputView
		defaultingTo: aDefaultModel
		applying: [ :theInput | theInput addClass semantic: [ :style | style item ] ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> menuItemWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle for item;
		with: aContentBlock ]
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> multiLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView multiLineApplying: aComponentCommand
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand [

	^ MultipleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: aComponentCommand
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> naturalNumberFieldApplying: aComponentCommand [

	| field |

	field := NumberFieldWebView
		         applying: [ :theField | theField boundNotNegative + aComponentCommand ]
		         transformingWith: NaturalNumberCodec new.

	^ SemanticComponent
		  wrapping: field
		  applying: [ :container | container addClass semantic: [ :style | style ui input ] ]
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	| radio |

	radio := SemanticRadioWebView
		         renderingWith: aRenderingBlock
		         applyingToLabel: aLabelCommand
		         applyingToInput: anInputCommand.

	^ SemanticComponent
		  wrapping: radio
		  applying: [ :container | container addClass semantic: [ :style | style inline fields ] ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> rightActiveMenuItemWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle for right item active;
		with: aContentBlock ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> rightMenuItemWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle for right item;
		with: aContentBlock ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> simpleInput [

	^ SemanticInput
		interpretedBy: NullCodec new
		interactingThrough: ( WebInteractionInterpreter workingWith: WebComponentInteraction neverTriggered )
		applying: [ :theInput |  ]
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> singleLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView singleLineApplying: aComponentCommand
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand applyingToOptions: anOptionCommand [

	^ SingleSelectionWebView
		  listBoxDisplayingAtOnce: aNumberOfElements
		  applying: aComponentCommand
		  applyingToOptions: anOptionCommand
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock [

	^ SynchronicSubmitButtonWebView
		  labeled: aRenderable
		  applying: [ :theButton |
		  ( theButton addClass semantic: [ :style | style ui button ] ) + aComponentCommand ]
		  evaluating: anActionBlock
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> synchronicLinkLabeled: aRenderable applying: aComponentCommand [

	^ LinkWebView synchronicLabeled: aRenderable applying: aComponentCommand
]

{ #category : #Supplying }
SemanticUIComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		  apply: [ :table | table addClass semantic: [ :s | s ui table ] ];
		  yourself
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> textWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle for text;
		with: aContentBlock ]
]

{ #category : #'Supplying - Non Portable' }
SemanticUIComponentSupplier >> topMenuWith: aContentBlock [

	^ [ :canvas | 
	canvas div
		class: SemanticStyle ui top fixed borderless inverted brown secondary five item stackable menu;
		with: aContentBlock ]
]

{ #category : #Processing }
SemanticUIComponentSupplier >> updateRoot: aRoot [

	aRoot beHtml5.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'.
	semanticUILibraries do: [ :library | library updateRoot: aRoot ]
]

"
A table using Semantic UI components where the header is always visible and the body scrolls.
"
Class {
	#name : #SemanticFixedHeaderTable,
	#superclass : #WAPainter,
	#instVars : [
		'identifiedTableBody',
		'interactionInterpreter',
		'columnDefinitions',
		'elements'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticFixedHeaderTable class >> showing: aColumnDefinitionCollection interactingThrough: anInteractionInterpreter [

	^ self new
		initializeShowing: aColumnDefinitionCollection
		interactingThrough: anInteractionInterpreter
]

{ #category : #accessing }
SemanticFixedHeaderTable >> identifiedElementsView [

	^ identifiedTableBody
]

{ #category : #'initialize-release' }
SemanticFixedHeaderTable >> initializeShowing: aColumnDefinitionCollection interactingThrough: anInteractionInterpreter [

	columnDefinitions := aColumnDefinitionCollection.
	interactionInterpreter := anInteractionInterpreter.
	self initializeTableBody.
	self setElementsTo: #()
]

{ #category : #'initialize-release' }
SemanticFixedHeaderTable >> initializeTableBody [

	identifiedTableBody := IdentifiedWebView
		forComponentBuiltUsing: [ :canvas | canvas tableBody ]
		named: 'TableBody'
		containing: [ :canvas | self renderTableRowsOn: canvas ]
]

{ #category : #configuring }
SemanticFixedHeaderTable >> onTrigger [

	^ interactionInterpreter
]

{ #category : #rendering }
SemanticFixedHeaderTable >> renderContentOn: aCanvas [

	aCanvas div
		class: WillowCssStyles fixHeaderTableHeader;
		with: [ self renderTableHeaderOn: aCanvas ].
	aCanvas div
		class: WillowCssStyles fixHeaderTableBody;
		with: [ self renderTableBodyOn: aCanvas ]
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderFillerHeadingOn: aCanvas [

	aCanvas tableHeading
		class: WillowCssStyles fixHeaderTableFiller;
		with: ''
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderHeadingFor: columnDefinition on: aCanvas [

	columnDefinition renderHeadingOn: aCanvas
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderRowFor: anElement on: aCanvas [

	aCanvas tableRow: [ columnDefinitions do: [ :columnDefinition | columnDefinition renderCellFor: anElement on: aCanvas ] ]
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderTableBodyOn: aCanvas [

	| tableComponent |

	"El orden es importante"
	tableComponent := aCanvas table.
	tableComponent class: SemanticStyle ui striped selectable definition fixed table.
	interactionInterpreter applyTo: tableComponent on: aCanvas.
	tableComponent with: [ aCanvas render: identifiedTableBody ]
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderTableHeaderOn: aCanvas [

	aCanvas table
		class: SemanticStyle ui definition fixed table;
		with: [ aCanvas tableHead: [ self renderTableHeadingsOn: aCanvas ] ]
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderTableHeadingsOn: aCanvas [

	columnDefinitions
		do: [ :columnDefinition | self renderHeadingFor: columnDefinition on: aCanvas ].
	self renderFillerHeadingOn: aCanvas
]

{ #category : #'rendering - private' }
SemanticFixedHeaderTable >> renderTableRowsOn: aCanvas [

	elements do: [ :element | self renderRowFor: element on: aCanvas ]
]

{ #category : #configuring }
SemanticFixedHeaderTable >> setElementsTo: anElementCollection [

	elements := anElementCollection
]

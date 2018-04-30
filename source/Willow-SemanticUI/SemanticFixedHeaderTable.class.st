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

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderFillerHeadingOn: aCanvas [

	aCanvas tableHeading
		class: WillowCssStyles fixHeaderTableFiller;
		with: ''
]

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderHeadingFor: columnDefinition on: aCanvas [

	columnDefinition renderHeadingOn: aCanvas
]

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderRowAt: anIndex for: anElement on: aCanvas [

	aCanvas tableRow: [ columnDefinitions do: [ :columnDefinition | columnDefinition renderCellAt: anIndex for: anElement on: aCanvas ] ]
]

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderTableBodyOn: aCanvas [

	| tableComponent |

	"El orden es importante"
	tableComponent := aCanvas table.
	tableComponent class: SemanticStyle ui striped selectable definition fixed table.
	interactionInterpreter applyTo: tableComponent on: aCanvas.
	tableComponent with: [ aCanvas render: identifiedTableBody ]
]

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderTableHeaderOn: aCanvas [

	aCanvas table
		class: SemanticStyle ui definition fixed table;
		with: [ aCanvas tableHead: [ self renderTableHeadingsOn: aCanvas ] ]
]

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderTableHeadingsOn: aCanvas [

	columnDefinitions
		do: [ :columnDefinition | self renderHeadingFor: columnDefinition on: aCanvas ].
	self renderFillerHeadingOn: aCanvas
]

{ #category : #'private - rendering' }
SemanticFixedHeaderTable >> renderTableRowsOn: aCanvas [

	elements doWithIndex: [ :element :index | self renderRowAt: index for: element on: aCanvas ]
]

{ #category : #configuring }
SemanticFixedHeaderTable >> setElementsTo: anElementCollection [

	elements := anElementCollection
]

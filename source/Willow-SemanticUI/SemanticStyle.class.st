"
A concatenation of Semantic UI css styles.
"
Class {
	#name : #SemanticStyle,
	#superclass : #WAPainter,
	#instVars : [
		'cssClasses'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticStyle class >> for [

	^ self new
]

{ #category : #'instance creation' }
SemanticStyle class >> ui [

	^ self for ui
]

{ #category : #general }
SemanticStyle >> action [

	cssClasses add: 'action'
]

{ #category : #general }
SemanticStyle >> active [

	cssClasses add: 'active'
]

{ #category : #positioning }
SemanticStyle >> aligned [

	cssClasses add: 'aligned'
]

{ #category : #general }
SemanticStyle >> author [

	cssClasses add: 'author'
]

{ #category : #views }
SemanticStyle >> avatar [

	cssClasses add: 'avatar'
]

{ #category : #general }
SemanticStyle >> basic [

	cssClasses add: 'basic'
]

{ #category : #menu }
SemanticStyle >> borderless [

	cssClasses add: 'borderless'
]

{ #category : #menu }
SemanticStyle >> bottom [

	cssClasses add: 'bottom'
]

{ #category : #color }
SemanticStyle >> brown [

	cssClasses add: 'brown'
]

{ #category : #general }
SemanticStyle >> button [

	cssClasses add: 'button'
]

{ #category : #general }
SemanticStyle >> buttons [

	cssClasses add: 'buttons'
]

{ #category : #views }
SemanticStyle >> card [

	cssClasses add: 'card'
]

{ #category : #views }
SemanticStyle >> cards [

	cssClasses add: 'cards'
]

{ #category : #input }
SemanticStyle >> checkbox [

	cssClasses add: 'checkbox'
]

{ #category : #sizes }
SemanticStyle >> circular [

	cssClasses add: 'circular'
]

{ #category : #general }
SemanticStyle >> close [

	cssClasses add: 'close'
]

{ #category : #table }
SemanticStyle >> column [

	cssClasses add: 'column'
]

{ #category : #views }
SemanticStyle >> comment [

	cssClasses add: 'comment'
]

{ #category : #views }
SemanticStyle >> comments [

	cssClasses add: 'comments'
]

{ #category : #container }
SemanticStyle >> container [

	cssClasses add: 'container'
]

{ #category : #views }
SemanticStyle >> content [

	cssClasses add: 'content'
]

{ #category : #general }
SemanticStyle >> default [

	cssClasses add: 'default'
]

{ #category : #table }
SemanticStyle >> definition [

	cssClasses add: 'definition'
]

{ #category : #general }
SemanticStyle >> description [

	cssClasses add: 'description'
]

{ #category : #general }
SemanticStyle >> disabled [

	cssClasses add: 'disabled'
]

{ #category : #general }
SemanticStyle >> divided [

	cssClasses add: 'divided'
]

{ #category : #grid }
SemanticStyle >> divider [

	cssClasses add: 'divider'
]

{ #category : #general }
SemanticStyle >> doubling [

	cssClasses add: 'doubling'
]

{ #category : #general }
SemanticStyle >> dropdown [

	cssClasses add: 'dropdown'
]

{ #category : #icons }
SemanticStyle >> edit [

	cssClasses add: 'edit'
]

{ #category : #numbers }
SemanticStyle >> eight [

	cssClasses add: 'eight'
]

{ #category : #grid }
SemanticStyle >> equal [

	cssClasses add: 'equal'
]

{ #category : #general }
SemanticStyle >> field [

	cssClasses add: 'field'
]

{ #category : #general }
SemanticStyle >> fields [

	cssClasses add: 'fields'
]

{ #category : #general }
SemanticStyle >> fitted [

	cssClasses add: 'fitted'
]

{ #category : #numbers }
SemanticStyle >> five [

	cssClasses add: 'five'
]

{ #category : #positioning }
SemanticStyle >> fixed [

	cssClasses add: 'fixed'
]

{ #category : #positioning }
SemanticStyle >> floated [

	cssClasses add: 'floated'
]

{ #category : #general }
SemanticStyle >> form [

	cssClasses add: 'form'
]

{ #category : #numbers }
SemanticStyle >> four [

	cssClasses add: 'four'
]

{ #category : #grid }
SemanticStyle >> grid [

	cssClasses add: 'grid'
]

{ #category : #general }
SemanticStyle >> header [

	cssClasses add: 'header'
]

{ #category : #general }
SemanticStyle >> hidden [

	cssClasses add: 'hidden'
]

{ #category : #sizes }
SemanticStyle >> huge [

	cssClasses add: 'huge'
]

{ #category : #general }
SemanticStyle >> icon [

	cssClasses add: 'icon'
]

{ #category : #general }
SemanticStyle >> image [

	cssClasses add: 'image'
]

{ #category : #initialization }
SemanticStyle >> initialize [

	cssClasses := OrderedCollection new
]

{ #category : #positioning }
SemanticStyle >> inline [

	cssClasses add: 'inline'
]

{ #category : #input }
SemanticStyle >> input [

	cssClasses add: 'input'
]

{ #category : #color }
SemanticStyle >> inverted [

	cssClasses add: 'inverted'
]

{ #category : #general }
SemanticStyle >> item [

	cssClasses add: 'item'
]

{ #category : #printing }
SemanticStyle >> javascriptOn: aStream [

	JSStream encodeString: self asString on: aStream
]

{ #category : #general }
SemanticStyle >> label [

	cssClasses add: 'label'
]

{ #category : #general }
SemanticStyle >> labeled [

	cssClasses add: 'labeled'
]

{ #category : #sizes }
SemanticStyle >> large [

	cssClasses add: 'large'
]

{ #category : #positioning }
SemanticStyle >> left [

	cssClasses add: 'left'
]

{ #category : #container }
SemanticStyle >> list [

	cssClasses add: 'list'
]

{ #category : #menu }
SemanticStyle >> menu [

	cssClasses add: 'menu'
]

{ #category : #general }
SemanticStyle >> metadata [

	cssClasses add: 'metadata'
]

{ #category : #positioning }
SemanticStyle >> middle [

	cssClasses add: 'middle'
]

{ #category : #sizes }
SemanticStyle >> mini [

	cssClasses add: 'mini'
]

{ #category : #container }
SemanticStyle >> modal [

	cssClasses add: 'modal'
]

{ #category : #color }
SemanticStyle >> olive [

	cssClasses add: 'olive'
]

{ #category : #numbers }
SemanticStyle >> one [

	cssClasses add: 'one'
]

{ #category : #color }
SemanticStyle >> orange [

	cssClasses add: 'orange'
]

{ #category : #general }
SemanticStyle >> pointing [

	cssClasses add: 'pointing'
]

{ #category : #general }
SemanticStyle >> primary [

	cssClasses add: 'primary'
]

{ #category : #printing }
SemanticStyle >> printOn: aStream [

	cssClasses do: [ :cssClass | aStream nextPutAll: cssClass ] separatedBy: [ aStream space ]
]

{ #category : #input }
SemanticStyle >> radio [

	cssClasses add: 'radio'
]

{ #category : #general }
SemanticStyle >> relaxed [

	cssClasses add: 'relaxed'
]

{ #category : #general }
SemanticStyle >> reply [

	cssClasses add: 'reply'
]

{ #category : #positioning }
SemanticStyle >> right [

	cssClasses add: 'right'
]

{ #category : #sizes }
SemanticStyle >> rounded [

	cssClasses add: 'rounded'
]

{ #category : #'instance creation' }
SemanticStyle >> row [

	cssClasses add: 'row'
]

{ #category : #menu }
SemanticStyle >> secondary [

	cssClasses add: 'secondary'
]

{ #category : #container }
SemanticStyle >> segment [

	cssClasses add: 'segment'
]

{ #category : #container }
SemanticStyle >> segments [

	cssClasses add: 'segments'
]

{ #category : #table }
SemanticStyle >> selectable [

	cssClasses add: 'selectable'
]

{ #category : #general }
SemanticStyle >> selection [

	cssClasses add: 'selection'
]

{ #category : #numbers }
SemanticStyle >> seven [

	cssClasses add: 'seven'
]

{ #category : #input }
SemanticStyle >> slider [

	cssClasses add: 'slider'
]

{ #category : #sizes }
SemanticStyle >> small [

	cssClasses add: 'small'
]

{ #category : #general }
SemanticStyle >> stackable [

	cssClasses add: 'stackable'
]

{ #category : #table }
SemanticStyle >> striped [

	cssClasses add: 'striped'
]

{ #category : #general }
SemanticStyle >> submit [

	cssClasses add: 'submit'
]

{ #category : #table }
SemanticStyle >> table [

	cssClasses add: 'table'
]

{ #category : #general }
SemanticStyle >> text [

	cssClasses add: 'text'
]

{ #category : #numbers }
SemanticStyle >> thirteen [

	cssClasses add: 'thirteen'
]

{ #category : #numbers }
SemanticStyle >> three [

	cssClasses add: 'three'
]

{ #category : #sizes }
SemanticStyle >> tiny [

	cssClasses add: 'tiny'
]

{ #category : #input }
SemanticStyle >> toggle [

	cssClasses add: 'toggle'
]

{ #category : #menu }
SemanticStyle >> top [

	cssClasses add: 'top'
]

{ #category : #numbers }
SemanticStyle >> two [

	cssClasses add: 'two'
]

{ #category : #general }
SemanticStyle >> ui [

	cssClasses add: 'ui'
]

{ #category : #positioning }
SemanticStyle >> vertical [

	cssClasses add: 'vertical'
]

{ #category : #sizes }
SemanticStyle >> wide [

	cssClasses add: 'wide'
]

{ #category : #grid }
SemanticStyle >> width [

	cssClasses add: 'width'
]

{ #category : #color }
SemanticStyle >> yellow [

	cssClasses add: 'yellow'
]

"
A concatenation of Semantic UI css styles.
"
Class {
	#name : #SemanticStyle,
	#superclass : #Object,
	#instVars : [
		'cssClasses'
	],
	#category : #'Willow-SemanticUI-WebViews'
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
SemanticStyle >> actions [

	cssClasses add: 'actions'
]

{ #category : #general }
SemanticStyle >> active [

	cssClasses add: 'active'
]

{ #category : #positioning }
SemanticStyle >> aligned [

	cssClasses add: 'aligned'
]

{ #category : #icons }
SemanticStyle >> alternate [

	cssClasses add: 'alternate'
]

{ #category : #color }
SemanticStyle >> approve [

	cssClasses add: 'approve'
]

{ #category : #cards }
SemanticStyle >> attached [

	cssClasses add: 'attached'
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

{ #category : #sizes }
SemanticStyle >> big [

	cssClasses add: 'big'
]

{ #category : #menu }
SemanticStyle >> borderless [

	cssClasses add: 'borderless'
]

{ #category : #cards }
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

{ #category : #icons }
SemanticStyle >> cloud [

	cssClasses add: 'cloud'
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

{ #category : #general }
SemanticStyle >> compact [

	cssClasses add: 'compact'
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
SemanticStyle >> dividing [

	cssClasses add: 'dividing'
]

{ #category : #general }
SemanticStyle >> doubling [

	cssClasses add: 'doubling'
]

{ #category : #icons }
SemanticStyle >> download [

	cssClasses add: 'download'
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

{ #category : #color }
SemanticStyle >> error [

	cssClasses add: 'error'
]

{ #category : #general }
SemanticStyle >> field [

	cssClasses add: 'field'
]

{ #category : #general }
SemanticStyle >> fields [

	cssClasses add: 'fields'
]

{ #category : #icons }
SemanticStyle >> file [

	cssClasses add: 'file'
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
SemanticStyle >> fluid [

	cssClasses add: 'fluid'
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

{ #category : #general }
SemanticStyle >> info [

	cssClasses add: 'info'
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

{ #category : #general }
SemanticStyle >> items [

	cssClasses add: 'items'
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

{ #category : #general }
SemanticStyle >> longer [

	cssClasses add: 'longer'
]

{ #category : #menu }
SemanticStyle >> menu [

	cssClasses add: 'menu'
]

{ #category : #container }
SemanticStyle >> message [

	cssClasses add: 'message'
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

{ #category : #general }
SemanticStyle >> negative [

	cssClasses add: 'negative'
]

{ #category : #color }
SemanticStyle >> ok [

	cssClasses add: 'ok'
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

{ #category : #icons }
SemanticStyle >> outline [

	cssClasses add: 'outline'
]

{ #category : #general }
SemanticStyle >> pointing [

	cssClasses add: 'pointing'
]

{ #category : #general }
SemanticStyle >> positive [

	cssClasses add: 'positive'
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

{ #category : #icons }
SemanticStyle >> signOut [

	cssClasses add: 'sign-out'
]

{ #category : #numbers }
SemanticStyle >> six [

	cssClasses add: 'six'
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
SemanticStyle >> sub [

	cssClasses add: 'sub'
]

{ #category : #general }
SemanticStyle >> submit [

	cssClasses add: 'submit'
]

{ #category : #color }
SemanticStyle >> success [

	cssClasses add: 'success'
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

{ #category : #icons }
SemanticStyle >> trash [

	cssClasses add: 'trash'
]

{ #category : #numbers }
SemanticStyle >> two [

	cssClasses add: 'two'
]

{ #category : #general }
SemanticStyle >> ui [

	cssClasses add: 'ui'
]

{ #category : #icons }
SemanticStyle >> upload [

	cssClasses add: 'upload'
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

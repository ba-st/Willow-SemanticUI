Extension { #name : #SerializationCommand }

{ #category : #'*Willow-SemanticUI' }
SerializationCommand class >> forRelatedDialogForm [

	^ self
		executing: [ :anAsynchronousCall :aCanvas | 
			anAsynchronousCall
				bePost;
				serialize:
					( ( aCanvas jQuery this closest: ( 'div.<1p>' expandMacrosWith: SemanticStyle for modal ) )
						find: 'form' )
			]
		covering: #(forRelatedDialogForm forForm:)
]

Supplying
naturalNumberFieldApplying: aComponentCommand

	| field |

	field := NumberFieldWebView
		applying: [ :theField | theField boundNotNegative + aComponentCommand ]
		transformingWith: NaturalNumberCodec new.

	^ SemanticComponent
		wrapping: field
		applying: [ :container | container addClass semantic: [ :style | style ui input ] ]
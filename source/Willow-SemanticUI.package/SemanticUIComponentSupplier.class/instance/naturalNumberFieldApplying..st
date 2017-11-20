Supplying
naturalNumberFieldApplying: aComponentCommand

	| field |

	field := NumberFieldWebView
		applying: [ :theField | theField boundNotNegative + aComponentCommand ]
		transformingWith: NaturalNumberCodec new.

	^ SemanticComponent
		wrapping: field
		applying: [ :container | container addClass semantic ui + container addClass semantic input ]
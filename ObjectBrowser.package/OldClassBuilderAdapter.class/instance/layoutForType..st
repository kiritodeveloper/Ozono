accessing
layoutForType: typeSymbol
	typeSymbol = #compiledMethod 
		ifTrue: [ ^ CompiledMethodLayout ].
	typeSymbol = #bytes 
		ifTrue: [ ^ ByteLayout ].
	typeSymbol = #words 
		ifTrue: [ ^ WordLayout ].
	typeSymbol = #weak 
		ifTrue: [ ^ WeakLayout ].
	typeSymbol = #variable 
		ifTrue: [ ^ VariableLayout ].
	typeSymbol = #normal 
		ifTrue: [ ^ FixedLayout ].
	Error signal: 'Invalid layout type: ', typeSymbol asString.
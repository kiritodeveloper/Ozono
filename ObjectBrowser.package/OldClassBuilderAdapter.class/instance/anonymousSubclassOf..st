adapted api
anonymousSubclassOf: superClass
	"Answer an anonymous subclass of the given superclass."

	^ self anonymousClassInstaller make: [ :builder |
		builder
			superclass: superClass;
			layoutClass: superClass layout class ].

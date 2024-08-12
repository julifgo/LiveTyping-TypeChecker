!classDefinition: #TypeCheckerDragonMethodVisitor category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
ParseNodeVisitor subclass: #TypeCheckerDragonMethodVisitor
	instanceVariableNames: 'compiledMethod methodNode alerts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckerDragonMethodVisitor methodsFor: 'initialization' stamp: 'JFGO 11/30/2023 19:14:32'!
initializeFor: aCompiledMethod collectingAlerts: anAlertCollection
	compiledMethod := aCompiledMethod.
	methodNode := compiledMethod methodNode .
	alerts := anAlertCollection .! !


!TypeCheckerDragonMethodVisitor methodsFor: 'evaluating' stamp: 'JFGO 11/30/2023 19:14:32'!
accept
	self visitMethodNode: methodNode.! !


!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 11/30/2023 19:14:32'!
addAlertWithMessage: aStringMessage

	^ alerts add: (TypeCheckerDragonAlert for: methodNode withMessage: aStringMessage)! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 12/11/2023 18:51:06'!
checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType 
	
	| implementorsFinder |
	
	implementorsFinder := AllActualLocalImplementors of: aMessageNode selectorSymbol forAll: receiverLiveType.
	implementorsFinder value.
	
	implementorsFinder notImplementedIsEmpty ifFalse: [  
		alerts add: (TypeCheckerDragonAlert for: methodNode withMessage: 'Message Selector not implemented in Receiver')].! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 11/30/2023 19:14:32'!
visitBlockNode: aBlockNode
	"Por ahora, no hay evidencia de necesitar hacer algo más que visitar los statements del bloque, que lo hace super. De ser asi definitivamente, este mensaje no tiene razon de ser reimplementado y deberiamos borrarlo".
	super visitBlockNode: aBlockNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 12/11/2023 18:50:44'!
visitMessageNode: aMessageNode
	| incompleteTypeInfo receiverLiveType |
	aMessageNode receiver accept: self.
	
	
	incompleteTypeInfo := OrderedCollection new. 
	receiverLiveType:=aMessageNode receiverLiveTypesIn:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		
	incompleteTypeInfo do: [ :anIncompleteTypeInfoReason | anIncompleteTypeInfoReason addTo: self node: aMessageNode ].
	
	(receiverLiveType isEmptyType and: [ incompleteTypeInfo isEmpty])
		ifTrue: [self addAlertWithMessage: 'Receiver has no types']
		ifFalse: [ self checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType ].
	
	aMessageNode argumentsInEvaluationOrder do: [:argumentBlock | argumentBlock accept: self].! !


!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 11/30/2023 19:14:32'!
addProblem: anIncompleteTypeInfoError node: aMessageNode
"TODO. We still don't know about warnings, this message is for coupling with incompleteTypeInfo"
	self addAlertWithMessage: 'Cannot deduce Receiver Type'
! !

!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 11/30/2023 19:14:32'!
addWarning: anIncompleteTypeInfoError node: aMessageNode
"TODO. We still don't know about warnings, this message is for coupling with incompleteTypeInfo"
	self addAlertWithMessage: 'Cannot deduce Receiver Type'
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckerDragonMethodVisitor class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonMethodVisitor class
	instanceVariableNames: ''!

!TypeCheckerDragonMethodVisitor class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod collectingAlerts: anAlertCollection  
	^self new initializeFor: aCompiledMethod collectingAlerts: anAlertCollection .! !


!classDefinition: #TypeCheckerDragon category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragon
	instanceVariableNames: 'compiledMethod alerts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 11/30/2023 19:14:32'!
alerts
	^alerts.! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 11/30/2023 19:14:32'!
generateAlertWithMessage: anAlertMessage
	alerts add: (TypeCheckerDragonAlert for: compiledMethod withMessage: anAlertMessage).! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 11/30/2023 19:14:32'!
hasAlerts
	^alerts size > 0.! !


!TypeCheckerDragon methodsFor: 'initialization' stamp: 'JFGO 11/30/2023 19:14:32'!
initializeFor: aCompiledMethod 
	compiledMethod := aCompiledMethod " asMethodReference".
	alerts := OrderedCollection new.! !


!TypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 11/30/2023 19:14:32'!
perform
	self typeCheck.
	^self.! !

!TypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 11/30/2023 19:14:32'!
typeCheck
	compiledMethod isPrimitive ifTrue: [^self].
	compiledMethod isAnnotatingTypes 
		ifTrue: [self typeCheckWhenEnabledTyping] 
		ifFalse: [ self typeCheckWhenDisabledTyping]! !

!TypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 11/30/2023 19:14:32'!
typeCheckWhenDisabledTyping
	^self generateAlertWithMessage: 'Method has live typing disabled'.! !

!TypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 11/30/2023 19:14:32'!
typeCheckWhenEnabledTyping
	(TypeCheckerDragonMethodVisitor for: compiledMethod collectingAlerts: alerts) accept.
	^self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckerDragon class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragon class
	instanceVariableNames: ''!

!TypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod   
	^self new initializeFor: aCompiledMethod ! !


!classDefinition: #TypeCheckerDragonAlert category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragonAlert
	instanceVariableNames: 'compiledMethod alertMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckerDragonAlert methodsFor: 'initialization' stamp: 'JFGO 11/30/2023 19:14:32'!
initializeFor: aCompiledMethod withMessage: anAlertMessage 
	compiledMethod := aCompiledMethod.
	alertMessage := anAlertMessage.! !

!TypeCheckerDragonAlert methodsFor: 'initialization' stamp: 'JFGO 11/30/2023 19:14:32'!
message
	^alertMessage .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckerDragonAlert class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonAlert class
	instanceVariableNames: ''!

!TypeCheckerDragonAlert class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod withMessage: anAlertMessage 
	^self new initializeFor: aCompiledMethod withMessage: anAlertMessage ! !
!classDefinition: #TypeCheckerDragonTest category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TestCase subclass: #TypeCheckerDragonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!

!TypeCheckerDragonTest methodsFor: 'setup' stamp: 'JFGO 12/11/2023 18:25:47'!
setUp
	"Ensure that always this method initializes with live typing enabled. See test01 and test02"
	(TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping) initializeTypeInformation.
	
	! !


!TypeCheckerDragonTest methodsFor: 'tests for generics collections' stamp: 'JFGO 12/13/2023 18:43:58'!
test11MethodWithCollectionItemsTypedCorrectlyDoesNotGenerateAlerts
	"El valor agregado de este test es discutible. Como minimo busca asegurarse que el paquete de LiveTypingGenerics esta correctamente instalado y sin problemas de compatibilidad con typeChecker."
	| methodToCheck typeChecker |
	
	methodToCheck := TypeCheckerDragonTestMethods >> #methodWithCollectionWithNoTypeError.
	
	typeChecker := methodToCheck typeCheckDragon.
	
	"self deny: typeChecker hasAlerts."
	self assert: true.
! !

!TypeCheckerDragonTest methodsFor: 'tests for generics collections' stamp: 'JFGO 11/30/2023 19:14:50'!
test12MethodWithCollectionIteratingGeneratesAlertForItemsWithErrorTypes
	
	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithCollectionWithErrorTypeOnIteration.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	self assert: true. "TODO. Instalar Generics y ver que onda"
	! !


!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
assertTypeChecker: aTypeChecker hasOneAlertWithMessage: anAlertMessage
	
	| alert |
	self assert: aTypeChecker hasAlerts.
	self assert: aTypeChecker alerts size equals: 1.
	alert:=aTypeChecker alerts anyOne.
	self assert: (alert isKindOf: TypeCheckerDragonAlert).
	self assert: anAlertMessage equals: alert message .
	"PEDIR MAS INFO SOBRE LA ALERTA. NO HARIA FALTA EXPONER EL MENSAJE NI TENERLO HARDCODEADO".
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/11/2023 18:25:30'!
test01MethodTypedCorrectlyDoesNotGenerateAlerts

	| methodToCheck typeChecker |
	
	methodToCheck := TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping.
	
	typeChecker := methodToCheck typeCheckDragon.
	
	self deny: typeChecker hasAlerts.
! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/11/2023 18:25:36'!
test02MethodThatDontCheckTypesGeneratesAlert

	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping.
	methodToCkeck removeProperties .
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	
	self assertTypeChecker: typeChecker hasOneAlertWithMessage: 'Method has live typing disabled'.
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test03PrimitiveMethodsDontCheckTypes

	| methodToCheck typeChecker |
	
	"methodToCheck := Array >> #elementsForwardIdentityTo:."
	methodToCheck := TypeCheckerDragonTestMethods >> #emptyMethodPrimitive.
	
	typeChecker := methodToCheck typeCheckDragon.
	
	self deny: typeChecker hasAlerts.
! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test04MethodWithMessageNotUnderstoodByReceiverGeneratesAlert

	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithMessageNotUnderstood.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	self assertTypeChecker: typeChecker hasOneAlertWithMessage: 'Message Selector not implemented in Receiver'.
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test05MethodWithTypeErrorOnMessageReceiverGeneratesAlert

	| methodToCkeck typeChecker firstAlert secondAlert |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithMessageNestedNotUnderstoodOnReceiver.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	self assert: 2 equals: typeChecker alerts size.
	firstAlert := typeChecker alerts first.
	self assert: 'Message Selector not implemented in Receiver' equals: firstAlert message .
	secondAlert := typeChecker alerts second.
	self assert: 'Cannot deduce Receiver Type' equals: secondAlert message .	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test06MethodWithManyTypeErrorsOnMessageGeneratesManyAlerts

	| methodToCkeck typeChecker firstAlert secondAlert |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithManyMessageNotUnderstood.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	self assert: 2 equals: typeChecker alerts size.
	firstAlert := typeChecker alerts first.
	self assert: 'Message Selector not implemented in Receiver' equals: firstAlert message .
	secondAlert := typeChecker alerts second.
	self assert: 'Cannot deduce Receiver Type' equals: secondAlert message .	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test07MethodWithMessageWithNoReceiverTypeGeneratesAlert

	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithReceiverWithNoTypes.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	self assertTypeChecker: typeChecker hasOneAlertWithMessage: 'Receiver has no types'.
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test08MethodWithMessageNotUnderstoodInArgumentsGeneratesAlerts

	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithMessageArgumentToResolve.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	
	self assert: 2 equals: typeChecker alerts size.
	typeChecker alerts do: [:alert | 
		self assert: (alert isKindOf: TypeCheckerDragonAlert).
		self assert: 'Message Selector not implemented in Receiver' equals: alert message .
	].
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test09MethodThatThrowsSpecificExceptionDoesNoGenerateAlerts
	"This is because the object is able to respond to the message even if it is for throwing an exception"

	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodInstanceNotIndexable.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	
	self deny: typeChecker hasAlerts .
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 11/30/2023 19:14:50'!
test10MessageSentToMethodWithNoReturnTypeGeneratesAlert
	
	| methodToCkeck typeChecker |
	
	methodToCkeck := TypeCheckerDragonTestMethods >> #methodWithMessageWithNoReturnTypes.
	
	
	typeChecker := methodToCkeck typeCheckDragon.
	
	"TODO. So far, this test does not generate value versus test03, but we are waiting definition of error vs warning vs problem"
	self assertTypeChecker: typeChecker hasOneAlertWithMessage: 'Cannot deduce Receiver Type'.
	! !


!classDefinition: #TypeCheckerDragonTestMethods category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
Object subclass: #TypeCheckerDragonTestMethods
	instanceVariableNames: 'nilVariableWithNoType aCol anotherCol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!

!TypeCheckerDragonTestMethods methodsFor: 'DELETE THIS' stamp: 'JFGO 11/30/2023 19:14:50'!
m3
	45 + 'hola'.! !

!TypeCheckerDragonTestMethods methodsFor: 'DELETE THIS' stamp: 'JFGO 11/30/2023 19:14:50'!
m4
	|temp|
	temp size.! !


!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
emptyMethodPrimitive! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodInstanceNotIndexable
	15 size.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodSumsNumber: aNumber anotherNumber: anotherNumber 
	
	anotherNumber + aNumber.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 12/11/2023 18:24:07'!
methodTypedCorrectlyEnableTyping
	"Actually, by default type checking will be enabled. Disable it manually from outside. Method name is for declarativity purposes"
	1 + 1.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithManyMessageNotUnderstood
	"The first message that visitor evaluates is factorial which is not understood by receiver that has also type problems" 
	"The inner not message in the receiver it has a type problem, so this should force implement object recursion for receiver."
	'false' not factorial.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithMessageArgumentToResolve
	self methodSumsNumber: ('10' factorial) anotherNumber: ('5' factorial).
	! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithMessageNestedNotUnderstoodOnReceiver
	"The first message that visitor evaluates is the outer not sent to ('false' not) which is perfectly defined." 
	"The inner not message in the receiver it has a type problem, so this should force implement object recursion for receiver."
	'false' not not.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithMessageNotUnderstood
	'false' not.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithMessageNotUnderstoodAssignedToVariable
	| v1 |
	v1:= 'false' not.! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithMessageWithNoReturnTypes
	(self methodSumsNumber: 1 anotherNumber: 1) factorial.
	! !

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 11/30/2023 19:14:50'!
methodWithReceiverWithNoTypes
	nilVariableWithNoType size.! !


!TypeCheckerDragonTestMethods methodsFor: 'collections generics' stamp: 'JFGO 12/12/2023 19:31:52'!
methodWithCollectionWithErrorTypeOnIteration
	"| col |"
	aCol:= OrderedCollection with: 1 with: 'string'.
	aCol do:[:item | item factorial].! !

!TypeCheckerDragonTestMethods methodsFor: 'collections generics' stamp: 'JFGO 12/12/2023 19:47:35'!
methodWithCollectionWithNoTypeError
	"| col |"
	anotherCol:= OrderedCollection with: 1.
	anotherCol do:[:item | item factorial].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckerDragonTestMethods class' category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TypeCheckerDragonTestMethods class
	instanceVariableNames: ''!

!TypeCheckerDragonTestMethods class methodsFor: 'as yet unclassified' stamp: 'JFGO 11/30/2023 19:14:50'!
printASTOn: aCompiledMethod 
	
	| stream |
	stream := String writeStream.
	
	aCompiledMethod methodNode nodePrintOn: stream indent: 0.
	^stream! !

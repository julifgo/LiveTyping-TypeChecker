!classDefinition: #TypeCheckerDragonMethodVisitor category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
ParseNodeVisitor subclass: #TypeCheckerDragonMethodVisitor
	instanceVariableNames: 'compiledMethod methodNode issues castApplier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckerDragonMethodVisitor methodsFor: 'initialization' stamp: 'JFGO 12/28/2023 18:57:33'!
initializeFor: aCompiledMethod collectingIssues: anIssuesCollection
	compiledMethod := aCompiledMethod.
	methodNode := compiledMethod methodNode .
	issues := anIssuesCollection .
	! !


!TypeCheckerDragonMethodVisitor methodsFor: 'evaluating' stamp: 'JFGO 11/30/2023 19:14:32'!
accept
	self visitMethodNode: methodNode.! !


!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 12/28/2023 18:57:18'!
checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType 
	
	| implementorsFinder |
	
	implementorsFinder := AllActualLocalImplementors of: aMessageNode selectorSymbol forAll: receiverLiveType.
	implementorsFinder LiveTypeValue.
	
	implementorsFinder notImplementedIsEmpty ifFalse: [  
		issues add: (TypeCheckingDragonError on: compiledMethod for: methodNode by: aMessageNode)].! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 11/30/2023 19:14:32'!
visitBlockNode: aBlockNode
	"Por ahora, no hay evidencia de necesitar hacer algo más que visitar los statements del bloque, que lo hace super. De ser asi definitivamente, este mensaje no tiene razon de ser reimplementado y deberiamos borrarlo".
	super visitBlockNode: aBlockNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 1/8/2024 18:06:19'!
visitMessageNode: aMessageNode
	| incompleteTypeInfo receiverLiveType  |
	aMessageNode receiver accept: self.
	
	
	incompleteTypeInfo := OrderedCollection new. 
	receiverLiveType:=aMessageNode receiverLiveTypesIn:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		
	incompleteTypeInfo do: [ :anIncompleteTypeInfoReason | anIncompleteTypeInfoReason addTo: self. ].
	
	(receiverLiveType isEmptyType and: [ incompleteTypeInfo isEmpty])
		ifTrue: [issues add: (TypeCheckingDragonIncompleteInformation on: compiledMethod for: methodNode by: aMessageNode)]
		ifFalse: [ self checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType ].
	
	aMessageNode argumentsInEvaluationOrder do: [:argumentBlock | argumentBlock accept: self].! !


!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 12/28/2023 18:57:18'!
addAlertWithMessage: aStringMessage

	^ issues add: (TypeCheckerDragonAlert for: methodNode withMessage: aStringMessage)! !

!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 1/4/2024 20:18:51'!
addProblem: anIncompleteTypeInfoError node: aMessageNode
	self addWarning: anIncompleteTypeInfoError node: aMessageNode.
! !

!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 1/3/2024 20:05:23'!
addWarning: anIncompleteTypeInfoError node: aMessageNode

	
	issues add: (TypeCheckingDragonWarning on: compiledMethod for: methodNode by: aMessageNode reason: anIncompleteTypeInfoError reasonDescription )
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckerDragonMethodVisitor class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonMethodVisitor class
	instanceVariableNames: ''!

!TypeCheckerDragonMethodVisitor class methodsFor: 'instance creation' stamp: 'JFGO 12/28/2023 18:57:04'!
for: aCompiledMethod collectingAlerts: anAlertCollection  
	^self new initializeFor: aCompiledMethod collectingIssues: anAlertCollection .! !


!classDefinition: #MethodNotAnnotatingTypesIssue category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #MethodNotAnnotatingTypesIssue
	instanceVariableNames: 'compiledMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!MethodNotAnnotatingTypesIssue methodsFor: 'initialization' stamp: 'JFGO 12/27/2023 19:46:00'!
initializeFor: aCompiledMethod 
	compiledMethod := aCompiledMethod.! !


!MethodNotAnnotatingTypesIssue methodsFor: 'method' stamp: 'JFGO 12/27/2023 19:49:46'!
method
	^compiledMethod .! !


!MethodNotAnnotatingTypesIssue methodsFor: 'printing' stamp: 'JFGO 12/27/2023 19:49:07'!
problemDescription
	^ 'Method is not annotating types'.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MethodNotAnnotatingTypesIssue class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
MethodNotAnnotatingTypesIssue class
	instanceVariableNames: ''!

!MethodNotAnnotatingTypesIssue class methodsFor: 'instance creation' stamp: 'JFGO 12/27/2023 19:45:35'!
for: aCompiledMethod 
	^self new initializeFor: aCompiledMethod ! !


!classDefinition: #TypeCheckerDragon category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragon
	instanceVariableNames: 'compiledMethod issues'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 12/28/2023 16:38:57'!
errors
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonError.]! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 12/28/2023 16:34:50'!
hasErrors
	^self errors size > 0.! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 1/8/2024 18:13:19'!
hasIncompleteInfoAlerts
	^self incompleteInfoAlerts size > 0.! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 12/27/2023 19:31:48'!
hasIssues
	^issues size > 0.! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 1/3/2024 20:15:51'!
hasWarnings
	^self warnings size > 0.! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 1/8/2024 18:12:39'!
incompleteInfoAlerts
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonIncompleteInformation .]! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 12/27/2023 19:32:23'!
issues
	^issues.! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 1/3/2024 20:15:33'!
warnings
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonWarning.]! !


!TypeCheckerDragon methodsFor: 'initialization' stamp: 'JFGO 12/27/2023 19:29:59'!
initializeFor: aCompiledMethod 
	compiledMethod := aCompiledMethod " asMethodReference".
	issues := OrderedCollection new.! !


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

!TypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 12/27/2023 19:44:39'!
typeCheckWhenDisabledTyping
	issues add: (MethodNotAnnotatingTypesIssue for: compiledMethod).
	^self.! !

!TypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 12/27/2023 19:29:59'!
typeCheckWhenEnabledTyping
	(TypeCheckerDragonMethodVisitor for: compiledMethod collectingAlerts: issues) accept.
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


!classDefinition: #TypeCheckingDragonError category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingDragonError
	instanceVariableNames: 'methodNode messageNode compiledMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckingDragonError methodsFor: 'initialization' stamp: 'JFGO 12/28/2023 16:13:28'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode .
	compiledMethod := aCompiledMethod .
	methodNode := aMethodNode.
	messageNode := aMessageNode.! !


!TypeCheckingDragonError methodsFor: 'receiver/selector' stamp: 'JFGO 12/27/2023 20:14:42'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonError methodsFor: 'receiver/selector' stamp: 'JFGO 12/27/2023 20:14:48'!
selector
	^messageNode selector.! !


!TypeCheckingDragonError methodsFor: 'method' stamp: 'JFGO 12/28/2023 16:13:40'!
method
	^compiledMethod .! !


!TypeCheckingDragonError methodsFor: 'printing' stamp: 'JFGO 12/27/2023 20:14:19'!
problemDescription
	self shouldBeImplemented .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckingDragonError class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonError class
	instanceVariableNames: ''!

!TypeCheckingDragonError class methodsFor: 'instance creation' stamp: 'JFGO 12/28/2023 16:13:02'!
on: aCompiledMethod for: aMethodNode by: aMessageNode 
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode .! !


!classDefinition: #TypeCheckingDragonIncompleteInformation category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingDragonIncompleteInformation
	instanceVariableNames: 'compiledMethod methodNode messageNode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckingDragonIncompleteInformation methodsFor: 'receiver/selector' stamp: 'JFGO 1/8/2024 18:09:00'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'receiver/selector' stamp: 'JFGO 1/8/2024 18:09:17'!
selector
	^messageNode selector.! !


!TypeCheckingDragonIncompleteInformation methodsFor: 'initialization' stamp: 'JFGO 1/8/2024 18:07:54'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode 
	compiledMethod := aCompiledMethod.
	methodNode := aMethodNode.
	messageNode := aMessageNode.! !



!TypeCheckingDragonIncompleteInformation methodsFor: 'method' stamp: 'JFGO 1/8/2024 18:09:42'!
method
	^compiledMethod .! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'method' stamp: 'JFGO 1/8/2024 18:10:19'!
problemDescription
	^'No type information on receiver collected'.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckingDragonIncompleteInformation class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonIncompleteInformation class
	instanceVariableNames: ''!

!TypeCheckingDragonIncompleteInformation class methodsFor: 'instance creation' stamp: 'JFGO 1/8/2024 18:21:14'!
on: aCompiledMethod for: aMethodNode by: aMessageNode 
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode ! !


!classDefinition: #TypeCheckingDragonWarning category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingDragonWarning
	instanceVariableNames: 'compiledMethod methodNode messageNode reasonDescription'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckingDragonWarning methodsFor: 'initialization' stamp: 'JFGO 1/3/2024 20:06:40'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription 
	compiledMethod := aCompiledMethod.
	methodNode := aMethodNode.
	messageNode := aMessageNode.
	reasonDescription := aReasonDescription.! !


!TypeCheckingDragonWarning methodsFor: 'receiver/selector' stamp: 'JFGO 1/3/2024 20:09:16'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonWarning methodsFor: 'receiver/selector' stamp: 'JFGO 1/3/2024 20:09:26'!
selector
	^messageNode selector.! !


!TypeCheckingDragonWarning methodsFor: 'printing' stamp: 'JFGO 1/3/2024 20:08:43'!
problemDescription
	^reasonDescription .! !


!TypeCheckingDragonWarning methodsFor: 'method' stamp: 'JFGO 1/3/2024 20:07:29'!
method
	^compiledMethod.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckingDragonWarning class' category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonWarning class
	instanceVariableNames: ''!

!TypeCheckingDragonWarning class methodsFor: 'instance creation' stamp: 'JFGO 1/3/2024 20:06:15'!
on: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription ! !
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


!TypeCheckerDragonTest methodsFor: 'tests for generics collections' stamp: 'JFGO 1/8/2024 18:23:14'!
test11MethodWithCollectionItemsGeneratesAlertForBlockVariable
	"El valor agregado de este test es discutible. Como minimo busca asegurarse que el paquete de LiveTypingGenerics esta correctamente instalado"
	"Ademas, al momento de esta version de typeChecker, no hay LiveTyping sobre bloques, por eso se genera la alerta"
	"Una vez implementado, habra que agregar tests adicionales para chequeo de tipos dentro de bloques usando la informacion de generics"
		
	
	self performMethodWithSelector: #methodWithCollectionWithNoTypeError typeCheckAndAssert: [:typeChecker :methodChecked | | alert | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasIncompleteInfoAlerts .
				
		alert := typeChecker incompleteInfoAlerts anyOne .
		self assert: 'No type information on receiver collected' equals: alert problemDescription .	
		self assert: (alert method) equals: methodChecked .
		self assert: (alert receiver key) equals: 'item'.
		self assert: (alert selector key) equals: #factorial.
	]. 
	
! !


!TypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 12/27/2023 19:32:23'!
assertTypeChecker: aTypeChecker hasOneAlertWithMessage: anAlertMessage
	
	| alert |
	self assert: aTypeChecker hasIssues.
	self assert: aTypeChecker issues size equals: 1.
	alert:=aTypeChecker issues anyOne.
	self assert: (alert isKindOf: TypeCheckerDragonAlert).
	self assert: anAlertMessage equals: alert message .
	"PEDIR MAS INFO SOBRE LA ALERTA. NO HARIA FALTA EXPONER EL MENSAJE NI TENERLO HARDCODEADO".
	! !

!TypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 12/21/2023 19:56:32'!
performMethodWithSelector: aSelector typeCheckAndAssert: anAssertionBlock
	
	| methodToCheck |
	methodToCheck := TypeCheckerDragonTestMethods >> aSelector.
	TypeCheckerDragonTestMethods new perform: aSelector.
	
	self typeCheckOn: methodToCheck andAssert: anAssertionBlock .
	
! !

!TypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 12/28/2023 16:21:00'!
typeCheckOn: aCompiledMethod andAssert: anAssertionBlock
		
	| typeChecker |
	typeChecker := aCompiledMethod typeCheckDragon.
	anAssertionBlock value: typeChecker value: aCompiledMethod.
	! !

!TypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 12/21/2023 19:27:20'!
typeCheckWithSelector: aSelector andAssert: anAssertionBlock
		
	| methodToCheck|
	methodToCheck := TypeCheckerDragonTestMethods >> aSelector.
	self typeCheckOn:  methodToCheck andAssert: anAssertionBlock.
	! !


!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:22:23'!
test01MethodTypedCorrectlyDoesNotGenerateIssues
		
	self typeCheckWithSelector: #methodTypedCorrectlyEnableTyping andAssert: [:typeChecker :methodChecked| 
		self deny: typeChecker hasIssues.
	]. 
	
	
! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:22:31'!
test02MethodThatDontCheckTypesGeneratesIssue

	| methodToCheck |
	
	methodToCheck := TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping.
	methodToCheck removeProperties .
	
	self typeCheckOn: methodToCheck andAssert: [:typeChecker :methodChecked |  
		self assert: typeChecker hasIssues.
		self assert: typeChecker issues size equals: 1.
		self assert: (typeChecker issues anyOne isKindOf: MethodNotAnnotatingTypesIssue ).
		self assert: (typeChecker issues anyOne method) equals: methodToCheck .
	]. 
	
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:22:35'!
test03PrimitiveMethodsDontCheckTypes
	
	self typeCheckWithSelector: #emptyMethodPrimitive andAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	]. 
! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:26:11'!
test04MethodWithMessageNotUnderstoodByReceiverGeneratesError

	| methodSelector |
	methodSelector := #methodWithMessageNotUnderstood.
	self typeCheckWithSelector:  methodSelector andAssert: [:typeChecker :methodChecked| | error | 
		self assert: typeChecker hasIssues.
		self assert: typeChecker issues size equals: 1.
		error:= typeChecker issues anyOne.
		self assert: (error isKindOf: TypeCheckingDragonError ).
		self assert: (error method) equals: methodChecked .
		self assert: (error receiver key) equals: 'false'.
		self assert: (error selector key) equals: #not.
	]. 
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/3/2024 20:16:16'!
test05MethodWithTypeErrorOnMessageReceiverGeneratesAlert

	
	self typeCheckWithSelector: #methodWithMessageNestedNotUnderstoodOnReceiver andAssert: [:typeChecker :methodChecked | | error warning |
		self assert: 2 equals: typeChecker issues size.
		self assert: 1 equals: typeChecker errors size.
		self assert: 1 equals: typeChecker warnings size.
		error := typeChecker errors anyOne .
		"self assert: '#not not implemented in String' equals: error problemDescription .	" "TODO"
		self assert: (error method) equals: methodChecked .
		self assert: (error receiver key) equals: 'false'.
		self assert: (error selector key) equals: #not.
		warning := typeChecker warnings anyOne .
		self assert: '#not not implemented in String' equals: warning problemDescription .	
		self assert: (warning method) equals: methodChecked .
		self assert: (warning selector key) equals: #not.
		
	]. 
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/8/2024 17:46:00'!
test06MethodWithManyTypeErrorsOnMessageGeneratesManyAlerts
	
	self typeCheckWithSelector: #methodWithManyMessageNotUnderstood andAssert: [:typeChecker :methodChecked | | warning error |
		self assert: 2 equals: typeChecker issues size.
		self assert: 1 equals: typeChecker errors size.
		self assert: 1 equals: typeChecker warnings size.
		error := typeChecker errors anyOne .
		"self assert: '#not not implemented in String' equals: error problemDescription .	" "TODO"
		self assert: (error method) equals: methodChecked .
		self assert: (error receiver key) equals: 'false'.
		self assert: (error selector key) equals: #not.
		warning := typeChecker warnings anyOne .
		self assert: '#not not implemented in String' equals: warning problemDescription .	
		self assert: (warning method) equals: methodChecked .
		self assert: (warning receiver key) equals: 'false'.
		self assert: (warning selector key) equals: #not.
	]. 
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/8/2024 18:22:00'!
test07MethodWithMessageWithNoReceiverTypeGeneratesAlert
	
	self typeCheckWithSelector: #methodWithReceiverWithNoTypes andAssert: [:typeChecker :methodChecked | | alert | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasIncompleteInfoAlerts .
				
		alert := typeChecker incompleteInfoAlerts anyOne .
		self assert: 'No type information on receiver collected' equals: alert problemDescription .	
		self assert: (alert method) equals: methodChecked .
		self assert: (alert receiver key) equals: 'nilVariableWithNoType'.
		self assert: (alert selector key) equals: #size.
	]. 
	
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:50:25'!
test08MethodWithMessageNotUnderstoodInArgumentsGeneratesAlerts

	self typeCheckWithSelector: #methodWithMessageArgumentToResolve andAssert: [:typeChecker :methodChecked | | secondError firstError | 
		self assert: 2 equals: typeChecker issues size.
		self assert: 2 equals: typeChecker errors size.
		firstError := typeChecker errors first .
		self assert: (firstError method) equals: methodChecked .
		self assert: (firstError receiver key) equals: '10'.
		self assert: (firstError selector key) equals: #factorial.
		
		secondError := typeChecker errors second .
		self assert: (secondError method) equals: methodChecked .
		self assert: (secondError receiver key) equals: '5'.
		self assert: (secondError selector key) equals: #factorial.
		
	]. 
	
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:23:00'!
test09MethodThatThrowsSpecificExceptionDoesNoGenerateAlerts
	"This is because the object is able to respond to the message even if it is for throwing an exception"
	
	self typeCheckWithSelector: #methodInstanceNotIndexable andAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	]. 
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/8/2024 17:15:41'!
test10MessageSentToMethodWithNoReturnTypeGeneratesIssue
	
		
	self typeCheckWithSelector: #methodWithMessageWithNoReturnTypes andAssert: [:typeChecker :methodChecked | | warning | 
		self assert: typeChecker hasWarnings .
		self assert: typeChecker warnings size equals: 1.
		warning := typeChecker warnings anyOne .
		self assert: (warning method) equals: methodChecked .
		self assert: (warning selector key) equals: #methodSumsNumber:anotherNumber:.
		
	]. 
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/8/2024 18:25:41'!
test12MethodWithVariableManyTypesGeneratesAlertForEachUnsupportedType

	
	self performMethodWithSelector: #methodWithVariableWithManyTypes typeCheckAndAssert: [:typeChecker :methodChecked | | error | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasErrors.
		error := typeChecker errors anyOne.
		self assert: (error method) equals: methodChecked .
		self assert: (error receiver key) equals: 'v1'.
		self assert: (error selector key) equals: #factorial.
	]. 
	
	! !


!classDefinition: #TypeCheckerDragonTestMethods category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
Object subclass: #TypeCheckerDragonTestMethods
	instanceVariableNames: 'nilVariableWithNoType aCol anotherCol anotherCol2'
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

!TypeCheckerDragonTestMethods methodsFor: 'without context filters' stamp: 'JFGO 12/21/2023 19:53:03'!
methodWithVariableWithManyTypes
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 factorial.! !


!TypeCheckerDragonTestMethods methodsFor: 'collections generics' stamp: 'JFGO 12/21/2023 19:04:49'!
methodWithCollectionWithNoTypeError
	| col |
	col:= OrderedCollection with: 1.
	col do:[:item | item factorial].! !

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

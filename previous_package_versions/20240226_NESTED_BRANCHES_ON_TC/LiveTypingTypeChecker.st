!classDefinition: #TypeCheckerDragonMethodVisitor category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
ParseNodeVisitor subclass: #TypeCheckerDragonMethodVisitor
	instanceVariableNames: 'compiledMethod methodNode issues contextApplier'
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


!TypeCheckerDragonMethodVisitor methodsFor: 'context appliers' stamp: 'JFGO 2/25/2024 14:41:18'!
restorePreviousContext
	contextApplier := contextApplier previous.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'context appliers' stamp: 'JFGO 2/26/2024 19:16:21'!
updateContextApplierFor: aMessageNode visiting: aBlockNode
	
	| newContext contextUpdated|
	
	contextUpdated := false.
	aMessageNode isIfWithMessageNodeAsCondition ifTrue: [ | shouldReject |
		"TODO. Esto puede ser un mensaje bonito que se llame self shouldReject: aBlockNode. Pero todavia estamos muy temprano en TDD"
		shouldReject := aMessageNode selectorSymbol = #ifFalse: and: [aBlockNode = aMessageNode arguments second].
		shouldReject := shouldReject or: [aMessageNode selectorSymbol = #ifTrue:ifFalse: and: [aBlockNode = aMessageNode arguments second]].
		
		newContext := EqualsTypeContextApplier 
			to: aMessageNode receiver arguments first key value
			on: aMessageNode receiver receiver receiver
			shouldCast: shouldReject not
			withPreviousContext: contextApplier.
		contextApplier := newContext.
		contextUpdated := true.
				
	].
	^contextUpdated .
	

	! !


!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 2/6/2024 17:51:59'!
checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType 
	
	| implementorsFinder |
	
	implementorsFinder := AllActualLocalImplementors of: aMessageNode selectorSymbol forAll: receiverLiveType.
	implementorsFinder LiveTypeValue.
	
	implementorsFinder notImplementedIsEmpty ifFalse: [  
		issues add: (TypeCheckingDragonError forNotImplementedTypes: implementorsFinder notImplemented on: compiledMethod for: methodNode by: aMessageNode)].! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 2/21/2024 19:39:22'!
visitBlockNode: aBlockNode
	"TODO. Cuando inicializamos el visitor, podemos inicializar el contextApplier y ahorrar el ifNil"
	contextApplier isNil ifTrue: [contextApplier := GeneralContextApplier for: aBlockNode.].
	super visitBlockNode: aBlockNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 2/19/2024 19:52:48'!
visitMessageNode: aMessageNode
	| incompleteTypeInfo receiverLiveType  |
	aMessageNode receiver accept: self.
	
	
	incompleteTypeInfo := OrderedCollection new. 
	receiverLiveType:=contextApplier receiverLiveTypesFor: aMessageNode In: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		
	incompleteTypeInfo do: [ :anIncompleteTypeInfoReason | anIncompleteTypeInfoReason addTo: self node: aMessageNode ].
	
	(receiverLiveType isEmptyType and: [ incompleteTypeInfo isEmpty])
		ifTrue: [issues add: (TypeCheckingDragonIncompleteInformation on: compiledMethod for: methodNode by: aMessageNode)]
		ifFalse: [ self checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType ].
	
	self visitMessageNodeArguments:aMessageNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 2/26/2024 19:18:19'!
visitMessageNodeArguments: aMessageNode
	
	aMessageNode argumentsInEvaluationOrder do: [:argumentBlock | | shouldRestore | 
		shouldRestore := self updateContextApplierFor: aMessageNode visiting: argumentBlock.
		argumentBlock accept: self.
		shouldRestore ifTrue: [self restorePreviousContext].
	].! !


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

!classDefinition: 'TypeCheckerDragonMethodVisitor class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonMethodVisitor class
	instanceVariableNames: ''!

!TypeCheckerDragonMethodVisitor class methodsFor: 'instance creation' stamp: 'JFGO 12/28/2023 18:57:04'!
for: aCompiledMethod collectingAlerts: anAlertCollection  
	^self new initializeFor: aCompiledMethod collectingIssues: anAlertCollection .! !


!classDefinition: #TypeCheckerDragon category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragon
	instanceVariableNames: 'compiledMethod issues'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/28/2023 16:38:57'!
errors
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonError.]! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/28/2023 16:34:50'!
hasErrors
	^self errors size > 0.! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 1/8/2024 18:13:19'!
hasIncompleteInfoAlerts
	^self incompleteInfoAlerts size > 0.! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/27/2023 19:31:48'!
hasIssues
	^issues size > 0.! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 1/3/2024 20:15:51'!
hasWarnings
	^self warnings size > 0.! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 1/8/2024 18:12:39'!
incompleteInfoAlerts
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonIncompleteInformation .]! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/27/2023 19:32:23'!
issues
	^issues.! !

!TypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 1/3/2024 20:15:33'!
warnings
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonWarning.]! !


!TypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:34:51'!
classAndSelector
	
	^compiledMethod classAndSelector .! !

!TypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:34:36'!
method
	^compiledMethod .! !

!TypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:35:15'!
methodClass
	
	^compiledMethod methodClass .! !

!TypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:35:35'!
methodReference
	
	^compiledMethod asMethodReference .! !

!TypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:35:48'!
methodSelector
	
	^compiledMethod selector .! !


!TypeCheckerDragon methodsFor: 'initialization' stamp: 'JFGO 1/12/2024 12:35:56'!
initializeFor: aCompiledMethod 
	compiledMethod := aCompiledMethod  "asMethodReference".
	issues := OrderedCollection new.! !


!TypeCheckerDragon methodsFor: 'windowResults' stamp: 'JFGO 1/12/2024 12:41:41'!
showResultsWith: aLabelTrail
	self shouldBeImplemented.! !


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

!classDefinition: 'TypeCheckerDragon class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragon class
	instanceVariableNames: ''!

!TypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod   
	^self new initializeFor: aCompiledMethod ! !


!classDefinition: #TypeCheckerDragonAlert category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
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

!classDefinition: 'TypeCheckerDragonAlert class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonAlert class
	instanceVariableNames: ''!

!TypeCheckerDragonAlert class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod withMessage: anAlertMessage 
	^self new initializeFor: aCompiledMethod withMessage: anAlertMessage ! !


!classDefinition: #TypeCheckingResultsIssues category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingResultsIssues
	instanceVariableNames: 'compiledMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckingResultsIssues methodsFor: 'printing' stamp: 'JFGO 2/5/2024 19:09:56'!
problemDescription
	self subclassResponsibility .! !


!TypeCheckingResultsIssues methodsFor: 'receiver/selector' stamp: 'JFGO 2/5/2024 19:11:17'!
receiver
	self subclassResponsibility .! !

!TypeCheckingResultsIssues methodsFor: 'receiver/selector' stamp: 'JFGO 2/5/2024 19:11:21'!
selector
	self subclassResponsibility .! !


!TypeCheckingResultsIssues methodsFor: 'method' stamp: 'JFGO 2/5/2024 18:33:25'!
method
	^compiledMethod.! !


!classDefinition: #MethodNotAnnotatingTypesIssue category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #MethodNotAnnotatingTypesIssue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!MethodNotAnnotatingTypesIssue methodsFor: 'initialization' stamp: 'JFGO 12/27/2023 19:46:00'!
initializeFor: aCompiledMethod 
	compiledMethod := aCompiledMethod.! !


!MethodNotAnnotatingTypesIssue methodsFor: 'printing' stamp: 'JFGO 12/27/2023 19:49:07'!
problemDescription
	^ 'Method is not annotating types'.! !


!MethodNotAnnotatingTypesIssue methodsFor: 'receiver/selector' stamp: 'JFGO 2/5/2024 18:24:33'!
receiver
	self shouldNotHappenBecause: 'Method does not annotate types, there are no message nodes to evaluate'! !

!MethodNotAnnotatingTypesIssue methodsFor: 'receiver/selector' stamp: 'JFGO 2/5/2024 18:24:36'!
selector
	self shouldNotHappenBecause: 'Method does not annotate types, there are no message nodes to evaluate'! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MethodNotAnnotatingTypesIssue class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
MethodNotAnnotatingTypesIssue class
	instanceVariableNames: ''!

!MethodNotAnnotatingTypesIssue class methodsFor: 'instance creation' stamp: 'JFGO 12/27/2023 19:45:35'!
for: aCompiledMethod 
	^self new initializeFor: aCompiledMethod ! !


!classDefinition: #TypeCheckingDragonError category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonError
	instanceVariableNames: 'methodNode messageNode notImplemented'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckingDragonError methodsFor: 'initialization' stamp: 'JFGO 2/6/2024 17:53:59'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode notImplementedTypes: notImplementedTypes  .
	compiledMethod := aCompiledMethod .
	methodNode := aMethodNode.
	messageNode := aMessageNode.
	notImplemented:= notImplementedTypes.! !


!TypeCheckingDragonError methodsFor: 'receiver/selector' stamp: 'JFGO 12/27/2023 20:14:42'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonError methodsFor: 'receiver/selector' stamp: 'JFGO 12/27/2023 20:14:48'!
selector
	^messageNode selector.! !


!TypeCheckingDragonError methodsFor: 'not implemented types' stamp: 'JFGO 2/6/2024 17:57:05'!
notImplementedTypes
	
	^notImplemented collect: [:aNotImplemented | aNotImplemented actualClass ]! !


!TypeCheckingDragonError methodsFor: 'printing' stamp: 'JFGO 2/6/2024 17:56:54'!
problemDescription
	^ self selector identifierPrintString, ' not implemented in ', self notImplementedTypes asCommaStringAnd  .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckingDragonError class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonError class
	instanceVariableNames: ''!

!TypeCheckingDragonError class methodsFor: 'instance creation' stamp: 'JFGO 2/6/2024 17:54:11'!
forNotImplementedTypes: notImplementedTypes on: aCompiledMethod for: aMethodNode by: aMessageNode 
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode notImplementedTypes: notImplementedTypes.! !


!classDefinition: #TypeCheckingDragonIncompleteInformation category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonIncompleteInformation
	instanceVariableNames: 'methodNode messageNode problemDescription'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!

!TypeCheckingDragonIncompleteInformation methodsFor: 'receiver/selector' stamp: 'JFGO 1/8/2024 18:09:00'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'receiver/selector' stamp: 'JFGO 1/8/2024 18:09:17'!
selector
	^messageNode selector.! !


!TypeCheckingDragonIncompleteInformation methodsFor: 'printing' stamp: 'JFGO 2/5/2024 18:50:48'!
problemDescription
	^problemDescription .! !


!TypeCheckingDragonIncompleteInformation methodsFor: 'initialization' stamp: 'JFGO 2/5/2024 18:49:52'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode description: description  
	compiledMethod := aCompiledMethod.
	methodNode := aMethodNode.
	messageNode := aMessageNode.
	problemDescription := description.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckingDragonIncompleteInformation class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonIncompleteInformation class
	instanceVariableNames: ''!

!TypeCheckingDragonIncompleteInformation class methodsFor: 'instance creation' stamp: 'JFGO 2/6/2024 18:04:21'!
on: aCompiledMethod for: aMethodNode by: aMessageNode 
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode description: 'No type information on receiver collected'.! !


!classDefinition: #TypeCheckingDragonWarning category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonWarning
	instanceVariableNames: 'methodNode messageNode reasonDescription'
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

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckingDragonWarning class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonWarning class
	instanceVariableNames: ''!

!TypeCheckingDragonWarning class methodsFor: 'instance creation' stamp: 'JFGO 1/3/2024 20:06:15'!
on: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription ! !
!classDefinition: #TypeCheckerDragonTest category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
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


!TypeCheckerDragonTest methodsFor: 'tests for generics collections' stamp: 'JFGO 2/6/2024 18:13:35'!
test11MethodWithCollectionItemsGeneratesAlertForBlockVariable
	"El valor agregado de este test es discutible. Como minimo busca asegurarse que el paquete de LiveTypingGenerics esta correctamente instalado"
	"Ademas, al momento de esta version de typeChecker, no hay LiveTyping sobre bloques, por eso se genera la alerta"
	"Una vez implementado, habra que agregar tests adicionales para chequeo de tipos dentro de bloques usando la informacion de generics"
		
	
	self performMethodWithSelector: #methodWithCollectionWithNoTypeError typeCheckAndAssert: [:typeChecker :methodChecked | | alert | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasIncompleteInfoAlerts .
				
		alert := typeChecker incompleteInfoAlerts anyOne .
		self assert: alert problemDescription equals: 'No type information on receiver collected'.	
		self assert: alert method equals: methodChecked .
		self assert: alert receiver key equals: 'item'.
		self assert: alert selector key equals: #factorial.
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


!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 2/21/2024 18:14:30'!
test13TypeCastIfTrueCorrectlyAppliesCastedType
	self performMethodWithSelector: #typeCastIfTrue typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 2/21/2024 18:56:14'!
test14TypeCastIfFalseCorrectlyRejectsCastedType
	self performMethodWithSelector: #typeCastIfFalse typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 2/25/2024 14:05:25'!
test15TypeCastIfTrueIfFalseCorrectlyAppliesAndRejectsCastedType

	self performMethodWithSelector: #typeCastIfTrueIfFalse typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	self performMethodWithSelector: #typeCastIfFalseIfTrue typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 2/25/2024 14:25:28'!
test16TypeCastNestedRejectionsRejectsEachLevelCastedType

	self performMethodWithSelector: #typeCastIfFalseNested typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].

	! !


!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/12/2024 12:39:14'!
test01MethodTypedCorrectlyDoesNotGenerateIssues
		
	self typeCheckWithSelector: #methodTypedCorrectlyEnableTyping andAssert: [:typeChecker :methodChecked| 
		self deny: typeChecker hasIssues.
		self assert: typeChecker method equals: methodChecked .
		self assert: typeChecker methodClass equals: TypeCheckerDragonTestMethods .
		self assert: typeChecker methodReference equals: methodChecked asMethodReference .
		self assert: typeChecker methodSelector equals: methodChecked selector .
		self assert: typeChecker classAndSelector equals: methodChecked classAndSelector .
	]. 
	
	
! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:05:12'!
test02MethodThatDontCheckTypesGeneratesIssue

	| methodToCheck |
	
	methodToCheck := TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping.
	methodToCheck removeProperties .
	
	self typeCheckOn: methodToCheck andAssert: [:typeChecker :methodChecked |  
		self assert: typeChecker hasIssues.
		self assert: typeChecker issues size equals: 1.
		self assert: (typeChecker issues anyOne isKindOf: MethodNotAnnotatingTypesIssue ).
		self assert: typeChecker issues anyOne method equals: methodToCheck .
	]. 
	
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:22:35'!
test03PrimitiveMethodsDontCheckTypes
	
	self typeCheckWithSelector: #emptyMethodPrimitive andAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	]. 
! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:05:41'!
test04MethodWithMessageNotUnderstoodByReceiverGeneratesError

	| methodSelector |
	methodSelector := #methodWithMessageNotUnderstood.
	self typeCheckWithSelector:  methodSelector andAssert: [:typeChecker :methodChecked| | error | 
		self assert: typeChecker hasIssues.
		self assert: typeChecker issues size equals: 1.
		error:= typeChecker issues anyOne.
		self assert: error problemDescription equals: '#not not implemented in String' .
		self assert: (error isKindOf: TypeCheckingDragonError ).
		self assert: error method equals: methodChecked .
		self assert: error receiver key equals: 'false'.
		self assert: error selector key equals: #not.
		self assert: error notImplementedTypes includes: String.
	]. 
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:06:58'!
test05MethodWithTypeErrorOnMessageReceiverGeneratesAlert

	
	self typeCheckWithSelector: #methodWithMessageNestedNotUnderstoodOnReceiver andAssert: [:typeChecker :methodChecked | | error warning |
		self assert: 2 equals: typeChecker issues size.
		self assert: 1 equals: typeChecker errors size.
		self assert: 1 equals: typeChecker warnings size.
		error := typeChecker errors anyOne .
		self assert:  error problemDescription equals: '#not not implemented in String' .	
		self assert: error method equals: methodChecked .
		self assert: error receiver key equals: 'false'.
		self assert: error selector key equals: #not.
		self assert: error notImplementedTypes includes: String.
		warning := typeChecker warnings anyOne .
		self assert: '#not not implemented in String' equals: warning problemDescription .	
		self assert: warning method equals: methodChecked .
		self assert: warning selector key equals: #not.
		
	]. 
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:11:52'!
test06MethodWithManyTypeErrorsOnMessageGeneratesManyAlerts
	
	self typeCheckWithSelector: #methodWithManyMessageNotUnderstood andAssert: [:typeChecker :methodChecked | | warning error |
		self assert: 2 equals: typeChecker issues size.
		self assert: 1 equals: typeChecker errors size.
		self assert: 1 equals: typeChecker warnings size.
		error := typeChecker errors anyOne .
		self assert:  error problemDescription equals: '#not not implemented in String' .	
		self assert: error method equals: methodChecked .
		self assert: error receiver key equals: 'false'.
		self assert: error selector key equals: #not.
		self assert: error notImplementedTypes includes: String.
		warning := typeChecker warnings anyOne .
		self assert: '#not not implemented in String' equals: warning problemDescription .	
		self assert: (warning method) equals: methodChecked .
		self assert: (warning receiver receiver key) equals: 'false'.
		self assert: (warning receiver selector key) equals: #not.
		self assert: (warning selector key) equals: #factorial.
	]. 
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:12:21'!
test07MethodWithMessageWithNoReceiverTypeGeneratesAlert
	
	self typeCheckWithSelector: #methodWithReceiverWithNoTypes andAssert: [:typeChecker :methodChecked | | alert | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasIncompleteInfoAlerts .
				
		alert := typeChecker incompleteInfoAlerts anyOne .
		self assert: alert problemDescription equals: 'No type information on receiver collected'.	
		self assert: alert method equals: methodChecked .
		self assert: alert receiver key equals: 'nilVariableWithNoType'.
		self assert: alert selector key equals: #size.
	]. 
	
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:12:51'!
test08MethodWithMessageNotUnderstoodInArgumentsGeneratesAlerts

	self typeCheckWithSelector: #methodWithMessageArgumentToResolve andAssert: [:typeChecker :methodChecked | | secondError firstError | 
		self assert: 2 equals: typeChecker issues size.
		self assert: 2 equals: typeChecker errors size.
		firstError := typeChecker errors first .
		self assert: firstError method equals: methodChecked .
		self assert: firstError receiver key equals: '10'.
		self assert: firstError selector key equals: #factorial.
		
		secondError := typeChecker errors second .
		self assert: secondError method equals: methodChecked .
		self assert: secondError receiver key equals: '5'.
		self assert: secondError selector key equals: #factorial.
		
	]. 
	
	
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:23:00'!
test09MethodThatThrowsSpecificExceptionDoesNoGenerateAlerts
	"This is because the object is able to respond to the message even if it is for throwing an exception"
	
	self typeCheckWithSelector: #methodInstanceNotIndexable andAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	]. 
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:13:06'!
test10MessageSentToMethodWithNoReturnTypeGeneratesIssue
	
		
	self typeCheckWithSelector: #methodWithMessageWithNoReturnTypes andAssert: [:typeChecker :methodChecked | | warning | 
		self assert: typeChecker hasWarnings .
		self assert: typeChecker warnings size equals: 1.
		warning := typeChecker warnings anyOne .
		self assert: warning method equals: methodChecked .
		self assert: warning receiver selector key equals: #methodSumsNumber:anotherNumber:.
		self assert: warning selector key equals: #factorial.
		
	]. 
	
	
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 2/6/2024 18:02:29'!
test12MethodWithVariableManyTypesGeneratesAlertForEachUnsupportedType

	
	self performMethodWithSelector: #methodWithVariableWithManyTypes typeCheckAndAssert: [:typeChecker :methodChecked | | error | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasErrors.
		error := typeChecker errors anyOne.
		self assert: error method equals: methodChecked .
		self assert: error receiver key equals: 'v1'.
		self assert: error selector key equals: #factorial.
		self assert: error problemDescription equals: '#factorial not implemented in OrderedCollection and String'.
		self assert: error notImplementedTypes size equals: 2.
		self assert: error notImplementedTypes includes: String.
		self assert: error notImplementedTypes includes: OrderedCollection.
	]. 
	
	! !


!classDefinition: #TypeCheckerDragonTestMethods category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
Object subclass: #TypeCheckerDragonTestMethods
	instanceVariableNames: 'nilVariableWithNoType aCol anotherCol anotherCol2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!

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


!TypeCheckerDragonTestMethods methodsFor: 'with context filters' stamp: 'JFGO 2/21/2024 19:38:08'!
typeCastIfFalse
	|v1|
	v1 := 5.
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 class = SmallInteger ifFalse:[v1 isEmpty.]! !

!TypeCheckerDragonTestMethods methodsFor: 'with context filters' stamp: 'JFGO 2/25/2024 14:24:20'!
typeCastIfFalseIfTrue
	|v1|
	v1:= OrderedCollection new.
	v1 := 5.
	v1 := 'true'.
	
	v1 class = SmallInteger ifFalse: [v1 isEmpty] ifTrue: [v1 factorial] .! !

!TypeCheckerDragonTestMethods methodsFor: 'with context filters' stamp: 'JFGO 2/25/2024 14:25:01'!
typeCastIfFalseNested

	|v1|
	v1:= OrderedCollection new.
	v1 := Date today.
	v1 := 5.
	v1 := true.
	
	v1 class = SmallInteger ifFalse: [
		v1 class = OrderedCollection ifFalse: 		[
				v1 class = Date ifFalse:[
					v1 not.
				].
			].
		].! !

!TypeCheckerDragonTestMethods methodsFor: 'with context filters' stamp: 'JFGO 2/6/2024 18:19:07'!
typeCastIfTrue
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifTrue: [v1 factorial].! !

!TypeCheckerDragonTestMethods methodsFor: 'with context filters' stamp: 'JFGO 2/25/2024 12:04:23'!
typeCastIfTrueIfFalse
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifTrue: [v1 factorial] ifFalse: [v1 isEmpty].! !


!TypeCheckerDragonTestMethods methodsFor: 'collections generics' stamp: 'JFGO 12/21/2023 19:04:49'!
methodWithCollectionWithNoTypeError
	| col |
	col:= OrderedCollection with: 1.
	col do:[:item | item factorial].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TypeCheckerDragonTestMethods class' category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TypeCheckerDragonTestMethods class
	instanceVariableNames: ''!

!TypeCheckerDragonTestMethods class methodsFor: 'as yet unclassified' stamp: 'JFGO 11/30/2023 19:14:50'!
printASTOn: aCompiledMethod 
	
	| stream |
	stream := String writeStream.
	
	aCompiledMethod methodNode nodePrintOn: stream indent: 0.
	^stream! !
!classDefinition: #EqualsTypeContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
Object subclass: #EqualsTypeContextApplier
	instanceVariableNames: 'type objectToApply blockToCastType typeShouldCast previousContext'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!

!EqualsTypeContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 2/21/2024 20:36:40'!
receiverLiveTypesCastingObjectFor: aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	^FixedType for: type .! !

!EqualsTypeContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 2/21/2024 20:38:53'!
receiverLiveTypesFor: aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	self shouldCast 
	ifTrue: [ ^self receiverLiveTypesCastingObjectFor:  aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo ]
	ifFalse: [ ^self receiverLiveTypesRejectingObjectFor:  aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo	].! !

!EqualsTypeContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 2/25/2024 14:32:35'!
receiverLiveTypesRejectingObjectFor: aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	| originalTypes filteredLiveTypes |
	originalTypes := previousContext receiverLiveTypesFor: aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	
	filteredLiveTypes := originalTypes asArray reject: [:aLiveType | aLiveType typeName = type name].
	^RawToLiveTypesAdapter new adapt: filteredLiveTypes .! !


!EqualsTypeContextApplier methodsFor: 'checking' stamp: 'JFGO 2/21/2024 20:36:10'!
shouldCast
	^typeShouldCast .! !


!EqualsTypeContextApplier methodsFor: 'instance creation' stamp: 'JFGO 2/25/2024 14:30:06'!
initializeToApply: aType on: anObjectToApply shouldCast: shouldCast withPreviousContext: anotherContextApplier
	type := aType.
	objectToApply := anObjectToApply.
	typeShouldCast:= shouldCast.
	previousContext := anotherContextApplier .
	! !


!EqualsTypeContextApplier methodsFor: 'restoration' stamp: 'JFGO 2/25/2024 14:41:48'!
previous
	^previousContext.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EqualsTypeContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
EqualsTypeContextApplier class
	instanceVariableNames: ''!

!EqualsTypeContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 2/25/2024 14:29:34'!
to: aType on: anObjectToCast shouldCast: shouldCast withPreviousContext: anotherContextApplier 
	^self new initializeToApply: aType on: anObjectToCast shouldCast: shouldCast withPreviousContext: anotherContextApplier.! !


!classDefinition: #GeneralContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
Object subclass: #GeneralContextApplier
	instanceVariableNames: 'blockNode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!

!GeneralContextApplier methodsFor: 'initialization' stamp: 'JFGO 2/19/2024 19:49:53'!
initializeFor: aBlockNode 
	blockNode := aBlockNode.! !


!GeneralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 2/19/2024 19:52:13'!
receiverLiveTypesFor: aMessageNode In:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	^ aMessageNode receiverLiveTypesIn:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.! !


!GeneralContextApplier methodsFor: 'restoration' stamp: 'JFGO 2/25/2024 14:42:38'!
previous
	"There's no more general context than this. Nothing to restore"
	^self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GeneralContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
GeneralContextApplier class
	instanceVariableNames: ''!

!GeneralContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 2/19/2024 19:49:23'!
for: aBlockNode 
		
	^self new initializeFor: aBlockNode ! !

'From Cuis6.3 [latest update: #6169] on 12 April 2024 at 4:51:50 pm'!
'Description '!
!provides: 'LiveTypingTypeChecker' 1 15!
SystemOrganization addCategory: #'LiveTypingTypeChecker-TypeCheckingDragon'!
SystemOrganization addCategory: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
SystemOrganization addCategory: #'LiveTypingTypeChecker-ContextAppliers'!
SystemOrganization addCategory: #'LiveTypingTypeChecker-ContextAppliers-Tests'!


!classDefinition: #TypeCheckerDragonMethodVisitor category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
ParseNodeVisitor subclass: #TypeCheckerDragonMethodVisitor
	instanceVariableNames: 'compiledMethod methodNode issues contextApplier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckerDragonMethodVisitor class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonMethodVisitor class
	instanceVariableNames: ''!

!classDefinition: #ContextAppliersMethodVisitor category: #'LiveTypingTypeChecker-ContextAppliers'!
ParseNodeVisitor subclass: #ContextAppliersMethodVisitor
	instanceVariableNames: 'compiledMethod parseNode blockNode methodNode types contextApplier incompleteTypeInfoReasons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'ContextAppliersMethodVisitor class' category: #'LiveTypingTypeChecker-ContextAppliers'!
ContextAppliersMethodVisitor class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckerDragonTest category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TestCase subclass: #TypeCheckerDragonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
!classDefinition: 'TypeCheckerDragonTest class' category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TypeCheckerDragonTest class
	instanceVariableNames: ''!

!classDefinition: #TypesWithContextAppliersTest category: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
TestCase subclass: #TypesWithContextAppliersTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers-Tests'!
!classDefinition: 'TypesWithContextAppliersTest class' category: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
TypesWithContextAppliersTest class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckerDragon category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragon
	instanceVariableNames: 'compiledMethod issues'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckerDragon class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragon class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckerDragonAlert category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragonAlert
	instanceVariableNames: 'compiledMethod alertMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckerDragonAlert class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonAlert class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingResultsIssues category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingResultsIssues
	instanceVariableNames: 'compiledMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingResultsIssues class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues class
	instanceVariableNames: ''!

!classDefinition: #MethodNotAnnotatingTypesIssue category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #MethodNotAnnotatingTypesIssue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'MethodNotAnnotatingTypesIssue class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
MethodNotAnnotatingTypesIssue class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonError category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonError
	instanceVariableNames: 'methodNode messageNode notImplemented'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonError class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonError class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonIncompleteInformation category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonIncompleteInformation
	instanceVariableNames: 'methodNode messageNode problemDescription'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonIncompleteInformation class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonIncompleteInformation class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonWarning category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonWarning
	instanceVariableNames: 'methodNode messageNode reasonDescription'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonWarning class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonWarning class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckerDragonTestMethods category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
Object subclass: #TypeCheckerDragonTestMethods
	instanceVariableNames: 'nilVariableWithNoType aCol anotherCol anotherCol2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
!classDefinition: 'TypeCheckerDragonTestMethods class' category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TypeCheckerDragonTestMethods class
	instanceVariableNames: ''!

!classDefinition: #TypeContextAppliers category: #'LiveTypingTypeChecker-ContextAppliers'!
Object subclass: #TypeContextAppliers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'TypeContextAppliers class' category: #'LiveTypingTypeChecker-ContextAppliers'!
TypeContextAppliers class
	instanceVariableNames: ''!

!classDefinition: #EqualsTypeContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
TypeContextAppliers subclass: #EqualsTypeContextApplier
	instanceVariableNames: 'type objectToApply blockToCastType typeShouldCast previousContext'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'EqualsTypeContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
EqualsTypeContextApplier class
	instanceVariableNames: ''!

!classDefinition: #GeneralContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
TypeContextAppliers subclass: #GeneralContextApplier
	instanceVariableNames: 'blockNode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'GeneralContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
GeneralContextApplier class
	instanceVariableNames: ''!

!classDefinition: #TypesWithContextAppliersTestMethods category: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
Object subclass: #TypesWithContextAppliersTestMethods
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers-Tests'!
!classDefinition: 'TypesWithContextAppliersTestMethods class' category: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
TypesWithContextAppliersTestMethods class
	instanceVariableNames: ''!


!TypeCheckerDragonMethodVisitor methodsFor: 'initialization' stamp: 'JFGO 4/9/2024 20:44:40'!
initializeFor: aCompiledMethod collectingIssues: anIssuesCollection
	compiledMethod := aCompiledMethod.
	methodNode := compiledMethod methodNode .
	issues := anIssuesCollection .
	contextApplier := GeneralContextApplier new.
	! !

!TypeCheckerDragonMethodVisitor methodsFor: 'evaluating' stamp: 'JFGO 11/30/2023 19:14:32'!
accept
	self visitMethodNode: methodNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'context appliers' stamp: 'JFGO 2/25/2024 14:41:18'!
restorePreviousContext
	contextApplier := contextApplier previous.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 2/6/2024 17:51:59'!
checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType 
	
	| implementorsFinder |
	
	implementorsFinder := AllActualLocalImplementors of: aMessageNode selectorSymbol forAll: receiverLiveType.
	implementorsFinder LiveTypeValue.
	
	implementorsFinder notImplementedIsEmpty ifFalse: [  
		issues add: (TypeCheckingDragonError forNotImplementedTypes: implementorsFinder notImplemented on: compiledMethod for: methodNode by: aMessageNode)].! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/9/2024 20:44:53'!
visitBlockNode: aBlockNode
	super visitBlockNode: aBlockNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/9/2024 20:28:32'!
visitMessageNode: aMessageNode
	| incompleteTypeInfo receiverLiveType  |
	aMessageNode receiver accept: self.
	
	
	incompleteTypeInfo := OrderedCollection new. 
	receiverLiveType:=contextApplier liveTypesFor: aMessageNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		
	incompleteTypeInfo do: [ :anIncompleteTypeInfoReason | anIncompleteTypeInfoReason addTo: self node: aMessageNode ].
	
	(receiverLiveType isEmptyType and: [ incompleteTypeInfo isEmpty])
		ifTrue: [issues add: (TypeCheckingDragonIncompleteInformation on: compiledMethod for: methodNode by: aMessageNode)]
		ifFalse: [ self checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType ].
	
	self visitMessageNodeArguments:aMessageNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/12/2024 16:43:09'!
visitMessageNodeArguments: aMessageNode
	
	aMessageNode argumentsInEvaluationOrder do: [:argumentBlock |  
		contextApplier updateFor: aMessageNode visiting: argumentBlock 
			ifUpdated: 	[:newContext | 
				contextApplier:= newContext. 
				argumentBlock accept: self.
				self restorePreviousContext .
			] 
			ifNotUpdated:[ argumentBlock accept: self.				].
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

!TypeCheckerDragonMethodVisitor class methodsFor: 'instance creation' stamp: 'JFGO 12/28/2023 18:57:04'!
for: aCompiledMethod collectingAlerts: anAlertCollection  
	^self new initializeFor: aCompiledMethod collectingIssues: anAlertCollection .! !

!ContextAppliersMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/9/2024 21:04:20'!
visitBlockNode: aBlockNode
	
	"TODO. Revisar el equivalentTo:. Esta para que los tests pasen pero puede traer errores"
	(aBlockNode equivalentTo: blockNode) ifTrue:[ | liveTypes |
		
		liveTypes:= contextApplier liveTypesFor: parseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons .
		liveTypes classTypesDo: [:aClass | types add:aClass].
		types:= types asArray .
	].
	super visitBlockNode: aBlockNode.
	! !

!ContextAppliersMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 3/13/2024 18:30:38'!
visitMessageNode: aMessageNode
	aMessageNode arguments  size > 0 ifTrue:[
		self visitMessageNodeArguments:aMessageNode.
	].! !

!ContextAppliersMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/12/2024 16:40:45'!
visitMessageNodeArguments:aMessageNode.
	aMessageNode argumentsInEvaluationOrder do: [:argumentBlock |  
		contextApplier updateFor: aMessageNode visiting: argumentBlock 
			ifUpdated: 	[:newContext | 
				contextApplier:= newContext. 
				argumentBlock accept: self.
				self restorePreviousContext .
				] 
			ifNotUpdated:[ argumentBlock accept: self.				].
	].! !

!ContextAppliersMethodVisitor methodsFor: 'initialization' stamp: 'JFGO 4/9/2024 21:03:58'!
initializeFor: aCompiledMethod on: aParseNode within: aBlockNode addingIncompleteTypeInfoTo: aIncompleteTypeInfoReasonsList
	compiledMethod := aCompiledMethod.
	parseNode := aParseNode.
	blockNode := aBlockNode.
	methodNode := compiledMethod methodNode .
	types:=OrderedCollection new.
	contextApplier := GeneralContextApplier new.
	incompleteTypeInfoReasons := aIncompleteTypeInfoReasonsList.! !

!ContextAppliersMethodVisitor methodsFor: 'evaluating' stamp: 'JFGO 3/13/2024 18:18:20'!
types
	self visitMethodNode: methodNode .
	^types.! !

!ContextAppliersMethodVisitor methodsFor: 'context' stamp: 'JFGO 3/13/2024 18:27:05'!
restorePreviousContext
	contextApplier := contextApplier previous.! !

!ContextAppliersMethodVisitor class methodsFor: 'instance creation' stamp: 'JFGO 4/9/2024 21:03:08'!
for: aCompiledMethod on: aVariableName within: aBlockNode addingIncompleteTypeInfoTo: incompleteTypeInfoReasons   
	^self new initializeFor: aCompiledMethod on: aVariableName within: aBlockNode addingIncompleteTypeInfoTo: incompleteTypeInfoReasons ! !

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

!TypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 3/13/2024 17:24:16'!
performMethodWithClass: aClass andSelector: aSelector typeCheckAndAssert: anAssertionBlock
	
	| methodToCheck |
	methodToCheck := aClass >> aSelector.
	aClass new perform: aSelector.
	
	self typeCheckOn: methodToCheck andAssert: anAssertionBlock .
	
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

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 3/13/2024 17:24:53'!
test13TypeCastIfTrueCorrectlyAppliesCastedType
	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfTrue typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 4/9/2024 20:50:51'!
test14TypeCastIfFalseReturnsAllTypesButRejected
	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfFalse typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 3/13/2024 17:25:30'!
test15TypeCastIfTrueIfFalseCorrectlyAppliesAndRejectsCastedType

	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfTrueIfFalse typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfFalseIfTrue typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 3/13/2024 17:25:42'!
test16TypeCastNestedRejectionsRejectsEachLevelCastedType

	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfFalseNested typeCheckAndAssert: [:typeChecker :methodChecked | 
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

!TypesWithContextAppliersTest methodsFor: 'equals type context' stamp: 'JFGO 4/9/2024 21:06:44'!
test01TypeCastIfTrueCorrectlyAppliesCastedType

| compiledMethod blockToTest blockToTestString types variableNode |

compiledMethod := TypesWithContextAppliersTestMethods >> #typeCastIfTrue.
TypesWithContextAppliersTestMethods new perform: #typeCastIfTrue.
blockToTestString:= '[ v1 factorial. ]'.
blockToTest := self getBlockNodeWithSourceCode: blockToTestString on: compiledMethod.

variableNode := self getVariableNodeNamed: 'v1' on: compiledMethod .

types := compiledMethod typesOfVariableNamed: variableNode withinBlockNode: blockToTest addingIncompleteTypeInfoTo: OrderedCollection new.

self assert:types size equals: 1.
self assert: types first equals: SmallInteger.! !

!TypesWithContextAppliersTest methodsFor: 'equals type context' stamp: 'JFGO 4/9/2024 21:06:08'!
test02TypeCastIfFalseReturnsAllTypesButRejected

| compiledMethod blockToTest blockToTestString types variableNode |

compiledMethod := TypesWithContextAppliersTestMethods >> #typeCastIfFalse.
TypesWithContextAppliersTestMethods new perform: #typeCastIfFalse.
blockToTestString:= '[ v1 isEmpty. ]'.
blockToTest := self getBlockNodeWithSourceCode: blockToTestString on: compiledMethod.

variableNode := self getVariableNodeNamed: 'v1' on: compiledMethod .

types := compiledMethod typesOfVariableNamed: variableNode withinBlockNode: blockToTest addingIncompleteTypeInfoTo: OrderedCollection new.

self assert:types size equals: 2.
self assert: types includes: OrderedCollection.
self assert: types includes: String.! !

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 3/13/2024 17:29:42'!
getBlockNodeWithSourceCode: blockNodeCodeString on: aCompiledMethod

	|  nodeEncoder methodNode sourceRanges blockToTest  |

	blockToTest:=nil.
	
	methodNode:=aCompiledMethod methodNode.
	nodeEncoder := methodNode encoder.
	sourceRanges := nodeEncoder completeSourceRangesBasedOn: methodNode sourceText.
	sourceRanges associationsDo: [ :nodeAtRange |
			(nodeAtRange key class = BlockNode and: [nodeAtRange key printSourceCode = blockNodeCodeString])ifTrue: [
					blockToTest:= nodeAtRange key.
				]
			].

	blockToTest notNil ifTrue: [^blockToTest].

	self failWith: 'Block node not found'.! !

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 3/26/2024 20:26:02'!
getVariableNodeNamed: aVariableName on: aCompiledMethod

	|  nodeEncoder methodNode sourceRanges variableNode  |

	variableNode:=nil.
	
	methodNode:=aCompiledMethod methodNode.
	nodeEncoder := methodNode encoder.
	sourceRanges := nodeEncoder completeSourceRangesBasedOn: methodNode sourceText.
	sourceRanges associationsDo: [ :nodeAtRange |
			nodeAtRange key name = aVariableName ifTrue: [
					variableNode:= nodeAtRange key.
				]
			].

	variableNode notNil ifTrue: [^variableNode].

	self failWith: 'Variable node not found'.! !

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

!TypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod   
	^self new initializeFor: aCompiledMethod ! !

!TypeCheckerDragonAlert methodsFor: 'initialization' stamp: 'JFGO 11/30/2023 19:14:32'!
initializeFor: aCompiledMethod withMessage: anAlertMessage 
	compiledMethod := aCompiledMethod.
	alertMessage := anAlertMessage.! !

!TypeCheckerDragonAlert methodsFor: 'initialization' stamp: 'JFGO 11/30/2023 19:14:32'!
message
	^alertMessage .! !

!TypeCheckerDragonAlert class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod withMessage: anAlertMessage 
	^self new initializeFor: aCompiledMethod withMessage: anAlertMessage ! !

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

!MethodNotAnnotatingTypesIssue class methodsFor: 'instance creation' stamp: 'JFGO 12/27/2023 19:45:35'!
for: aCompiledMethod 
	^self new initializeFor: aCompiledMethod ! !

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

!TypeCheckingDragonError class methodsFor: 'instance creation' stamp: 'JFGO 2/6/2024 17:54:11'!
forNotImplementedTypes: notImplementedTypes on: aCompiledMethod for: aMethodNode by: aMessageNode 
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode notImplementedTypes: notImplementedTypes.! !

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

!TypeCheckingDragonIncompleteInformation class methodsFor: 'instance creation' stamp: 'JFGO 2/6/2024 18:04:21'!
on: aCompiledMethod for: aMethodNode by: aMessageNode 
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode description: 'No type information on receiver collected'.! !

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

!TypeCheckingDragonWarning class methodsFor: 'instance creation' stamp: 'JFGO 1/3/2024 20:06:15'!
on: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription ! !

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

!TypeCheckerDragonTestMethods class methodsFor: 'as yet unclassified' stamp: 'JFGO 11/30/2023 19:14:50'!
printASTOn: aCompiledMethod 
	
	| stream |
	stream := String writeStream.
	
	aCompiledMethod methodNode nodePrintOn: stream indent: 0.
	^stream! !

!TypeContextAppliers methodsFor: 'LiveTyping' stamp: 'JFGO 4/12/2024 16:49:27'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	self subclassResponsibility .! !

!TypeContextAppliers methodsFor: 'updating / restoration' stamp: 'JFGO 4/12/2024 16:48:21'!
previous
	self subclassResponsibility .! !

!TypeContextAppliers methodsFor: 'updating / restoration' stamp: 'JFGO 4/12/2024 16:47:45'!
updateFor: aMessageNode visiting: aBlockNode ifUpdated: aBlockWhenContextUpdated ifNotUpdated: aBlockWhenContextNotUpdated
	
	| newContext |
	
	aMessageNode isIfWithMessageNodeAsCondition ifTrue: [ | shouldReject |
		"TODO. Esto puede ser un mensaje bonito que se llame self shouldReject: aBlockNode. Pero todavia estamos muy temprano en TDD"
		shouldReject := aMessageNode selectorSymbol = #ifFalse: and: [aBlockNode = aMessageNode arguments second].
		shouldReject := shouldReject or: [aMessageNode selectorSymbol = #ifTrue:ifFalse: and: [aBlockNode = aMessageNode arguments second]].
		
		newContext := EqualsTypeContextApplier 
			to: aMessageNode receiver arguments first key value
			on: aMessageNode receiver receiver receiver
			shouldCast: shouldReject not
			withPreviousContext: self.
		
		aBlockWhenContextUpdated value: newContext.
		^self.
				
	].
	aBlockWhenContextNotUpdated value.! !

!EqualsTypeContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 4/9/2024 20:28:09'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	self shouldCast 
	ifTrue: [  ^self receiverLiveTypesCastingObjectFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo ]
	ifFalse: [^self receiverLiveTypesRejectingObjectFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo ]
! !

!EqualsTypeContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 3/27/2024 15:41:35'!
receiverLiveTypesCastingObjectFor: aParseNode in:  compiledMethoda addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	^FixedType for: type.
	
! !

!EqualsTypeContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 4/9/2024 20:28:10'!
receiverLiveTypesRejectingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	| originalTypes filteredLiveTypes |
	originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	
	filteredLiveTypes := originalTypes asArray reject: [:aLiveType | aLiveType typeName = type name].
	^RawToLiveTypesAdapter new adapt: filteredLiveTypes .
	
! !

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

!EqualsTypeContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 2/25/2024 14:29:34'!
to: aType on: anObjectToCast shouldCast: shouldCast withPreviousContext: anotherContextApplier 
	^self new initializeToApply: aType on: anObjectToCast shouldCast: shouldCast withPreviousContext: anotherContextApplier.! !

!GeneralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 4/9/2024 20:28:09'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	^ aParseNode receiverLiveTypesIn: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo .! !

!GeneralContextApplier methodsFor: 'restoration' stamp: 'JFGO 2/25/2024 14:42:38'!
previous
	"There's no more general context than this. Nothing to restore"
	^self.! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 3/13/2024 17:21:04'!
typeCastIfFalse
	|v1|
	v1 := 5.
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 class = SmallInteger ifFalse:[v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 3/13/2024 17:21:51'!
typeCastIfFalseIfTrue
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifFalse: [v1 isEmpty] ifTrue: [v1 factorial] .! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 3/13/2024 17:22:15'!
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

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 3/13/2024 17:20:46'!
typeCastIfTrue
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifTrue: [v1 factorial].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 3/13/2024 17:21:29'!
typeCastIfTrueIfFalse
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifTrue: [v1 factorial] ifFalse: [v1 isEmpty].! !

!CompiledMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 12/8/2023 19:25:49'!
typeCheckDragon
	^(TypeCheckerDragon for: self) perform! !

!CompiledMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 4/9/2024 21:05:28'!
typesOfVariableNamed: aVariableName withinBlockNode: blockToTest addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	^ (ContextAppliersMethodVisitor for: self on: aVariableName within: blockToTest addingIncompleteTypeInfoTo: incompleteTypeInfoReasons) types.! !

!Encoder methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/12/2024 18:25:33'!
parseBlockNodeWhenBranchIsIn: aPosition ifAbsent: aBlockClosure 

	| smallestRangeSize blockNodeWrappingAPosition |
	smallestRangeSize := SmallInteger maxVal.
	blockNodeWrappingAPosition := nil.
	
	completeSourceRanges associationsDo: [ :nodeAtRange |
		nodeAtRange key class = BlockNode ifTrue: [
				self withRangesOf: nodeAtRange including: aPosition do: [ :aRange | | currentNodeRangeSize |
					currentNodeRangeSize := aRange size.
					currentNodeRangeSize < smallestRangeSize ifTrue: [
						smallestRangeSize := currentNodeRangeSize.
						blockNodeWrappingAPosition := nodeAtRange key ]]
			]
		].
	
	^blockNodeWrappingAPosition ifNil: aBlockClosure ifNotNil: [ blockNodeWrappingAPosition ].
			! !

!MethodNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/8/2024 18:52:33'!
parseBlockNodeWhenBranchIsIn: aPosition ifAbsent: aBlockClosure 
	
	self completeSourceRanges ."Load complete source ranges to detect block nodes properly. Julian"
	^encoder parseBlockNodeWhenBranchIsIn: aPosition ifAbsent: aBlockClosure .
! !

!MethodNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/7/2024 18:51:41'!
withParseNodeAndBlockNodeIncluding: aPosition do: aBlock ifBlockNodeAbsent: anAbsentBlockNodeBlock ifParseNodeAbsent: anAbsentParseNodeBlock

	| nodeAndPosition blockNodeContext |

	nodeAndPosition :=self parseNodeIncluding: aPosition ifAbsent: [ ^ anAbsentParseNodeBlock value ].
	blockNodeContext := self parseBlockNodeWhenBranchIsIn: aPosition ifAbsent: [^anAbsentBlockNodeBlock value:  nodeAndPosition key].
	^aBlock value: nodeAndPosition key value: blockNodeContext .! !

!TempVariableNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/27/2024 15:58:50'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo 
	^self typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.! !

!MessageNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 2/5/2024 19:33:12'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons castingWith: aTypeCastApplier storingGenericsInfoIn: aStorage
	
	| messageReturnTypes sentSelector receiverTypes  |

	sentSelector := self selectorSymbol.
	receiverTypes := aTypeCastApplier receiverLiveTypesFor: self in: aCompiledMethod addingIncompleteTypeInfoTo:  incompleteTypeInfoReasons storingGenericsInfoIn: aStorage.
	
	messageReturnTypes := Set new.
	receiverTypes liveTypesDo: [:aReceiverType | | currentReceiverClass currentMethodRef | 								
			currentReceiverClass := aReceiverType liveClass.
			currentMethodRef := (MethodReference class: currentReceiverClass selector: sentSelector).
			(aStorage genericTypeConstructorFrom: currentMethodRef) 
				ifNil: [
					(currentReceiverClass lookupSelector: sentSelector) 
						ifNil: [ incompleteTypeInfoReasons add: (	IncompleteTypeInfoError dueToMissingImplementationOf: currentMethodRef ) ]
						ifNotNil: [ :implementor |
							self returnTypesOf: implementor 
								from: aReceiverType 
								receiving: sentSelector 
								in: aCompiledMethod
								addingReturnTypesTo: messageReturnTypes 
								addingIncompleteTypeInfoTo: incompleteTypeInfoReasons 
								storingGenericsInfoIn: aStorage
							].
				] 
				ifNotNil: [:aGenericTypeConstructor | 
					messageReturnTypes add: (aGenericTypeConstructor in: aCompiledMethod forArguments: self argumentsInEvaluationOrder storingGenericsInfoIn: aStorage).
				].
			
			].
		
	^RawToLiveTypesAdapter new adapt: messageReturnTypes.! !

!MessageNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 12/8/2023 21:15:33'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo 
	^self receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: NoTypeCastApplier new.! !

!MessageNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 12/8/2023 21:15:34'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: aTypeCastApplier
	^self receiverOrCascadeReceiver typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: aTypeCastApplier ! !

!MessageNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 2/5/2024 19:44:07'!
returnTypesOf: implementor from: aReceiverType receiving: sentSelector in: aCompiledMethod addingReturnTypesTo: messageReturnTypes addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage

	| returnTypes |

	"generic getter case"
	((aReceiverType isGenericType) and: [aStorage getterMethodsFor: aReceiverType includes: sentSelector]) ifTrue: [
		| parameterIndex |
		parameterIndex := (aStorage getterMethodsFor: aReceiverType) at: sentSelector.
		messageReturnTypes addAll: (aReceiverType generics at: parameterIndex).
		^self.
	].
	
	"generic setter case"
	(((aStorage tracedMethodsFor: aReceiverType liveClass) includesKey: sentSelector)
		or: [(aStorage tracedMethodsFromParametersFor: aReceiverType liveClass) includesKey: sentSelector])
		ifTrue: [ | lastArgument argumentType |
		"setters need to receive the object from where the type will be set, then there's at least one argument - Adrian"
		lastArgument := self argumentsInEvaluationOrder last.
		argumentType := lastArgument 
						liveTypesIn: aCompiledMethod 
						addingIncompleteTypeInfoTo: incompleteTypeInfoReasons 
						storingGenericsInfoIn: aStorage.
						
		messageReturnTypes add: argumentType.
		^self.	
	].
	
	"general case"
	returnTypes := implementor returnLiveTypesForReceiver: aReceiverType liveClass usingStorage: aStorage.
	(returnTypes isEmpty or: [returnTypes allSatisfy:[:item | item isEmptyType]])
		ifTrue: [ incompleteTypeInfoReasons add: (IncompleteTypeInfoWarning dueToNoReturnTypeOf: implementor methodReference) ]
		ifFalse: [
			returnTypes := returnTypes collect: [ :aType | aType asTypeFor: aReceiverType liveClass].
			messageReturnTypes addAll: returnTypes.
		].! !

!SmalltalkEditor methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/8/2024 18:57:13'!
balloonTypeInfoInMethodAt: mousePositionInText

	^self withMethodNodeAndClassDo: [ :methodNode :class | 
			methodNode withParseNodeAndBlockNodeIncluding: mousePositionInText 
				do: [ :aNodeUnderCursor :aBlockNodeUnderCursor| 
					self balloonTypeInfoOf: aNodeUnderCursor within: aBlockNodeUnderCursor in: methodNode definedAt: class 
				]
				ifBlockNodeAbsent:[:aNodeUnderCursor | self balloonTypeInfoOf: aNodeUnderCursor in: methodNode definedAt: class]
				ifParseNodeAbsent: [ 	mousePositionInText <= methodNode selectorLastPosition 
						ifTrue: [ self balloonTypeInfoOf: methodNode in: methodNode definedAt: class ]
						ifFalse: [ '' ]
				]]
		ifErrorsParsing: [ :anError | '' ]


! !

!SmalltalkEditor methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/7/2024 18:32:20'!
balloonTypeInfoOf: aNodeUnderCursor within: aBlockNode in: methodNode definedAt: class

	^[ ((ParseNodeTypesDisplay of: aNodeUnderCursor within: aBlockNode in: methodNode definedAt: class) 
		calculateTypesWithContext; 
		initializeTypeInfo;
		typeInfo) printTypesUpTo: 5 ]
		on: MethodNotAnnotatingTypes 
		do: [ :anError | 'Could not get type because: ', anError messageText ]
! !

!AllActualLocalImplementors methodsFor: '*LiveTypingTypeChecker-Evaluating' stamp: 'JFGO 12/13/2023 19:43:25'!
LiveTypeValue
	
	notImplemented := OrderedCollection new.
	implementors := IdentitySet new.
	types liveTypesDo: [ :aLiveType | 
		(aLiveType liveClass lookupSelector: selector ) 
			ifNil: [ notImplemented add: (NotImplementedMethod class: aLiveType liveClass selector: selector ) ]
			ifNotNil: [ :method | implementors add: method ].
		 ].

	implementors := implementors collect: [ :method | method asMethodReference ].
	
	^self 
! !

!IncompleteTypeInfo methodsFor: '*LiveTypingTypeChecker-initialization' stamp: 'JFGO 1/4/2024 20:37:35'!
initializeOf: aMethodReference describedAs: aReasonDescription node: aMessageNode
	
	methodReference := aMethodReference.
	reasonDescription := aReasonDescription .
	messageNode := aMessageNode.! !

!IncompleteTypeInfo class methodsFor: '*LiveTypingTypeChecker-instance creation' stamp: 'JFGO 1/4/2024 20:42:21'!
of: aMethodReference describedAs: aReasonDescription node: aMessageNode
	
	^self new initializeOf: aMethodReference describedAs: aReasonDescription node: aMessageNode.! !

!IncompleteTypeInfoWarning class methodsFor: '*LiveTypingTypeChecker-instance creation' stamp: 'JFGO 1/4/2024 20:36:35'!
dueToNoReturnTypeOf: aMethodReference node: aMessageNode
	
	^self of: aMethodReference describedAs: (self noReturnTypesDescriptionOf: aMethodReference) node: aMessageNode.! !

!ParseNodeTypesDisplay methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 4/12/2024 16:00:30'!
calculateTypesWithContext

	"self halt."
	incompleteTypeInfoReasons := Set new.
	types := parseNodeToAnalize typesIn: methodToAnalyze addingIncompleteTypeInfoTo: incompleteTypeInfoReasons.
	incompleteTypeInfoReasons := incompleteTypeInfoReasons asArray .
	"Eliminar el codigo de arriba cuando nos sintamos seguros. Julian"
	
	"types := methodToAnalyze typesOfVariableNamed: parseNodeToAnalize withinBlockNode: contextBlockNode addingIncompleteTypeInfoTo: incompleteTypeInfoReasons."
	! !

!ParseNodeTypesDisplay methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/7/2024 18:30:25'!
initliazeOf: aParseNodeToAnalize within: aBlockNode in: aMethodNodeOwner definedAt: aClass

	parseNodeToAnalize := aParseNodeToAnalize.
	contextBlockNode:=aBlockNode.
	methodNodeOwner := aMethodNodeOwner.
	definingClass := aClass.
	methodToAnalyze := definingClass 
		compiledMethodAt: methodNodeOwner selector 
		ifAbsent: [ NotImplementedMethod class: definingClass selector: methodNodeOwner selector ].
	
! !

!ParseNodeTypesDisplay class methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 3/7/2024 19:10:51'!
of: aParseNodeToAnalize within: aBlockNode in: aMethodNodeOwner definedAt: aClass

	^self new initliazeOf: aParseNodeToAnalize within: aBlockNode in: aMethodNodeOwner definedAt: aClass
! !

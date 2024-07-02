'From Cuis6.3 [latest update: #6169] on 30 May 2024 at 6:55:18 pm'!
'Description '!
!provides: 'LiveTypingTypeChecker' 1 18!
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

!classDefinition: #CastingRejectingContextAppliers category: #'LiveTypingTypeChecker-ContextAppliers'!
TypeContextAppliers subclass: #CastingRejectingContextAppliers
	instanceVariableNames: 'type objectToApply blockToCastType typeShouldFilter previousContext'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'CastingRejectingContextAppliers class' category: #'LiveTypingTypeChecker-ContextAppliers'!
CastingRejectingContextAppliers class
	instanceVariableNames: ''!

!classDefinition: #EqualsClassTypeContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
CastingRejectingContextAppliers subclass: #EqualsClassTypeContextApplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'EqualsClassTypeContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
EqualsClassTypeContextApplier class
	instanceVariableNames: ''!

!classDefinition: #IsKindOfTypeContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
EqualsClassTypeContextApplier subclass: #IsKindOfTypeContextApplier
	instanceVariableNames: 'subclassesForCastingType newTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'IsKindOfTypeContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
IsKindOfTypeContextApplier class
	instanceVariableNames: ''!

!classDefinition: #IsTypeMessageContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
CastingRejectingContextAppliers subclass: #IsTypeMessageContextApplier
	instanceVariableNames: 'messageSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'IsTypeMessageContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
IsTypeMessageContextApplier class
	instanceVariableNames: ''!

!classDefinition: #EqualsToLiteralContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
TypeContextAppliers subclass: #EqualsToLiteralContextApplier
	instanceVariableNames: 'type objectToApply typeShouldFilter previousContext'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'EqualsToLiteralContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
EqualsToLiteralContextApplier class
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
	instanceVariableNames: 'instance1'
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

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 5/21/2024 20:04:55'!
checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType 
	
	| implementorsFinder |
	
	implementorsFinder := AllActualLocalImplementors of: aMessageNode selectorSymbol forAll: receiverLiveType.
	implementorsFinder liveTypeValue.
	
	implementorsFinder notImplementedIsEmpty ifFalse: [  
		issues add: (TypeCheckingDragonError forNotImplementedTypes: implementorsFinder notImplemented on: compiledMethod for: methodNode by: aMessageNode)].! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/9/2024 20:44:53'!
visitBlockNode: aBlockNode
	super visitBlockNode: aBlockNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/15/2024 19:13:08'!
visitMessageNode: aMessageNode
	| incompleteTypeInfo receiverLiveType  |
	aMessageNode receiver accept: self.
	
	
	incompleteTypeInfo := OrderedCollection new. 
	receiverLiveType:=contextApplier receiverLiveTypesFor: aMessageNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		
	incompleteTypeInfo do: [ :anIncompleteTypeInfoReason | anIncompleteTypeInfoReason addTo: self node: aMessageNode ].
	
	(receiverLiveType isEmptyType and: [ incompleteTypeInfo isEmpty])
		ifTrue: [issues add: (TypeCheckingDragonIncompleteInformation on: compiledMethod for: methodNode by: aMessageNode)]
		ifFalse: [ self checkMessageSentIn: aMessageNode isImplementedIn: receiverLiveType ].
	
	self visitMessageNodeArguments:aMessageNode.! !

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/15/2024 18:37:46'!
visitMessageNodeArguments: aMessageNode
	
	aMessageNode argumentsInEvaluationOrder do: [:argumentBlock |  
		contextApplier updateFor: aMessageNode visiting: argumentBlock 	ifUpdated: 	[:newContext | 
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

!ContextAppliersMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/22/2024 20:29:09'!
visitBlockNode: aBlockNode
	
	(aBlockNode = blockNode) ifTrue:[ | liveTypes |
		
		liveTypes:= contextApplier liveTypesFor: parseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons .
		liveTypes classTypesDo: [:aClass | types add:aClass].
		types:= types asArray .
	].
	super visitBlockNode: aBlockNode.
	
	! !

!ContextAppliersMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 4/29/2024 17:54:05'!
visitMessageNode: aMessageNode
	aMessageNode receiver accept:self.
	aMessageNode arguments  size > 0 ifTrue:[
		self visitMessageNodeArguments:aMessageNode.
	].
	! !

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

!ContextAppliersMethodVisitor methodsFor: 'initialization' stamp: 'JFGO 4/22/2024 20:12:02'!
initializeFor: aCompiledMethod with: aMethodNode on: aParseNode within: aBlockNode addingIncompleteTypeInfoTo: aIncompleteTypeInfoReasonsList
	compiledMethod := aCompiledMethod.
	parseNode := aParseNode.
	blockNode := aBlockNode.
	methodNode := aMethodNode.
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

!ContextAppliersMethodVisitor class methodsFor: 'instance creation' stamp: 'JFGO 4/22/2024 20:11:47'!
for: aCompiledMethod with: aMethodNode on: aVariableName within: aBlockNode addingIncompleteTypeInfoTo: incompleteTypeInfoReasons   
	^self new initializeFor: aCompiledMethod with: aMethodNode on: aVariableName within: aBlockNode addingIncompleteTypeInfoTo: incompleteTypeInfoReasons ! !

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

!TypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 4/15/2024 19:50:06'!
test17TypeCastManyVariablesNestedRejectionsRejectsEachLevelCastedTypeForEachVariable

	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfTrueIfFalseNestedManyVariables typeCheckAndAssert: [:typeChecker :methodChecked | 
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

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test01TypeCastIfTrueCorrectlyAppliesCastedType
	| blockToTestString |
	
	blockToTestString:= '[ v1 factorial. ]'.
	
	self withMessageName: #typeCastIfTrue 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types first equals: SmallInteger.
	].

	! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test02TypeCastIfFalseReturnsAllTypesButRejected
	| blockToTestString |
	
	blockToTestString:= '[ v1 isEmpty. ]'.
	
	self withMessageName: #typeCastIfFalse 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].


	! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test03TypeCastIfFalseNestedReturnsAllTypesButRejected

	| blockToTestString |

	blockToTestString:= '[ v1 not. ]'.
	
	self withMessageName: #typeCastIfFalseNested 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: True.
	].! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test04TypeCastIfFalseIfTrueReturnsTypesCorrectlyForEachBlock

	| blockToTestString |

	blockToTestString:= '[ v1 isEmpty. ]'.
	
	self withMessageName: #typeCastIfFalseIfTrue 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].
! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test05TypeCastIfTrueIfFalseReturnsAllTypesWhenVariableIsNotAffectedByCondition

	| blockToTestString selector |
	
	selector:=#typeCastIfTrueIfFalseManyVariables .
	
	"ifFalse branch"
	blockToTestString:= '[ v2 year. ]'.
	self withMessageName: selector
	calculateTypesOfNode: 'v2' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: Date.
		self assert: types includes: SmallInteger.
	].
	
	"ifTrue branch"
	blockToTestString:= '[ v2 month. ]'.
	self withMessageName: selector
	calculateTypesOfNode: 'v2' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: Date.
		self assert: types includes: SmallInteger.
	].
! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test06TypeCastIfTrueIfFalseOverDifferentNodesGivesRightContextToEach

	| blockToTestString selector |

	blockToTestString:= '[
	v2 month.
	v1 asFloat. ]'.

	selector:=#typeCastIfTrueIfFalseNestedManyVariables.
	
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert: types size equals: 1.
		self assert: types includes: SmallInteger.
	].
	self withMessageName: selector
	calculateTypesOfNode: 'v2' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert: types size equals: 1.	
		self assert: types includes: Date.
	].

! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/22/2024 19:28:26'!
test07TypeCastAppliesCorrectlyToParseNodeClass

	| blockToTestString |

	blockToTestString:= '[ v1 class. ]'.
	
	self withMessageName: #typeCastForParseNodeClass 
	calculateTypesOfNode: '{v1 class}' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Date class.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/24/2024 18:50:37'!
test08TypeCastAppliesCorrectlyToMessageNodeSelector

	| blockToTestString |

	blockToTestString:= '[ v1 isEmpty. ]'.
	
	self withMessageName: #typeCastIfFalse 
	calculateTypesOfNode: '{v1 isEmpty}' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: False.
		self assert: types includes: True.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/24/2024 19:18:49'!
test09TypeCastAppliesCorrectlyWhenItBeginsWithClassInCondition

	| blockToTestString |

	blockToTestString:= '[ instance1 isEmpty. ]'.
	
	self withMessageName: #typeCastLiteralFirstThenObject 
	calculateTypesOfNode: 'instance1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: String.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/25/2024 19:33:06'!
test10TypeCastDistinctIfTrueReturnsAllTypesButRejected

	| blockToTestString |
	
	blockToTestString:= '[ v1 isEmpty. ]'.
	
	self withMessageName: #typeCastDistinctIfTrue
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/25/2024 20:02:06'!
test11TypeCastDistinctAppliesCorrectlyWhenItBeginsWithClassInCondition

	| blockToTestString |

	blockToTestString:= '[ instance1 isEmpty. ]'.
	
	self withMessageName: #typeCastDistinctLiteralFirstThenObject 
	calculateTypesOfNode: 'instance1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: OrderedCollection.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/25/2024 20:01:11'!
test12TypeCastNegatedIfFalseCorrectlyAppliesCastedType

	| blockToTestString |
	
	blockToTestString:= '[ v1 factorial. ]'.
	
	self withMessageName: #typeCastNegatedIfFalse
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types first equals: SmallInteger.
	].

! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/25/2024 20:06:29'!
test13TypeCastDistinctAppliesCorrectlyWhenItBeginsWithClassInCondition

	| blockToTestString |

	blockToTestString:= '[ instance1 isEmpty. ]'.
	
	self withMessageName: #typeCastNegatedLiteralFirstThenObject 
	calculateTypesOfNode: 'instance1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: OrderedCollection.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/25/2024 20:11:09'!
test14TypeCastDistinctNegatedIfTrueReturnsCastedType

	| blockToTestString |
	
	blockToTestString:= '[ v1 factorial. ]'.
	
	self withMessageName: #typeCastDistinctNegatedIfTrue
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/25/2024 20:13:24'!
test15TypeCastDistinctNegatedAppliesCorrectlyWhenItBeginsWithClassInCondition

	| blockToTestString |

	blockToTestString:= '[ instance1 isEmpty. ]'.
	
	self withMessageName: #typeCastDistinctNegatedLiteralFirstThenObject 
	calculateTypesOfNode: 'instance1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: String.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 4/29/2024 18:07:30'!
test16TypeCastManyNegationsCastCorrectly

	| blockToTestString |

	blockToTestString:= '[ v1 isEmpty. ]'.
	
	self withMessageName: #typeCastManyNegations 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/11/2024 14:53:11'!
test16_1TypeCastObjectClassNameCastCorrectly

	| selector |
	selector := #typeCastObjectClassNameEqualsClassName .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/11/2024 15:11:39'!
test16_2TypeCastObjectClassSymbolCastCorrectly

	| selector |
	selector := #typeCastObjectClassNameEqualsClassSymbol .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/24/2024 17:16:09'!
test16_3TypeCastObjectClassToUnexistentSymbolDontApplyContext
	
	| assertionBlock selector |
	"Ensure that class symbol don't exist already as precondition"
	
	self assert: (Smalltalk classNamed: #DONTCREATETHISCLASSPLEASE) equals: nil.
	
	assertionBlock:= [:types | 
		self assert:types size equals: 3.
		self assert: types includes: SmallInteger.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].
	
	selector := #typeCastObjectClassNameEqualsUnexistentClassSymbol .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: assertionBlock.

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: assertionBlock.


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/11/2024 15:13:42'!
test16_4TypeCastClassNameToObjectClassNameCastCorrectly

	| selector |
	selector := #typeCastClassNameEqualsObjectClassName .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/11/2024 15:14:01'!
test16_5TypeCastClassSymbolToObjectClassNameCastCorrectly

	| selector |
	selector := #typeCastClassSymbolEqualsObjectClassName .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/11/2024 15:14:22'!
test16_6TypeCastClassNameDistinctToObjectClassNameCastCorrectly

	| selector |
	selector := #typeCastClassNameDistinctObjectClassName .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'equals class type context' stamp: 'JFGO 5/11/2024 15:14:46'!
test16_7TypeCastObjectClassDistinctSymbolCastCorrectly

	| selector |
	selector := #typeCastObjectClassNameDistinctClassSymbol .
	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]' 
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].

	self withMessageName: selector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 4/22/2024 19:34:52'!
blockNodeWithSourceCode: blockNodeCodeString on: aMethodNode

	|  nodeEncoder sourceRanges blockToTest  |

	blockToTest:=nil.
	
	nodeEncoder := aMethodNode encoder.
	sourceRanges := nodeEncoder completeSourceRangesBasedOn: aMethodNode sourceText.
	sourceRanges associationsDo: [ :nodeAtRange |
			(nodeAtRange key class = BlockNode and: [nodeAtRange key printSourceCode = blockNodeCodeString])ifTrue: [
					blockToTest:= nodeAtRange key.
				]
			].

	blockToTest notNil ifTrue: [^blockToTest].
	self failWith: 'Block node not found'.! !

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 4/22/2024 19:35:50'!
variableNodeNamed: aVariableName on: aMethodNode

	|  nodeEncoder sourceRanges variableNode  |

	variableNode:=nil.
	
	nodeEncoder := aMethodNode encoder.
	sourceRanges := nodeEncoder completeSourceRangesBasedOn: aMethodNode sourceText.
	sourceRanges associationsDo: [ :nodeAtRange |
			nodeAtRange key name = aVariableName ifTrue: [
					variableNode:= nodeAtRange key.
				]
			].

	variableNode notNil ifTrue: [^variableNode].
	self failWith: 'Variable node not found'.! !

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 4/22/2024 20:17:25'!
withMessageName: aMethodSelector calculateTypesOfNode: aVariableNodeName withinBlockWithCode: aStringBlockNode asserting: anAssertionBlock
	| compiledMethod blockToTest types variableNode methodNode |

	compiledMethod := self withPerformingCompiledMethodName: aMethodSelector.
	methodNode := compiledMethod methodNode.
	
	blockToTest := self blockNodeWithSourceCode: aStringBlockNode on: methodNode.
	variableNode := self variableNodeNamed: aVariableNodeName on: methodNode .

	types := compiledMethod typesOfVariableNamed: variableNode withNode: methodNode withinBlockNode: blockToTest addingIncompleteTypeInfoTo: OrderedCollection new.

	anAssertionBlock value: types.! !

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 4/22/2024 19:39:48'!
withPerformingCompiledMethodName: aMethodSelector

	| compiledMethod |

	compiledMethod := TypesWithContextAppliersTestMethods >> aMethodSelector.
	TypesWithContextAppliersTestMethods new perform: aMethodSelector.
	^compiledMethod.! !

!TypesWithContextAppliersTest methodsFor: 'equals to literal type context' stamp: 'JFGO 5/7/2024 17:21:07'!
test19ObjectEqualsToLiteralIfFalseReturnsPreviousTypes
	| blockToTestString |
	
	blockToTestString:= '[ v1 isEmpty. ]'.
	
	self withMessageName: #typeCastEqualsToLiteralIfFalse 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 3.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
		self assert: types includes: SmallInteger.
	].


	! !

!TypesWithContextAppliersTest methodsFor: 'equals to literal type context' stamp: 'JFGO 5/22/2024 18:50:32'!
test20ObjectEqualsToLiteralIfTrueReturnsLiteralType
	
	self withMessageName: #typeCastEqualsToLiteralIfTrue 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 + 10. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


	! !

!TypesWithContextAppliersTest methodsFor: 'equals to literal type context' stamp: 'JFGO 5/11/2024 14:52:01'!
test21ObjectDistinctToLiteralCastCorrectlyBothBranches
	
	| messageSelector |
	messageSelector:=#typeCastDistinctToLiteral .
	"ifFalse branch"	
	self withMessageName: messageSelector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 + 10. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].
	
	"ifTrueBranch"
	self withMessageName: messageSelector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 + 5. ]' 
	asserting: [:types | 
		self assert:types size equals: 3.
		self assert: types includes: SmallInteger.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].


	! !

!TypesWithContextAppliersTest methodsFor: 'equals to literal type context' stamp: 'JFGO 5/7/2024 17:23:26'!
test22LiteralEqualsToObjectIfTrueReturnsLiteralType
	| blockToTestString |
	
	blockToTestString:= '[ v1 + 10. ]'.
	
	self withMessageName: #typeCastLiteralEqualsToObjectIfTrue 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


	! !

!TypesWithContextAppliersTest methodsFor: 'equals to literal type context' stamp: 'JFGO 5/11/2024 14:52:30'!
test23LiteralDistinctToObjectCastCorrectlyBothBranches
	
	| messageSelector |
	messageSelector :=#typeCastLiteralDistinctToObject.
	"ifFalse branch"	
	self withMessageName: messageSelector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 + 10. ]' 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].
	
	"ifTrueBranch"
	self withMessageName: messageSelector
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 + 5. ]' 
	asserting: [:types | 
		self assert:types size equals: 3.
		self assert: types includes: SmallInteger.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].


	! !

!TypesWithContextAppliersTest methodsFor: 'isKindOf context' stamp: 'JFGO 5/14/2024 09:27:43'!
test25IsKindOfForChildTypesFixesType
	
	
	self withMessageName: #isKindOfCastForChildType
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 first. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: String.
	].

	self withMessageName: #isKindOfCastForChildType
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: OrderedCollection
	].
	


	! !

!TypesWithContextAppliersTest methodsFor: 'isKindOf context' stamp: 'JFGO 5/14/2024 10:16:08'!
test26IsKindOfCastingSupertypeKeepsSubtypes
	
	
	self withMessageName: #isKindOfCastForSupertype
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isSequenceable. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: Array.
		self assert: types includes: OrderedCollection.
	].

	! !

!TypesWithContextAppliersTest methodsFor: 'isKindOf context' stamp: 'JFGO 5/15/2024 17:57:47'!
test27IsKindOfRejectingSupertypeExcludeAllSubtypes
	
	
	self withMessageName: #isKindOfRejectForSupertype
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].

	! !

!TypesWithContextAppliersTest methodsFor: 'general cases' stamp: 'JFGO 5/1/2024 18:40:27'!
test17BranchesAsMessageReceiverAreCorrectlyCasted

	| blockToTestString |

	blockToTestString:= '[
	v1 factorial.
	self. ]'.
	
	self withMessageName: #typeCastWithBranchAsMessageReceiver 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'general cases' stamp: 'JFGO 5/1/2024 18:40:33'!
test18BranchesAsMessageArgumentAreCorrectlyCasted

	| blockToTestString |

	blockToTestString:= '[ v1 factorial. ]'.
	
	self withMessageName: #typeCastWithBranchAsMessageArgument 
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: blockToTestString 
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].


! !

!TypesWithContextAppliersTest methodsFor: 'general cases' stamp: 'JFGO 5/11/2024 16:08:09'!
test24WhenConditionIsNotCastingPreservePreviousTypes
	
	
	self withMessageName: #branchWithNoEfectOverVariables
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: SmallInteger.
		self assert: types includes: Date.
	].
	


	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 18:24:19'!
test32IsNilMessageIfTrueCastToNil
	
	self withMessageName: #isNilMessageCast
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 _ Array new. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: UndefinedObject.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/22/2024 19:29:36'!
test33ObjectEqualsToNilCastToNil
	
	
	self withMessageName: #typeCastEqualsNil
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 subclasses. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: UndefinedObject.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/22/2024 19:26:44'!
test34ObjectEqualsToNilIfFalseRejectsNilType
	
	
	self withMessageName: #typeCastEqualsNilIfFalse
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Array.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 17:26:44'!
test35NilEqualsToObjectCastToNil
	
	
	self withMessageName: #typeCastNilEqualsObject
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 subclasses. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: UndefinedObject.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 17:43:04'!
test36ObjectDistinctToNilCastOnFalseRejectsOnTrue
	
	
	self withMessageName: #typeCastDistinctNil
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 subclasses. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: UndefinedObject.
	].

	self withMessageName: #typeCastDistinctNil
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: Array.
		self assert: types includes: OrderedCollection.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 18:08:38'!
test37IsNilMessageIfFalseRejectsNil
	
	self withMessageName: #isNilMessageReject
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Array.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 18:16:39'!
test38notNilMessageIfTrueRejectsNil
	
	self withMessageName: #notNilMessageCast
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Array.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 18:24:07'!
test39NotNilMessageIfFalseCastToNil
	
	
	self withMessageName: #notNilMessageReject
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 _ Array new. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: UndefinedObject.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/27/2024 19:16:03'!
test40IfNilMessageCastToNil
	
	self withMessageName: #ifNilMessageCast
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 _ Array new. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: UndefinedObject.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'equals nil type context' stamp: 'JFGO 5/28/2024 17:20:51'!
test41IfNotNilKeepsPreviousTypes
	
	self withMessageName: #ifNotNilMessageRejects
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Array.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'isType message context' stamp: 'JFGO 5/28/2024 18:49:23'!
test28IsIsTypeMessageCastType
	
	
	self withMessageName: #isIsMessageCast
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Integer.
	].

	! !

!TypesWithContextAppliersTest methodsFor: 'isType message context' stamp: 'JFGO 5/28/2024 18:48:17'!
test28_1IsIsTypeMessageReturnsOriginalTypesWhenSubclassesOfCastType
	
	
	self withMessageName: #isIsMessageCastWithSubclasses
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: Array.
		self assert: types includes: OrderedCollection.
	].

	! !

!TypesWithContextAppliersTest methodsFor: 'isType message context' stamp: 'JFGO 5/21/2024 19:03:26'!
test29IsIsTypeMessageWhenRejectingTypeShouldFilter
	
	
	self withMessageName: #isIsMessageReject
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].
! !

!TypesWithContextAppliersTest methodsFor: 'isType message context' stamp: 'JFGO 5/21/2024 19:47:28'!
test30IsIsTypeMessageOnDIfferentVariableShouldntFilter
	
	
	self withMessageName: #isIsMessageOnADifferentVariable
	calculateTypesOfNode: 'instance1' 
	withinBlockWithCode: '[ instance1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].
! !

!TypesWithContextAppliersTest methodsFor: 'isType message context' stamp: 'JFGO 5/30/2024 17:16:45'!
test31IsIsTypeMessageOnDIfferentTypesShouldRemoveAll
	
	"ifTrue Branch"
	self withMessageName: #isIsMessageDifferentTypes
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: Integer.
		
	].
	
	"ifFalse Branch"
	self withMessageName: #isIsMessageDifferentTypes
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].! !

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

!TypeContextAppliers methodsFor: 'LiveTyping' stamp: 'JFGO 4/15/2024 20:01:10'!
receiverLiveTypesFor: aMessageNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	^self liveTypesFor: aMessageNode receiverOrCascadeReceiver in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo .! !

!TypeContextAppliers methodsFor: 'updating / restoration' stamp: 'JFGO 4/12/2024 16:48:21'!
previous
	self subclassResponsibility .! !

!TypeContextAppliers methodsFor: 'updating / restoration' stamp: 'JFGO 5/28/2024 17:34:44'!
updateFor: aMessageNode visiting: aBlockNode ifUpdated: aBlockWhenContextUpdated ifNotUpdated: aBlockWhenContextNotUpdated
	
	| newContext |
	
	aMessageNode isIfWithMessageNodeAsCondition ifTrue: [ 
		newContext := self buildContextForIfWithMessageNodeAsCondition: aMessageNode over: aBlockNode.
		aBlockWhenContextUpdated value: newContext.
		^self.
				
	].
	aMessageNode isIfNil ifTrue: [ 
		newContext := self buildContextForIfNilMessagesWith: aMessageNode over: aBlockNode.
		aBlockWhenContextUpdated value: newContext.
		^self.
				
	].
	aBlockWhenContextNotUpdated value.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/28/2024 17:34:03'!
buildContextForIfNilMessagesWith: aMessageNode over: aBlockNode
	
	^EqualsClassTypeContextApplier 
		to: UndefinedObject
		on: aMessageNode receiver
		shouldFilterType: false
		withPreviousContext: self.


! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/1/2024 18:54:14'!
buildContextForIfWithMessageNodeAsCondition: aMessageNode over: aBlockNode

	| blockIsRejectingCondition condition |
	
	blockIsRejectingCondition := self is: aBlockNode asRejectingArgumentIn: aMessageNode .
	
	condition := aMessageNode receiverOrCascadeReceiver.
	
	^self contextFor: condition withBlockRejecting: blockIsRejectingCondition .


! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/11/2024 14:48:42'!
contextFor: condition whenComparingClassNameWithObjectClassNameWithBlockRejecting: blockIsOnRejectingCondition

	| objectToCast typeToApplyOnCast shouldFilterType |
	shouldFilterType:= blockIsOnRejectingCondition eqv: condition isEqualOrIdentical.
	condition isObjectClassNameComparedToClassName ifTrue: [
		typeToApplyOnCast:= condition arguments first receiver key value.
		objectToCast:= condition receiver receiver receiver
	] ifFalse:[
		typeToApplyOnCast:= condition receiver receiver key value.
		objectToCast:= condition arguments first receiver receiver.
	].
	
	^EqualsClassTypeContextApplier 
		to: typeToApplyOnCast
		on: objectToCast
		shouldFilterType: shouldFilterType
		withPreviousContext: self.
		
		
		! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/11/2024 14:51:07'!
contextFor: condition whenComparingClassSymbolWithObjectClassNameWithBlockRejecting: blockIsOnRejectingCondition

	| objectToCast typeToApplyOnCast shouldFilterType |
	shouldFilterType:= blockIsOnRejectingCondition eqv: condition isEqualOrIdentical.
	condition isObjectClassNameComparedToClassSymbol ifTrue: [
		typeToApplyOnCast:= (Smalltalk classNamed: condition arguments first key).
		objectToCast:= condition receiver receiver receiver.
	] ifFalse:[
		typeToApplyOnCast:= (Smalltalk classNamed: condition receiver key value).
		objectToCast:= condition arguments first receiver receiver.
	].
	
	^EqualsClassTypeContextApplier 
		to: typeToApplyOnCast
		on: objectToCast
		shouldFilterType: shouldFilterType
		withPreviousContext: self.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/11/2024 13:42:02'!
contextFor: condition whenComparingClassWithObjectClassWithBlockRejecting: blockIsOnRejectingCondition
	
	| shouldFilterType typeToApplyOnCast objectToCast |
	shouldFilterType:= blockIsOnRejectingCondition eqv: condition isEqualOrIdentical.
	
	condition isObjectClassComparedToClass ifTrue: [
		typeToApplyOnCast:= condition arguments first key value.
		objectToCast:= condition receiver receiver.
	] ifFalse:[
		typeToApplyOnCast:= condition receiver key value.
		objectToCast:= condition arguments first receiver.
	].
	
		
	^EqualsClassTypeContextApplier 
		to: typeToApplyOnCast
		on: objectToCast
		shouldFilterType: shouldFilterType
		withPreviousContext: self.
	
	

! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/11/2024 14:14:00'!
contextFor: condition whenComparingLiteralWithObjectWithBlockRejecting: blockIsOnRejectingCondition
	
	| shouldFilterType typeToApplyOnCast objectToCast |
	shouldFilterType:= blockIsOnRejectingCondition eqv: condition isEqualOrIdentical.
	
	condition isObjectComparedToLiteral ifTrue: [
		typeToApplyOnCast:= condition arguments first literalValue class.
		objectToCast:= condition receiver.
	] ifFalse:[
		typeToApplyOnCast:= condition receiver literalValue class.
		objectToCast:= condition arguments first.
	].
	
		
	^EqualsToLiteralContextApplier 
		to: typeToApplyOnCast
		on: objectToCast
		shouldFilterType: shouldFilterType
		withPreviousContext: self.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/29/2024 18:05:54'!
contextFor: condition whenComparingObjectToNilWithBlockRejecting: blockIsOnRejectingCondition 
		
	| shouldFilterType objectToCast |
	
	condition isNotNil ifTrue:[
		^EqualsClassTypeContextApplier 
			to: UndefinedObject
			on: condition receiver
			shouldFilterType: blockIsOnRejectingCondition not
			withPreviousContext: self.
	].
	
	shouldFilterType:= blockIsOnRejectingCondition eqv: condition isEqualOrIdentical.
	condition isFirstArgumentNil ifTrue: [
		objectToCast:= condition receiver.
	] ifFalse:[
		objectToCast:= condition arguments first.
	].
	
	^EqualsClassTypeContextApplier 
		to: UndefinedObject
		on: objectToCast
		shouldFilterType: shouldFilterType
		withPreviousContext: self.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/21/2024 20:32:47'!
contextFor: condition whenSendingIsTypeMessageWithBlockRejecting: blockIsOnRejectingCondition

	^IsTypeMessageContextApplier 
		with: condition selectorSymbol 
		on: condition receiver 
		isRejecting: blockIsOnRejectingCondition 
		withPreviousContext: self.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/28/2024 19:47:00'!
contextFor: condition withBlockRejecting: blockIsOnRejectingCondition
	
	condition isNegated ifTrue:[
		^self contextFor: condition receiver withBlockRejecting: blockIsOnRejectingCondition not.
	].
	
	condition isComparingEqualityForClassWithObjectClass ifTrue:[
		^self contextFor: condition whenComparingClassWithObjectClassWithBlockRejecting: blockIsOnRejectingCondition.
	].
	
	condition isComparingEqualityForClassNameWithObjectClassName ifTrue:[
		^self contextFor: condition whenComparingClassNameWithObjectClassNameWithBlockRejecting: blockIsOnRejectingCondition .
	].
	
	condition isComparingEqualityForClassSymbolWithObjectClassName ifTrue:[
		^self contextFor: condition whenComparingClassSymbolWithObjectClassNameWithBlockRejecting: blockIsOnRejectingCondition .
	].
	
	condition isComparingEqualityForLiteralWithObject ifTrue:[
		^self contextFor: condition whenComparingLiteralWithObjectWithBlockRejecting: blockIsOnRejectingCondition.
	].

	condition isIsKindOfWithLiteralBehavior ifTrue: [
		^IsKindOfTypeContextApplier 
			to: condition arguments first key value
			on: condition receiver
			shouldFilterType: blockIsOnRejectingCondition
			withPreviousContext: self.
	].
	
	condition isComparingToNil ifTrue:[
		^self contextFor: condition whenComparingObjectToNilWithBlockRejecting: blockIsOnRejectingCondition .
	].
	
	condition isIsTypeMessageWithBooleanReturning ifTrue:[
		^self contextFor: condition whenSendingIsTypeMessageWithBlockRejecting: blockIsOnRejectingCondition.
	].

	
	^GeneralContextApplier new.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/1/2024 18:38:34'!
is: aBlockNode asRejectingArgumentIn: aMessageNode

	| blockIsRejectingCondition |
	blockIsRejectingCondition := aMessageNode selectorSymbol = #ifFalse: and: [aBlockNode = aMessageNode arguments second].
	blockIsRejectingCondition := blockIsRejectingCondition or: [aMessageNode selectorSymbol = #ifTrue:ifFalse: and: [aBlockNode = aMessageNode arguments second]].
	^blockIsRejectingCondition .
	
	


! !

!TypeContextAppliers methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:49:55'!
shouldApplyTo:aParseNode
	self subclassResponsibility .! !

!CastingRejectingContextAppliers methodsFor: 'checking' stamp: 'JFGO 5/30/2024 18:04:57'!
previous
	^previousContext.! !

!CastingRejectingContextAppliers methodsFor: 'checking' stamp: 'JFGO 5/30/2024 18:04:20'!
shouldApplyTo:aParseNode
	self subclassResponsibility .! !

!CastingRejectingContextAppliers methodsFor: 'checking' stamp: 'JFGO 5/30/2024 17:58:32'!
shouldFilter
	^typeShouldFilter .! !

!CastingRejectingContextAppliers methodsFor: 'instance creation' stamp: 'JFGO 5/30/2024 18:00:55'!
initializeToApply: aType on: anObjectToApply shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier
	type := aType.
	objectToApply := anObjectToApply.
	typeShouldFilter:= shouldFilter.
	previousContext := anotherContextApplier .
	! !

!CastingRejectingContextAppliers methodsFor: 'LiveTyping' stamp: 'JFGO 5/30/2024 17:57:24'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	(self shouldApplyTo:aParseNode) ifTrue:[
		self shouldFilter 
			ifTrue: [^self liveTypesRejectingObjectFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo ]
			ifFalse: [  ^self liveTypesCastingObjectFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo ].
	] ifFalse: [
		^previousContext liveTypesFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	]

! !

!CastingRejectingContextAppliers methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 18:06:43'!
liveTypesCastingObjectFor: aParseNode in:  compiledMethoda addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	self subclassResponsibility .
	
! !

!CastingRejectingContextAppliers methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 18:07:00'!
liveTypesRejectingObjectFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	self subclassResponsibility .
	
! !

!EqualsClassTypeContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 4/15/2024 19:12:03'!
liveTypesCastingObjectFor: aParseNode in:  compiledMethoda addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	^FixedType for: type.
	
! !

!EqualsClassTypeContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/22/2024 19:29:24'!
liveTypesRejectingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	


	| originalTypes filteredLiveTypes liveType |
	originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	(self isParseNodeClassMessageSend: aParseNode) ifTrue: [liveType := FixedType for: type class.] ifFalse:[liveType := FixedType for: type.].
	
	filteredLiveTypes := originalTypes asArray reject: [:aLiveType | aLiveType typeName = liveType typeName].
	^RawToLiveTypesAdapter new adapt: filteredLiveTypes .
	
! !

!EqualsClassTypeContextApplier methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:27:18'!
isParseNodeClassMessageSend: aParseNode
	^aParseNode isMessageNode and: [ aParseNode isClassMessageSend ] and: [self shouldApplyTo: aParseNode receiver] .

! !

!EqualsClassTypeContextApplier methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:29:38'!
shouldApplyTo:aParseNode
		
	^(aParseNode isVariableNode and: [(objectToApply = aParseNode)]) 
	or: [	self isParseNodeClassMessageSend: aParseNode].

! !

!EqualsClassTypeContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 4/25/2024 19:26:28'!
to: aType on: anObjectToCast shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier 
	^self new initializeToApply: aType on: anObjectToCast shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier.! !

!IsKindOfTypeContextApplier methodsFor: 'instance creation' stamp: 'JFGO 5/15/2024 18:32:51'!
initializeToApply: aType on: anObjectToApply shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier
	super initializeToApply: aType on: anObjectToApply shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier.
	subclassesForCastingType := type withAllSubclasses. 
	newTypes := OrderedCollection new.! !

!IsKindOfTypeContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/15/2024 18:33:24'!
liveTypesCastingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	

	| originalTypes |
	
	originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	originalTypes classTypesDo: [:anOriginalClassType | (subclassesForCastingType includes: anOriginalClassType) ifTrue:[ newTypes add: anOriginalClassType]].
	
	^RawToLiveTypesAdapter new adapt: newTypes.
	
! !

!IsKindOfTypeContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/15/2024 18:33:35'!
liveTypesRejectingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	| originalTypes |
	
	originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	originalTypes classTypesDo: [:anOriginalClassType | (subclassesForCastingType includes: anOriginalClassType) ifFalse:[ newTypes add: anOriginalClassType]].
	^RawToLiveTypesAdapter new adapt: newTypes.
	
! !

!IsTypeMessageContextApplier methodsFor: 'initialization' stamp: 'JFGO 5/21/2024 19:33:14'!
initializeWith: aMessageSelector on: anObjectToCast isRejecting: shouldFilter withPreviousContext: anotherContextApplier
	messageSelector := aMessageSelector .
	previousContext := anotherContextApplier .
	typeShouldFilter := shouldFilter .
	objectToApply:= anObjectToCast.! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/21/2024 20:03:18'!
filterLiveTypesFrom: aTypeList
	| filteredLiveTypes |
	filteredLiveTypes := OrderedCollection new.
	aTypeList liveTypesDo: [ :aLiveType | 
		(aLiveType liveClass lookupSelector: messageSelector ) 
			ifNotNil: [ :method |  (self shouldAddTypeFor: method) ifTrue: [filteredLiveTypes add: aLiveType]].
		 ].
	^RawToLiveTypesAdapter new adapt: filteredLiveTypes .! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 17:20:37'!
implementorsReturningTrue
	| implementors |
	implementors := Smalltalk allImplementorsOf: messageSelector .
	implementors := implementors select: [:aMethodReference | aMethodReference compiledMethod isReturnSpecialTrue ]. 
	implementors := implementors collect: [:aMethodReference | aMethodReference actualClass].
	
	^implementors.
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 17:27:55'!
isType: aType subclassOfAny: implementors
	^implementors anySatisfy:[:anImplementorType | anImplementorType withAllSubclasses anySatisfy: [:aSubclass | aSubclass = aType ]. ].
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 17:32:39'!
liveTypesCastingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	| implementors subclassesTypes originalTypes |
	
	implementors := self implementorsReturningTrue.
	originalTypes := self originalRawTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	
	subclassesTypes := originalTypes select: [:aType | self isType: aType subclassOfAny: implementors.].
	subclassesTypes isEmpty ifTrue:[
		^RawToLiveTypesAdapter new adapt: implementors .
	] ifFalse:[
		^RawToLiveTypesAdapter new adapt: subclassesTypes .
	].
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 17:16:01'!
liveTypesRejectingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	| originalTypes filteredLiveTypes |
	
	originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	filteredLiveTypes := OrderedCollection new.
	originalTypes liveTypesDo: [ :aLiveType | 
		(aLiveType liveClass lookupSelector: messageSelector ) 
			ifNotNil: [ :method |  method isReturnSpecialFalse ifTrue: [filteredLiveTypes add: aLiveType]].
		 ].
	^RawToLiveTypesAdapter new adapt: filteredLiveTypes .! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 17:22:44'!
originalRawTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	| originalRawTypes originalTypes |
	originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	originalRawTypes := OrderedCollection new.
	originalTypes liveTypesDo: [:aLiveType | originalRawTypes add: aLiveType liveClass].
	^originalRawTypes.
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/21/2024 19:16:12'!
shouldAddTypeFor: aCompiledMethod
	| methodReturnFalseAndRejecting methodReturnTrueAndCasting |
	methodReturnFalseAndRejecting := typeShouldFilter and: [ aCompiledMethod isReturnSpecialFalse ].
	methodReturnTrueAndCasting := typeShouldFilter not and: [ aCompiledMethod isReturnSpecialTrue ].
	
	^methodReturnFalseAndRejecting or: [methodReturnTrueAndCasting ].! !

!IsTypeMessageContextApplier methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:32:42'!
shouldApplyTo:aParseNode
		
	^(aParseNode isVariableNode and: [(objectToApply = aParseNode)]) ! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 5/28/2024 18:16:50'!
JFGO2liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	(self shouldApplyTo: aParseNode) ifTrue: [ | implementors |
		implementors := Smalltalk allImplementorsOf: messageSelector .
		implementors := implementors select: [:aMethodReference | aMethodReference compiledMethod isReturnSpecialTrue ]. 
		implementors := implementors collect: [:aMethodReference | aMethodReference actualClass].
		^RawToLiveTypesAdapter new adapt: implementors .
	]
	ifFalse:[^previousContext liveTypesFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.].! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 5/28/2024 18:04:39'!
JFGOliveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	(self shouldApplyTo: aParseNode) ifTrue: [ | originalTypes |
		originalTypes := previousContext liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		^self filterLiveTypesFrom: originalTypes .
	]
	ifFalse:[^previousContext liveTypesFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.].! !

!IsTypeMessageContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 5/20/2024 18:32:28'!
with: aMessageSelector on: anObjectToCast isRejecting: shouldFilter withPreviousContext: anotherContextApplier 
	
	^self new initializeWith: aMessageSelector on: anObjectToCast isRejecting: shouldFilter withPreviousContext: anotherContextApplier .! !

!EqualsToLiteralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 5/1/2024 19:33:15'!
isEquals
	^self shouldFilter not.
! !

!EqualsToLiteralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 5/30/2024 17:44:20'!
liveTypesCastingObjectFor: aParseNode in:  compiledMethoda addingIncompleteTypeInfoTo: incompleteTypeInfo

	^FixedType for: type.! !

!EqualsToLiteralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 5/14/2024 09:57:28'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	((self shouldApplyTo:aParseNode) and: [self isEquals]) ifTrue:[
		^self liveTypesCastingObjectFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo 
	] ifFalse: [
		^previousContext liveTypesFor: aParseNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	]

! !

!EqualsToLiteralContextApplier methodsFor: 'checking' stamp: 'JFGO 5/30/2024 17:44:56'!
previous
	^previousContext.! !

!EqualsToLiteralContextApplier methodsFor: 'checking' stamp: 'JFGO 5/30/2024 17:46:54'!
shouldApplyTo:aParseNode
		
	^(aParseNode isVariableNode and: [(objectToApply = aParseNode)]) 

! !

!EqualsToLiteralContextApplier methodsFor: 'checking' stamp: 'JFGO 5/30/2024 17:47:03'!
shouldFilter
	^typeShouldFilter .! !

!EqualsToLiteralContextApplier methodsFor: 'instance creation' stamp: 'JFGO 5/30/2024 17:43:39'!
initializeToApply: aType on: anObjectToApply shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier
	type := aType.
	objectToApply := anObjectToApply.
	typeShouldFilter:= shouldFilter.
	previousContext := anotherContextApplier .
	! !

!EqualsToLiteralContextApplier class methodsFor: 'as yet unclassified' stamp: 'JFGO 5/30/2024 17:43:22'!
to: aType on: anObjectToCast shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier 
	^self new initializeToApply: aType on: anObjectToCast shouldFilterType: shouldFilter withPreviousContext: anotherContextApplier.! !

!GeneralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 4/15/2024 19:54:17'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	"TODO. El argumento castingWith se viene arrastrando de la version previa. Eliminar"
	^ aParseNode typesIn: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: NoTypeCastApplier new ! !

!GeneralContextApplier methodsFor: 'restoration' stamp: 'JFGO 2/25/2024 14:42:38'!
previous
	"There's no more general context than this. Nothing to restore"
	^self.! !

!GeneralContextApplier methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:50:10'!
shouldApplyTo:aParseNode
	^true.! !

!TypesWithContextAppliersTestMethods methodsFor: 'general' stamp: 'JFGO 5/11/2024 16:15:51'!
branchWithNoEfectOverVariables
	|v1|
	v1:= Date today.
	v1 := 14.
	v1 > 1 ifTrue: [v1 factorial.].! !

!TypesWithContextAppliersTestMethods methodsFor: 'general' stamp: 'JFGO 4/29/2024 17:32:24'!
someMessage! !

!TypesWithContextAppliersTestMethods methodsFor: 'general' stamp: 'JFGO 4/29/2024 17:54:38'!
someMessageWithArgs: anArg1! !

!TypesWithContextAppliersTestMethods methodsFor: 'general' stamp: 'JFGO 4/29/2024 17:55:34'!
typeCastWithBranchAsMessageArgument
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	self someMessageWithArgs: (v1 class = SmallInteger ifTrue: [v1 factorial.])! !

!TypesWithContextAppliersTestMethods methodsFor: 'general' stamp: 'JFGO 4/29/2024 17:45:22'!
typeCastWithBranchAsMessageReceiver
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	(v1 class = SmallInteger ifTrue: [v1 factorial.self.] ifFalse:[self.]) someMessage.! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/7/2024 17:51:26'!
typeCastClassName
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifTrue: [v1 factorial].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/11/2024 14:47:06'!
typeCastClassNameDistinctObjectClassName
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	SmallInteger name ~= v1 class name ifFalse: [v1 factorial] ifTrue:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/7/2024 19:40:54'!
typeCastClassNameEqualsObjectClassName
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	SmallInteger name = v1 class name ifTrue: [v1 factorial] ifFalse:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/7/2024 19:49:22'!
typeCastClassSymbolEqualsObjectClassName
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	#SmallInteger = v1 class name ifTrue: [v1 factorial] ifFalse:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/25/2024 19:17:22'!
typeCastDistinctIfTrue
	|v1|
	v1 := 5.
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 class ~~SmallInteger ifTrue:[v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/21/2024 19:47:01'!
typeCastDistinctLiteralFirstThenObject
	
	instance1:= OrderedCollection new.
	instance1 := 'test'.
	
	String ~= instance1 class ifTrue: [instance1 isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/25/2024 20:11:03'!
typeCastDistinctNegatedIfTrue
	|v1|
	v1 := 5.
	v1:= OrderedCollection new.
	v1 := 'true'.
	(v1 class ~~SmallInteger) not ifTrue:[v1 factorial.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/25/2024 20:13:14'!
typeCastDistinctNegatedLiteralFirstThenObject
	
	instance1:= OrderedCollection new.
	instance1 := 'true'.
	
	(String ~= instance1 class) not ifTrue: [instance1 isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/15/2024 20:30:32'!
typeCastForParseNodeClass

	|v1|
	v1 := Date today.
	v1 := 5.
	
	v1 class = SmallInteger ifFalse: [v1 class.].
			! !

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

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/13/2024 18:42:35'!
typeCastIfFalseIfTrueEquivalentToIssue
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	
	v1 class = String ifFalse: [v1 isEmpty] ifTrue: [v1 isEmpty] .! !

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

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/28/2024 17:50:15'!
typeCastIfTrue
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	
	v1 class = SmallInteger ifTrue: [v1 factorial].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 3/13/2024 17:21:29'!
typeCastIfTrueIfFalse
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class = SmallInteger ifTrue: [v1 factorial] ifFalse: [v1 isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/13/2024 17:57:10'!
typeCastIfTrueIfFalseManyVariables
	|v1 v2 |
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v2 := 5.
	v2 := Date today.
	v1 class = SmallInteger ifTrue: [v2 month] ifFalse: [v2 year].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/13/2024 19:13:40'!
typeCastIfTrueIfFalseNestedManyVariables
	|v1 v2 |
	
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	
	v2 := 5.
	v2 := Date today.
	
	v1 class = SmallInteger ifTrue: [
		v2 class = SmallInteger ifFalse: [v2 month.	v1 asFloat.]
	].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/24/2024 19:18:40'!
typeCastLiteralFirstThenObject
	
	instance1:= OrderedCollection new.
	instance1 := 'true'.
	
	String = instance1 class ifTrue: [instance1 isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/29/2024 18:07:02'!
typeCastManyNegations
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	(v1 class == SmallInteger) not not not ifTrue: [v1 isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/25/2024 19:34:01'!
typeCastNegatedIfFalse
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	(v1 class == SmallInteger) not ifFalse: [v1 factorial].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 4/25/2024 20:05:32'!
typeCastNegatedLiteralFirstThenObject
	
	instance1:= OrderedCollection new.
	instance1 := 'true'.
	
	(String = instance1 class) not ifTrue: [instance1 isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/11/2024 14:49:30'!
typeCastObjectClassNameDistinctClassSymbol
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class name ~~ #SmallInteger ifFalse: [v1 factorial] ifTrue:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/7/2024 18:23:44'!
typeCastObjectClassNameEqualsClassName
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class name = SmallInteger name ifTrue: [v1 factorial] ifFalse:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/7/2024 19:00:56'!
typeCastObjectClassNameEqualsClassSymbol
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 class name = #SmallInteger ifTrue: [v1 factorial] ifFalse:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals type context' stamp: 'JFGO 5/7/2024 19:29:59'!
typeCastObjectClassNameEqualsUnexistentClassSymbol
	|v1|
	v1 := 5.
	v1:= OrderedCollection new.
	v1 := 'true'.
	
	v1 class name = #DONTCREATETHISCLASSPLEASE ifTrue: [v1 factorial] ifFalse:[v1 isEmpty]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to literal context' stamp: 'JFGO 5/7/2024 17:12:50'!
typeCastDistinctToLiteral
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 ~= 5 ifTrue:[v1 + 5.] ifFalse:[v1 + 10.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to literal context' stamp: 'JFGO 5/1/2024 19:37:07'!
typeCastEqualsToLiteralIfFalse
	|v1|
	v1 := 6.
	v1:= OrderedCollection new.
	v1 := 'true'.
	
	v1 = 5 ifFalse:[v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to literal context' stamp: 'JFGO 5/1/2024 19:00:26'!
typeCastEqualsToLiteralIfTrue
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	v1 = 5 ifTrue:[v1 + 10.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to literal context' stamp: 'JFGO 5/7/2024 17:38:52'!
typeCastLiteralDistinctToObject
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	5 ~~ v1 ifTrue:[v1 + 5.] ifFalse:[v1 + 10.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to literal context' stamp: 'JFGO 5/7/2024 17:25:12'!
typeCastLiteralEqualsToObjectIfTrue 
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	v1 := 5.
	5 == v1 ifTrue:[v1 + 10.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'is kind of context' stamp: 'JFGO 5/14/2024 09:07:07'!
isKindOfCastForChildType
	|v1|
	v1:= OrderedCollection new.
	v1 := 'true'.
	
	(v1 isKindOf: String) ifTrue:[v1 first.] ifFalse:[v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'is kind of context' stamp: 'JFGO 5/14/2024 10:15:03'!
isKindOfCastForSupertype
	|v1|
	v1:= OrderedCollection new.
	v1 := Array new.
	
	(v1 isKindOf: SequenceableCollection) ifTrue:[v1 isSequenceable.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'is kind of context' stamp: 'JFGO 5/15/2024 17:57:02'!
isKindOfRejectForSupertype
	|v1|
	v1:= OrderedCollection new.
	v1 := Array new.
	v1 := 5.
	
	(v1 isKindOf: SequenceableCollection) ifFalse:[v1 factorial.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'isType message context' stamp: 'JFGO 5/28/2024 18:48:45'!
isIsMessageCast
	|v1|
	v1:= Array new.
	v1 := OrderedCollection new.
	
	v1 isInteger ifTrue:[v1 factorial.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'isType message context' stamp: 'JFGO 5/28/2024 18:48:07'!
isIsMessageCastWithSubclasses
	|v1|
	v1:= Array new.
	v1 := 5.	
	v1 := OrderedCollection new.
	
	v1 isCollection ifTrue:[v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'isType message context' stamp: 'JFGO 5/21/2024 20:15:07'!
isIsMessageDifferentTypes
	|v1|
	v1 := OrderedCollection new.
	v1 := 'test'.	
	
	v1 isInteger ifTrue:[v1 factorial.] ifFalse: [v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'isType message context' stamp: 'JFGO 5/21/2024 19:47:09'!
isIsMessageOnADifferentVariable
	|v1|
	instance1 := OrderedCollection new.
	instance1 := 'test'.
	v1 := 'test'.
	v1 := 5.	
	
	
	v1 isInteger ifTrue: [instance1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'isType message context' stamp: 'JFGO 5/18/2024 13:08:46'!
isIsMessageReject
	|v1|
	
	v1 := 5.	
	v1 := 'test'.
	
	v1 isString ifFalse: [v1 factorial.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 18:57:19'!
ifNilMessageCast
	
	| v1 |
	v1 := nil.
	v1 ifNil:[ v1 := Array new.].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 19:14:42'!
ifNotNilMessageRejects
	
	| v1 |
	v1 := Array new.
	v1 ifNotNil:[ v1 isEmpty. ].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/22/2024 18:24:29'!
isNilMessageCast
	
	| v1 |
	v1 := nil.
	v1 isNil ifTrue:[ v1 := Array new.].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 18:07:52'!
isNilMessageReject
	
	| v1 |
	v1 := nil.
	v1 := Array new.
	
	v1 isNil ifFalse:[ v1 isEmpty.].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 18:15:54'!
notNilMessageCast
	
	| v1 |
	v1 := nil.
	v1 := Array new.
	
	v1 notNil ifTrue:[ v1 isEmpty.].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 18:23:37'!
notNilMessageReject
	
	| v1 |
	v1 := nil.
	v1 notNil ifFalse:[ v1 := Array new.].! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 17:42:39'!
typeCastDistinctNil
	| v1 |
	v1 := nil.
	v1 := Array new.
	v1 := OrderedCollection new.
	
	v1 ~= nil ifTrue:[ v1 isEmpty. ] ifFalse: [v1 subclasses. ]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/22/2024 18:38:05'!
typeCastEqualsNil
	| v1 |
	v1 := Array new.
	v1 := nil.
	v1 = nil ifTrue:[ v1 subclasses. ]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/22/2024 19:26:10'!
typeCastEqualsNilIfFalse
	| v1 |
	v1 := nil.
	v1 := Array new.
	
	v1 = nil ifFalse:[ v1 isEmpty. ]! !

!TypesWithContextAppliersTestMethods methodsFor: 'equals to nil context' stamp: 'JFGO 5/27/2024 17:27:03'!
typeCastNilEqualsObject
	| v1 |
	v1 := Array new.
	v1 := nil.
	nil = v1 ifTrue:[ v1 subclasses. ]! !

!CompiledMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 12/8/2023 19:25:49'!
typeCheckDragon
	^(TypeCheckerDragon for: self) perform! !

!CompiledMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 4/22/2024 20:17:41'!
typesOfVariableNamed: aVariableName withNode: aMethodNode withinBlockNode: blockToTest addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	^ (ContextAppliersMethodVisitor for: self with: aMethodNode on: aVariableName within: blockToTest addingIncompleteTypeInfoTo: incompleteTypeInfoReasons) types.! !

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

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/8/2024 19:39:29'!
isAnyEqualityComparison
	^#(#== #= #~= #~~) includes: self selectorSymbol! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/8/2024 19:57:06'!
isClassComparedToObjectClass

	^ self isFirstArgumentClassMessageSend and: [self isReceiverLiteralBehavior ]! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 13:48:24'!
isClassNameComparedToObjectClassName

	^ self isFirstArgumentClassNameMessagesSend and: [self isReceiverNameMessageSend ]
! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 13:56:52'!
isClassSymbolComparedToObjectClassName

	^ self isFirstArgumentClassNameMessagesSend and: [self isReceiverAClassNameSymbol ]
	
! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 13:46:32'!
isComparingEqualityForClassNameWithObjectClassName
	^self isAnyEqualityComparison and: [ self isObjectClassNameComparedToClassName or: [self isClassNameComparedToObjectClassName]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 13:56:12'!
isComparingEqualityForClassSymbolWithObjectClassName
	^self isAnyEqualityComparison and: [ self isObjectClassNameComparedToClassSymbol or: [self isClassSymbolComparedToObjectClassName]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/8/2024 19:57:25'!
isComparingEqualityForClassWithObjectClass
	^self isAnyEqualityComparison and: [ self isObjectClassComparedToClass or: [self isClassComparedToObjectClass]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 14:07:29'!
isComparingEqualityForLiteralWithObject
	^self isAnyEqualityComparison and: [ self isObjectComparedToLiteral or: [self isLiteralComparedToObject]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/22/2024 19:10:48'!
isComparingEqualityToNil
	^self isAnyEqualityComparison and: [ self isFirstArgumentNil or: [self isReceiverNil ]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/29/2024 18:05:06'!
isComparingToNil
	^self isComparingEqualityToNil or: [self isNotNil ].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 19:34:48'!
isFirstArgumentAClassNameSymbol
	^self isFirstArgumentSymbol and:[ (Smalltalk classNamed: arguments first key value) ~= nil ]! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 19:44:03'!
isFirstArgumentClassNameMessagesSend
	
	^arguments first isMessageNode and: [ arguments first receiver isMessageNode and: [arguments first receiver isClassMessageSend] and: [arguments first isNameMessageSend]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/1/2024 18:58:20'!
isFirstArgumentLiteral
	^arguments first isLiteralNode.
		
	! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 18:33:33'!
isFirstArgumentNameMessageSend
	
	^arguments first isMessageNode and: [ arguments first isNameMessageSend ].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 19:09:23'!
isFirstArgumentSymbol
	^arguments first isLiteralNode and:[arguments first key isSymbol].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/21/2024 20:36:02'!
isIsTypeMessageWithBooleanReturning
	
	^self selectorSymbol asString beginsWith: 'is'! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 14:09:35'!
isLiteralComparedToObject
	"Second condition is to avoid literal to literal comparison, which doesn't provide any information"
	^ self isReceiverLiteral and: [ self isFirstArgumentLiteral not ].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 18:09:32'!
isNameMessageSend
	
	^self selectorSymbol = #name! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 4/25/2024 19:46:54'!
isNegated
	
	^self selectorSymbol = #not! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/8/2024 19:56:50'!
isObjectClassComparedToClass

	^ self isReceiverClassMessageSend and: [self isFirstArgumentLiteralBehavior ]! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 13:47:16'!
isObjectClassNameComparedToClassName

	^ self isReceiverClassNameMessagesSend and: [self isFirstArgumentNameMessageSend ]
	! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 13:57:30'!
isObjectClassNameComparedToClassSymbol

	^ self isReceiverClassNameMessagesSend and: [self isFirstArgumentAClassNameSymbol ]
	
	! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-comparing' stamp: 'JFGO 5/11/2024 14:08:20'!
isObjectComparedToLiteral

	^ self isFirstArgumentLiteral.! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 19:56:48'!
isReceiverAClassNameSymbol
	^self isReceiverSymbol and:[ (Smalltalk classNamed: receiver key) ~= nil ]! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 18:10:53'!
isReceiverClassNameMessagesSend
	
	^receiver isMessageNode and: [ receiver receiver isMessageNode and: [receiver receiver isClassMessageSend] and: [receiver isNameMessageSend]].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 17:30:16'!
isReceiverLiteral
	^receiver isLiteralNode.
		
	! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 19:44:28'!
isReceiverNameMessageSend
	
	^receiver isMessageNode and: [ receiver isNameMessageSend ].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 5/7/2024 19:56:21'!
isReceiverSymbol
	^receiver isLiteralNode and:[receiver key isSymbol].! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-livetypes' stamp: 'JFGO 2/5/2024 19:33:12'!
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

!MessageNode methodsFor: '*LiveTypingTypeChecker-livetypes' stamp: 'JFGO 12/8/2023 21:15:33'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo 
	^self receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: NoTypeCastApplier new.! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-livetypes' stamp: 'JFGO 12/8/2023 21:15:34'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: aTypeCastApplier
	^self receiverOrCascadeReceiver typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo castingWith: aTypeCastApplier ! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-livetypes' stamp: 'JFGO 2/5/2024 19:44:07'!
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

!AllActualLocalImplementors methodsFor: '*LiveTypingTypeChecker-Evaluating' stamp: 'JFGO 5/21/2024 20:04:44'!
liveTypeValue
	
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

!ParseNodeTypesDisplay methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 5/30/2024 18:54:11'!
calculateTypesWithContext

	incompleteTypeInfoReasons := Set new.
		
	types := methodToAnalyze typesOfVariableNamed: parseNodeToAnalize withNode: methodNodeOwner withinBlockNode: contextBlockNode addingIncompleteTypeInfoTo: incompleteTypeInfoReasons.
	incompleteTypeInfoReasons := incompleteTypeInfoReasons asArray .
	
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

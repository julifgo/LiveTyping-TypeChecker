'From Cuis6.3 [latest update: #6169] on 8 August 2024 at 8:09:50 pm'!
'Description This package provides a new functionality for type check all message sent within any compiled method and generate a report of possible issues.
It also adds the feature to contemplate branches and casting or filtering types based on ifs conditions.
That feature it''s also used in autocomplete and balloon helps.
It''s based on types annotated by LiveTyping and works with Generics kind of data types.'!
!provides: 'LiveTypingTypeChecker' 1 29!
SystemOrganization addCategory: #'LiveTypingTypeChecker-TypeCheckingDragon'!
SystemOrganization addCategory: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
SystemOrganization addCategory: #'LiveTypingTypeChecker-ContextAppliers'!
SystemOrganization addCategory: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
SystemOrganization addCategory: #LiveTypingTypeChecker!


!classDefinition: #TypeCheckerDragonResultSet category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
MessageSet subclass: #TypeCheckerDragonResultSet
	instanceVariableNames: 'methodTypeChecker showProblems'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckerDragonResultSet class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonResultSet class
	instanceVariableNames: ''!

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

!classDefinition: #TypeCheckerDragonResultWindow category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
MessageSetWindow subclass: #TypeCheckerDragonResultWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckerDragonResultWindow class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragonResultWindow class
	instanceVariableNames: ''!

!classDefinition: #ManyMethodsTypeCheckerDragonTest category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TestCase subclass: #ManyMethodsTypeCheckerDragonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
!classDefinition: 'ManyMethodsTypeCheckerDragonTest class' category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
ManyMethodsTypeCheckerDragonTest class
	instanceVariableNames: ''!

!classDefinition: #MethodTypeCheckerDragonTest category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
TestCase subclass: #MethodTypeCheckerDragonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
!classDefinition: 'MethodTypeCheckerDragonTest class' category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
MethodTypeCheckerDragonTest class
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

!classDefinition: #MethodNotAnnotatingTypesIssue category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #MethodNotAnnotatingTypesIssue
	instanceVariableNames: 'methodReference'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'MethodNotAnnotatingTypesIssue class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
MethodNotAnnotatingTypesIssue class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckerDragon category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckerDragon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckerDragon class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragon class
	instanceVariableNames: ''!

!classDefinition: #ManyMethodsTypeCheckerDragon category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragon subclass: #ManyMethodsTypeCheckerDragon
	instanceVariableNames: 'methodsToCheck typeCheckers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'ManyMethodsTypeCheckerDragon class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
ManyMethodsTypeCheckerDragon class
	instanceVariableNames: ''!

!classDefinition: #MethodTypeCheckerDragon category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckerDragon subclass: #MethodTypeCheckerDragon
	instanceVariableNames: 'compiledMethod issues'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'MethodTypeCheckerDragon class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
MethodTypeCheckerDragon class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonIssueToMethodReferenceAdapter category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingDragonIssueToMethodReferenceAdapter
	instanceVariableNames: 'typeCheckingProblem prefix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonIssueToMethodReferenceAdapter class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonIssueToMethodReferenceAdapter class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingResultsIssues category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
Object subclass: #TypeCheckingResultsIssues
	instanceVariableNames: 'methodNode messageNode methodReference'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingResultsIssues class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonError category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonError
	instanceVariableNames: 'notImplemented'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonError class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonError class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonIncompleteInformation category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonIncompleteInformation
	instanceVariableNames: 'problemDescription'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonIncompleteInformation class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonIncompleteInformation class
	instanceVariableNames: ''!

!classDefinition: #TypeCheckingDragonWarning category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingResultsIssues subclass: #TypeCheckingDragonWarning
	instanceVariableNames: 'reason'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon'!
!classDefinition: 'TypeCheckingDragonWarning class' category: #'LiveTypingTypeChecker-TypeCheckingDragon'!
TypeCheckingDragonWarning class
	instanceVariableNames: ''!

!classDefinition: #ManyTypeCheckerDragonTestMethods category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
Object subclass: #ManyTypeCheckerDragonTestMethods
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
!classDefinition: 'ManyTypeCheckerDragonTestMethods class' category: #'LiveTypingTypeChecker-TypeCheckingDragon-Tests'!
ManyTypeCheckerDragonTestMethods class
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

!classDefinition: #LogicalContextApplier category: #'LiveTypingTypeChecker-ContextAppliers'!
TypeContextAppliers subclass: #LogicalContextApplier
	instanceVariableNames: 'previousContext shouldReject selector contextApplierCollection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers'!
!classDefinition: 'LogicalContextApplier class' category: #'LiveTypingTypeChecker-ContextAppliers'!
LogicalContextApplier class
	instanceVariableNames: ''!

!classDefinition: #TypesWithContextAppliersTestMethods category: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
Object subclass: #TypesWithContextAppliersTestMethods
	instanceVariableNames: 'instance1 vInstance vAutcomplete'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingTypeChecker-ContextAppliers-Tests'!
!classDefinition: 'TypesWithContextAppliersTestMethods class' category: #'LiveTypingTypeChecker-ContextAppliers-Tests'!
TypesWithContextAppliersTestMethods class
	instanceVariableNames: ''!


!TypeCheckerDragonResultWindow commentStamp: '<historical>' prior: 0!
Morphic view for MessageSet models. See category 'GUI building'.!

!TypeCheckerDragonResultSet methodsFor: 'list' stamp: 'JFGO 8/5/2024 19:37:24'!
calculateList

	messageList := methodTypeChecker errorsAndWarningsAsMethodReferencesWithProblems: showProblems.
	self reformulateList.
	! !

!TypeCheckerDragonResultSet methodsFor: 'accessing' stamp: 'JFGO 8/5/2024 19:37:24'!
contents: aString notifying: aRequestor 

	| result |

	result := super contents: aString notifying: aRequestor.
	methodTypeChecker := methodTypeChecker value.
	self calculateList.
	
	^result 
! !

!TypeCheckerDragonResultSet methodsFor: 'source code ranges' stamp: 'JFGO 8/5/2024 19:37:24'!
messageSendsRangesOf: aSelector

	^ selectedMessage 
		ifNil: [ #() ]
		ifNotNil: [ selectedMessage sourceCodeRange ]
! !

!TypeCheckerDragonResultSet methodsFor: 'initialization' stamp: 'JFGO 8/5/2024 19:37:24'!
initializeFor: aMethodTypeChecker showingProblems: showingProblems 
	
	methodTypeChecker := aMethodTypeChecker.
	showProblems := showingProblems.
	self calculateList.
	
	"It does not matter the methodSelector, it is just a symbol that flags that ranges should be look for selecting - Hernan"
	self autoHighlightString: methodTypeChecker methodSelector allOccurrences: false! !

!TypeCheckerDragonResultSet class methodsFor: 'instance creation' stamp: 'JFGO 8/5/2024 19:37:24'!
for: aMethodTypeChecker showingProblems: showingProblems 
	
	^self new initializeFor: aMethodTypeChecker showingProblems: showingProblems 
! !

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

!TypeCheckerDragonMethodVisitor methodsFor: 'visiting' stamp: 'JFGO 7/23/2024 19:31:41'!
visitMessageNode: aMessageNode
	| incompleteTypeInfo receiverLiveType  |
	aMessageNode receiver accept: self.
	
	
	incompleteTypeInfo := OrderedCollection new. 
	receiverLiveType:=contextApplier receiverLiveTypesFor: aMessageNode in: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		
	incompleteTypeInfo do: [ :anIncompleteTypeInfoReason | anIncompleteTypeInfoReason addTo: self node: aMessageNode ].
	
	(receiverLiveType isEmptyType and: [ incompleteTypeInfo isEmpty])
		ifTrue: [issues add: (TypeCheckingDragonIncompleteInformation on: compiledMethod asMethodReference for: methodNode by: aMessageNode)]
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

!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 1/4/2024 20:18:51'!
addProblem: anIncompleteTypeInfoError node: aMessageNode
	self addWarning: anIncompleteTypeInfoError node: aMessageNode.
! !

!TypeCheckerDragonMethodVisitor methodsFor: 'alerts' stamp: 'JFGO 7/26/2024 19:40:08'!
addWarning: anIncompleteTypeInfoError node: aMessageNode

	
	issues add: (TypeCheckingDragonWarning on: compiledMethod asMethodReference for: methodNode by: aMessageNode reason: anIncompleteTypeInfoError reasonDescription )
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

!TypeCheckerDragonResultWindow methodsFor: 'menu building' stamp: 'JFGO 8/5/2024 19:38:02'!
messageListMenu

	| aMenu |
	
	aMenu _ MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Errors & Warnings'.
	aMenu
		addItemsFromDictionaries: `{
			{
				#label 			-> 		'remove'.
				#object 			-> 		#model.
				#selector 		-> 		#removeMessageFromBrowserKeepingLabel.
				#icon 			-> 		#listRemoveIcon
			} asDictionary.
		}`.
		
	^ aMenu! !

!TypeCheckerDragonResultWindow class methodsFor: 'instance creation' stamp: 'JFGO 8/5/2024 19:39:29'!
openFor: aTypeChecker labelTrail: aLabelTrail showingProblems: showingProblems 

	| window model |
	
	model := TypeCheckerDragonResultSet for: aTypeChecker showingProblems: showingProblems.
	window := super open: model label: 'Type checking result for ', aLabelTrail.
	model messageListIndex: 1.
	
	^window
	! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 18:53:50'!
test01ManyMethodsCanBeTypeChecked

	| methodWithManyTypeErrorsTypeChecker methodWithTypeErrorTypeChecker typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithTypeError. ManyTypeCheckerDragonTestMethods >> #methodWithManyTypeErrors }.
	
	typeChecker value.
	
	methodWithTypeErrorTypeChecker := (ManyTypeCheckerDragonTestMethods >> #methodWithTypeError) typeCheck.
	methodWithManyTypeErrorsTypeChecker := (ManyTypeCheckerDragonTestMethods >> #methodWithManyTypeErrors) typeCheck.
	
	self assert: typeChecker errorsSize equals: methodWithTypeErrorTypeChecker errors size + methodWithManyTypeErrorsTypeChecker errors size.
	self assert: typeChecker warningsSize equals: methodWithTypeErrorTypeChecker warnings size + methodWithManyTypeErrorsTypeChecker warnings size.
! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 18:37:21'!
test02ClassesCanBeTypeChecked

	| typeChecker typeCheckers |
	
	typeChecker := MethodTypeCheckerDragonTest typeCheck.
	
	typeChecker value.
	
	typeCheckers := MethodTypeCheckerDragonTest selectors collect: [ :aSelector |  (MethodTypeCheckerDragonTest >> aSelector) typeCheck].
	typeCheckers := typeCheckers, (MethodTypeCheckerDragonTest class selectors collect: [ :aSelector | (MethodTypeCheckerDragonTest >> aSelector) typeCheck ]).
	
	self assert: typeChecker errors size equals: (typeCheckers sum: [ :aTypeCheker | aTypeCheker errors size ]).
	self assert: typeChecker warnings size equals: (typeCheckers sum: [ :aTypeCheker | aTypeCheker warnings size ]).
! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:49:02'!
test03MethodsWithoutTypeAnnotationsLogsAProblem

	| typeChecker methodToCheck  |
	
	methodToCheck := ManyTypeCheckerDragonTestMethods >> #methodNotAnnotatingTypes.
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { methodToCheck }.
	methodToCheck removeProperties.
	
	typeChecker value.
	
	self assert: 1 equals: typeChecker alertsSize.
	self assert: typeChecker errorsIsEmpty.
	self assert: typeChecker warningsIsEmpty.
! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:52:07'!
test04AlertsDetectIfNone

	| typeCheckProblem typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithReceiverWithNoTypes }.
	typeChecker := typeChecker value.
	
	self assert: 1 equals: typeChecker alertsSize.
	
	typeCheckProblem := typeChecker alertsDetect: [ :aTypeCheckProblem | true ] ifNone: [ self fail ].
	self assert: typeCheckProblem receiver isTemp.	
	self assert: #date equals: typeCheckProblem selector key.
! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:52:18'!
test05AlertsDetectIfNoneValuesIfNoneWhenNoProblemFound

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithoutTypeErrors }.
	typeChecker value.
	
	typeChecker alertsDetect: [ :aTypeCheckProblem | true ] ifNone: [ ^self ].
	
	self fail! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:07:16'!
test06WarningsCollectsAllTypeCheckersWarnings

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithWarningForError }.
	typeChecker value.
	
	self assert: typeChecker warnings notEmpty! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:07:43'!
test07ErrorsDetectIfNone

	| typeChecker error |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithManyTypeErrors }.
	typeChecker value.
	
	error := typeChecker errorsDetect: [ :anError | true ] ifNone: [ self fail ].
	self assert: #date equals: error selector key ! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:08:01'!
test08ErrorsDetectIfNoneValuesIfNoneWhenNoProblemFound

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithoutTypeErrors }.
	typeChecker value.
	
	typeChecker errorsDetect: [ :aTypeCheckProblem | true ] ifNone: [ ^self ].
	
	self fail

	! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:47:58'!
test09ProblemsCollectsTypeCheckersProblems

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithReceiverWithNoTypes }.
	typeChecker := typeChecker value.
	
	self assert: typeChecker alerts notEmpty
! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:13:00'!
test10WarningsDetectIfNone

	| typeChecker typeWarning |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithWarningForError. }.
	typeChecker value.
	
	typeWarning := typeChecker warningsDetect: [ :aTypeWarning | true ] ifNone: [ self fail ].
	self assert: typeWarning receiver isMessageNode.	
	self assert: #first equals: typeWarning selector key.
! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:13:35'!
test11WarningsDetectIfNoneValuesIfNoneWhenNoProblemFound

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithoutTypeErrors }.
	typeChecker value.
	
	typeChecker warningsDetect: [ :aTypeCheckProblem | true ] ifNone: [ ^self ].
	
	self fail

	! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:14:01'!
test12HasErrorsReturnsTrueIfATypeCheckerHasErrors

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithTypeError }.
	typeChecker value.
	
	self assert: typeChecker hasErrors ! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:14:33'!
test13HasErrorsReturnsFalseWhenNoErrorFound

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithoutTypeErrors }.
	typeChecker value.
	
	self deny: typeChecker hasErrors ! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:14:44'!
test14ErrorsCollectsAllTypeCheckersErrors

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithTypeError }.
	typeChecker value.
	
	self assert: typeChecker errors notEmpty ! !

!ManyMethodsTypeCheckerDragonTest methodsFor: 'tests' stamp: 'JFGO 8/5/2024 19:14:55'!
test15HasErrorsOrWarnings

	| typeChecker |
	
	typeChecker := ManyMethodsTypeCheckerDragon forAll: { ManyTypeCheckerDragonTestMethods >> #methodWithTypeError }.
	typeChecker value.
	
	self assert: typeChecker hasErrorsOrWarnings ! !

!MethodTypeCheckerDragonTest methodsFor: 'setup' stamp: 'JFGO 12/11/2023 18:25:47'!
setUp
	"Ensure that always this method initializes with live typing enabled. See test01 and test02"
	(TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping) initializeTypeInformation.
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for generics collections' stamp: 'JFGO 7/28/2024 12:25:31'!
test11MethodWithCollectionItemsGeneratesAlertForBlockVariable
	"El valor agregado de este test es discutible. Como minimo busca asegurarse que el paquete de LiveTypingGenerics esta correctamente instalado"
	"Ademas, al momento de esta version de typeChecker, no hay LiveTyping sobre bloques, por eso se genera la alerta"
	"Una vez implementado, habra que agregar tests adicionales para chequeo de tipos dentro de bloques usando la informacion de generics"
		
	
	self performMethodWithSelector: #methodWithCollectionWithNoTypeError typeCheckAndAssert: [:typeChecker :methodChecked | | alert | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasAlerts .
				
		alert := typeChecker alerts anyOne .
		self assert: alert problemDescription equals: 'No type information on receiver collected'.	
		self assert: alert compiledMethod equals: methodChecked.
		self assert: alert receiver key equals: 'item'.
		self assert: alert selector key equals: #factorial.
	]. 
	
! !

!MethodTypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 3/13/2024 17:24:16'!
performMethodWithClass: aClass andSelector: aSelector typeCheckAndAssert: anAssertionBlock
	
	| methodToCheck |
	methodToCheck := aClass >> aSelector.
	aClass new perform: aSelector.
	
	self typeCheckOn: methodToCheck andAssert: anAssertionBlock .
	
! !

!MethodTypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 12/21/2023 19:56:32'!
performMethodWithSelector: aSelector typeCheckAndAssert: anAssertionBlock
	
	| methodToCheck |
	methodToCheck := TypeCheckerDragonTestMethods >> aSelector.
	TypeCheckerDragonTestMethods new perform: aSelector.
	
	self typeCheckOn: methodToCheck andAssert: anAssertionBlock .
	
! !

!MethodTypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 7/29/2024 18:27:09'!
typeCheckOn: aCompiledMethod andAssert: anAssertionBlock
		
	| typeChecker |
	typeChecker := aCompiledMethod typeCheck.
	anAssertionBlock value: typeChecker value: aCompiledMethod.
	! !

!MethodTypeCheckerDragonTest methodsFor: 'assertions' stamp: 'JFGO 12/21/2023 19:27:20'!
typeCheckWithSelector: aSelector andAssert: anAssertionBlock
		
	| methodToCheck|
	methodToCheck := TypeCheckerDragonTestMethods >> aSelector.
	self typeCheckOn:  methodToCheck andAssert: anAssertionBlock.
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 3/13/2024 17:24:53'!
test13TypeCastIfTrueCorrectlyAppliesCastedType
	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfTrue typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 4/9/2024 20:50:51'!
test14TypeCastIfFalseReturnsAllTypesButRejected
	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfFalse typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 3/13/2024 17:25:30'!
test15TypeCastIfTrueIfFalseCorrectlyAppliesAndRejectsCastedType

	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfTrueIfFalse typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfFalseIfTrue typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 3/13/2024 17:25:42'!
test16TypeCastNestedRejectionsRejectsEachLevelCastedType

	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfFalseNested typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].

	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods with branches' stamp: 'JFGO 4/15/2024 19:50:06'!
test17TypeCastManyVariablesNestedRejectionsRejectsEachLevelCastedTypeForEachVariable

	self performMethodWithClass: TypesWithContextAppliersTestMethods andSelector: #typeCastIfTrueIfFalseNestedManyVariables typeCheckAndAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	].

	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 1/12/2024 12:39:14'!
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

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/28/2024 12:21:57'!
test02MethodThatDontCheckTypesGeneratesIssue

	| methodToCheck |
	
	methodToCheck := TypeCheckerDragonTestMethods >> #methodTypedCorrectlyEnableTyping.
	methodToCheck removeProperties .
	
	self typeCheckOn: methodToCheck andAssert: [:typeChecker :methodChecked |  
		self assert: typeChecker hasIssues.
		self assert: typeChecker issues size equals: 1.
		self assert: (typeChecker issues anyOne isKindOf: MethodNotAnnotatingTypesIssue ).
		self assert: typeChecker issues anyOne compiledMethod equals: methodToCheck .
	]. 
	
	
	
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:22:35'!
test03PrimitiveMethodsDontCheckTypes
	
	self typeCheckWithSelector: #emptyMethodPrimitive andAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	]. 
! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/28/2024 12:22:12'!
test04MethodWithMessageNotUnderstoodByReceiverGeneratesError

	| methodSelector |
	methodSelector := #methodWithMessageNotUnderstood.
	self typeCheckWithSelector:  methodSelector andAssert: [:typeChecker :methodChecked| | error | 
		self assert: typeChecker hasIssues.
		self assert: typeChecker issues size equals: 1.
		error:= typeChecker issues anyOne.
		self assert: error problemDescription equals: '#not not implemented in String' .
		self assert: (error isKindOf: TypeCheckingDragonError ).
		self assert: error compiledMethod equals: methodChecked .
		self assert: error receiver key equals: 'false'.
		self assert: error selector key equals: #not.
		self assert: error notImplementedTypes includes: String.
	]. 
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/29/2024 17:49:58'!
test05MethodWithTypeErrorOnMessageReceiverGeneratesAlert

	
	self typeCheckWithSelector: #methodWithMessageNestedNotUnderstoodOnReceiver andAssert: [:typeChecker :methodChecked | | error warning |
		self assert: 2 equals: typeChecker issues size.
		self assert: 1 equals: typeChecker errors size.
		self assert: 1 equals: typeChecker warnings size.
		error := typeChecker errors anyOne .
		self assert:  error problemDescription equals: '#not not implemented in String' .	
		self assert: error compiledMethod equals: methodChecked .
		self assert: error receiver key equals: 'false'.
		self assert: error selector key equals: #not.
		self assert: error notImplementedTypes includes: String.
		warning := typeChecker warnings anyOne .
		self assert: (TypeCheckingResultsIssues canNotDeduceReceiverTypeDueToDescription: '#not not implemented in String') equals: warning problemDescription .	
		self assert: warning compiledMethod equals: methodChecked .
		self assert: warning selector key equals: #not.
		
	]. 
	
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/29/2024 17:50:17'!
test06MethodWithManyTypeErrorsOnMessageGeneratesManyAlerts
	
	self typeCheckWithSelector: #methodWithManyMessageNotUnderstood andAssert: [:typeChecker :methodChecked | | warning error |
		self assert: 2 equals: typeChecker issues size.
		self assert: 1 equals: typeChecker errors size.
		self assert: 1 equals: typeChecker warnings size.
		error := typeChecker errors anyOne .
		self assert:  error problemDescription equals: '#not not implemented in String' .	
		self assert: error compiledMethod equals: methodChecked .
		self assert: error receiver key equals: 'false'.
		self assert: error selector key equals: #not.
		self assert: error notImplementedTypes includes: String.
		warning := typeChecker warnings anyOne .
		self assert: (TypeCheckingResultsIssues canNotDeduceReceiverTypeDueToDescription: '#not not implemented in String') equals: warning problemDescription .	
		self assert: (warning compiledMethod) equals: methodChecked .
		self assert: (warning receiver receiver key) equals: 'false'.
		self assert: (warning receiver selector key) equals: #not.
		self assert: (warning selector key) equals: #factorial.
	]. 
	
	
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/28/2024 12:23:08'!
test07MethodWithMessageWithNoReceiverTypeGeneratesAlert
	
	self typeCheckWithSelector: #methodWithReceiverWithNoTypes andAssert: [:typeChecker :methodChecked | | alert | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasAlerts .
				
		alert := typeChecker alerts anyOne .
		self assert: alert problemDescription equals: 'No type information on receiver collected'.	
		self assert: alert compiledMethod equals: methodChecked.
		self assert: alert receiver key equals: 'nilVariableWithNoType'.
		self assert: alert selector key equals: #size.
	]. 
	
	
	
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/28/2024 12:23:29'!
test08MethodWithMessageNotUnderstoodInArgumentsGeneratesAlerts

	self typeCheckWithSelector: #methodWithMessageArgumentToResolve andAssert: [:typeChecker :methodChecked | | secondError firstError | 
		self assert: 2 equals: typeChecker issues size.
		self assert: 2 equals: typeChecker errors size.
		firstError := typeChecker errors first .
		self assert: firstError compiledMethod equals: methodChecked .
		self assert: firstError receiver key equals: '10'.
		self assert: firstError selector key equals: #factorial.
		
		secondError := typeChecker errors second .
		self assert: secondError compiledMethod equals: methodChecked .
		self assert: secondError receiver key equals: '5'.
		self assert: secondError selector key equals: #factorial.
		
	]. 
	
	
	
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 12/28/2023 16:23:00'!
test09MethodThatThrowsSpecificExceptionDoesNoGenerateAlerts
	"This is because the object is able to respond to the message even if it is for throwing an exception"
	
	self typeCheckWithSelector: #methodInstanceNotIndexable andAssert: [:typeChecker :methodChecked | 
		self deny: typeChecker hasIssues.
	]. 
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/28/2024 12:23:48'!
test10MessageSentToMethodWithNoReturnTypeGeneratesIssue
	
		
	self typeCheckWithSelector: #methodWithMessageWithNoReturnTypes andAssert: [:typeChecker :methodChecked | | warning | 
		self assert: typeChecker hasWarnings .
		self assert: typeChecker warnings size equals: 1.
		warning := typeChecker warnings anyOne .
		self assert: warning compiledMethod equals: methodChecked .
		self assert: warning receiver selector key equals: #methodSumsNumber:anotherNumber:.
		self assert: warning selector key equals: #factorial.
		
	]. 
	
	
	! !

!MethodTypeCheckerDragonTest methodsFor: 'tests for methods without branches' stamp: 'JFGO 7/28/2024 12:25:42'!
test12MethodWithVariableManyTypesGeneratesAlertForEachUnsupportedType

	
	self performMethodWithSelector: #methodWithVariableWithManyTypes typeCheckAndAssert: [:typeChecker :methodChecked | | error | 
		self assert: 1 equals: typeChecker issues size.
		self assert: typeChecker hasErrors.
		error := typeChecker errors anyOne.
		self assert: error compiledMethod equals: methodChecked .
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

!TypesWithContextAppliersTest methodsFor: 'methods and block nodes' stamp: 'JFGO 7/15/2024 19:14:26'!
withMessageName: aMethodSelector calculateTypesOfNode: aVariableNodeName withinBlockWithCode: aStringBlockNode asserting: anAssertionBlock
	| compiledMethod blockToTest types variableNode methodNode |

	compiledMethod := self withPerformingCompiledMethodName: aMethodSelector.
	methodNode := compiledMethod methodNode.
	
	blockToTest := self blockNodeWithSourceCode: aStringBlockNode on: methodNode.
	variableNode := methodNode variableNodeNamed: aVariableNodeName.

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

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 6/26/2024 18:38:19'!
test42DisjunctionOnDifferentTypesCollectsThemAndRejectsRemaining
	
	self withMessageName: #disjunctionCastDifferentTypes
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 2.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 6/29/2024 19:03:08'!
test44NegatedDisjunctionRejectsCastedTypes
	
	self withMessageName: #disjunctionNegated
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 6/30/2024 14:09:59'!
test45ConjunctionOnDifferentTypesCollectsThemAndRejectsRemaining
	
	self withMessageName: #conjunctionCastDifferentTypes
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: String.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 7/2/2024 18:24:21'!
test46NegatedConjunctionAllowsAllPreviousTypes
	
	self withMessageName: #conjunctionNegated
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 3.
		self assert: types includes: Array.
		self assert: types includes: String.
		self assert: types includes: OrderedCollection.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 7/4/2024 17:15:37'!
test47ManyDisjunctionCollectsEachOneAndRejectsRemaining
	
	self withMessageName: #manyDisjunctionCastDifferentTypes
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 4.
		self assert: types includes: OrderedCollection.
		self assert: types includes: String.
		self assert: types includes: Array.
		self assert: types includes: Set.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 7/6/2024 12:16:31'!
test48ManyConjunctionCollectsCommonTypesAndRejectsRemaining
	
	self withMessageName: #manyConjunctionCastDifferentTypes
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 isEmpty. ]'
	asserting: [:types | 
		self assert:types size equals: 3.
		self assert: types includes: OrderedCollection.
		self assert: types includes: Array.
		self assert: types includes: Set.
	].
	! !

!TypesWithContextAppliersTest methodsFor: 'disjunction / conjunction context' stamp: 'JFGO 8/1/2024 18:16:53'!
test49ConjunctionOnlyOnOneSideAffectingContextIgnoreOtherside
	
	self withMessageName: #conjunctionOnlyOnOneSideContext
	calculateTypesOfNode: 'v1' 
	withinBlockWithCode: '[ v1 factorial. ]'
	asserting: [:types | 
		self assert:types size equals: 1.
		self assert: types includes: SmallInteger.
	].
	! !

!MethodNotAnnotatingTypesIssue methodsFor: 'initialization' stamp: 'JFGO 7/29/2024 18:04:54'!
initializeFor: aMethodReference 
	methodReference := aMethodReference. ! !

!MethodNotAnnotatingTypesIssue methodsFor: 'resultWindow-printing' stamp: 'JFGO 12/27/2023 19:49:07'!
problemDescription
	^ 'Method is not annotating types'.! !

!MethodNotAnnotatingTypesIssue methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/29/2024 18:09:43'!
problemTypeIdentifierString

	^ 'Alert'! !

!MethodNotAnnotatingTypesIssue methodsFor: 'method' stamp: 'JFGO 7/29/2024 18:06:20'!
compiledMethod
	^methodReference  .! !

!MethodNotAnnotatingTypesIssue methodsFor: 'resultWindow-method' stamp: 'JFGO 7/28/2024 12:32:44'!
sourceCodeRange
	^#()! !

!MethodNotAnnotatingTypesIssue class methodsFor: 'instance creation' stamp: 'JFGO 7/29/2024 18:06:13'!
for: aCompiledMethod 
	^self new initializeFor: aCompiledMethod. ! !

!TypeCheckerDragon methodsFor: 'showing results' stamp: 'JFGO 8/5/2024 19:46:02'!
showResultsWith: aLabelTrail

	| showProblems |

	showProblems := self hasAlerts and: [ self confirm: 'Type checking has generated alerts.\Do you want to see them' withNewLines ].
	(showProblems not and: [ self hasNoErrorsAndWarnings ]) ifTrue: [  ^self inform: 'There are no type errors or warnings' ].
		
	TypeCheckerDragonResultWindow openFor: self labelTrail: aLabelTrail showingProblems: showProblems ! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/6/2024 19:18:07'!
AAAAAA
	
	^'PLEASE DONT BREAK'! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/5/2024 19:47:44'!
alerts
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/5/2024 19:51:55'!
alertsDetect: aCondition ifNone: noneBlock
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/5/2024 19:48:31'!
alertsSize
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'warnings' stamp: 'JFGO 8/5/2024 19:18:50'!
warnings
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'warnings' stamp: 'JFGO 8/5/2024 19:18:50'!
warningsDetect: aCondition ifNone: aNoneBlock
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'warnings' stamp: 'JFGO 8/5/2024 19:18:50'!
warningsIsEmpty
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'warnings' stamp: 'JFGO 8/5/2024 19:18:50'!
warningsSize
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 19:18:50'!
errors
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 19:18:50'!
errorsAndWarnings
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 19:18:50'!
errorsDetect: aCondition ifNone: aNoneBlock
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 19:18:50'!
errorsIsEmpty
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 19:18:50'!
errorsSize
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'type checking' stamp: 'JFGO 8/5/2024 19:18:50'!
value
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 19:46:02'!
hasAlerts
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 19:18:50'!
hasErrors
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 19:18:50'!
hasErrorsOrWarnings
	
	self subclassResponsibility! !

!TypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 19:18:50'!
hasNoErrorsAndWarnings
	
	self subclassResponsibility! !

!ManyMethodsTypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 18:18:11'!
errors
	
	^typeCheckers 
		inject: OrderedCollection new
		into: [ :errors :typeChecker |
			errors addAll: typeChecker errors.
			errors ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/5/2024 18:18:11'!
errorsAndWarnings
	
	| list |
	
	list := self sortedTypeCheckers
		inject: OrderedCollection new 
		into: [ :aList :aTypeChecker | 
			aList add: aTypeChecker methodReference.
			aList addAll: aTypeChecker errorsAndWarnings.
			aList ].
			
	^list! !

!ManyMethodsTypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/6/2024 18:25:46'!
errorsDetect: aCondition ifNone: noneBlock

	| errors |
	
	typeCheckers do: [ :typeChecker |
		errors := typeChecker errorsDetect: aCondition ifNone: [ nil ].
		errors ifNotNil: [ ^errors ]].
	
	^noneBlock value! !

!ManyMethodsTypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/6/2024 18:26:00'!
errorsIsEmpty
	
	^typeCheckers allSatisfy: [ :aTypeChecker | aTypeChecker errorsIsEmpty ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'errors' stamp: 'JFGO 8/6/2024 18:14:45'!
errorsSize
	
	^typeCheckers sum: [ :typeChecker | typeChecker errorsSize ] ifEmpty: [ 0 ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'problems to list' stamp: 'JFGO 8/5/2024 18:18:11'!
errorsAndWarningsAsMethodReferencesWithProblems: showProblems
	
	| list |
	
	list := OrderedCollection new.
	self sortedTypeCheckers do: [ :aTypeChecker | 
		(aTypeChecker hasErrorsOrWarnings or: [ showProblems and: [ aTypeChecker hasAlerts ]])
			ifTrue: [
				list add: aTypeChecker methodReference .
				list addAll: (aTypeChecker errorsAndWarningsAsMethodReferencesWithProblems: showProblems prefixing: '  ') ]].
				
	^list! !

!ManyMethodsTypeCheckerDragon methodsFor: 'problems to list' stamp: 'JFGO 8/5/2024 18:18:11'!
errorsAsMethodReferences
	
	| list |
	
	list := OrderedCollection new.
	self sortedTypeCheckers do: [ :aTypeChecker | 
		aTypeChecker hasErrors ifTrue: [
			list add: aTypeChecker method.
			list addAll: (aTypeChecker errorsAsMethodReferencesPrefixing: '  ')
			"list addAll: aTypeChecker errorsAsMethodReferences"]].
			
	^list! !

!ManyMethodsTypeCheckerDragon methodsFor: 'problems to list' stamp: 'JFGO 8/5/2024 18:18:11'!
sortedTypeCheckers
	
	^typeCheckers sorted: [ :leftTypeChecker :rightTypeChecker | leftTypeChecker methodReference <= rightTypeChecker methodReference ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 18:18:11'!
hasErrors
	
	^typeCheckers anySatisfy: [ :aTypeChecker | aTypeChecker hasErrors ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 18:18:11'!
hasErrorsOrWarnings
	
	^typeCheckers anySatisfy: [ :aTypeChecker | aTypeChecker hasErrorsOrWarnings ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'testing' stamp: 'JFGO 8/5/2024 18:18:11'!
hasNoErrorsAndWarnings
	
	^typeCheckers allSatisfy: [ :aTypeChecker | aTypeChecker hasNoErrorsAndWarnings ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 8/5/2024 18:18:11'!
methodSelector
	
	^typeCheckers anyOne methodSelector ! !

!ManyMethodsTypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/5/2024 19:47:44'!
alerts

	^typeCheckers 
		inject: OrderedCollection new
		into: [ :problems :typeChecker |
			problems addAll: typeChecker alerts.
			problems ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/6/2024 18:24:26'!
alertsDetect: aCondition ifNone: noneBlock
	
	| alert |
	
	typeCheckers do: [ :typeChecker |
		alert := typeChecker alertsDetect: aCondition ifNone: [ nil ].
		alert ifNotNil: [ ^alert ]].
	
	^noneBlock value! !

!ManyMethodsTypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/6/2024 18:14:53'!
alertsSize
	
	^typeCheckers sum: [ :aTypeChecker | aTypeChecker alertsSize ] ifEmpty: [ 0 ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'alerts' stamp: 'JFGO 8/5/2024 19:46:02'!
hasAlerts
	
	^typeCheckers anySatisfy: [ :aTypeChecker | aTypeChecker hasAlerts ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'type checking' stamp: 'JFGO 8/5/2024 18:18:11'!
value
	
	typeCheckers := methodsToCheck collect: [:aMethod | aMethod typeCheck ].
	
	^self! !

!ManyMethodsTypeCheckerDragon methodsFor: 'warning' stamp: 'JFGO 8/5/2024 18:18:11'!
warnings
	
	^typeCheckers 
		inject: OrderedCollection new
		into: [ :warnings :typeChecker |
			warnings addAll: typeChecker warnings.
			warnings ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'warning' stamp: 'JFGO 8/6/2024 18:26:18'!
warningsDetect: aCondition ifNone: noneBlock

	| warning |
	
	typeCheckers do: [ :typeChecker |
		warning := typeChecker warningsDetect: aCondition ifNone: [ nil ].
		warning ifNotNil: [ ^warning ]].
	
	^noneBlock value! !

!ManyMethodsTypeCheckerDragon methodsFor: 'warning' stamp: 'JFGO 8/6/2024 18:26:34'!
warningsIsEmpty
	
	^typeCheckers allSatisfy: [ :aTypeChecker | aTypeChecker warningsIsEmpty ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'warning' stamp: 'JFGO 8/6/2024 18:14:37'!
warningsSize
	
	^typeCheckers sum: [ :typeChecker | typeChecker warningsSize ] ifEmpty: [ 0 ]! !

!ManyMethodsTypeCheckerDragon methodsFor: 'initialization' stamp: 'JFGO 8/5/2024 18:18:11'!
initializeForAll: aMethodToCheck 

	methodsToCheck := aMethodToCheck collect: [ :aMethod | aMethod asMethodReference ]! !

!ManyMethodsTypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 8/5/2024 18:18:11'!
addMethodsOf: aClass to: methods
 
	methods 
		addAll: aClass theNonMetaClass methodDictionary values;
		addAll: aClass theMetaClass methodDictionary values! !

!ManyMethodsTypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 8/5/2024 18:18:11'!
forAll: aMethodToCheck

	^self new initializeForAll: aMethodToCheck ! !

!ManyMethodsTypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 8/5/2024 18:18:11'!
forAllClasses: classes

	| methods |
	
	methods := OrderedCollection new.
	classes do: [ :aClass | self addMethodsOf: aClass to: methods ].
	
	^self forAll: methods! !

!ManyMethodsTypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 8/5/2024 18:18:11'!
forClass: aClass 
	
	^self forAll: aClass theNonMetaClass methodDictionary values, aClass theMetaClass methodDictionary values! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 7/28/2024 12:12:01'!
alerts
	^issues select: [:issue | (issue isKindOf: TypeCheckingDragonIncompleteInformation) or: [issue isKindOf: MethodNotAnnotatingTypesIssue ].]! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:24:00'!
alertsDetect: aCondition ifNone: noneBlock

	^self alerts detect: aCondition ifNone: noneBlock .! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:14:04'!
alertsSize
	^self alerts size.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/28/2023 16:38:57'!
errors
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonError.]! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:24:56'!
errorsDetect: aCondition ifNone: noneBlock

	^self errors detect: aCondition ifNone: noneBlock .! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:26:59'!
errorsIsEmpty
	^self errors isEmpty .! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:14:14'!
errorsSize
	^self errors size.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 7/28/2024 12:13:50'!
hasAlerts
	^self alerts size > 0.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/28/2023 16:34:50'!
hasErrors
	^self errors size > 0.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/1/2024 17:43:27'!
hasErrorsOrWarnings
	
	^self errors notEmpty or: [ self warnings notEmpty ]! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/27/2023 19:31:48'!
hasIssues
	^issues size > 0.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/1/2024 18:24:40'!
hasNoErrorsAndWarnings
	
	^self errors isEmpty and: [ self warnings isEmpty ]! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 1/3/2024 20:15:51'!
hasWarnings
	^self warnings size > 0.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 12/27/2023 19:32:23'!
issues
	^issues.! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 1/3/2024 20:15:33'!
warnings
	^issues select: [:issue | issue isKindOf: TypeCheckingDragonWarning.]! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:25:06'!
warningsDetect: aCondition ifNone: noneBlock

	^self warnings detect: aCondition ifNone: noneBlock .! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:26:52'!
warningsIsEmpty
	^self warnings isEmpty .! !

!MethodTypeCheckerDragon methodsFor: 'issues' stamp: 'JFGO 8/6/2024 18:14:29'!
warningsSize
	^self warnings size! !

!MethodTypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:34:51'!
classAndSelector
	
	^compiledMethod classAndSelector .! !

!MethodTypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:34:36'!
method
	^compiledMethod .! !

!MethodTypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:35:15'!
methodClass
	
	^compiledMethod methodClass .! !

!MethodTypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:35:35'!
methodReference
	
	^compiledMethod asMethodReference .! !

!MethodTypeCheckerDragon methodsFor: 'method' stamp: 'JFGO 1/12/2024 12:35:48'!
methodSelector
	
	^compiledMethod selector .! !

!MethodTypeCheckerDragon methodsFor: 'initialization' stamp: 'JFGO 1/12/2024 12:35:56'!
initializeFor: aCompiledMethod 
	compiledMethod := aCompiledMethod  "asMethodReference".
	issues := OrderedCollection new.! !

!MethodTypeCheckerDragon methodsFor: 'resultWindow-listIssues' stamp: 'JFGO 8/8/2024 18:38:20'!
addMethodReferencesOf: aTypeCheckingResultsIssueCollection prefixing: aPrefix to: methodReferencesCollection 
	aTypeCheckingResultsIssueCollection do: [ :aTypeCheckingIssue |
		methodReferencesCollection add: (TypeCheckingDragonIssueToMethodReferenceAdapter of: aTypeCheckingIssue prefixing: aPrefix) ].
	
	^methodReferencesCollection ! !

!MethodTypeCheckerDragon methodsFor: 'resultWindow-listIssues' stamp: 'JFGO 7/23/2024 19:13:50'!
errorsAndWarningsAsMethodReferencesWithProblems: showProblems
	
	^self errorsAndWarningsAsMethodReferencesWithProblems: showProblems prefixing: ''! !

!MethodTypeCheckerDragon methodsFor: 'resultWindow-listIssues' stamp: 'JFGO 7/28/2024 12:05:14'!
errorsAndWarningsAsMethodReferencesWithProblems: showProblems prefixing: aPrefix
	| listToShow |
	
	listToShow := self addMethodReferencesOf: self errors prefixing: aPrefix to: OrderedCollection new.
	self addMethodReferencesOf: self warnings prefixing: aPrefix to: listToShow.
	showProblems ifTrue: [ self addMethodReferencesOf: self alerts prefixing: aPrefix to: listToShow ].
	
	^listToShow! !

!MethodTypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 11/30/2023 19:14:32'!
typeCheck
	compiledMethod isPrimitive ifTrue: [^self].
	compiledMethod isAnnotatingTypes 
		ifTrue: [self typeCheckWhenEnabledTyping] 
		ifFalse: [ self typeCheckWhenDisabledTyping]! !

!MethodTypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 12/27/2023 19:44:39'!
typeCheckWhenDisabledTyping
	issues add: (MethodNotAnnotatingTypesIssue for: compiledMethod).
	^self.! !

!MethodTypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 12/27/2023 19:29:59'!
typeCheckWhenEnabledTyping
	(TypeCheckerDragonMethodVisitor for: compiledMethod collectingAlerts: issues) accept.
	^self.! !

!MethodTypeCheckerDragon methodsFor: 'typeChecking' stamp: 'JFGO 8/6/2024 18:27:29'!
value
	self typeCheck.
	^self.! !

!MethodTypeCheckerDragon class methodsFor: 'instance creation' stamp: 'JFGO 11/30/2023 19:14:32'!
for: aCompiledMethod   
	^self new initializeFor: aCompiledMethod ! !

!TypeCheckingDragonIssueToMethodReferenceAdapter methodsFor: 'method reference protocol' stamp: 'JFGO 8/8/2024 18:34:34'!
actualClass
	
	^typeCheckingProblem method actualClass! !

!TypeCheckingDragonIssueToMethodReferenceAdapter methodsFor: 'method reference protocol' stamp: 'JFGO 8/8/2024 18:34:34'!
methodSymbol
	
	^typeCheckingProblem method methodSymbol ! !

!TypeCheckingDragonIssueToMethodReferenceAdapter methodsFor: 'method reference protocol' stamp: 'JFGO 8/8/2024 18:34:34'!
sourceCodeRange
	
	^typeCheckingProblem sourceCodeRange ! !

!TypeCheckingDragonIssueToMethodReferenceAdapter methodsFor: 'printing' stamp: 'JFGO 8/8/2024 18:34:34'!
displayStringOrText

	^prefix, typeCheckingProblem displayStringOrText! !

!TypeCheckingDragonIssueToMethodReferenceAdapter methodsFor: 'initialization' stamp: 'JFGO 8/8/2024 18:34:34'!
initializeOf: aTypeCheckingProblem prefixing: aHeader

	typeCheckingProblem := aTypeCheckingProblem.
	prefix := aHeader ! !

!TypeCheckingDragonIssueToMethodReferenceAdapter class methodsFor: 'instance creation' stamp: 'JFGO 8/8/2024 18:34:34'!
of: aTypeCheckingProblem

	^self of: aTypeCheckingProblem prefixing: ''! !

!TypeCheckingDragonIssueToMethodReferenceAdapter class methodsFor: 'instance creation' stamp: 'JFGO 8/8/2024 18:34:34'!
of: aTypeCheckingProblem prefixing: aHeader

	^self new initializeOf: aTypeCheckingProblem prefixing: aHeader

! !

!TypeCheckingResultsIssues methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/26/2024 19:19:31'!
displayStringOrText

	^ self problemTypeIdentifierString, ': ', self problemDescription! !

!TypeCheckingResultsIssues methodsFor: 'resultWindow-printing' stamp: 'JFGO 2/5/2024 19:09:56'!
problemDescription
	self subclassResponsibility .! !

!TypeCheckingResultsIssues methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/26/2024 19:19:53'!
problemTypeIdentifierString

	self subclassResponsibility .! !

!TypeCheckingResultsIssues methodsFor: 'receiver/selector' stamp: 'JFGO 2/5/2024 19:11:17'!
receiver
	self subclassResponsibility .! !

!TypeCheckingResultsIssues methodsFor: 'receiver/selector' stamp: 'JFGO 2/5/2024 19:11:21'!
selector
	self subclassResponsibility .! !

!TypeCheckingResultsIssues methodsFor: 'resultWindow-method' stamp: 'JFGO 7/29/2024 18:07:39'!
sourceCodeRange
	
	^Array with: (methodNode rangeForNode: messageNode ifAbsent: [^#()])! !

!TypeCheckingResultsIssues methodsFor: 'method' stamp: 'JFGO 7/28/2024 12:21:28'!
compiledMethod
	^methodReference compiledMethod .! !

!TypeCheckingResultsIssues methodsFor: 'method' stamp: 'JFGO 7/28/2024 12:21:32'!
method
	^methodReference.! !

!TypeCheckingResultsIssues class methodsFor: 'text' stamp: 'JFGO 7/29/2024 17:48:22'!
canNotDeduceReceiverTypeDueToDescription: aReason
 
	^'Can not deduce receiver''s type because: ', aReason ! !

!TypeCheckingDragonError methodsFor: 'initialization' stamp: 'JFGO 7/28/2024 12:21:15'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode notImplementedTypes: notImplementedTypes  .
	methodReference := aCompiledMethod .
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

!TypeCheckingDragonError methodsFor: 'resultWindow-printing' stamp: 'JFGO 2/6/2024 17:56:54'!
problemDescription
	^ self selector identifierPrintString, ' not implemented in ', self notImplementedTypes asCommaStringAnd  .! !

!TypeCheckingDragonError methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/26/2024 19:21:13'!
problemTypeIdentifierString

	^ 'Error'! !

!TypeCheckingDragonError class methodsFor: 'instance creation' stamp: 'JFGO 7/28/2024 12:07:52'!
forNotImplementedTypes: notImplementedTypes on: aCompiledMethod for: aMethodNode by: aMessageNode 
	
	^self new initializeOn: aCompiledMethod asMethodReference for: aMethodNode by: aMessageNode notImplementedTypes: notImplementedTypes.! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'receiver/selector' stamp: 'JFGO 1/8/2024 18:09:00'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'receiver/selector' stamp: 'JFGO 1/8/2024 18:09:17'!
selector
	^messageNode selector.! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'resultWindow-printing' stamp: 'JFGO 2/5/2024 18:50:48'!
problemDescription
	^problemDescription .! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/29/2024 18:09:17'!
problemTypeIdentifierString

	^ 'Alert'! !

!TypeCheckingDragonIncompleteInformation methodsFor: 'initialization' stamp: 'JFGO 7/28/2024 12:21:15'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode description: description  
	methodReference := aCompiledMethod.
	methodNode := aMethodNode.
	messageNode := aMessageNode.
	problemDescription := description.! !

!TypeCheckingDragonIncompleteInformation class methodsFor: 'instance creation' stamp: 'JFGO 7/23/2024 19:32:26'!
on: aMethod for: aMethodNode by: aMessageNode 
	
	^self new initializeOn: aMethod for: aMethodNode by: aMessageNode description: 'No type information on receiver collected'.! !

!TypeCheckingDragonWarning methodsFor: 'initialization' stamp: 'JFGO 7/29/2024 18:10:31'!
initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription 
	methodReference := aCompiledMethod.
	methodNode := aMethodNode.
	messageNode := aMessageNode.
	reason := aReasonDescription.! !

!TypeCheckingDragonWarning methodsFor: 'receiver/selector' stamp: 'JFGO 1/3/2024 20:09:16'!
receiver
	^messageNode receiver.! !

!TypeCheckingDragonWarning methodsFor: 'receiver/selector' stamp: 'JFGO 1/3/2024 20:09:26'!
selector
	^messageNode selector.! !

!TypeCheckingDragonWarning methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/29/2024 18:10:31'!
problemDescription
	^reason .! !

!TypeCheckingDragonWarning methodsFor: 'resultWindow-printing' stamp: 'JFGO 7/26/2024 19:21:05'!
problemTypeIdentifierString

	^ 'Warning'! !

!TypeCheckingDragonWarning class methodsFor: 'instance creation' stamp: 'JFGO 7/29/2024 17:48:48'!
on: aCompiledMethod for: aMethodNode by: aMessageNode reason: aReasonDescription
	
	^self new initializeOn: aCompiledMethod for: aMethodNode by: aMessageNode reason: (self canNotDeduceReceiverTypeDueToDescription: aReasonDescription )! !

!ManyTypeCheckerDragonTestMethods methodsFor: 'methods with errors' stamp: 'JFGO 8/5/2024 18:52:36'!
methodWithManyTypeErrors

	1 date.
	'hello' factorial! !

!ManyTypeCheckerDragonTestMethods methodsFor: 'methods with errors' stamp: 'JFGO 8/5/2024 18:52:08'!
methodWithTypeError
	
	1 date! !

!ManyTypeCheckerDragonTestMethods methodsFor: 'methods with no errors' stamp: 'JFGO 8/5/2024 19:05:20'!
methodWithoutTypeErrors
	
	1 + 1! !

!ManyTypeCheckerDragonTestMethods methodsFor: 'methods with alerts' stamp: 'JFGO 8/5/2024 18:59:12'!
methodNotAnnotatingTypes
	
	'something' size! !

!ManyTypeCheckerDragonTestMethods methodsFor: 'methods with alerts' stamp: 'JFGO 8/5/2024 19:01:34'!
methodWithReceiverWithNoTypes
	
	| temp1 |
	
	false ifTrue: [ 
		temp1 := 1.
		temp1 date ].
	
	! !

!ManyTypeCheckerDragonTestMethods methodsFor: 'methods with warnings' stamp: 'JFGO 8/5/2024 19:07:03'!
methodWithWarningForError
	
	1 date first! !

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

!TypeContextAppliers methodsFor: 'updating / restoration' stamp: 'JFGO 6/26/2024 18:46:53'!
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

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 7/2/2024 18:51:37'!
contextFor: condition whenLogicalOperatorWithBlockRejecting: blockIsOnRejectingCondition
	
	| leftContextApplier rightContextApplier |
	leftContextApplier := self contextFor: condition receiver withBlockRejecting: blockIsOnRejectingCondition.
	condition isOr ifTrue:[ 
		rightContextApplier := self contextFor: condition arguments second statements first withBlockRejecting: blockIsOnRejectingCondition.	
	].
	
	condition isAnd ifTrue:[ 
		rightContextApplier := self contextFor: condition arguments first statements first withBlockRejecting: blockIsOnRejectingCondition.
	].
	^LogicalContextApplier forSelector: condition selectorSymbol withLeftApplier: leftContextApplier withRightContextApplier: rightContextApplier withPreviousContext: self isRejecting: blockIsOnRejectingCondition.
	! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 7/6/2024 12:22:28'!
contextFor: condition whenManyLogicalOperatorWithBlockRejecting: blockIsOnRejectingCondition
	
	| contextAppliers selector |
	contextAppliers := OrderedCollection new.
	contextAppliers add: (self contextFor: condition receiver withBlockRejecting: blockIsOnRejectingCondition).
	condition arguments do: [:argument | 
		contextAppliers add: (self contextFor: argument statements first withBlockRejecting: blockIsOnRejectingCondition).
	].
	
	condition isManyOr ifTrue:[ selector:= #or:] ifFalse:[ selector:=#and:	].
	
	
	^LogicalContextApplier forSelector: selector  withContextAppliers: contextAppliers withPreviousContext: self isRejecting: blockIsOnRejectingCondition.
	! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 5/21/2024 20:32:47'!
contextFor: condition whenSendingIsTypeMessageWithBlockRejecting: blockIsOnRejectingCondition

	^IsTypeMessageContextApplier 
		with: condition selectorSymbol 
		on: condition receiver 
		isRejecting: blockIsOnRejectingCondition 
		withPreviousContext: self.! !

!TypeContextAppliers methodsFor: 'contexts building' stamp: 'JFGO 8/1/2024 18:19:07'!
contextFor: condition withBlockRejecting: blockIsOnRejectingCondition
	condition isMessageNode ifFalse:[
		^GeneralContextApplier new.
	].

	condition isNegated ifTrue:[
		^self contextFor: condition receiver withBlockRejecting: blockIsOnRejectingCondition not.
	].
	
	(condition isOr or: [condition isAnd]) ifTrue:[ 
		^self contextFor: condition whenLogicalOperatorWithBlockRejecting: blockIsOnRejectingCondition .
	].
	
	(condition isManyOr or: [condition isManyAnd ]) ifTrue:[
		^self contextFor: condition whenManyLogicalOperatorWithBlockRejecting: blockIsOnRejectingCondition .
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

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/30/2024 17:20:37'!
implementorsReturningTrue
	| implementors |
	implementors := Smalltalk allImplementorsOf: messageSelector .
	implementors := implementors select: [:aMethodReference | aMethodReference compiledMethod isReturnSpecialTrue ]. 
	implementors := implementors collect: [:aMethodReference | aMethodReference actualClass].
	
	^implementors.
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/31/2024 09:59:17'!
is: aType subclassOfAny: implementors
	^implementors anySatisfy:[:anImplementorType | anImplementorType withAllSubclasses anySatisfy: [:aSubclass | aSubclass = aType ]. ].
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/31/2024 09:59:17'!
liveTypesCastingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	| implementors subclassesTypes originalTypes |
	
	implementors := self implementorsReturningTrue.
	originalTypes := self originalRawTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	
	subclassesTypes := originalTypes select: [:aType | self is: aType subclassOfAny: implementors.].
	subclassesTypes isEmpty ifTrue:[
		^RawToLiveTypesAdapter new adapt: implementors .
	] ifFalse:[
		^RawToLiveTypesAdapter new adapt: subclassesTypes .
	].
		
	! !

!IsTypeMessageContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 5/31/2024 10:13:39'!
liveTypesRejectingObjectFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	| originalTypes filteredLiveTypes |
	
	originalTypes := self originalRawTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	filteredLiveTypes := originalTypes inject: OrderedCollection new into: [:result :aType | (aType lookupSelector: messageSelector ) 
			ifNotNil: [ :method |  method isReturnSpecialFalse ifTrue: [result add: aType]. result.].
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

!IsTypeMessageContextApplier methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:32:42'!
shouldApplyTo:aParseNode
		
	^(aParseNode isVariableNode and: [(objectToApply = aParseNode)]) ! !

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

!GeneralContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 8/8/2024 17:53:30'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	^ aParseNode typesIn: compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.! !

!GeneralContextApplier methodsFor: 'restoration' stamp: 'JFGO 2/25/2024 14:42:38'!
previous
	"There's no more general context than this. Nothing to restore"
	^self.! !

!GeneralContextApplier methodsFor: 'checking' stamp: 'JFGO 5/21/2024 19:50:10'!
shouldApplyTo:aParseNode
	^true.! !

!LogicalContextApplier methodsFor: 'updating / restoration' stamp: 'JFGO 6/30/2024 14:21:52'!
previous
	^previousContext.! !

!LogicalContextApplier methodsFor: 'initialization' stamp: 'JFGO 7/4/2024 17:00:34'!
initializeForSelector: aLogicalSelector withAppliers: aContextApplierCollection withPreviousContext: aPreviousContextApplier rejecting: isRejecting 
	contextApplierCollection := aContextApplierCollection .
	previousContext := aPreviousContextApplier .
	shouldReject:= isRejecting .
	selector:= aLogicalSelector .
	! !

!LogicalContextApplier methodsFor: 'LiveTyping' stamp: 'JFGO 7/4/2024 17:17:37'!
liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	| types |
	
	types:=self rawTypesOver: contextApplierCollection first for: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	
	2 to: contextApplierCollection size do: [:index | | currentTypes | 
		currentTypes := self rawTypesOver: (contextApplierCollection at: index) for: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
		types:= self rawTypesWith: types and: currentTypes .
	].
	
	^RawToLiveTypesAdapter new adapt: types .! !

!LogicalContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 6/30/2024 14:22:24'!
rawTypesOver: aContextApplier for: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo
	
	| liveTypes rawTypes |
	rawTypes := OrderedCollection new.
	liveTypes := aContextApplier liveTypesFor: aParseNode in:  compiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo.
	liveTypes liveTypesDo: [:aLiveType | rawTypes add: aLiveType liveClass].
	
	^rawTypes.! !

!LogicalContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 7/4/2024 17:06:31'!
rawTypesWith: previousTypes and:currentTypes
		
	| types |
	(self shouldIntersect) ifTrue:[
		types := previousTypes intersection: currentTypes.
	] ifFalse:[
		types := previousTypes union: currentTypes.
	].
	
	^types .! !

!LogicalContextApplier methodsFor: 'LiveTyping-private' stamp: 'JFGO 7/2/2024 18:52:17'!
shouldIntersect

	^ (shouldReject not and:[selector = #and:]) or: (shouldReject and: [selector = #or:])! !

!LogicalContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 7/4/2024 17:15:16'!
forSelector: logicalSelector withContextAppliers: aContextApplierCollection withPreviousContext: aPreviousContextApplier isRejecting: isRejecting  
	
	
	
	^self new initializeForSelector: logicalSelector withAppliers: aContextApplierCollection withPreviousContext: aPreviousContextApplier rejecting: isRejecting .! !

!LogicalContextApplier class methodsFor: 'instance creation' stamp: 'JFGO 7/4/2024 17:02:17'!
forSelector: logicalSelector withLeftApplier: leftContextApplier withRightContextApplier: rightContextApplier withPreviousContext: aPreviousContextApplier isRejecting: isRejecting  
	
	| contextAppliers |
	contextAppliers := OrderedCollection with: leftContextApplier with: rightContextApplier .
	^self new initializeForSelector: logicalSelector withAppliers: contextAppliers withPreviousContext: aPreviousContextApplier rejecting: isRejecting .! !

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

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 6/30/2024 14:06:13'!
conjunctionCastDifferentTypes

| v1 |
v1:= OrderedCollection new.
v1:= 'some string'.
v1:= 1.

(v1 isCollection and: [v1 class = String]) ifTrue:[ v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 7/2/2024 18:22:39'!
conjunctionNegated

	| v1 |
	v1:= OrderedCollection new.
	v1:= 'some string'.
	v1:= Array new.

	(v1 class = OrderedCollection and: [v1 isString]) not ifTrue:[ v1 isEmpty.]
! !

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 8/1/2024 18:15:52'!
conjunctionOnlyOnOneSideContext

| v1 |
v1:= OrderedCollection new.
v1:= 'some string'.
v1:= 1.

(true and: [v1 class = SmallInteger]) ifTrue:[ v1 factorial.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 6/26/2024 18:28:46'!
disjunctionCastDifferentTypes

| v1 |
v1:= OrderedCollection new.
v1:= 'some string'.
v1:= 1.

(v1 class = String or: [v1 class = OrderedCollection]) ifTrue:[ v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 6/29/2024 19:05:26'!
disjunctionNegated

	| v1 |
	v1:= OrderedCollection new.
	v1:= 'some string'.
	v1:= 1.

	(v1 class = OrderedCollection or: [v1 isString]) not ifTrue:[ v1 factorial.]
! !

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 7/6/2024 12:15:18'!
manyConjunctionCastDifferentTypes

| v1 |
v1:= OrderedCollection new.
v1:= 'some string'.
v1 := Array new.
v1 := Set new.
v1:= 1.
v1:= Date today.

((v1 class = Date) not and: [(v1 class = SmallInteger) not] and: [(v1 class = String) not]) ifTrue:[ v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'disjunction / conjunction contexts' stamp: 'JFGO 7/3/2024 19:26:14'!
manyDisjunctionCastDifferentTypes

| v1 |
v1:= OrderedCollection new.
v1:= 'some string'.
v1 := Array new.
v1 := Set new.
v1:= 1.
v1:= Date today.

(v1 class = String or: [v1 class = OrderedCollection] or: [v1 class = Array] or: [v1 class = Set]) ifTrue:[ v1 isEmpty.]! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/17/2024 18:15:16'!
initialize
"THIS CAN BE DELETED"
vAutcomplete := Date today.
! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/6/2024 13:15:58'!
m1

| v1 v2 v3 |
v1:= 'hola'.
v1 isInteger ifTrue:[ v1 + 1 .].
v1 class = SmallInteger ifTrue:[ v1 .]. 

v2:= 'Es un string'.
v3 := 15.



v2 isEmpty.
v3 factorial.
v3 
! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/5/2024 09:44:22'!
m10

| v1 |
v1:= OrderedCollection new.

v1:= 'hola'.
v1:= Array new.



(v1 class = OrderedCollection xor: (v1 isString not) ) ifTrue:[ ^'entro'. ].
^'no entro'.! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/18/2024 16:57:14'!
m11 

| var |
var := 'Un string'.

var  ! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/18/2024 17:40:42'!
m12 
|vTemp vTemp2 |
vTemp := nil.
vAutcomplete class = String ifTrue:[vAutcomplete  ] .
vTemp class = Date ifTrue:[vTemp ] .
self mWithArgs: 'testing'.

vTemp2:='hola'.
vTemp2:= OrderedCollection new.

vTemp2 ! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 6/25/2024 19:18:23'!
m2

| v1 |
v1:= 1.
v1 isInteger ifTrue:[ v1 + 1 .].
v1 class = SmallInteger ifTrue:[ v1 + 1.].
! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 6/25/2024 19:20:09'!
m3

| v1 |
v1:= 1.
v1 isInteger ifTrue:[ v1 + 1 .].
v1 class = String ifTrue:[ v1 isEmpty. ].
! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 6/25/2024 19:29:13'!
m4

| v1 |
v1:= 'hola'.
v1:= 1.
v1 < 5 ifTrue:[ v1 + 1 .].
v1 = 5 ifTrue:[ v1 + 1 .].
v1 class = String ifTrue:[ v1 isEmpty. ].
! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 6/29/2024 19:36:12'!
m5

| v1 |
v1:= OrderedCollection new.
v1:= 1.
v1:= 'hola'.


"tautologias"
(v1 class = OrderedCollection and: [v1 isString] ) not ifTrue:[ ^'entro'. ].
^'no entro'.! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 6/30/2024 13:52:22'!
m6

| v1 |
v1:= OrderedCollection new.
v1:= 1.
v1:= 'hola'.


v1 class = Collection  ifTrue:[ ^v1 isEmpty. ].
v1 isCollection  ifTrue:[ ^v1 isEmpty. ].
(v1 class = OrderedCollection or: [v1 isCollection] ) ifTrue:[ ^v1 isEmpty. ]. "Aca si pasa cualquier coleccion. Si v1 es Array (o string como este ejemplo), entrara efectivamente en el if"
(v1 class = OrderedCollection or: [v1 class = Collection] ) ifTrue:[ ^v1 isEmpty. ]. "No pasa cualquier coleccion. Si v1 es Array no entra en este if. Solo entra si efectivamente v1 es OC o su clase es Collection".! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 6/30/2024 13:37:39'!
m7

| v1 |
v1:= OrderedCollection new.
v1:= 1.
v1:= Array new.


(v1 isKindOf:Collection ) ifTrue:[ v1 isEmpty. ].! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/2/2024 19:29:17'!
m8

vInstance := OrderedCollection new.
vInstance := 'hola'.! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/2/2024 19:30:35'!
m9

self m8.
vInstance isString ifTrue:[vInstance isEmpty].! !

!TypesWithContextAppliersTestMethods methodsFor: 'PLAYGROUND-DELETE' stamp: 'JFGO 7/18/2024 17:41:39'!
mWithArgs: anArg

anArg.
anArg class = Date ifTrue:[anArg ].
anArg class = OrderedCollection ifTrue:[anArg ].

! !

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

!CodeProvider methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/29/2024 18:27:52'!
typeCheckMethod
		
	| typeChecker |
	typeChecker := self currentCompiledMethod typeCheck.
	typeChecker showResultsWith:  typeChecker method classAndSelector 
	! !

!Browser methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/17/2024 18:46:27'!
computeMessageEntriesIn: anAutocompleter ofInstVarNamed: aName inRange: aRange 
	| typeInfo |
	
	typeInfo := self selectedClassOrMetaClass 
		ifNotNil: [ :selected |  self typeInfoForInstVarNamed: aName inRange:aRange withClass: selected ].
		
	anAutocompleter computeMessageEntriesForTypeInfoOrNil: typeInfo ! !

!Browser methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/18/2024 16:38:54'!
computeMessageEntriesIn: anAutocompleter ofTempVarNamed: aName inRange: aRange

	| typeInfo |
	
	typeInfo := currentCompiledMethod ifNotNil: [ self typeInfoForTempVarNamed: aName inRange:aRange].
		
	anAutocompleter computeMessageEntriesForTypeInfoOrNil: typeInfo.	
! !

!Browser methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 8/5/2024 19:24:38'!
typeCheckCategory

	| typeChecker |
	
	selectedSystemCategory ifNotNil: [ 
		typeChecker := ManyMethodsTypeCheckerDragon forAllClasses: (systemOrganizer allClassesAt: selectedSystemCategory).
		typeChecker value.
		typeChecker showResultsWith: selectedSystemCategory name ]
	
	! !

!Browser methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/18/2024 16:39:22'!
typeInfoForInstVarNamed: aName inRange:aRange withClass: aClass
	
	
	^self typeInfoForVarNamed: aName inRange: aRange ifNoContextFoundDo: [^aClass typeInfoOfInstanceVariableNamed: aName ifAbsent: [ nil ].].
! !

!Browser methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/18/2024 16:39:22'!
typeInfoForTempVarNamed: aName inRange:aRange
	
	
	^self typeInfoForVarNamed: aName inRange: aRange ifNoContextFoundDo: [^currentCompiledMethod typeInfoOfVariableNamed: aName ifAbsent: [ nil ].].
		
	
! !

!Browser methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 8/8/2024 20:04:16'!
typeInfoForVarNamed: aName inRange:aRange ifNoContextFoundDo: aBlock
	
	
	| methodNode blockNodeContext variableNode |
	currentCompiledMethod ifNil:[^aBlock value].
	methodNode := currentCompiledMethod methodNode.
	blockNodeContext:=methodNode parseBlockNodeWhenBranchIsIn: aRange start ifAbsent:[^aBlock value].
		
	variableNode := methodNode variableNodeNamed: aName.
	^currentCompiledMethod typeInfoOfVariable: variableNode withNode: methodNode withinBlockNode: blockNodeContext.
! !

!Behavior methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 8/5/2024 19:26:17'!
typeCheck
	
	^(ManyMethodsTypeCheckerDragon forClass: self) value! !

!CompiledMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 8/6/2024 18:27:29'!
typeCheck
	^(MethodTypeCheckerDragon for: self) value! !

!CompiledMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/16/2024 18:48:53'!
typeInfoOfVariable: aVariableNode withNode: aMethodNode withinBlockNode: contextBlock 
	
	| types |
	types := (ContextAppliersMethodVisitor for: self with: aMethodNode on: aVariableNode within: contextBlock addingIncompleteTypeInfoTo: Set new) types.
	^MethodVariableTypeInfo of: aVariableNode name in: self are: types
	
	! !

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

!MethodNode methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/15/2024 19:09:18'!
variableNodeNamed: aVariableName

	|  variableNode  sourceRanges |

	variableNode:=nil.
	sourceRanges := self completeSourceRanges.
	sourceRanges associationsDo: [ :nodeAtRange |
			nodeAtRange key name = aVariableName ifTrue: [
					variableNode:= nodeAtRange key.
				]
			].

	^variableNode.
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

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 7/3/2024 19:12:39'!
isManyAnd

	^self selectorSymbol = #and:and: or:[self selectorSymbol = #and:and:and:]or:[self selectorSymbol = #and:and:and:and:]! !

!MessageNode methodsFor: '*LiveTypingTypeChecker-checking' stamp: 'JFGO 7/3/2024 19:11:33'!
isManyOr

	^self selectorSymbol = #or:or: or:[self selectorSymbol = #or:or:or:]or:[self selectorSymbol = #or:or:or:or:]! !

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

!MessageNode methodsFor: '*LiveTypingTypeChecker-livetypes' stamp: 'JFGO 8/8/2024 17:44:05'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	| messageReturnTypes sentSelector receiverTypes  |

	sentSelector := self selectorSymbol.
	receiverTypes := self receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo:  incompleteTypeInfoReasons storingGenericsInfoIn: aStorage.
	
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

!MessageNode methodsFor: '*LiveTypingTypeChecker-livetypes' stamp: 'JFGO 8/8/2024 18:04:28'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo 
	^self receiverOrCascadeReceiver typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfo. ! !

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

!NotImplementedMethod methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/2/2024 19:27:15'!
typesOfVariableNamed: aVariableName withNode: aMethodNode withinBlockNode: blockToTest addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	^(ContextAppliersMethodVisitor for: self with: aMethodNode on: aVariableName within: blockToTest addingIncompleteTypeInfoTo: incompleteTypeInfoReasons) types.! !

!SmalltalkCompleter methodsFor: '*LiveTypingTypeChecker' stamp: 'JFGO 7/18/2024 16:34:25'!
computeMessageEntriesFor: allSource in: contextClass and: specificModel  
	
	| id rangeType |
	
	canShowSelectorDocumentation := true.
	id := allSource copyFrom: currentRange start to: currentRange end.
	rangeType := currentRange rangeType.

	rangeType == #globalVar
		ifTrue: [ ^self computeMessageEntriesForClass: (Smalltalk at: id asSymbol) class ].
	rangeType == #self
		ifTrue: [ ^self computeMessageEntriesForClass: contextClass ].
	rangeType == #super
		ifTrue: [ ^self computeMessageEntriesForClass: contextClass superclass ].
	rangeType == #true 
		ifTrue: [ ^self computeMessageEntriesForClass: True ].
	rangeType == #false
		ifTrue: [ ^self computeMessageEntriesForClass: False ].
	rangeType == #nil
		ifTrue: [ ^self computeMessageEntriesForClass: UndefinedObject ].
	rangeType == #character
		ifTrue: [ ^self computeMessageEntriesForClass: (id first asciiValue ifNotNil: [Character] ifNil: [UnicodeCodePoint]) ].
	rangeType == #number
		ifTrue: [ ^self computeMessageEntriesForClass: (self classOfLiteral: id in: contextClass) ].
	rangeType == #string
		ifTrue: [ ^self computeMessageEntriesForClass: (self classOfLiteral: id in: contextClass) ].
	rangeType == #symbol
		ifTrue: [ ^self computeMessageEntriesForClass: (self classOfLiteral: id in: contextClass) ].
	rangeType == #stringSymbol
		ifTrue: [ ^self computeMessageEntriesForClass: (self classOfLiteral: id in: contextClass) ].
	rangeType == #instVar
		ifTrue: [ ^specificModel computeMessageEntriesIn: self ofInstVarNamed: id inRange: currentRange ].
	rangeType == #methodArg
		ifTrue: [ ^specificModel computeMessageEntriesIn: self ofTempVarNamed: id inRange: currentRange ].
	rangeType == #tempVar
		ifTrue: [ ^specificModel computeMessageEntriesIn: self ofTempVarNamed: id inRange: currentRange ].
	rangeType == #blockArg
		ifTrue: [ ^specificModel computeMessageEntriesIn: self ofBlockArgNamed: id ].
	rangeType == #blockTempVar
		ifTrue: [ ^specificModel computeMessageEntriesIn: self ofBlockTempVarNamed: id ].
	rangeType == #workspaceVar
		ifTrue: [ ^self computeMessageEntriesForClassOrNil: (specificModel classOfWorkspaceVarNamed: id) ].
	rangeType == #thisContext
		ifTrue: [ ^self computeMessageEntriesForClass: (specificModel classOfThisContext) ]. 
	rangeType == #classVar
		ifTrue: [ ^self computeMessageEntriesForClassOrNil: (self classOfLocalBindingNamed: id in: contextClass) ].
	rangeType == #poolConstant
		ifTrue: [ ^self computeMessageEntriesForClassOrNil: (self classOfLocalBindingNamed: id in: contextClass) ].
	(rangeType beginsWith: #blockEnd)
		ifTrue: [ ^self computeMessageEntriesForClass: BlockClosure ].
	rangeType == #arrayEnd
		ifTrue: [ ^self computeMessageEntriesForClass: Array ].
	(rangeType beginsWith: #rightBrace)
		ifTrue: [ ^self computeMessageEntriesForClass: Array ].
	rangeType == #unary
		ifTrue: [ ^self computeEntriesOfUnaryMessageReturnNamed: id ].
	(rangeType beginsWith: #rightParenthesis)
		ifTrue: [ ^self computeMessageEntriesOfEnclosedExpressionReturn].
	rangeType == #cascadeSeparator
		ifTrue: [ ^self computeMessageEntriesOfCascadeReceiver]. 

	self computeMessageEntriesForUnknowClass 
	
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

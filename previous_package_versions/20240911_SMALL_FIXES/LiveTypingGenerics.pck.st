'From Cuis6.3 [latest update: #6169] on 11 September 2024 at 5:41:30 pm'!
'Description This package adds to LiveTyping the capability of detecting type parameters in generic types such as Array, using type inference. '!
!provides: 'LiveTypingGenerics' 0 16!
!requires: 'LiveTyping' 1 97 nil!
SystemOrganization addCategory: #'LiveTypingGenerics-Foundation'!
SystemOrganization addCategory: #'LiveTypingGenerics-Core'!
SystemOrganization addCategory: #'LiveTypingGenerics-Playground'!
SystemOrganization addCategory: #'LiveTypingGenerics-Tests'!
SystemOrganization addCategory: #LiveTypingGenerics!


!classDefinition: #GAVisitor category: #'LiveTypingGenerics-Core'!
ParseNodeVisitor subclass: #GAVisitor
	instanceVariableNames: 'driver nodes analizedMethodsCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GAVisitor class' category: #'LiveTypingGenerics-Core'!
GAVisitor class
	instanceVariableNames: ''!

!classDefinition: #LiveTypeTests category: #'LiveTypingGenerics-Tests'!
TestCase subclass: #LiveTypeTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'LiveTypeTests class' category: #'LiveTypingGenerics-Tests'!
LiveTypeTests class
	instanceVariableNames: ''!

!classDefinition: #LiveTypingGenericsTests category: #'LiveTypingGenerics-Tests'!
TestCase subclass: #LiveTypingGenericsTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'LiveTypingGenericsTests class' category: #'LiveTypingGenerics-Tests'!
LiveTypingGenericsTests class
	instanceVariableNames: ''!

!classDefinition: #FlowGraphCreationTest category: #'LiveTypingGenerics-Tests'!
LiveTypingGenericsTests subclass: #FlowGraphCreationTest
	instanceVariableNames: 'storage visitor driver'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'FlowGraphCreationTest class' category: #'LiveTypingGenerics-Tests'!
FlowGraphCreationTest class
	instanceVariableNames: ''!

!classDefinition: #GAStorageTest category: #'LiveTypingGenerics-Tests'!
LiveTypingGenericsTests subclass: #GAStorageTest
	instanceVariableNames: 'storage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'GAStorageTest class' category: #'LiveTypingGenerics-Tests'!
GAStorageTest class
	instanceVariableNames: ''!

!classDefinition: #InferenceTest category: #'LiveTypingGenerics-Tests'!
LiveTypingGenericsTests subclass: #InferenceTest
	instanceVariableNames: 'instVarAuxiliar storage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'InferenceTest class' category: #'LiveTypingGenerics-Tests'!
InferenceTest class
	instanceVariableNames: ''!

!classDefinition: #TypeFlowGraphTest category: #'LiveTypingGenerics-Tests'!
LiveTypingGenericsTests subclass: #TypeFlowGraphTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'TypeFlowGraphTest class' category: #'LiveTypingGenerics-Tests'!
TypeFlowGraphTest class
	instanceVariableNames: ''!

!classDefinition: #RawToLiveTypesAdapterTests category: #'LiveTypingGenerics-Tests'!
TestCase subclass: #RawToLiveTypesAdapterTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'RawToLiveTypesAdapterTests class' category: #'LiveTypingGenerics-Tests'!
RawToLiveTypesAdapterTests class
	instanceVariableNames: ''!

!classDefinition: #TooltipTests category: #'LiveTypingGenerics-Tests'!
TestCase subclass: #TooltipTests
	instanceVariableNames: 'types'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'TooltipTests class' category: #'LiveTypingGenerics-Tests'!
TooltipTests class
	instanceVariableNames: ''!

!classDefinition: #TypeNodeTests category: #'LiveTypingGenerics-Tests'!
TestCase subclass: #TypeNodeTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'TypeNodeTests class' category: #'LiveTypingGenerics-Tests'!
TypeNodeTests class
	instanceVariableNames: ''!

!classDefinition: #LiveType category: #'LiveTypingGenerics-Foundation'!
DynamicType subclass: #LiveType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'LiveType class' category: #'LiveTypingGenerics-Foundation'!
LiveType class
	instanceVariableNames: ''!

!classDefinition: #ClassLiveType category: #'LiveTypingGenerics-Foundation'!
LiveType subclass: #ClassLiveType
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'ClassLiveType class' category: #'LiveTypingGenerics-Foundation'!
ClassLiveType class
	instanceVariableNames: ''!

!classDefinition: #FixedType category: #'LiveTypingGenerics-Foundation'!
ClassLiveType subclass: #FixedType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'FixedType class' category: #'LiveTypingGenerics-Foundation'!
FixedType class
	instanceVariableNames: ''!

!classDefinition: #GenericType category: #'LiveTypingGenerics-Foundation'!
ClassLiveType subclass: #GenericType
	instanceVariableNames: 'innerTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'GenericType class' category: #'LiveTypingGenerics-Foundation'!
GenericType class
	instanceVariableNames: ''!

!classDefinition: #EmptyType category: #'LiveTypingGenerics-Foundation'!
LiveType subclass: #EmptyType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'EmptyType class' category: #'LiveTypingGenerics-Foundation'!
EmptyType class
	instanceVariableNames: ''!

!classDefinition: #UnionType category: #'LiveTypingGenerics-Foundation'!
LiveType subclass: #UnionType
	instanceVariableNames: 'types'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'UnionType class' category: #'LiveTypingGenerics-Foundation'!
UnionType class
	instanceVariableNames: ''!

!classDefinition: #CollectionsContentType category: #'LiveTypingGenerics-Foundation'!
Object subclass: #CollectionsContentType
	instanceVariableNames: 'contentTypes collectionType isAssigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'CollectionsContentType class' category: #'LiveTypingGenerics-Foundation'!
CollectionsContentType class
	instanceVariableNames: ''!

!classDefinition: #GenericParametersCollector category: #'LiveTypingGenerics-Foundation'!
Object subclass: #GenericParametersCollector
	instanceVariableNames: 'ccts genericType isAssigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'GenericParametersCollector class' category: #'LiveTypingGenerics-Foundation'!
GenericParametersCollector class
	instanceVariableNames: ''!

!classDefinition: #GenericTypeConstructor category: #'LiveTypingGenerics-Foundation'!
Object subclass: #GenericTypeConstructor
	instanceVariableNames: 'class methodReference argumentCollection fromParams'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'GenericTypeConstructor class' category: #'LiveTypingGenerics-Foundation'!
GenericTypeConstructor class
	instanceVariableNames: ''!

!classDefinition: #LiveTypesPrinter category: #'LiveTypingGenerics-Foundation'!
Object subclass: #LiveTypesPrinter
	instanceVariableNames: 'stream canBeNil'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'LiveTypesPrinter class' category: #'LiveTypingGenerics-Foundation'!
LiveTypesPrinter class
	instanceVariableNames: ''!

!classDefinition: #RawToLiveTypesAdapter category: #'LiveTypingGenerics-Foundation'!
Object subclass: #RawToLiveTypesAdapter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'RawToLiveTypesAdapter class' category: #'LiveTypingGenerics-Foundation'!
RawToLiveTypesAdapter class
	instanceVariableNames: ''!

!classDefinition: #SupertypeDetective category: #'LiveTypingGenerics-Foundation'!
Object subclass: #SupertypeDetective
	instanceVariableNames: 'searchingTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'SupertypeDetective class' category: #'LiveTypingGenerics-Foundation'!
SupertypeDetective class
	instanceVariableNames: ''!

!classDefinition: #TfgNode category: #'LiveTypingGenerics-Foundation'!
Object subclass: #TfgNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TfgNode class' category: #'LiveTypingGenerics-Foundation'!
TfgNode class
	instanceVariableNames: ''!

!classDefinition: #TfgMessageSendNode category: #'LiveTypingGenerics-Foundation'!
TfgNode subclass: #TfgMessageSendNode
	instanceVariableNames: 'methodRef'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TfgMessageSendNode class' category: #'LiveTypingGenerics-Foundation'!
TfgMessageSendNode class
	instanceVariableNames: ''!

!classDefinition: #TfgReturnValue category: #'LiveTypingGenerics-Foundation'!
TfgNode subclass: #TfgReturnValue
	instanceVariableNames: 'methodRef'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TfgReturnValue class' category: #'LiveTypingGenerics-Foundation'!
TfgReturnValue class
	instanceVariableNames: ''!

!classDefinition: #TfgVariableNode category: #'LiveTypingGenerics-Foundation'!
TfgNode subclass: #TfgVariableNode
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TfgVariableNode class' category: #'LiveTypingGenerics-Foundation'!
TfgVariableNode class
	instanceVariableNames: ''!

!classDefinition: #TracedType category: #'LiveTypingGenerics-Foundation'!
Object subclass: #TracedType
	instanceVariableNames: 'type selector argIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TracedType class' category: #'LiveTypingGenerics-Foundation'!
TracedType class
	instanceVariableNames: ''!

!classDefinition: #TracedTypeFromParameter category: #'LiveTypingGenerics-Foundation'!
TracedType subclass: #TracedTypeFromParameter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TracedTypeFromParameter class' category: #'LiveTypingGenerics-Foundation'!
TracedTypeFromParameter class
	instanceVariableNames: ''!

!classDefinition: #TypeFlowGraph category: #'LiveTypingGenerics-Foundation'!
Object subclass: #TypeFlowGraph
	instanceVariableNames: 'nodes links'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TypeFlowGraph class' category: #'LiveTypingGenerics-Foundation'!
TypeFlowGraph class
	instanceVariableNames: ''!

!classDefinition: #TypeNode category: #'LiveTypingGenerics-Foundation'!
Object subclass: #TypeNode
	instanceVariableNames: 'bound generics type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Foundation'!
!classDefinition: 'TypeNode class' category: #'LiveTypingGenerics-Foundation'!
TypeNode class
	instanceVariableNames: ''!

!classDefinition: #GADriver category: #'LiveTypingGenerics-Core'!
Object subclass: #GADriver
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GADriver class' category: #'LiveTypingGenerics-Core'!
GADriver class
	instanceVariableNames: ''!

!classDefinition: #GAFlowGraphCreationDriver category: #'LiveTypingGenerics-Core'!
GADriver subclass: #GAFlowGraphCreationDriver
	instanceVariableNames: 'currentCompiledMethod visitor storage currentGraph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GAFlowGraphCreationDriver class' category: #'LiveTypingGenerics-Core'!
GAFlowGraphCreationDriver class
	instanceVariableNames: ''!

!classDefinition: #GALocalVarAnalysisDriver category: #'LiveTypingGenerics-Core'!
GADriver subclass: #GALocalVarAnalysisDriver
	instanceVariableNames: 'currentTfgVariableNodes currentCompiledMethod visitor states storage isMethodArg graphBuildingDriver tracedParseNodes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GALocalVarAnalysisDriver class' category: #'LiveTypingGenerics-Core'!
GALocalVarAnalysisDriver class
	instanceVariableNames: ''!

!classDefinition: #GAInstanceVarAnalysisDriver category: #'LiveTypingGenerics-Core'!
GALocalVarAnalysisDriver subclass: #GAInstanceVarAnalysisDriver
	instanceVariableNames: 'instVarName currentClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GAInstanceVarAnalysisDriver class' category: #'LiveTypingGenerics-Core'!
GAInstanceVarAnalysisDriver class
	instanceVariableNames: ''!

!classDefinition: #GAMethodArgumentAnalysisDriver category: #'LiveTypingGenerics-Core'!
GALocalVarAnalysisDriver subclass: #GAMethodArgumentAnalysisDriver
	instanceVariableNames: 'originalCompiledMethod argumentIndex onLocalAnalysis collectedTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GAMethodArgumentAnalysisDriver class' category: #'LiveTypingGenerics-Core'!
GAMethodArgumentAnalysisDriver class
	instanceVariableNames: ''!

!classDefinition: #GAReturnValueAnalysisDriver category: #'LiveTypingGenerics-Core'!
GALocalVarAnalysisDriver subclass: #GAReturnValueAnalysisDriver
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GAReturnValueAnalysisDriver class' category: #'LiveTypingGenerics-Core'!
GAReturnValueAnalysisDriver class
	instanceVariableNames: ''!

!classDefinition: #GANonConfigurableStorage category: #'LiveTypingGenerics-Core'!
Object subclass: #GANonConfigurableStorage
	instanceVariableNames: 'analysisFrames graphs generics tracedMethods getterMethods constructorMethods tracedMethodsParameters analysisProgress analyzedMethodCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GANonConfigurableStorage class' category: #'LiveTypingGenerics-Core'!
GANonConfigurableStorage class
	instanceVariableNames: 'tracedMethods'!

!classDefinition: #GAConfigurableStorage category: #'LiveTypingGenerics-Core'!
GANonConfigurableStorage subclass: #GAConfigurableStorage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Core'!
!classDefinition: 'GAConfigurableStorage class' category: #'LiveTypingGenerics-Core'!
GAConfigurableStorage class
	instanceVariableNames: ''!

!classDefinition: #ExampleObserver category: #'LiveTypingGenerics-Playground'!
Object subclass: #ExampleObserver
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Playground'!
!classDefinition: 'ExampleObserver class' category: #'LiveTypingGenerics-Playground'!
ExampleObserver class
	instanceVariableNames: ''!

!classDefinition: #GenericsExamples category: #'LiveTypingGenerics-Playground'!
Object subclass: #GenericsExamples
	instanceVariableNames: 'iv'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Playground'!
!classDefinition: 'GenericsExamples class' category: #'LiveTypingGenerics-Playground'!
GenericsExamples class
	instanceVariableNames: ''!

!classDefinition: #Observed category: #'LiveTypingGenerics-Playground'!
Object subclass: #Observed
	instanceVariableNames: 'observers observedSelectors observedValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Playground'!
!classDefinition: 'Observed class' category: #'LiveTypingGenerics-Playground'!
Observed class
	instanceVariableNames: ''!

!classDefinition: #ObservedExample category: #'LiveTypingGenerics-Playground'!
Object subclass: #ObservedExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Playground'!
!classDefinition: 'ObservedExample class' category: #'LiveTypingGenerics-Playground'!
ObservedExample class
	instanceVariableNames: ''!

!classDefinition: #AuxiliaryTestClasses category: #'LiveTypingGenerics-Tests'!
Object subclass: #AuxiliaryTestClasses
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'AuxiliaryTestClasses class' category: #'LiveTypingGenerics-Tests'!
AuxiliaryTestClasses class
	instanceVariableNames: ''!

!classDefinition: #ClassSharingProtocolA category: #'LiveTypingGenerics-Tests'!
AuxiliaryTestClasses subclass: #ClassSharingProtocolA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'ClassSharingProtocolA class' category: #'LiveTypingGenerics-Tests'!
ClassSharingProtocolA class
	instanceVariableNames: ''!

!classDefinition: #ClassSharingProtocolB category: #'LiveTypingGenerics-Tests'!
AuxiliaryTestClasses subclass: #ClassSharingProtocolB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'ClassSharingProtocolB class' category: #'LiveTypingGenerics-Tests'!
ClassSharingProtocolB class
	instanceVariableNames: ''!

!classDefinition: #DummyGeneric category: #'LiveTypingGenerics-Tests'!
AuxiliaryTestClasses subclass: #DummyGeneric
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'DummyGeneric class' category: #'LiveTypingGenerics-Tests'!
DummyGeneric class
	instanceVariableNames: ''!

!classDefinition: #InstVarTestsAuxiliary category: #'LiveTypingGenerics-Tests'!
AuxiliaryTestClasses subclass: #InstVarTestsAuxiliary
	instanceVariableNames: 'onlyUsedInternally exposedByGetter exposedByMultipleGetters receivingMessagesFromGetters usedAsMessageArgument flowingToOtherVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'InstVarTestsAuxiliary class' category: #'LiveTypingGenerics-Tests'!
InstVarTestsAuxiliary class
	instanceVariableNames: ''!

!classDefinition: #NonSelfTestsAuxiliary category: #'LiveTypingGenerics-Tests'!
AuxiliaryTestClasses subclass: #NonSelfTestsAuxiliary
	instanceVariableNames: 'instVar1 instVar2 instVar3'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'NonSelfTestsAuxiliary class' category: #'LiveTypingGenerics-Tests'!
NonSelfTestsAuxiliary class
	instanceVariableNames: ''!

!classDefinition: #NonSelfTestsAuxiliarySubclass category: #'LiveTypingGenerics-Tests'!
NonSelfTestsAuxiliary subclass: #NonSelfTestsAuxiliarySubclass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics-Tests'!
!classDefinition: 'NonSelfTestsAuxiliarySubclass class' category: #'LiveTypingGenerics-Tests'!
NonSelfTestsAuxiliarySubclass class
	instanceVariableNames: ''!

!classDefinition: #LiveTypingGenerics category: #LiveTypingGenerics!
Object subclass: #LiveTypingGenerics
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LiveTypingGenerics'!
!classDefinition: 'LiveTypingGenerics class' category: #LiveTypingGenerics!
LiveTypingGenerics class
	instanceVariableNames: ''!


!LiveTypeTests commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!RawToLiveTypesAdapterTests commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!TooltipTests commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!TypeNodeTests commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!LiveType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!ClassLiveType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!FixedType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!GenericType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!EmptyType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!UnionType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!CollectionsContentType commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!LiveTypesPrinter commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!RawToLiveTypesAdapter commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!SupertypeDetective commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!TypeNode commentStamp: '<historical>' prior: 0!
This class was taken from previous work by alf & mtqp, 2021, and modified and extended as needed.!

!GAVisitor methodsFor: 'analizing' stamp: 'AC 4/24/2023 12:33:44'!
driver: aGenericAnalysisDriver

	driver _ aGenericAnalysisDriver.! !

!GAVisitor methodsFor: 'visiting' stamp: 'AC 9/12/2023 21:13:22'!
visit: aCompiledMethod

	| currentNodes maximum_methods_to_analyze |

	"this implementation aims to serve as an optimization, as the analysis could involve iterating through the AST of multiple methods. The idea is to not fill up the stack with the function calls made by the visitor pattern. The AST is iterated once and then the stack space is freed before proceding - Adrian"

	maximum_methods_to_analyze := 50.
	maximum_methods_to_analyze <= analizedMethodsCount ifTrue: [
		^self.	
	].
	analizedMethodsCount := analizedMethodsCount + 1.

	nodes add: OrderedCollection new.
	aCompiledMethod methodNode accept: self.
	
	currentNodes := nodes removeLast.
	[currentNodes isEmpty] whileFalse: [ | node |
		
		node := currentNodes removeFirst.
		
		node isAssignmentNode ifTrue: [driver analyzeAssignment: node].
		node isReturn ifTrue: [driver analyzeReturn: node].
		node isMessageNode ifTrue: [driver analyzeMessageSend: node].
		node isCascadeNode ifTrue: [
			node messages do:[ :aMessageNode | driver analyzeMessageSend: aMessageNode]	
		]
		
	].

! !

!GAVisitor methodsFor: 'visiting' stamp: 'AC 8/9/2023 01:46:20'!
visitAssignmentNode: anAssignmentNode
	
	super visitAssignmentNode: anAssignmentNode.
	nodes last addLast: anAssignmentNode.
	"driver analyzeAssignment: anAssignmentNode."! !

!GAVisitor methodsFor: 'visiting' stamp: 'AC 8/9/2023 01:46:15'!
visitMessageNode: aMessageNode

	super visitMessageNode: aMessageNode.
	nodes last addLast: aMessageNode.
	"driver analyzeMessageSend: aMessageNode."

	


	
	
! !

!GAVisitor methodsFor: 'visiting' stamp: 'AC 8/9/2023 01:48:56'!
visitMessageNodeInCascade: aMessageNode

	super visitMessageNodeInCascade: aMessageNode.
	nodes last addLast: aMessageNode.
	"driver analyzeMessageSend: aMessageNode."! !

!GAVisitor methodsFor: 'visiting' stamp: 'AC 4/24/2023 12:33:44'!
visitMethodNode: aMethodNode

	driver analyzeMethod: aMethodNode.
	super visitMethodNode: aMethodNode! !

!GAVisitor methodsFor: 'visiting' stamp: 'AC 8/9/2023 01:46:03'!
visitReturnNode: aReturnNode

	super visitReturnNode: aReturnNode.
	nodes last addLast: aReturnNode.
	"driver analyzeReturn: aReturnNode."

	! !

!GAVisitor methodsFor: 'private' stamp: 'AC 9/12/2023 21:10:32'!
initialize

	nodes := OrderedCollection new.
	analizedMethodsCount := 0.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 19:59:29'!
test001SameType

	self assert: (FixedType for: String) equals: (FixedType for: String)! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 19:59:41'!
test002DifferentType

	self deny: (FixedType for: SmallInteger) = (FixedType for: String)! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/5/2020 20:06:37'!
test003SameHierarchy

	| int float |

	int := (FixedType for: SmallInteger).
	float := (FixedType for: Float).

	self deny: int = float.
	self assert: (int supertypeWith: (Array with: float)) equals: (FixedType for: Number).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/11/2020 19:42:49'!
test004CommonSupertypeIsObject

	| string float |

	string := FixedType for: String.
	float := FixedType for: Float.

	self deny: string = float.
	self assert: (string supertypeWith: (Array with: float)) equals: (FixedType for: Object).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/26/2023 20:40:23'!
test005SameGeneric

	| aGeneric anotherGeneric |
	
	aGeneric := GenericType for: Array withTypes: (Array with: Float with: Integer).
	anotherGeneric := GenericType for: Array withTypes: (Array with: Float with: Integer).

	self assert: aGeneric equals: anotherGeneric.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/26/2023 20:42:08'!
test006SameGenericDifferentOrder

	| aGeneric anotherGeneric |
	
	aGeneric := GenericType for: Array withTypes: (Array with: Float with: Integer).
	anotherGeneric := GenericType for: Array withTypes: (Array with: Integer with: Float with: Integer).

	self assert: aGeneric equals: anotherGeneric.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 5/1/2023 21:48:29'!
test007GenericsHandleSystemTypes

	| aGeneric anotherGeneric |
	
	aGeneric := GenericType for: Array withTypes: (Array with: Float).
	anotherGeneric := GenericType for: Array withTypes: (Array with: (FixedType for: Float)).

	self assert: aGeneric equals: anotherGeneric.
	self assert: aGeneric generics equals: {Set with: (FixedType for: Float)}.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 5/1/2023 21:51:07'!
test008NestedGenerics

	| aGeneric anotherGeneric aGenericCollection aGenericCollection2 anotherGenericCollection|
	
	aGenericCollection := GenericType for: LinkedList withTypes: (Array with: Integer).
	aGenericCollection2 := GenericType for: LinkedList withTypes: (Array with: Integer).
	anotherGenericCollection := GenericType for: Array withTypes: Array new.
	
	aGeneric := GenericType for: Array withTypes: (Array with: aGenericCollection with: anotherGenericCollection with: Integer).
	anotherGeneric := GenericType for: Array withTypes: (Array with: aGenericCollection2 with: anotherGenericCollection with: Integer).

	self assert: aGeneric equals: anotherGeneric.
	self assert: aGeneric generics equals: {Set with: aGenericCollection with: anotherGenericCollection with: (FixedType for: Integer)}.! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:48:17'!
test009GenericSupertypeWithSameGenerics

	| aGenericCollection aGenericCollection2|
	
	aGenericCollection := GenericType for: LinkedList withTypes: Integer.
	aGenericCollection2 := GenericType for: OrderedCollection withTypes: Integer.

	self assert: (aGenericCollection supertypeWith: (Array with: aGenericCollection2)) equals: (GenericType for: SequenceableCollection withTypes: Integer).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 19:34:14'!
test010GenericSupertypeWithCommonGenerics

	| aGenericCollection aGenericCollection2 commonSupertype|
	
	aGenericCollection := GenericType for: LinkedList withTypes: Integer.
	aGenericCollection2 := GenericType for: OrderedCollection withTypes: Float.

	commonSupertype := aGenericCollection supertypeWith: (Array with: aGenericCollection2).

	self assert: commonSupertype equals: (GenericType for: SequenceableCollection withTypes: (Array with: Number)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/27/2023 20:19:52'!
test011FixedAgainstGenericType
	|fixedType genericType|

	fixedType := FixedType for: String.
	genericType := GenericType for: LinkedList withTypes: (Array with: String).

	self assert: (fixedType supertypeWith: genericType) equals: (FixedType for: SequenceableCollection ).
	self assert: (genericType supertypeWith: fixedType) equals: (FixedType for: SequenceableCollection).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:08:04'!
test012FixedAgainstGenericTypeInList
	|fixedType genericType|

	fixedType := FixedType for: String.
	genericType := GenericType for: LinkedList withTypes: (Array with: String).

	self assert: (fixedType supertypeWith: (Array with:(FixedType for: Integer) with: genericType)) equals: (FixedType for: Object).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/27/2023 20:19:39'!
test013GenericAgainstFixedTypeInList
	|fixedType genericType|

	fixedType := FixedType for: String.
	genericType := GenericType for: LinkedList withTypes: (Array with: String).

	self assert: (genericType supertypeWith: (Array with: genericType with: fixedType)) equals: (FixedType for: SequenceableCollection).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:24:21'!
test014NestedGenerics
	|genericType otherGenericType genericType2 otherGenericType2|

	otherGenericType := GenericType for: Array withTypes: Integer.
	otherGenericType2 := GenericType for: OrderedCollection withTypes: Float.

	genericType := GenericType for: LinkedList withTypes: otherGenericType.
	genericType2 := GenericType for: Set withTypes: otherGenericType2.

	self assert: (genericType supertypeWith: genericType2) equals: (GenericType for: Collection withTypes: (GenericType for: SequenceableCollection withTypes: Number)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:34:04'!
test015NestedGenericsWithDifferentDepth
	|genericType fixedType genericType2 otherGenericType|

	fixedType := FixedType for: Integer.
	otherGenericType := GenericType for: OrderedCollection withTypes: Float.

	genericType := GenericType for: LinkedList withTypes: otherGenericType.
	genericType2 := GenericType for: Set withTypes: fixedType.

	self assert: (genericType supertypeWith: genericType2) equals: (GenericType for: Collection withTypes: (FixedType for: Object)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf & mds 2/12/2020 19:43:35'!
test016EmptyTypeAgainstSelf
	|empty otherEmpty|

	empty := EmptyType new.
	otherEmpty := EmptyType new.

	self assert: (empty supertypeWith: otherEmpty) equals: (EmptyType new).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:33:54'!
test017EmptyTypeAgainstFixedType
	|empty fixedType|

	empty := EmptyType new.
	fixedType := FixedType for: Integer.

	self assert: (empty supertypeWith: fixedType) equals: (UnionType of: (FixedType for: Integer) and: EmptyType new).
	self assert: (fixedType supertypeWith: empty) equals: (UnionType of: EmptyType new and: (FixedType for: Integer)).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 13:34:51'!
test018EmptyTypeAgainstGenericType
	|empty genericType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.

	self assert: (empty supertypeWith: genericType) equals: (UnionType of: empty and: genericType).
	self assert: (genericType supertypeWith: empty) equals: (UnionType of: empty and: genericType).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:16:51'!
test019UnionTypeCollectsTypes
	|empty genericType fixedType unionType expectedUnionType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: empty and: genericType.

	fixedType := FixedType for: Integer.
	expectedUnionType :=  (UnionType of: empty and: (Array with: genericType with: fixedType)).

	self assert: expectedUnionType equals: (unionType supertypeWith: fixedType).
	self assert: expectedUnionType equals: (fixedType supertypeWith: unionType).
! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:12:00'!
test020UnionTypeAgainstSelf
	|empty genericType unionType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: empty and: genericType.

	self assert: (unionType supertypeWith: (UnionType of: empty and: genericType)) equals: unionType.
! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/16/2020 14:12:38'!
test021UnionTypeAgainstInnerElement
	|empty genericType unionType |

	empty := EmptyType new.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: empty and: genericType.

	self assert: (genericType supertypeWith: unionType) equals: unionType.
	self assert: (unionType supertypeWith: genericType) equals: unionType! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 14:22:45'!
test022ConvertionAccordingToReceiver

	|empty fixedType genericType unionType |

	empty := EmptyType new.
	fixedType := FixedType for: String.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: fixedType and: genericType.

	self assert: empty equals: (empty asTypeFor: Object new).
	self assert: fixedType equals: (fixedType asTypeFor: Object new).
	self assert: genericType equals: (genericType asTypeFor: Object new).
	self assert: unionType equals: (unionType asTypeFor: Object new).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 14:15:58'!
test023ConvertionToArray

	|empty fixedType genericType unionType |

	empty := EmptyType new.
	fixedType := FixedType for: String.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: fixedType and: genericType.

	self assert: #() equals: empty asArray.
	self assert: {fixedType} equals: fixedType asArray.
	self assert: {genericType} equals: genericType asArray.
	self assert: unionType asArray size equals: 2.
	self assert: unionType asArray includes: fixedType.
	self assert: unionType asArray includes: genericType.
	! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 14:15:22'!
test024EnumeratingClassTypes

	|empty fixedType genericType unionType emptyClasses fixedTypeClasses genericTypeClasses unionTypeClasses |

	empty := EmptyType new.
	fixedType := FixedType for: String.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: fixedType and: genericType.

	emptyClasses := Set new.
	fixedTypeClasses := Set new.
	genericTypeClasses := Set new.
	unionTypeClasses := Set new.
	
	empty classTypesDo: [:aType | emptyClasses add: aType].
	fixedType classTypesDo: [:aType | fixedTypeClasses add: aType].
	genericType classTypesDo: [:aType | genericTypeClasses add: aType].
	unionType classTypesDo: [:aType | unionTypeClasses add: aType].
	

	self assert: emptyClasses isEmpty.
	self assert: fixedTypeClasses equals: (Set with: String).
	self assert: genericTypeClasses equals: (Set with: Collection).
	self assert: unionTypeClasses equals: (Set with: String with: Collection).! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 14:29:53'!
test025EnumeratingLiveTypes

	|empty fixedType genericType unionType emptyLiveTypes fixedTypeLiveTypes genericTypeLiveTypes unionTypeLiveTypes |

	empty := EmptyType new.
	fixedType := FixedType for: String.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: fixedType and: genericType.

	emptyLiveTypes := Set new.
	fixedTypeLiveTypes := Set new.
	genericTypeLiveTypes := Set new.
	unionTypeLiveTypes := Set new.
	
	empty liveTypesDo: [:aType | emptyLiveTypes add: aType].
	fixedType liveTypesDo: [:aType | fixedTypeLiveTypes add: aType].
	genericType liveTypesDo: [:aType | genericTypeLiveTypes add: aType].
	unionType liveTypesDo: [:aType | unionTypeLiveTypes add: aType].
	

	self assert: emptyLiveTypes isEmpty.
	self assert: fixedTypeLiveTypes equals: (Set with: fixedType).
	self assert: genericTypeLiveTypes equals: (Set with: genericType).
	self assert: unionTypeLiveTypes equals: (Set with: fixedType with: genericType).
! !

!LiveTypeTests methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 14:34:37'!
test026EnumeratingLiveAndClassTypes

	|empty fixedType genericType unionType emptyClasses fixedTypeClasses genericTypeClasses unionTypeClasses emptyLiveTypes fixedTypeLiveTypes genericTypeLiveTypes unionTypeLiveTypes |

	empty := EmptyType new.
	fixedType := FixedType for: String.
	genericType := GenericType for: Collection withTypes: String.
	unionType := UnionType of: fixedType and: genericType.

	emptyLiveTypes := Set new.
	fixedTypeLiveTypes := Set new.
	genericTypeLiveTypes := Set new.
	unionTypeLiveTypes := Set new.
	
	emptyClasses := Set new.
	fixedTypeClasses := Set new.
	genericTypeClasses := Set new.
	unionTypeClasses := Set new.
	
	empty liveAndClassTypesDo: [:aLiveType :aClassType | 
		emptyLiveTypes add: aLiveType.
		emptyClasses add: aClassType.
	].
	fixedType liveAndClassTypesDo: [:aLiveType :aClassType | 
		fixedTypeLiveTypes add: aLiveType.
		fixedTypeClasses add: aClassType.
	].
	genericType liveAndClassTypesDo: [:aLiveType :aClassType | 
		genericTypeLiveTypes add: aLiveType.
		genericTypeClasses add: aClassType.
	].
	unionType liveAndClassTypesDo: [:aLiveType :aClassType | 
		unionTypeLiveTypes add: aLiveType.
		unionTypeClasses add: aClassType.
	].
	
	self assert: emptyClasses isEmpty.
	self assert: fixedTypeClasses equals: (Set with: String).
	self assert: genericTypeClasses equals: (Set with: Collection).
	self assert: unionTypeClasses equals: (Set with: String with: Collection).
	self assert: emptyLiveTypes isEmpty.
	self assert: fixedTypeLiveTypes equals: (Set with: fixedType).
	self assert: genericTypeLiveTypes equals: (Set with: genericType).
	self assert: unionTypeLiveTypes equals: (Set with: fixedType with: genericType).
! !

!FlowGraphCreationTest methodsFor: 'setUp/tearDown' stamp: 'AC 8/21/2023 23:11:13'!
setUp

	storage := GAConfigurableStorage new.
	storage initializeAnalysisForTypes: {Array}.
	
	visitor := GAVisitor new.
	
	driver := GAFlowGraphCreationDriver for: (self class >> testSelector)
				visitor: visitor
				storage: storage! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 20:20:07'!
test01onVarToVarAssigmentAssignorFlowsToAssignee

	| graph tmp1 tmp2 tmp1Node tmp2Node |
	tmp1 := 1.
	tmp2 := tmp1.
	
	driver runAnalysis.
	graph := storage graphFor: (thisContext method).
	
	tmp1Node := TfgVariableNode for: 'tmp1'.
	tmp2Node := TfgVariableNode for: 'tmp2'.
	
	self assert: (graph outNeighborsOf: tmp1Node) includes: tmp2Node.
	self assert: (graph inNeighborsOf: tmp2Node) includes: tmp1Node.! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 20:20:21'!
test02ThereIsAlwaysANodeForReturnValue

	| graph returnValueNodes |
	
	driver runAnalysis.
	graph := storage graphFor: (thisContext method).
	returnValueNodes := (graph nodes) select: [:e | e isKindOf: TfgReturnValue].

	self assert: 1 equals: (returnValueNodes size).
	self assert:returnValueNodes includes: (TfgReturnValue new).
! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 20:20:38'!
test03onAssigmentToAssigmentAllVarsAreLinked

	| graph tmp1 tmp1Node tmp2 tmp3 tmp2Node tmp3Node |
	tmp1 := tmp2 := tmp3 := 1.
	
	driver runAnalysis.
	graph := storage graphFor: (thisContext method).
	
	tmp1Node := TfgVariableNode for: 'tmp1'.
	tmp2Node := TfgVariableNode for: 'tmp2'.
	tmp3Node := TfgVariableNode for: 'tmp3'.
	
	self assert: 3 equals: (graph inNeighborsOf: tmp1Node) size.
	self assert: (graph inNeighborsOf: tmp1Node) includes: tmp2Node.
	self assert: (graph inNeighborsOf: tmp1Node) includes: tmp3Node.
	self assert: (graph inNeighborsOf: tmp2Node) includes: tmp3Node.
! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 20:30:05'!
test04onVarReturnItFlowsToReturnNode

	| graph method tmpNode |
 	method := self class >> #returnALocalVariable. 
	
	driver compiledMethod: method.
	driver runAnalysis.
	graph := storage graphFor: method.
	
	tmpNode := TfgVariableNode for: 'tmp'.
	
	self assert: (graph outNeighborsOf: tmpNode) includes: (TfgReturnValue new).
	
	
	
	! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 7/19/2023 19:34:56'!
test05CanTrackAMethodThroughMessageSends

	| graph method msgSendNode methodRef |
	
 	method := self class >> #sendsMessageWithNoArguments.
	methodRef := MethodReference method: method.
	storage trackMessageSendsFor: methodRef.
	
	"it doesn't really matter which method is processed, as it will always have the nodes for the message send"
	driver compiledMethod: method.
	driver runAnalysis.
	graph := storage graphFor: method.
	
	msgSendNode := TfgMessageSendNode methodRef: methodRef.
	
	"graph also includes 3 instVars of this class, 3 instVars from TestCase, return value and the use of 'self' pseudo var"
	self assert: 9 equals: (graph nodes size).
	self assert: (graph nodes) includes: msgSendNode.
	
	
	
	! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 7/19/2023 19:35:35'!
test06TrackedMethodIsLinkedToVarsOnAssigment

	| graph method msgSendNode methodRef |
	
 	method := self class >> #sendsMessageWithNoArguments.
	methodRef := MethodReference method: method.
	storage trackMessageSendsFor: methodRef.
	
	driver compiledMethod: (self class >> #assignsMessageResultToVar).
	driver runAnalysis.
	graph := storage graphFor: (self class >> #assignsMessageResultToVar).
	
	msgSendNode := TfgMessageSendNode methodRef: methodRef.
	
	"graph also includes 3 instVars of this class, 3 instVars from TestCase, tmp var, msg, return value and the use of 'self' pseudo var"
	self assert: 10 equals: (graph nodes size).
	self assert: (graph nodes) includes: msgSendNode.
	self assert: (
		graph 
			isConnected:  msgSendNode
			with: (TfgVariableNode for: 'tmp')
	).
	
	
	
	! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 7/19/2023 19:35:30'!
test07CanTrackMultipleMethodThroughMessageSends

	| graph method msgSendNode1 methodRef1 methodRef2 msgSendNode2 |
	
 	method := self class >> #sendsMessageWithNoArguments.
	methodRef1 := MethodReference method: method.
	methodRef2 := MethodReference method: (self class >> #assignsMessageResultToVar).
	
	storage trackMessageSendsFor: methodRef1.
	storage trackMessageSendsFor: methodRef2.
	
	"it doesn't really matter which method is processed, as it will always have the nodes for the message send"
	driver compiledMethod: method. 
	driver runAnalysis.
	graph := storage graphFor: method.
	
	msgSendNode1 := TfgMessageSendNode methodRef: methodRef1.
	msgSendNode2 := TfgMessageSendNode methodRef: methodRef2.
	
	"graph also includes 3 instVars of this class, 3 instVars from TestCase, return value and the use of 'self' pseudo var"
	self assert: 10 equals: (graph nodes size).
	self assert: (graph nodes) includes: msgSendNode1.
	self assert: (graph nodes) includes: msgSendNode2.
	
	
	
	! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 22:18:39'!
test08TrackedMethodsAreLinkedToVarsOnAssigment

	| graph msgSendNode1 msgSendNode2 methodRef1 methodRef2 tmp1 tmp2 |

	methodRef1 := MethodReference method: (self class >> #sendsMessageWithNoArguments).
	methodRef2 := MethodReference method: (self class >> #assignsMessageResultToVar).
	
	storage trackMessageSendsFor: methodRef1.
	storage trackMessageSendsFor: methodRef2.
	
	tmp1 := self sendsMessageWithNoArguments.
	tmp2 := self assignsMessageResultToVar.
	
	driver runAnalysis.
	graph := storage graphFor: (thisContext method).

	msgSendNode1 := TfgMessageSendNode methodRef: methodRef1.
	msgSendNode2 := TfgMessageSendNode methodRef: methodRef2.
	
	self assert: (graph nodes) includes: msgSendNode1.
	self assert: (
		graph 
			isConnected:  msgSendNode1
			with: (TfgVariableNode for: 'tmp1')
	).
	self assert: (
		graph 
			isConnected:  msgSendNode2
			with: (TfgVariableNode for: 'tmp2')
	).
	
	
	
	! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 22:18:55'!
test09InstVarsAreAlwaysAddedToGraph

	| graph |

	driver runAnalysis.
	graph := storage graphFor: (thisContext method).

	self class instVarNames do: [:instVarName | 
		self assert: graph nodes includes: (TfgVariableNode for: instVarName).	
	]
	
	
	! !

!FlowGraphCreationTest methodsFor: 'graph building' stamp: 'AC 4/17/2023 22:19:10'!
test10WhenVarIsConnectedToReturnValueItsNeighborsAreAlsoConnected

	| graph method returnNode |

	method := (self class >> #returnsAVariableAssignedToOtherVariables).
	returnNode := TfgReturnValue new.
	
	driver compiledMethod: method.
	driver runAnalysis.
	graph := storage graphFor: method.
	
	self assert: (graph isConnected: returnNode with: (TfgVariableNode for: 'var1')).
	self assert: (graph isConnected: returnNode with: (TfgVariableNode for: 'var2')).
	self assert: (graph isConnected: returnNode with: (TfgVariableNode for: 'var3')).	
	
	! !

!FlowGraphCreationTest methodsFor: 'auxiliary' stamp: 'AC 3/12/2023 22:40:25'!
assignsMessageResultToVar

	| tmp |
	tmp _ self sendsMessageWithNoArguments.! !

!FlowGraphCreationTest methodsFor: 'auxiliary' stamp: 'AC 3/8/2023 22:48:37'!
returnALocalVariable

	| tmp |
	tmp _ 1.
	^tmp.
	
	
	
	! !

!FlowGraphCreationTest methodsFor: 'auxiliary' stamp: 'AC 3/8/2023 22:50:15'!
returnAnExprWithoutVars

	^1+1! !

!FlowGraphCreationTest methodsFor: 'auxiliary' stamp: 'AC 3/16/2023 00:16:01'!
returnsAVariableAssignedToOtherVariables

	| var1 var2 var3 |
	var1 _ nil.
	var2 _ var1.
	var3 _ var1.
	^var1.! !

!FlowGraphCreationTest methodsFor: 'auxiliary' stamp: 'AC 3/8/2023 22:52:07'!
sendsMessageWithNoArguments

	self returnALocalVariable! !

!GAStorageTest methodsFor: 'auxiliary' stamp: 'AC 3/13/2023 21:26:30'!
m1! !

!GAStorageTest methodsFor: 'setUp/tearDown' stamp: 'AC 5/3/2023 00:47:58'!
setUp
	
	storage := GAConfigurableStorage new
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/1/2023 22:12:05'!
test01CanAddAGenericType

	| generics |
	storage addGeneric: Array.
	
	generics := storage genericTypes.
	self assert: 1 equals: generics size.
	self assert: (generics includesKey: Array).
	self assert: 1 equals: (generics at: Array).! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/1/2023 22:12:32'!
test02GenericsDoesNotRepeat

	| generics |
	storage addGeneric: Array.
	storage addGeneric: Array.
	storage addGeneric: OrderedCollection.
	
	generics := storage genericTypes.
	self assert: 2 equals: generics size.
	self assert: (generics includesKey: Array).
	self assert: (generics includesKey: OrderedCollection).! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/1/2023 22:13:34'!
test03GenericsCannotBeAlteredFromOuterScope

	| generics |
	storage addGeneric: Array.
	generics := storage genericTypes.
	generics at: Bag put: 1.
	
	self assert: 1 equals: storage genericTypes size.
	self assert: (storage genericTypes includesKey: Array).
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/24/2023 18:10:02'!
test04CanSaveASelectorForAGeneric

	| traced |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	traced _ storage tracedMethodsFor: Array.
	self assert: (traced includesKey: #at:put:)
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/3/2023 01:29:02'!
test05TracedMethodsCanBeRecovered

	| traced |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	traced := storage tracedMethodsFor: Array.
	self assert: (traced includesKey: #at:put:).
	self assert: {1->2} equals: (traced at: #at:put:).
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/24/2023 18:10:02'!
test06TracedMethodsCantBeModifiedExternally

	| traced |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	traced _ storage tracedMethodsFor: Array.
	traced at: #test: put: 1.
	
	traced _ storage tracedMethodsFor: Array.
	
	self deny: (traced includesKey: #test:).
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/24/2023 18:10:02'!
test07ATracedMethodCanBeDeleted

	| traced |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	storage stopTracing: #at:put: for: Array.
	traced _ storage tracedMethodsFor: Array.
	
	self deny: (traced includesKey: #at:put:).! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/24/2023 18:10:02'!
test08AGenericCanBeDeleted

	| traced |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	storage stopTracing: Array.
	traced _ storage tracedMethodsFor: Array.
	
	self assert: (traced size) equals: 0.! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/2/2023 00:50:31'!
test09CanSaveAGetterSelectorForAGeneric

	| getters |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	getters := storage getterMethodsFor: Array.
	
	self assert: (getters size) equals: 1.
	self assert: (getters includesKey: #at:).
	self assert: 1 equals: (getters at: #at:).! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/2/2023 00:51:00'!
test10GetterSelectorsCantBeModifiedExternally

	| getters |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	getters := storage getterMethodsFor: Array.
	getters at: #test: put: 1.
	
	getters := storage getterMethodsFor: Array..
	self deny: (getters includesKey: #test:).
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/28/2023 01:03:14'!
test11CanStoreAndRetrieveTracedMethodRefs

	| methodRef trackedMethodRefs |
	methodRef := MethodReference method: (thisContext method).
	storage initializeAnalysisForTypes: {Array}.
	storage trackMessageSendsFor: methodRef.
	
	trackedMethodRefs := storage trackedMethodRefs.
	
	self assert: methodRef equals: trackedMethodRefs first.! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/28/2023 01:23:44'!
test12CanStoreAndRetrieveMultipleTracedMethodRefs

	| methodRef1 methodRef2 trackedMethodRefs |
	
	methodRef1 := MethodReference method: (thisContext method).
	methodRef2 := MethodReference method: (self class >> #m1).
	
	storage initializeAnalysisForTypes: {Array}.
	storage trackMessageSendsFor: methodRef1.
	storage trackMessageSendsFor: methodRef2.
	
	trackedMethodRefs := storage trackedMethodRefs.
	
	self assert: trackedMethodRefs includes: methodRef1.
	self assert: trackedMethodRefs includes: methodRef2.! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/2/2023 14:09:50'!
test13AnalysisCanBeInitializedRecursively

	| innerInferredTypes outerInferredTypes |
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	storage initializeAnalysisForTypes: {Array}.
	storage addType: (FixedType for: String) to: 1 for: Array.
	
	storage initializeAnalysisForTypes: {Array}.
	storage addType: (UnionType of: (FixedType for: False) and: (FixedType for: SmallInteger))
			to: 1 for: Array.
	
	innerInferredTypes := storage inferredTypes.
	outerInferredTypes := storage inferredTypes.
	
	self assert: innerInferredTypes equals: (GenericType for: Array withTypes: {False. SmallInteger} ).
	self assert: outerInferredTypes equals: (GenericType for: Array withTypes: {String} ).
	
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/28/2023 01:25:55'!
test14RecursiveAnalysisHasRecursiveTracedMethods

	| methodRef1 methodRef2 innerTrackedMethodRefs outerTrackedMethodRefs |
	
	methodRef1 := MethodReference method: (thisContext method).
	methodRef2 := MethodReference method: (self class >> #m1).
	
	storage initializeAnalysisForTypes: {Array}.
	storage trackMessageSendsFor: methodRef1.
	
	storage initializeAnalysisForTypes: {Array}.
	storage trackMessageSendsFor: methodRef2.
	
	innerTrackedMethodRefs := storage trackedMethodRefs.
	storage inferredTypes.
	outerTrackedMethodRefs := storage trackedMethodRefs.
	storage inferredTypes.
	
	self assert: 1 equals: innerTrackedMethodRefs size.
	self assert: innerTrackedMethodRefs includes: methodRef2.
	
	self assert: 1 equals: outerTrackedMethodRefs size.
	self assert: outerTrackedMethodRefs includes: methodRef1.
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 3/28/2023 01:31:15'!
test15GraphsAreDeletedWhenAllAnalysisFinish

	"if a graph is not present in the storage, it gets created on access - Adrian"

	| graph nodesAfterAnalysis nodesDuringAnalysis |
	storage initializeAnalysisForTypes: {Array}.
	
	graph := storage graphFor: (thisContext method).
	graph addNode: (TfgReturnValue new).
	
	nodesDuringAnalysis := (storage graphFor: (thisContext method)) nodesSize.
	storage inferredTypes.
	nodesAfterAnalysis := (storage graphFor: (thisContext method)) nodesSize.
	
	self assert: 1 equals: nodesDuringAnalysis.
	self assert: 0 equals: nodesAfterAnalysis.! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 4/24/2023 01:29:35'!
test16CanStoreGenericTypeConstructors

	storage traceConstructor: (MethodReference class: DummyGeneric class selector: #aSelector) for: DummyGeneric onArgs: #(1).
		
	self deny: (storage genericTypeConstructorFrom: (MethodReference class: DummyGeneric class selector: #aSelector)) = nil.
	self assert: (storage genericTypeConstructorFrom: (MethodReference class: DummyGeneric class selector: #anUnknownSelector)) equals: nil.! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/1/2023 00:51:06'!
test17SaveASelectorForAGenericWithMultipleParams

	| traced |
	storage addGeneric: Dictionary.
	storage trace: #at:put: for: Dictionary onArgs: {1->1. 2->2}.
	
	storage initializeAnalysisForTypes: {Dictionary}.
	traced := (storage tracedTypesForSelector: #at:put:) anyOne.
	self assert: Dictionary equals: traced type.
	self assert: 2 equals: traced argIndexes size.
	self assert: (traced argIndexes includes: 1).
	self assert: (traced argIndexes includes: 2).
	
	! !

!GAStorageTest methodsFor: 'tests' stamp: 'AC 5/3/2023 00:04:48'!
test18AGetterMethodCanBeDeleted

	| traced |
	storage addGeneric: Array.
	storage addGetterFor: Array on: #at:.
	
	storage stopTracing: #at: for: Array.
	traced := storage getterMethodsFor: Array.
	
	self deny: (traced includesKey: #at:put:).! !

!InferenceTest methodsFor: 'setUp/tearDown' stamp: 'AC 10/11/2022 00:24:58'!
resetTypesIfRunningTypingCase

	| method |
	method _ (self class >> testSelector).	
	method category asString = 'typing cases' ifTrue:[
		method initializeTypeInformation.
	].! !

!InferenceTest methodsFor: 'setUp/tearDown' stamp: 'AC 5/3/2023 00:48:08'!
setUp
	
	storage := GAConfigurableStorage new.
	
	InstVarTestsAuxiliary initializeInstanceVariablesRawTypes.
	instVarAuxiliar := InstVarTestsAuxiliary new.
	
	self resetTypesIfRunningTypingCase.
	
	
	! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 4/10/2023 18:52:46'!
arrayOfStrFromMsgSend
	
	^self arrayOfStrFromVar.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 4/10/2023 18:17:43'!
arrayOfStrFromVar

	| var1 |
	var1 := Array new: 10.
	var1 at: 1 put: 'str'.
	^var1! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 4/5/2023 20:59:19'!
from: aCompiledMethod getStatement: anIndex

	^aCompiledMethod methodNode block statements at: anIndex! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 4/5/2023 20:59:38'!
fromCurrentTestGetStatement: anIndex

	^self from: (self class >> testSelector) getStatement: anIndex.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 2/24/2023 02:21:08'!
id: anObject

	^anObject. 
	
	! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 12/23/2022 01:48:58'!
inFirstPositionOf: aCollection put: anObject

	aCollection at: 1 put: anObject.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 4/20/2023 23:21:35'!
methodAcceptingArrayAndAddingStrToIt: anArray

	anArray at: 1 put: 'str'.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 8/4/2023 04:54:09'!
methodAcceptingArrayAndAddingStrToItWithNoCallers: anArray

	anArray at: 1 put: 'str'.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 4/12/2023 21:29:23'!
methodAcceptingArrayOfStr: arrayOfStr 
	
	"dummy method for test, do nothing"! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 5/2/2023 00:39:39'!
methodAcceptingDictionaryOfIntegerAndStr: DictionaryOfIntegerAndStr 
	
	"dummy method for test, do nothing"! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 5/2/2023 00:47:15'!
methodAcceptingDictionaryOfIntegerAndStrAndAddingToIt: DictionaryOfIntegerAndStr 
	
	DictionaryOfIntegerAndStr at: 1 put: 'str'.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 3/16/2023 00:34:31'!
playgroundClass
	^NonSelfTestsAuxiliary! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 1/29/2023 20:25:21'!
putIntegerInFirstPositionOf: aCollection 
	
	aCollection at: 1 put: 1.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 1/29/2023 23:08:29'!
putStrIn: aCollection andIntegerIn: anotherCollection

	self putStrInFirstPositionOf: aCollection.
	self putIntegerInFirstPositionOf: anotherCollection.
	
	! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 8/2/2023 02:29:28'!
putStrInFirstPositionAndThenReturn: aCollection 
	
	aCollection at: 1 put: 'str'.
	^aCollection.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 1/27/2023 02:10:03'!
putStrInFirstPositionOf: aCollection 
	
	aCollection at: 1 put: 'str'.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 1/29/2023 20:50:22'!
putStrThenIntegerInFirstPositionOf: aCollection 
	
	self putStrInFirstPositionOf: aCollection.
	self putIntegerInFirstPositionOf: aCollection.! !

!InferenceTest methodsFor: 'auxiliary' stamp: 'AC 12/23/2022 03:24:04'!
recurse: aRecursionCount timesAdding: anObject to: aCollection 
	
	aRecursionCount < 0 ifTrue: [^self].
	
	aRecursionCount isZero 
		ifFalse: [
			aCollection at:1 put: anObject. 
			self recurse: (aRecursionCount - 1) timesAdding: anObject to: aCollection.]
	.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/9/2023 22:29:40'!
test01GenericClassesAreReplacedByGenericTypeInstances

	| tmp types tmpNode expected |
	
	tmp := Array new: 1.
	tmp := OrderedCollection new: 1.
	
	storage addGeneric: Array.
	storage addGeneric: OrderedCollection.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.

	expected := UnionType of: (GenericType for: Array withTypes: {EmptyType new})
						and: (GenericType for: OrderedCollection withTypes: {EmptyType new}).

	self assert: expected equals: types .! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/9/2023 22:30:05'!
test02GenericClassesAreMergedWithTheirGenericTypes

	| tmp types tmpNode |
	
	tmp := Array new: 1.
	tmp := Array new: 1.
	
	storage addGeneric: Array.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {EmptyType new}) equals: types ! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/9/2023 22:30:33'!
test03LiteralCollectionOneLiteralElement

	| tmp types tmpNode |
	
	tmp := Array new: 10.
	tmp at: 1 put: 'str'.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String} ) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/9/2023 22:31:00'!
test04LiteralCollectionLiteralElementsOfDifferentType

	| tmp types tmpNode |
	
	tmp := Array new: 10.
	tmp at: 1 put: 'str1'.
	tmp at: 1 put: false.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. False} ) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/9/2023 22:31:57'!
test05LiteralCollectionElementsFromVariable

	| tmp types boolean string tmpNode |
	
	
	string := 'str1'.
	boolean := false.
	
	tmp := Array new: 10.
	tmp at: 1 put: string.
	tmp at: 1 put: boolean.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	tmpNode := (self fromCurrentTestGetStatement:3) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. False}) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/9/2023 22:32:53'!
test06LiteralCollectionElementsFromMethodCall

	| tmp types tmpNode |
	
	(self class >> #inFirstPositionOf:put:) initializeTypeInformation.	
	
	tmp := Array new: 10.
	self inFirstPositionOf: tmp put: 'str'.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	tmpNode := (self fromCurrentTestGetStatement: 2) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String}) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:06:26'!
test07LiteralCollectionElementsFromMethodCallWithArgumentsTypesFromContext

	| tmp types unused tmpNode |
	
	(self class >> #inFirstPositionOf:put:) initializeTypeInformation.	
	unused := Array new: 10.
	"make some calls so that 2nd parameter has multiple types in the function context"
	self inFirstPositionOf: unused put: 1.
	self inFirstPositionOf: unused put: false.
	self inFirstPositionOf: unused put: 1.0.
	
	tmp := Array new: 10.
	
	self inFirstPositionOf: tmp put: 'str'.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	tmpNode := (self fromCurrentTestGetStatement: 6) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. SmallInteger. SmallFloat64. False}) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:06:40'!
test08LiteralCollectionElementsFromRecursiveMethod

	| tmp types tmpNode |
	
	tmp := Array new: 10.
	self recurse: 3 timesAdding: 'str' to: tmp .
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String}) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:07:17'!
test09LiteralCollectionFlowingInMultipleVariables

	| tmp1 typesTmp1 tmp2 typesTmp2 tmpNode |

	tmp1 := Array new: 10.
	tmp2 := tmp1.
	tmp1 at: 1 put: 'str1'.
	tmp2 at: 1 put: false.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	typesTmp1 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	tmpNode := (self fromCurrentTestGetStatement: 2) variable.
	typesTmp2 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. False}) equals: typesTmp1.
	self assert: (GenericType for: Array withTypes: {String. False}) equals: typesTmp2.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:08:09'!
test10LiteralCollectionFlowingInMultipleVariablesArgumentInMethod

	| tmp1 typesTmp1 tmp2 typesTmp2 tmpNode |
	
	tmp1 := Array new: 10.
	tmp2 := tmp1.
	self putStrInFirstPositionOf: tmp1.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	
	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	typesTmp1 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	tmpNode := (self fromCurrentTestGetStatement: 2) variable.
	typesTmp2 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String}) equals: typesTmp1.
	self assert: (GenericType for: Array withTypes: {String}) equals: typesTmp2.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:08:48'!
test11LiteralCollectionFlowingInMultipleVariablesEachReceivingMessages

	| tmp1 typesTmp1 tmp2 typesTmp2 tmpNode |
	
	tmp1 := Array new: 10.
	tmp1 at: 1 put: 'str'	.
	tmp2 := Array new: 10.
	tmp2 at: 1 put: false.
	tmp2 := tmp1.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	
	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	typesTmp1 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	tmpNode := (self fromCurrentTestGetStatement: 3) variable.
	typesTmp2 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. False}) equals: typesTmp1.
	self assert: (GenericType for: Array withTypes: {String. False}) equals: typesTmp2.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:09:32'!
test12LiteralCollectionFlowingInMultipleVariablesEachReceivingMessagesBeforeAndAfterAssigment

	| tmp1 typesTmp1 tmp2 typesTmp2 tmpNode |
	
	tmp1 := Array new: 10.
	tmp1 at: 1 put: 'str'.
	tmp2 := tmp1.
	tmp2 at: 1 put: false.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	typesTmp1 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	tmpNode := (self fromCurrentTestGetStatement: 3) variable.
	typesTmp2 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. False}) equals: typesTmp1.
	self assert: (GenericType for: Array withTypes: {String. False}) equals: typesTmp2.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:10:05'!
test13LiteralCollectionFlowingInMultipleVariablesArgumentInMultipleMethod

	| tmp1 typesTmp1 tmp2 typesTmp2 tmpNode |
	
	tmp1 := Array new: 10. 
	tmp2 := Array new: 10. 
	tmp2 at: 1 put: false. 
	tmp2 := tmp1. 
	self putStrThenIntegerInFirstPositionOf: tmp1.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	typesTmp1 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	tmpNode := (self fromCurrentTestGetStatement: 2) variable.
	typesTmp2 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. False. SmallInteger}) equals: typesTmp1.
	self assert: (GenericType for: Array withTypes: {String. False. SmallInteger}) equals: typesTmp2.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:11:05'!
test14LiteralCollectionFlowingInMultipleVariablesMultipleArgumentsInMethod

	| tmp1 typesTmp1 tmp2 typesTmp2 tmpNode |

	tmp1 := Array new: 10.
	tmp2 := tmp1.
	self putStrIn: tmp1 andIntegerIn: tmp2.
	
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	typesTmp1 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	tmpNode := (self fromCurrentTestGetStatement: 2) variable.
	typesTmp2 := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. SmallInteger}) equals: typesTmp1.
	self assert: (GenericType for: Array withTypes: {String. SmallInteger}) equals: typesTmp2.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:11:35'!
test15LiteralCollectionFlowingToNonSelfMethod

	| tmp types tmpNode |
	
	tmp := Array new: 10.
	(NonSelfTestsAuxiliary new) putStrInFirstPositionOf: tmp.
		
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String}) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:12:18'!
test16LiteralCollectionFlowingToSuperMethod

	| tmp types tmpNode |
	
	tmp := Array new: 10.
	(NonSelfTestsAuxiliarySubclass new) putIntegerThenStrInFirstPositionOf: tmp.
		
	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. SmallInteger}) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 7/26/2023 21:02:05'!
test17GenericTypeReturningParameterFromGetter

	| tmp tmpAt1Node types |
	
	tmp := Array new: 10.
	tmp at: 1 put: 'str'.
	tmp at: 1.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	tmpAt1Node := self fromCurrentTestGetStatement: 3.

	types := tmpAt1Node liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (FixedType for: String) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:16:47'!
test18MethodReturningGenericType

	| tmpNode types |
	
	self arrayOfStrFromVar.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	tmpNode := self fromCurrentTestGetStatement: 1.

	types := tmpNode 
		liveTypesIn: (self class >> #arrayOfStrFromVar)
		addingIncompleteTypeInfoTo:  (Set new)
		storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:18:12'!
test19InstanceVariableUsedOnlyWithinCurrentClass

	| types instVarNode |

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	instVarAuxiliar initInstVarOnlyUsedInternally.
	
	instVarNode := (self 
		from: (instVarAuxiliar class >> #initInstVarOnlyUsedInternally) 
		getStatement: 1) variable.
		
	types := instVarNode 
		liveTypesIn: (instVarAuxiliar class >> #initInstVarOnlyUsedInternally)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. SmallInteger }) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:18:28'!
test20InstanceVariableExposedByGetterAssignToVariable

	| tmp types instVarNode |

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	instVarAuxiliar initInstVarExposedByGetter.
	tmp := instVarAuxiliar getterForVarExposedByGetter.
	tmp at: 1 put: 'str'.
	
	instVarNode := (self 
		from: (instVarAuxiliar class >> #initInstVarExposedByGetter) 
		getStatement: 1) variable.
		
	types := instVarNode 
		liveTypesIn: (instVarAuxiliar class >> #initInstVarExposedByGetter)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {String. SmallInteger }) equals: types.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:18:50'!
test21InstanceVariableExposedByMultipleGettersAssignToVariable

	| tmp1 types tmp2 instVarNode |

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	instVarAuxiliar initInstVarExposedByMultipleGetters .
	tmp1 := instVarAuxiliar firstGetterForVarExposedByMultipleGetters .
	tmp1 at: 2 put: 'str'.
	tmp2 := instVarAuxiliar secondGetterForVarExposedByMultipleGetters.
	tmp2 at: 1 put: false.
	
	instVarNode := (self 
		from: (instVarAuxiliar class >> #initInstVarExposedByMultipleGetters) 
		getStatement: 1) variable.
		
	types := instVarNode 
		liveTypesIn: (instVarAuxiliar class >> #initInstVarExposedByMultipleGetters)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String. SmallInteger. False}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:19:07'!
test22InstanceVariableMessageSendsToGetters

	| types instVarNode |

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	instVarAuxiliar initInstVarReceivingMessagesFromGetters .
	(instVarAuxiliar getterReceivingMessages) at: 1 put: 'str'.
	
	instVarNode := (self 
		from: (instVarAuxiliar class >> #initInstVarReceivingMessagesFromGetters) 
		getStatement: 1) variable.
		
	types := instVarNode 
		liveTypesIn: (instVarAuxiliar class >> #initInstVarReceivingMessagesFromGetters)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:19:20'!
test23InstanceVariableGettersUsedAsArguments

	| types instVarNode |

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	instVarAuxiliar initInstVarUsedAsMessageArgumentFromGetter.
	self putStrInFirstPositionOf: (instVarAuxiliar getterInstVarUsedAsMessageArgumentFromGetter).
	
	instVarNode := (self 
		from: (instVarAuxiliar class >> #initInstVarUsedAsMessageArgumentFromGetter) 
		getStatement: 1) variable.
		
	types := instVarNode 
		liveTypesIn: (instVarAuxiliar class >> #initInstVarUsedAsMessageArgumentFromGetter)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/10/2023 00:19:34'!
test24InstanceVariableFlowingToOtherVariables

	| types tmp instVarNode |

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.
	storage addGetterFor: Array on: #at:.
	
	instVarAuxiliar initInstVarFlowingToOtherVariables.
	tmp := instVarAuxiliar getterInstVarFromOtherVariableToWhichItFlowsTo.
	tmp at: 1 put: 1.
	self putStrInFirstPositionOf: (instVarAuxiliar getterInstVarFromOtherVariableToWhichItFlowsTo).
	(instVarAuxiliar getterInstVarFromOtherVariableToWhichItFlowsTo) at: 1 put: false.
	
	instVarNode := (self 
		from: (instVarAuxiliar class >> #initInstVarFlowingToOtherVariables) 
		getStatement: 1) variable.
		
	types := instVarNode 
		liveTypesIn: (instVarAuxiliar class >> #initInstVarFlowingToOtherVariables)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String. SmallInteger. False}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/12/2023 21:21:44'!
test25CollectionContainingAnotherCollection

	| inner innerNode innerTypes outer outerNode outerTypes |

	inner := Array new: 10.
	outer := Array new: 10.
	inner at: 1 put: 'str'.
	outer at: 1 put: inner.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	innerNode := (self fromCurrentTestGetStatement: 1) variable.
	outerNode := (self fromCurrentTestGetStatement: 2) variable.
		
	innerTypes := innerNode 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
		
	outerTypes := outerNode 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
		
	self assert: (GenericType for: Array withTypes: {String}) equals: innerTypes.
	self assert: (GenericType for: Array withTypes: (GenericType for: Array withTypes: {String})) equals: outerTypes.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/12/2023 21:22:02'!
test26CollectionContainingMultipleCollections

	| inner1 innerNode1 innerTypes1 inner2 innerNode2 innerTypes2 outer outerNode outerTypes |

	inner1 := Array new: 10.
	inner2 := Array new: 10.
	outer := Array new: 10.
	inner1 at: 1 put: 'str'.
	inner2 at: 1 put: 1.
	outer at: 1 put: inner1.
	outer at: 2 put: inner2.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	innerNode1 := (self fromCurrentTestGetStatement: 1) variable.
	innerNode2 := (self fromCurrentTestGetStatement: 2) variable.
	outerNode := (self fromCurrentTestGetStatement: 3) variable.
		
	innerTypes1 := innerNode1 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
		
	innerTypes2 := innerNode2 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
		
	outerTypes := outerNode 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.
		
	self assert: (GenericType for: Array withTypes: {String}) equals: innerTypes1.
	self assert: (GenericType for: Array withTypes: {SmallInteger}) equals: innerTypes2.
	self assert: (GenericType for: Array withTypes: (GenericType for: Array withTypes: {String. SmallInteger})) equals: outerTypes.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/12/2023 21:22:09'!
test27CollectionAssignedFromMethodCallAndNotUsedAfter

	| tmp tmpNode types |

	tmp := self arrayOfStrFromVar.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
		
	types := tmpNode 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/12/2023 21:22:16'!
test28ReturnResultOfMethodCall

	| types node |

	self arrayOfStrFromMsgSend.

	storage addGeneric: Array.
	storage trace: #at:put: for: Array onArg: 2.

	node := self fromCurrentTestGetStatement: 1.
		
	types := node 
		liveTypesIn: (thisContext method)
		addingIncompleteTypeInfoTo: (Set new)
		storingGenericsInfoIn: storage.

	self assert: (GenericType for: Array withTypes: {String}) equals: types.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/11/2023 21:06:13'!
test29MethodCallOnMultipleClassesWithSameProtocol

	| type node sameProtocol tmp |

	tmp := Array new: 10.

	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.

	"class A adds a SmallInteger to collection"
	sameProtocol := ClassSharingProtocolA new.
	sameProtocol addToCollection: tmp.
	
	"class B adds a String to collection"
	sameProtocol := ClassSharingProtocolB new.
	sameProtocol addToCollection: tmp.
	
	node := (self fromCurrentTestGetStatement: 1) variable.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {SmallInteger . String}) equals: type.
	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/11/2023 23:52:53'!
test30MethodCallInsideGenericClasses

	| type node tmp dummy |

	tmp := Array new: 10.

	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.
	storage addGeneric: DummyGeneric.

	dummy := DummyGeneric new.
	dummy addStringFirstIn: tmp.
	
	node := (self fromCurrentTestGetStatement: 1) variable.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/12/2023 00:17:41'!
test31CascadeMessageSends

	| type node tmp |

	tmp := Array new: 10.
	tmp at: 1 put: 1; at:1 put: 'str'.
	
	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.

	
	node := (self fromCurrentTestGetStatement: 1) variable.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {String. SmallInteger }) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/20/2023 23:19:26'!
test32ArgumentCollectsInfoFromCalls

	| type node tmp |

	tmp := Array new: 10.
	tmp at: 1 put: 'str'.
	self methodAcceptingArrayOfStr: tmp.
	
	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.

	node := (self class >> #methodAcceptingArrayOfStr:) methodNode arguments at: 1.
	type := node liveTypesIn: (self class >> #methodAcceptingArrayOfStr:) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/20/2023 23:23:06'!
test33ArgumentCollectsInfoFromCallsAndCurrentMethod

	| type node tmp |

	tmp := Array new: 10.
	tmp at: 1 put: 1.
	self methodAcceptingArrayAndAddingStrToIt: tmp.
	
	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.

	node := (self class >> #methodAcceptingArrayAndAddingStrToIt:) methodNode arguments at: 1.
	type := node liveTypesIn: (self class >> #methodAcceptingArrayAndAddingStrToIt:) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {String. SmallInteger}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/24/2023 09:39:23'!
test34GenericTypeConstructorFromArguments

	| type node tmp |

	tmp := DummyGeneric with: 'str'.
	
	storage addGeneric: DummyGeneric.
	storage traceConstructor:(MethodReference class: DummyGeneric class selector: #with:) 
			for: DummyGeneric 
			onArgs: #(1).

	node := (self fromCurrentTestGetStatement: 1) value.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: DummyGeneric withTypes: {String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/24/2023 10:15:17'!
test35GenericTypeConstructorFromArgumentParameters

	| type node tmp |

	tmp := DummyGeneric withAll: {'str'}.
	
	storage addGeneric: Array.
	storage addGeneric: DummyGeneric.
	storage traceConstructor:(MethodReference class: DummyGeneric class selector: #withAll:) 
			for: DummyGeneric 
			onParametersFromArgs: #(1).

	node := (self fromCurrentTestGetStatement: 1) value.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: DummyGeneric withTypes: {String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/24/2023 13:27:51'!
test36TraceReturnValueWhenMethodReturnsArgument

	| type node tmp |

	tmp := Array new: 10.
	tmp at: 1 put: 'str'.
	(self id: tmp) at: 2 put: false.
	
	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.

	node := (self fromCurrentTestGetStatement: 1) variable.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {String. False}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/30/2023 20:14:57'!
test37AddingFromOtherCollectionParameters

	| type node tmp tmp1 |

	tmp := OrderedCollection new.
	tmp1 := Array with: 'str'.
	tmp addAll: tmp1.
	
	storage addGeneric: Array.
	storage traceConstructor: (MethodReference class: Array class selector: #with:) for: Array onArgs: #(1).
	storage addGeneric: OrderedCollection.
	storage trace:#addAll:  for: OrderedCollection onArgParameter: 1.

	node := (self fromCurrentTestGetStatement: 1) variable.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: OrderedCollection withTypes: {String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 4/28/2023 04:40:36'!
test38CollectionFromLiteralNode

	| type node tmp |

	tmp := #(1 #aSymbol 'str').
	
	storage addGeneric: Array.

	node := (self fromCurrentTestGetStatement: 1) value.
	type := node liveTypesIn: (thisContext method) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {SmallInteger. Symbol. String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 5/2/2023 00:02:05'!
test39CollectionWithMultipleParameters

	| tmp types tmpNode |
	
	tmp := Dictionary new.
	tmp at: 1 put: 'str1'.
	
	storage addGeneric: Dictionary withParameters: 2.
	storage trace: #at:put: for: Dictionary onArgs: {1->1. 2->2}.

	tmpNode := (self fromCurrentTestGetStatement: 1) variable.
	types := tmpNode liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (
		GenericType for: Dictionary withMultiParamTypes: {{SmallInteger}.{String}} 
	) equals: types.! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 5/2/2023 00:25:13'!
test40GetterForGenericWithMultipleParameters

	| tmp tmpAt1Node tmpKeyAt1Node typesAt typesKeyAt |
	
	tmp := Dictionary new.
	tmp at: 1 put: 'str'.
	tmp at: 1.
	tmp keyAtValue: 'str'.

	storage addGeneric: Dictionary withParameters: 2.
	storage trace: #at:put: for: Dictionary onArgs: {1->1. 2->2}.
	storage addGetterFor: Dictionary on: #at: forParameter: 1.
	storage addGetterFor: Dictionary on: #keyAtValue: forParameter: 2.
	
	tmpAt1Node := self fromCurrentTestGetStatement: 3.
	tmpKeyAt1Node := self fromCurrentTestGetStatement: 4.

	typesAt := tmpAt1Node liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	typesKeyAt := tmpKeyAt1Node liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
	
	self assert: (FixedType for: SmallInteger) equals: typesAt.
	self assert: (FixedType for: String) equals: typesKeyAt.	! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 5/2/2023 00:39:21'!
test41ArgumentCollectsInfoFromCallsWithMultipleParameters

	| type node tmp |

	tmp := Dictionary new.
	tmp at: 1 put: 'str'.
	self methodAcceptingDictionaryOfIntegerAndStr: tmp.
	
	storage addGeneric: Dictionary withParameters: 2.
	storage trace:#at:put:  for: Dictionary onArgs: {1->1. 2->2}.

	node := (self class >> #methodAcceptingDictionaryOfIntegerAndStr:) methodNode arguments at: 1.
	type := node liveTypesIn: (self class >> #methodAcceptingDictionaryOfIntegerAndStr:) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Dictionary withMultiParamTypes: {{SmallInteger}.{String}}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 5/2/2023 00:47:37'!
test42ArgumentCollectsInfoFromCallsAndCurrentMethodWithMultipleParameters

	| type node tmp |

	tmp := Dictionary new.
	tmp at: 1 put: 'str'.
	self methodAcceptingDictionaryOfIntegerAndStrAndAddingToIt: tmp.
	
	storage addGeneric: Dictionary withParameters: 2.
	storage trace:#at:put:  for: Dictionary onArgs: {1->1. 2->2}.

	node := (self class >> #methodAcceptingDictionaryOfIntegerAndStrAndAddingToIt:) methodNode arguments at: 1.
	type := node liveTypesIn: (self class >> #methodAcceptingDictionaryOfIntegerAndStrAndAddingToIt:) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Dictionary withMultiParamTypes: {{SmallInteger}.{String}}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 7/30/2023 21:35:17'!
test43ReturnTypeOfSetterMethodIsLastArgument

	| type1 node1 type2 node2 type3 node3 tmp1 tmp2 tmp3 |

	tmp1 := Dictionary new.
	tmp1 at: 1 put: 'str'.
	
	tmp2 := Array new: 1.
	tmp2 at: 1 put: 1.0.
	
	tmp3 := OrderedCollection new.
	tmp3 addAll: (Array with: 1).
	
	storage addGeneric: Dictionary withParameters: 2.
	storage trace:#at:put:  for: Dictionary onArgs: {1->1. 2->2}.
	storage addGeneric: Array withParameters: 1.
	storage trace: #at:put: for: Array onArg: 2.
	storage traceConstructor: (MethodReference class: Array class selector: #with:) for: Array  onArgs: #(1).
	storage addGeneric: OrderedCollection withParameters: 1.
	storage trace: #addAll: for: OrderedCollection onArgParameter: 1.

	node1 := self fromCurrentTestGetStatement: 2.
	type1 := node1 liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: Set new storingGenericsInfoIn: storage.
	
	node2 := self fromCurrentTestGetStatement: 4.
	type2 := node2 liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: Set new storingGenericsInfoIn: storage.
	
	node3 := self fromCurrentTestGetStatement: 6.
	type3 := node3 liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: Set new storingGenericsInfoIn: storage.
				
	self assert: (FixedType for: String) equals: type1.
	self assert: (FixedType for: SmallFloat64) equals: type2.
	self assert: (GenericType for: Array withTypes: {SmallInteger}) equals: type3.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 8/2/2023 02:31:48'!
test44CollectionIsDetectedWhenReturnedFromMethodAndAssignedToVariable

	| type node tmp1 tmp2 |
	
	tmp1 := Array new: 10.
	tmp2 := self putStrInFirstPositionAndThenReturn: tmp1.
	tmp2 at: 2 put: 1.
	
	storage addGeneric: Array withParameters: 1.
	storage trace: #at:put: for: Array onArg: 2.
	
	node := self fromCurrentTestGetStatement: 2.
	type := node liveTypesIn: (thisContext method) addingIncompleteTypeInfoTo: Set new storingGenericsInfoIn: storage.
	
	self assert: (GenericType for: Array withTypes: {SmallInteger. String}) equals: type.
! !

!InferenceTest methodsFor: 'typing cases' stamp: 'AC 8/4/2023 05:12:02'!
test45ArgumentCollectsInfoCurrentMethodWithNoCallers

	| type node |
	
	"having no callers is simulated by exploiting the absense of type info in blocks"
	[| tmp |
		tmp := Array new: 10.
		self methodAcceptingArrayAndAddingStrToItWithNoCallers: tmp
	] value.
	
	storage addGeneric: Array.
	storage trace:#at:put:  for: Array onArg: 2.

	node := (self class >> #methodAcceptingArrayAndAddingStrToItWithNoCallers:) methodNode arguments at: 1.
	type := node liveTypesIn: (self class >> #methodAcceptingArrayAndAddingStrToItWithNoCallers:) 
				addingIncompleteTypeInfoTo: Set new 
				storingGenericsInfoIn: storage.
				
	self assert: (GenericType for: Array withTypes: {String.}) equals: type.
! !

!TypeFlowGraphTest methodsFor: 'testing' stamp: 'AC 1/18/2023 21:04:12'!
test01IsCreatedEmpty

	| graph |
	graph _ TypeFlowGraph new.
	
	self assert: 0 equals: (graph nodesSize).
	self assert: 0 equals: (graph edgesSize).! !

!TypeFlowGraphTest methodsFor: 'testing' stamp: 'AC 1/18/2023 21:05:43'!
test02AddingANodeIncreasesTheirCount

	| graph |
	graph _ TypeFlowGraph new.
	graph addNode: 1.
	
	self assert: 1 equals: (graph nodesSize).
	self assert: 0 equals: (graph edgesSize).! !

!TypeFlowGraphTest methodsFor: 'testing' stamp: 'AC 1/18/2023 21:15:21'!
test03AddingAnEdgeIncreasesTheirCount

	| graph |
	graph _ TypeFlowGraph new.
	graph addNode: 1.
	graph addNode: 2.
	graph link: 1 to: 2.
	
	self assert: 2 equals: (graph nodesSize).
	self assert: 1 equals: (graph edgesSize).
	
	self assert: (graph outNeighborsOf: 1) includes: 2.
	self assert: (graph inNeighborsOf: 2) includes: 1! !

!TypeFlowGraphTest methodsFor: 'testing' stamp: 'AC 1/18/2023 22:43:36'!
test04CannotLinkInexistantNodes

	| graph |
	graph _ TypeFlowGraph new.
	
	self shouldFail: [graph link: 1 to: 2].
	
	graph addNode: 1.
	self shouldFail: [graph link: 1 to: 2].! !

!TypeFlowGraphTest methodsFor: 'testing' stamp: 'AC 1/19/2023 21:04:25'!
test05CanAccessNodesButCantDirectlyAddToResult

	| graph nodes |
	graph _ TypeFlowGraph new.
	graph addNode: 1.
	nodes _ graph nodes.
	nodes add: 2.
	
	self assert: (graph nodesSize) equals: 1.! !

!TypeFlowGraphTest methodsFor: 'testing' stamp: 'AC 3/28/2023 01:38:06'!
test06CheckingConnectionOnAssociatedUndirectedGraph

	| graph |
	graph _ TypeFlowGraph new.
	
	graph addNode: 1.
	graph addNode: 2.
	graph link: 1 to: 2.
	
	self assert: 2 equals: (graph nodesSize).
	self assert: 1 equals: (graph edgesSize).
	
	self assert: (graph isConnected: 1 with: 2).
	self assert: (graph isConnected: 2 with: 1).! !

!TypeFlowGraphTest methodsFor: 'auxiliary' stamp: 'AC 1/20/2023 00:25:43'!
m1: a m2: b

	"dummy method used during testing"! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:14:16'!
setUp
	super setUp.

	"This is required for cleaning up the temp variables of each testing method"
	RawToLiveTypesAdapterTests initializeTypeInformationWithAllInstances.

	 "TODO: This has to be here for now because of the with: method. We are yet to understand why the with: in Collection is creating aliasing. "
"	Collection class initializeTypeInformationWithAllInstances."

"	TypedArrayCollection class initializeTypeInformationWithAllInstances."

	
! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:59:15'!
test001EmptyRawTypes
	| liveTypes rawTypes |
	liveTypes := EmptyType new.
	rawTypes := #().
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:03:16'!
test002AllClasses
	| liveTypes rawTypes |
	liveTypes := UnionType of: (FixedType for: Integer) and: (FixedType for: String).
	rawTypes := Array with: Integer with: String.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:04:06'!
test003AnEmptyCollectionsContentType
	| liveTypes rawTypes |
	liveTypes := GenericType for: Array withTypes: EmptyType new.
	rawTypes := Array with: (CollectionsContentType for: Array).
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:06:09'!
test004ClassesAndCollectionsContentType
	| liveTypes rawTypes |
	liveTypes := UnionType of: (GenericType for: Array withTypes: EmptyType new) and: (FixedType for: String).
	rawTypes := Array with: (CollectionsContentType for: Array) with: String.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:12:06'!
test005ACollectionsContentTypeWithTypes
	| liveTypes rawTypes cct |
	liveTypes := GenericType for: Array withTypes: {FixedType for: SmallInteger. FixedType for: SmallFloat64}.
	cct := CollectionsContentType for: Array.
	cct add: SmallInteger.
	cct add: SmallFloat64.
	rawTypes := Array with: cct.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:18:59'!
test006SeveralCollectionsContentTypesWithTypes
	| liveTypes rawTypes cct1 cct2 |
	liveTypes := GenericType for: Array withTypes: {FixedType for: SmallInteger. FixedType for: SmallFloat64}.
	cct1 := CollectionsContentType for: Array.
	cct2 := CollectionsContentType for: Array.
	cct1 add: SmallInteger.
	cct2 add: SmallFloat64.
	rawTypes := Array with: cct1 with: cct2.
	self assert: liveTypes equals: (RawToLiveTypesAdapter new adapt: rawTypes)! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:00'!
test007CreateFixedType

	self assert: (FixedType for: Integer) equals: (RawToLiveTypesAdapter new create: Integer).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 20:59:21'!
test008CreateEmptyType

	self assert: EmptyType new equals: (RawToLiveTypesAdapter new create: nil).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:39:39'!
test009CreateGenericType

	| cct expectedType |
	
	cct := CollectionsContentType for: Array.
	expectedType := GenericType for: Array withTypes: EmptyType new.

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:25:36'!
test010CreateGenericNestedType

	| cct expectedType innerCct |
	
	innerCct := CollectionsContentType for: Array.
	cct := CollectionsContentType for: ArrayedCollection.
	cct add: SmallInteger.
	cct add: innerCct.
	expectedType := GenericType for: ArrayedCollection withTypes: {(FixedType for: SmallInteger). GenericType for: Array withTypes: EmptyType new}.

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:26:18'!
test011CreateGenericNonEmptyType

	| cct expectedType |
	
	cct := CollectionsContentType for: Array.
	cct add: String.
	expectedType := GenericType for: Array withTypes: (FixedType for: String).

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!RawToLiveTypesAdapterTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 03:30:02'!
test012CreateGenericMultipleNestedType

	| cct expectedType cct1 cct2 |
	
	cct1 := CollectionsContentType for: ArrayedCollection.
	cct1 add: SmallInteger.
	cct2 := CollectionsContentType for: ArrayedCollection.
	cct2 add: SmallFloat64.
	cct := CollectionsContentType for: Array.
	cct add: cct1.
	cct add: cct2.
	expectedType := GenericType for: Array withTypes: (GenericType for: ArrayedCollection withTypes: {SmallInteger. SmallFloat64}).

	self assert: expectedType equals: (RawToLiveTypesAdapter new create: cct).! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 01:24:58'!
assertTooltipIs: aMessage 
	| liveTypes tooltipMessage |
	
	liveTypes := RawToLiveTypesAdapter new adapt: types.
	
	tooltipMessage := String streamContents: [:aStream |
		(LiveTypesPrinter on: aStream) print: liveTypes upTo: 5.
	].
 	self assert: aMessage equals: tooltipMessage.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/25/2023 19:57:27'!
setUp

	types := Set new! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:00:12'!
store: aLiveType

	types add: aLiveType.
	! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/25/2023 21:36:41'!
test001TooltipForEmptyCollection

	self store: (GenericType for: Array withTypes: EmptyType new).
	self assertTooltipIs: '<Array<?>>'.
! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/25/2023 21:36:44'!
test002TooltipForSingleItemCollection

	self store: (GenericType for: Array withTypes: {SmallInteger}).
	self assertTooltipIs:'<Array<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/25/2023 21:37:26'!
test003TooltipForTwoItemsWhenSupertypeIsObject

	self store: (GenericType for: Array withTypes: {SmallInteger. String}).
	self assertTooltipIs: '<Array<any # SmallInteger | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/25/2023 21:39:18'!
test004TooltipForTwoItemsWithCommonSupertype

	self store: (GenericType for: Array withTypes: {SmallInteger. SmallFloat64}).
	self assertTooltipIs: '<Array<Number # SmallFloat64 | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:00:02'!
test005TooltipForVariableWithCollectionAndSomeOtherType

	self store: (FixedType for: String).
	self store: (GenericType for: Array withTypes: {SmallInteger}).
	"superclass should be collection"
	self assertTooltipIs: '<SequenceableCollection # Array<SmallInteger> | String>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:00:46'!
test006TooltipForMergedCollections

	self store: (GenericType for: Array withTypes: (FixedType for: String)).
	self store: (GenericType for: Array withTypes: (FixedType for: SmallInteger)).
	self assertTooltipIs: '<Array<any # SmallInteger | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:01:37'!
test007TooltipForSameCollectionsWithSameTypes
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: (FixedType for: SmallInteger).
	self store: (GenericType for: Array withTypes: (FixedType for: SmallInteger)).
	self store: localCollection.
	self assertTooltipIs: '<Array<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:02:19'!
test008TooltipForSameCollectionsWithCommonSuperTypes
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: (FixedType for: SmallFloat64).
	self store: (GenericType for: Array withTypes: (FixedType for: SmallInteger)).
	self store: localCollection.
	self assertTooltipIs: '<Array<Number # SmallFloat64 | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:03:39'!
test009TooltipForSameCollectionsWithNoSuperTypes
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: (FixedType for: SmallFloat64).
	self store: (GenericType for: Array withTypes: (FixedType for: String)).
	self store: localCollection.
	self assertTooltipIs: '<Array<any # SmallFloat64 | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:39:23'!
test010TooltipForCommonSuperCollectionsWithCommonSuperTypes
	| localCollection |
	
	localCollection := (GenericType for: ArrayedCollection withTypes: (FixedType for: String)).
	self store: (GenericType for: Array withTypes: (FixedType for: String)).
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<String> # Array<String> | ArrayedCollection<String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:44:00'!
test011TooltipForNestedCollections
	self store: (GenericType for: Array withTypes: {GenericType for: Array withTypes: (FixedType for: String)}).
	self assertTooltipIs: '<Array<Array<String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:45:28'!
test012TooltipForCommonSuperCollectionsWithNoSuperTypes
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: (FixedType for: String).
	self store: (GenericType for: ArrayedCollection withTypes: (FixedType for: SmallInteger)).
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<any # SmallInteger | String> # Array<String> | ArrayedCollection<SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:48:50'!
test013TooltipForCommonSuperCollectionsRepeatedWithNoSuperTypes
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: (FixedType for: String).
	self store: (GenericType for: Array withTypes: (FixedType for: SmallInteger)).
	self store: localCollection.
	self store: (GenericType for: ArrayedCollection withTypes: (FixedType for: SmallInteger)).
	
	self assertTooltipIs: '<ArrayedCollection<any # SmallInteger | String> # Array<SmallInteger> | ArrayedCollection<any # SmallInteger | String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:51:03'!
test014TooltipForCommonSuperCollectionsWithEmptyCollections
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: {EmptyType new}.
	self store: (GenericType for: ArrayedCollection withTypes: {EmptyType new}).
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<?> # Array<?> | ArrayedCollection<?>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:53:22'!
test015TooltipForCommonSuperCollectionsWithAnEmptyCollection
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: (FixedType for: String).
	self store: (GenericType for: Array withTypes: (EmptyType new)).
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<any # ? | String> # Array<?> | ArrayedCollection<String>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:55:27'!
test016TooltipForCommonSuperCollectionsAndNoCollection
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: (FixedType for: String).
	self store: (GenericType for: Array withTypes: (EmptyType new)).
	self store: localCollection.
	self store: (FixedType for: SmallInteger).
 
	self assertTooltipIs: '<any # Array<?> | ArrayedCollection<String> | SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:57:05'!
test017TooltipForCommonSuperTypeAndNoCommonType
	self store: (FixedType for: SmallInteger).
	self store: (FixedType for: SmallFloat64).
	self store: (FixedType for: String).
	self assertTooltipIs: '<any # SmallFloat64 | SmallInteger | String>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 00:59:08'!
test018TooltipForCommonSuperCollectionsAndNoCollection
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: (FixedType for: String).
	self store: (GenericType for: Array withTypes: (EmptyType new)).
	self store: localCollection.
	self store: (FixedType for: SmallInteger ).
	
	self assertTooltipIs: '<any # Array<?> | ArrayedCollection<String> | SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 01:00:45'!
test019TooltipForNestedCollectionsOneOfThemEmpty
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: {
		GenericType for: Array withTypes: EmptyType new. 
		GenericType for: Array withTypes: (FixedType for: SmallInteger)
	}.
	self store: localCollection.
	self assertTooltipIs: '<Array<Array<any # ? | SmallInteger>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:35:19'!
test020TooltipForNestedCollectionsBothSameTypes
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: {
		GenericType for: Array withTypes: (FixedType for: SmallInteger). 
		GenericType for: Array withTypes: (FixedType for: SmallInteger)
	}.
	self store: localCollection.
	self assertTooltipIs: '<Array<Array<SmallInteger>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:35:58'!
test021TooltipForNestedCollectionsEachNoCommonInnerType
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: {
		GenericType for: Array withTypes: (FixedType for: SmallInteger). 
		GenericType for: Array withTypes: (FixedType for: String)
	}.
	self store: localCollection.
	self assertTooltipIs: '<Array<Array<any # SmallInteger | String>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:41:45'!
test022TooltipForNestedCommonSuperCollectionsNoCommonInnerType
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: {
		GenericType for: ArrayedCollection withTypes: (FixedType for: SmallInteger). 
		GenericType for: Array withTypes: (FixedType for: String)
	}.
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<ArrayedCollection<any # SmallInteger | String> # Array<String> | ArrayedCollection<SmallInteger>>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:43:08'!
test023TooltipForNestedNoCommonSupertype
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: {
		GenericType for: Array withTypes: (FixedType for: SmallInteger). 
		FixedType for: SmallInteger.
	}.
	self store: localCollection.
	self assertTooltipIs: '<Array<any # Array<SmallInteger> | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:44:26'!
test024TooltipForNestedRepeatedTypeDifferentInners
	| localCollection |
	
	localCollection := GenericType for: Array withTypes: {
		GenericType for: Array withTypes: (FixedType for: SmallInteger). 
		FixedType for: SmallInteger.
		GenericType for: Array withTypes: (FixedType for: String).
	}.
	self store: localCollection.
	self assertTooltipIs: '<Array<any # Array<any # SmallInteger | String> | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:45:38'!
test025TooltipForNestedCommonTypesAndIntruder
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: {
		GenericType for: ArrayedCollection withTypes: (FixedType for: SmallInteger). 
		FixedType for: SmallInteger.
		GenericType for: Array withTypes: (FixedType for: String).
	}.
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<any # Array<String> | ArrayedCollection<SmallInteger> | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:47:22'!
test026TooltipForNestedCommontTypesWithTwoLevelIntruder
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: {
		GenericType for: ArrayedCollection withTypes: (FixedType for: SmallInteger). 
		FixedType for: SmallInteger.
		GenericType for: Array withTypes: (FixedType for: String).
	}.
	self store: localCollection.
	self store: (FixedType for: SmallInteger).
	self assertTooltipIs: '<any # ArrayedCollection<any # Array<String> | ArrayedCollection<SmallInteger> | SmallInteger> | SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:50:17'!
test027TooltipForAwfullyComplexInnerCollections
	| localCollection |
	
	localCollection := GenericType for: ArrayedCollection withTypes: {
		GenericType for: ArrayedCollection withTypes: (FixedType for: SmallInteger). 
		FixedType for: SmallInteger.
		GenericType for: Array withTypes: (FixedType for: String).
	}.
	self store: (GenericType for: Array withTypes: (EmptyType new)).
	self store: localCollection.
	self assertTooltipIs: '<ArrayedCollection<any # ? | Array<String> | ArrayedCollection<SmallInteger> | SmallInteger> # Array<?> | ArrayedCollection<any # Array<String> | ArrayedCollection<SmallInteger> | SmallInteger>>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:50:44'!
test028TooltipOnlyOneType
	
	self store: (FixedType for: SmallInteger).
	self assertTooltipIs: '<SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:51:02'!
test029TooltipCommonSuperTypeSingleClasses
	self store: (FixedType for: SmallInteger).
	self store: (FixedType for: SmallFloat64).
	self assertTooltipIs: '<Number # SmallFloat64 | SmallInteger>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 3/15/2020 21:52:02'!
test030TooltipNoTypes
	self assertTooltipIs: '<?>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 4/28/2023 02:51:34'!
test031TooltipNoCommonSuperTypeSingleClasses
	self store: (FixedType for: SmallInteger).
	self store: (FixedType for: String).
	self assertTooltipIs: '<any # SmallInteger | String>'.! !

!TooltipTests methodsFor: 'as yet unclassified' stamp: 'AC 5/1/2023 20:49:54'!
test032TooltipForCollectionWithTwoParameters
	self store: (GenericType for: Dictionary withMultiParamTypes: {
		{FixedType for: String}.
		{FixedType for: SmallFloat64}
	}).
	self assertTooltipIs: '<Dictionary<String, SmallFloat64>>'.! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:33:09'!
test001Empty
	| typeTree |

	typeTree := TypeNode for: EmptyType new.

	self assert: EmptyType new equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: Set new equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'alf and mtqp 2/17/2020 19:33:22'!
test002Fixed
	| typeTree |

	typeTree := TypeNode for: (FixedType for: Integer).

	self assert: (FixedType for: Integer) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: Set new equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 5/1/2023 20:03:06'!
test003GenericSingleValue
	| typeTree |

	typeTree := TypeNode for: (GenericType for: LinkedList withTypes: Integer).

	self assert: (FixedType for: LinkedList) equals: typeTree type.
	self assert: {TypeNode for: (FixedType for: Integer)} equals: typeTree bound.
	self assert: Set new equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 8/2/2023 01:59:15'!
test004MultipleFixed
	| typeTree intType floatType intNode floatNode |

	intType := FixedType for: Integer.
	floatType := FixedType for: Float.
	typeTree := TypeNode for: (Set with: intType with: floatType).
	intNode := TypeNode for: intType.
	floatNode := TypeNode for: floatType.

	self assert: (FixedType for: Number) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: {intNode. floatNode} equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 8/2/2023 01:59:51'!
test005GenericMultipleValues
	| typeTree intType floatType intNode floatNode |

	typeTree := TypeNode for: (GenericType for: LinkedList withTypes: (Array with: Integer with: Float)).
	intType := FixedType for: Integer.
	floatType := FixedType for: Float.
	intNode := TypeNode for: intType.
	floatNode := TypeNode for: floatType.
	

	self assert: (FixedType for: LinkedList) equals: typeTree type.
	self assert: {TypeNode for: (Set with: intType with: floatType)} equals: typeTree bound.
	self assert: {intNode. floatNode} equals: (typeTree bound at: 1) generics.
	self assert: Set new equals: typeTree generics.! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 8/2/2023 02:00:06'!
test006MultipleFixedWithNoCommonSupertype
	| typeTree intType stringType intNode stringNode |

	intType := FixedType for: Integer.
	stringType := FixedType for: String.
	typeTree := TypeNode for: (Set with: intType with: stringType).
	intNode := TypeNode for: intType.
	stringNode := TypeNode for: stringType.

	self assert: (FixedType for: Object) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: {intNode. stringNode} equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 8/2/2023 02:00:28'!
test007MultipleGenerics
	| typeTree genericType otherGenericType genericNode otherGenericNode floatType intType floatNode intNode |

	genericType := GenericType for: LinkedList withTypes: Integer.
	otherGenericType := GenericType for: Array withTypes: Float.
	intType := FixedType for: Integer.
	floatType := FixedType for: Float.
	typeTree := TypeNode for: (Set with: genericType with: otherGenericType).
	genericNode := TypeNode for: genericType.
	otherGenericNode := TypeNode for: otherGenericType.
	intNode := TypeNode for: intType.
	floatNode := TypeNode for: floatType.

	self assert: (FixedType for: SequenceableCollection) equals: typeTree type.
	self assert: {TypeNode for: (Set with: intType with: floatType)} equals: typeTree bound.
	self assert: {intNode. floatNode} equals: (typeTree bound at: 1) generics.
	self assert: {genericNode. otherGenericNode} equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 5/1/2023 20:05:49'!
test008GenericEmptyValue
	| typeTree emptyType |

	typeTree := TypeNode for: (GenericType for: LinkedList withTypes: EmptyType new).
	emptyType := EmptyType new.
	

	self assert: (FixedType for: LinkedList) equals: typeTree type.
	self assert: {TypeNode for: (Set with: emptyType)} equals: typeTree bound.
	self assert: Set new equals: typeTree generics.! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 8/2/2023 02:00:53'!
test009MultipleGenericsEmptyValue
	| typeTree genericType otherGenericType genericNode otherGenericNode floatType emptyType emptyNode floatNode |

	genericType := GenericType for: LinkedList withTypes: EmptyType new.
	otherGenericType := GenericType for: Array withTypes: Float.
	emptyType := EmptyType new.
	floatType := FixedType for: Float.
	typeTree := TypeNode for: (Set with: genericType with: otherGenericType).
	genericNode := TypeNode for: genericType.
	otherGenericNode := TypeNode for: otherGenericType.
	emptyNode := TypeNode for: emptyType.
	floatNode := TypeNode for: floatType.

	self assert: (FixedType for: SequenceableCollection) equals: typeTree type.
	self assert: {TypeNode for: (Set with: emptyType with: floatType)} equals: typeTree bound.
	self assert: {emptyNode. floatNode} equals: (typeTree bound at: 1) generics.
	self assert: {genericNode. otherGenericNode} equals: typeTree generics! !

!TypeNodeTests methodsFor: 'as yet unclassified' stamp: 'AC 8/2/2023 02:01:08'!
test010EmptyAndFixed
	| typeTree intType emptyType intNode emptyNode |

	intType := FixedType for: Integer.
	emptyType := EmptyType new.
	typeTree := TypeNode for: (Set with: intType with: emptyType).
	intNode := TypeNode for: intType.
	emptyNode := TypeNode for: emptyType.

	self assert: (FixedType for: Object) equals: typeTree type.
	self assert: nil equals: typeTree bound.
	self assert: {intNode. emptyNode} equals: typeTree generics! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
accept: visitor 
	self subclassResponsibility.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
isEmptyType

	^false.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
isGenericType

	^false.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
sanitize: types	
	(types isKindOf: Collection) ifFalse: [
		^ Array with: types.
	].
	^ types.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
supertypeWith: types 
	self subclassResponsibility.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
unifiesWith: anotherType
	^ false.! !

!LiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
unify: anotherType
	self subclassResponsibility.! !

!LiveType methodsFor: 'compatibility' stamp: 'JFGO 12/11/2023 18:18:05'!
asArray

	self subclassResponsibility.! !

!LiveType methodsFor: 'compatibility' stamp: 'JFGO 12/11/2023 18:18:05'!
asTypeFor: aReceiverType

	^self! !

!LiveType methodsFor: 'compatibility' stamp: 'JFGO 12/11/2023 18:18:05'!
typeName

	self subclassResponsibility 
	"^String streamContents: [:stream | 
		self accept: (LiveTypesPrinter on: stream)
	]."! !

!LiveType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
classTypesDo: aBlock

	self subclassResponsibility ! !

!LiveType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
liveAndClassTypesDo: aTwoArgBlock

	self subclassResponsibility ! !

!LiveType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
liveTypesDo: aBlock

	self subclassResponsibility ! !

!ClassLiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
<= anotherType
	(anotherType isKindOf: ClassLiveType) 
		ifTrue: [
			^ class typeName <= anotherType liveClass typeName
		]
		ifFalse: [
			^ (anotherType isKindOf: UnionType)
		]! !

!ClassLiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:35:07'!
asArray
	^{self}! !

!ClassLiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
liveClass
	^ class! !

!ClassLiveType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
typeName

	^self liveClass name.! !

!ClassLiveType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:04'!
classTypesDo: aBlock

	aBlock value: self liveClass! !

!ClassLiveType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:04'!
liveAndClassTypesDo: aTwoArgBlock

	aTwoArgBlock value: self value: self liveClass.! !

!ClassLiveType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:04'!
liveTypesDo: aBlock

	aBlock value: self.! !

!FixedType methodsFor: 'private' stamp: 'JFGO 12/11/2023 18:18:04'!
printOn: aStream
	aStream nextPutAll: 'LiveType: ' , class asString! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: FixedType) ifTrue: [
				^ class = otherObject liveClass
			]
		 ].
	
	^ false.! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
accept: visitor
	^ visitor visitFixedType: self.! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
hash
	^ class hash! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeWith: aClass

	class := aClass.! !

!FixedType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
supertypeWith: types 
	
	|copiedTypes typesToProcess|
	
	typesToProcess := self sanitize: types.

	copiedTypes := Set new.
	typesToProcess do: [:t | 
		((t isKindOf: EmptyType) or: [t isKindOf: UnionType]) ifTrue: [^ UnionType of: self and: typesToProcess].
		copiedTypes add: t liveClass. 
	].
	
	copiedTypes add: class.

	^ FixedType for: (SupertypeDetective new: copiedTypes) search! !

!FixedType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
for: aClass 
	^ self new initializeWith: aClass.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: GenericType) ifTrue: [
				^ class = otherObject liveClass and: [innerTypes = otherObject generics].
			]
		 ].
	
	^ false.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
accept: visitor
	^ visitor visitGenericType: self.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
generics
	^ innerTypes.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
hash
	^ class hash + innerTypes hash! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeWith: aClass withTypes: aTypesCollection 
	|typesToProcess|

	typesToProcess := self sanitize: aTypesCollection.
	class := aClass.
	innerTypes := Set new.
	
	typesToProcess do: [:type | 
		(type isKindOf: LiveType) ifTrue: [
				innerTypes add: type.
			] ifFalse: [
				innerTypes add: (FixedType for: type)
			]
		].
	^ self.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
isGenericType

	^true.! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
parametersCount

	^innerTypes size! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
printOn: aStream

	| str types |
	types _ innerTypes asArray.
	str _ ''.
	1 to: (types size - 1) do: [ :i |
		str _ str, (types at: i) asString, ', '	
	].
	str _ str, (types at: (types size)) asString.
	aStream nextPutAll: 'GenericType: ', class asString , '<', str, '>'! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
supertypeWith: types 
	| supertype superGenerics copiedTypes generics typesToProcess cantUnifyGenerics |

	copiedTypes := Set new.
	generics := Array new: innerTypes size.
	1 to: innerTypes size do: [:i | generics at: i put: ((innerTypes at: i) copy)].
	typesToProcess := self sanitize: types.
	cantUnifyGenerics := false.
	
	typesToProcess do: [:t | 
		((t isKindOf: EmptyType) or: [t isKindOf: UnionType]) ifTrue: [^ UnionType of: self and: typesToProcess].
		copiedTypes add: t liveClass.
		(t isKindOf: FixedType) ifTrue: [
			cantUnifyGenerics := true
		] ifFalse: [
			(t parametersCount = self parametersCount) ifTrue: [ | otherGenerics |
				otherGenerics := t generics.
				1 to: generics size do: [:i | 
					(generics at: i) addAll: (otherGenerics at: i).
				]
			] ifFalse:[
				cantUnifyGenerics := true
			].
		].
	].
	
	copiedTypes add: class.
	

	supertype := (SupertypeDetective new: copiedTypes) search.
	cantUnifyGenerics ifTrue: [^FixedType for: supertype].
	
	superGenerics := Array new: generics size.
	1 to: superGenerics size do: [:i | superGenerics at: i put: {(generics at: i) anyOne supertypeWith: (generics at: i)}].
	^ GenericType for: supertype withMultiParamTypes: superGenerics! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
unifiesWith: anotherType
	^ (anotherType isKindOf: GenericType) 
		and: [self parametersCount = anotherType parametersCount]
		and: [class = anotherType liveClass]! !

!GenericType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
unify: anotherType
	| unifiedTypes otherTypeGenerics |
	unifiedTypes := innerTypes copy.
	otherTypeGenerics := anotherType generics.
	1 to: unifiedTypes size do: [ :i |
		(unifiedTypes at: i) addAll: (otherTypeGenerics at: i).
	].
	^GenericType for: class withMultiParamTypes: unifiedTypes.! !

!GenericType methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeWith: aClass withMultiParamTypes: aTypesCollectionArray 
	
	class := aClass.
	innerTypes := Array new: aTypesCollectionArray size.
	1 to: aTypesCollectionArray size do:[ :index | | aTypesCollection typesToProcess |
		aTypesCollection := aTypesCollectionArray at: index.
		typesToProcess := self sanitize: aTypesCollection.
		innerTypes at: index put: Set new.
		typesToProcess do: [:type | 
		(type isKindOf: LiveType) ifTrue: [
				(innerTypes at: index) add: type.
			] ifFalse: [
				(innerTypes at: index) add: (FixedType for: type)
			]
		].
	].

	^ self.! !

!GenericType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
for: aClass withMultiParamTypes: aTypesCollectionArray
 	^ self new initializeWith: aClass withMultiParamTypes: aTypesCollectionArray! !

!GenericType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
for: aClass withTypes: aTypesCollection 
 	^ self for: aClass withMultiParamTypes: {aTypesCollection}.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
<= anotherType
	^ true.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
= otherObject

	otherObject ifNotNil: [ 
		^ otherObject isKindOf: EmptyType.
	].
	
	^ false.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
accept: visitor
	^ visitor visitEmptyType: self.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
asArray

	^#().! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
hash
	^ #EmptyType hash! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
isEmptyType

	^true! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
supertypeWith: types 
	
	|typesToProcess|
	
	typesToProcess := self sanitize: types.

	typesToProcess do: [:t | 
		(t isKindOf: EmptyType) ifFalse: [^ UnionType of: self and: typesToProcess].
	].

	^ self.! !

!EmptyType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
typeName

	^'?'! !

!EmptyType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:04'!
classTypesDo: aBlock

	"this object represents no type info found, do nothing"! !

!EmptyType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:04'!
liveAndClassTypesDo: aTwoArgBlock

	"this object represents no type info found, do nothing"! !

!EmptyType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:04'!
liveTypesDo: aBlock

	"this object represents no type info found, do nothing"! !

!UnionType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
classTypesDo:aBlock

	types do: [:lt | lt classTypesDo: aBlock ].! !

!UnionType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
liveAndClassTypesDo: aTwoArgBlock

	types do: [:lt | lt liveAndClassTypesDo: aTwoArgBlock ].! !

!UnionType methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
liveTypesDo: aBlock

	types do: [:lt | lt liveTypesDo: aBlock ].! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
<= anotherType
	^ false.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: UnionType) ifTrue: [
				^ types = otherObject types
			]
		 ].
	
	^ false.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
accept: visitor
	^ visitor visitUnionType: self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
asArray

	^types asArray! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
hash
	^ types hash! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeWith: aType and: anotherType

	|anotherTypes|
	
	anotherTypes := self sanitize: anotherType.
	
	types := Set new.
	types add: aType.
	anotherTypes do: [ :type | 
		(type isKindOf: UnionType) 
			ifTrue: [ types addAll: type types]
			ifFalse: [ types add: type ].
		].
	^ self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
printOn: aStream
	aStream nextPutAll: 'UnionType: <', types asString, '>'! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
supertypeWith: liveTypes 
	
	|typesToProcess|
	
	typesToProcess := self sanitize: liveTypes.
	types addAll: typesToProcess.

	^ self.! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
typeName

	^String streamContents: [:stream |
		self classTypesDo: [:ct | stream nextPutAll: ct typeName, ' ']
	].! !

!UnionType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
types

	^ types copy.! !

!UnionType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
of: aType and: anotherType 
	^ self new initializeWith: aType and: anotherType.! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
add: aClass 
	|freeIndex|
	"TODO: Recorrer una sola vez en vez de includes y findFirst"
	(contentTypes includes: aClass) ifFalse:[
		freeIndex := contentTypes findFirst: [:type | type isNil].
		freeIndex > 0 ifTrue: [
			contentTypes at: freeIndex put: aClass
		]
	]! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
addAll: aClassesCollection
	
	aClassesCollection do: [:aClass | self add: aClass].! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
asString
	^ self class asString, #- , self type asString.! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
containsType: aType
	^ contentTypes anySatisfy: [:savedType | savedType = aType].! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeFor: aType

	contentTypes := Array new:10.
	collectionType := aType.
	isAssigned := true.
	^ self.! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
size
	|size|
	size := 0.
	contentTypes do: [:type| type ifNotNil: [size := size + 1]].
	^ size.
	! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
sort: types

	^ types asArray sort: [:class1 :class2 | class1 asString <= class2 asString].! !

!CollectionsContentType methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
withAllSuperclasses
	^Array with: collectionType.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
contentTypes

	|nonNullTypes|
	nonNullTypes := Set new.
	(self sort: contentTypes) do: [:type | type ifNotNil: [nonNullTypes add: type]].
	^ nonNullTypes.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
isAssigned

	^ isAssigned.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
type
	^ collectionType.! !

!CollectionsContentType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
types
	| aSet |
	
	aSet := Set new.
	aSet add: collectionType.
	^ aSet! !

!CollectionsContentType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
for: aType
	^super new initializeFor: aType.! !

!CollectionsContentType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:04'!
new
	^super new initialize.! !

!GenericParametersCollector methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeFor: aType withParameters: aParameterQuantity

	ccts := Array new: aParameterQuantity.
	1 to: aParameterQuantity do: [:i |
		ccts at: i put: 	(CollectionsContentType for: aType).
	].
	genericType := aType.
	isAssigned := true.
	! !

!GenericParametersCollector methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
allContentTypes

	^ccts collect: [ :cct | cct contentTypes copy].! !

!GenericParametersCollector methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
contentTypesAt: anIndex

	^ccts at: anIndex :: contentTypes! !

!GenericParametersCollector methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
type
	
	^genericType ! !

!GenericParametersCollector methodsFor: 'adding' stamp: 'JFGO 12/11/2023 18:18:04'!
at: anIndex add: aType

	(ccts at: anIndex) add: aType.! !

!GenericParametersCollector methodsFor: 'adding' stamp: 'JFGO 12/11/2023 18:18:04'!
at: anIndex addAll: aTypeCollection

	(ccts at: anIndex) addAll: aTypeCollection.! !

!GenericParametersCollector class methodsFor: 'instance creation' stamp: 'JFGO 12/11/2023 18:18:04'!
for: aType withParameters: aParameterQuantity

	^self new initializeFor: aType withParameters: aParameterQuantity.! !

!GenericTypeConstructor methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:04'!
= anotherObject

	(anotherObject isKindOf: self class) ifFalse: [^false].

	^anotherObject genericClass = self genericClass
		and: [anotherObject methodRef = self methodRef].! !

!GenericTypeConstructor methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:04'!
hash

	^class hash bitXor: methodReference hash.! !

!GenericTypeConstructor methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
genericClass
	
	^class! !

!GenericTypeConstructor methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:04'!
methodRef

	^methodReference ! !

!GenericTypeConstructor methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeFor: aClass from: aMethodReference onArgs: anArgumentCollection 
	
	
	class := aClass.
	methodReference := aMethodReference.
	argumentCollection := anArgumentCollection.
	fromParams := false.! !

!GenericTypeConstructor methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:04'!
initializeFor: aClass from: aMethodReference onParamsFromArgs: anArgumentCollection 
	
	
	class := aClass.
	methodReference := aMethodReference.
	argumentCollection := anArgumentCollection.
	fromParams := true.! !

!GenericTypeConstructor methodsFor: 'analysis' stamp: 'JFGO 12/11/2023 18:18:04'!
in: aCompiledMethod forArguments: aParseNodeCollection storingGenericsInfoIn: aStorage

	| cct |
	cct := CollectionsContentType for: class.
	fromParams ifTrue: [
		argumentCollection do: [ :index |
			[cct addAll: (((aParseNodeCollection at: index)	 
						liveTypesIn: aCompiledMethod 
						addingIncompleteTypeInfoTo: Set new 
						storingGenericsInfoIn: aStorage) generics at: 1).]
				on: MessageNotUnderstood 
				do: [:error | ].	
		].
	]
	ifFalse: [
			
		argumentCollection do: [ :index |
			cct add: ((aParseNodeCollection at: index)	 
						liveTypesIn: aCompiledMethod 
						addingIncompleteTypeInfoTo: Set new 
						storingGenericsInfoIn: aStorage).
		].
	].
	
	

	^RawToLiveTypesAdapter new adapt: {cct}.! !

!GenericTypeConstructor class methodsFor: 'instance creation' stamp: 'JFGO 12/11/2023 18:18:04'!
for: aClass from: aMethodReference onArgs: anArgumentCollection 
	
	^self new initializeFor: aClass from: aMethodReference onArgs: anArgumentCollection ! !

!GenericTypeConstructor class methodsFor: 'instance creation' stamp: 'JFGO 12/11/2023 18:18:05'!
for: aClass from: aMethodReference onParamsFromArgs: anArgumentCollection
	
	^self new initializeFor: aClass from: aMethodReference onParamsFromArgs: anArgumentCollection ! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeWith: aStream
	stream := aStream.
	^ self.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
print: typesTree
	self print: typesTree withDelimiter: true.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
print: liveTypes upTo: aNumberOfTypes 

	self print: liveTypes upTo: aNumberOfTypes withDelimiter: true.
! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
print: liveTypes upTo: aNumberOfTypes withDelimiter: printDelimiter

	| typesTree |
	
	typesTree := TypeNode for: liveTypes.
	
	self print: {typesTree} withDelimiter: printDelimiter.
	
! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
print: typesTreeArray withDelimiter: printDelimiter
	| treeBound treeGenerics canBeNilTmp |
	
	canBeNilTmp := canBeNil.
	canBeNil := false.
	
	printDelimiter ifTrue: [
		stream nextPut: $<.
	].
	1 to: typesTreeArray size do:[:i | | typesTree |
		typesTree := typesTreeArray at: i.
		typesTree type accept: self.
		treeBound := typesTree bound.
		"TODO: Avoid nil checks"
		treeBound
			 ifNotNil: [
				self print: treeBound.
			].
		"TODO: Create an actual clear message for sorting"
		treeGenerics := typesTree generics asArray sort: [:typeTree1 :typeTree2 | typeTree1 type <= typeTree2 type].
		treeGenerics ifNotEmpty: [
				stream nextPutAll: ' # '.
			].
		treeGenerics do: [:generic | self print: {generic} withDelimiter: false] separatedBy: [stream nextPutAll: ' | '].
		(i = typesTreeArray size) ifFalse: [stream nextPutAll: ', '].
	].
	
	canBeNil ifTrue: [
		stream nextPutAll: 'can be nil !!' 
	].
	canBeNil := canBeNilTmp.
	
	printDelimiter ifTrue: [
		stream nextPut: $>.
	].
	"stream newLine"! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
visitEmptyType: anEmptyType
	stream nextPut: $?! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
visitFixedType: aFixedType
	|class|
	"TODO: Consider instead actually printing UnionTypes as any instead of forcing UnionType supertypes into Object at the node level. Maybe even consider wheter the supertype of all mixed types should be a Union".
	
	class := aFixedType liveClass.
	(class = UndefinedObject) ifTrue: [
		canBeNil := true.
		^self.
	].
	(class = Object) 
		ifTrue: [
			stream nextPutAll: 'any'
		] 
		ifFalse: [
			stream nextPutAll: class typeName
		].! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
visitGenericType: aGenericType
	stream nextPutAll: aGenericType liveClass typeName.
	"TODO: make upTo an instance variable"
	(LiveTypesPrinter on: stream) print: aGenericType generics upTo: 5.! !

!LiveTypesPrinter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
visitUnionType: aUnionType
	"TODO upTo should be an instance variable"
	self print: aUnionType types upTo: 5! !

!LiveTypesPrinter class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
on: aStream
	^ self new initializeWith: aStream.! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
adapt: aRawTypes
	| liveTypes |
	
	liveTypes := self adaptToSet: aRawTypes.
	
	liveTypes ifEmpty: [^EmptyType new].
	
	liveTypes size = 1 ifTrue: [ | type |
		type := liveTypes anyOne.
		(type isKindOf: LiveType) ifTrue: [^type].
		^liveTypes.
	].
	
	^UnionType of: (liveTypes anyOne) and: liveTypes.! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
adaptToSet: aRawTypes
	| liveTypes |
	aRawTypes ifEmpty: [^ Set with: (self create: nil) ].
	liveTypes := Set new.
	
	aRawTypes do: [:rt | 
			rt ifNotNil: [ 
				| newLiveType |
				newLiveType := self create: rt. 
				self unifyOrAdd: newLiveType into: liveTypes.
			]
		].
	^ liveTypes.! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
create: aRawOrLiveType 
	aRawOrLiveType ifNil: [^ EmptyType new].
	
	(aRawOrLiveType isKindOf: CollectionsContentType) ifTrue: [
		| innerTypes |
		innerTypes := aRawOrLiveType contentTypes copy.
		^ GenericType for: aRawOrLiveType type withTypes: (self adaptToSet: innerTypes).
	].
	
	(aRawOrLiveType isKindOf: GenericParametersCollector) ifTrue: [
		| innerTypes |
		innerTypes := aRawOrLiveType allContentTypes.
		^GenericType for: aRawOrLiveType type withMultiParamTypes: (innerTypes collect: [:contentTypes | self adaptToSet: contentTypes]).
	].
	
	(aRawOrLiveType isKindOf: GenericType) ifTrue: [
		| innerTypes |
		innerTypes := aRawOrLiveType generics copy.
		^ GenericType for: aRawOrLiveType liveClass withMultiParamTypes: (innerTypes collect: [:param | self adaptToSet: param]).
	].
	
	(aRawOrLiveType isKindOf: LiveType) ifTrue: [^aRawOrLiveType].
	(aRawOrLiveType isKindOf: DynamicType) ifTrue: [^aRawOrLiveType].
	
	^ FixedType for: aRawOrLiveType! !

!RawToLiveTypesAdapter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
unifyOrAdd: newLiveType into: liveTypes
	liveTypes 
		detect: [:type | type unifiesWith: newLiveType] 
		ifFound: [:type | 
			liveTypes remove: type.
			liveTypes add: (type unify: newLiveType) ] 
		ifNone: [liveTypes add: newLiveType.].
! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
allSupertypesOf: types
	
	"TODO remove this!! ALF & MDS"
	^ types 
		inject: types anyOne withAllSuperclasses 
		into: [ :temporaryCommonSupertypes :type | temporaryCommonSupertypes intersection: type withAllSuperclasses ].
! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
commonLowestTypeIn: commonSupertypes
	
	"TODO remove this!! ALF & MDS"
	| commonSupertype commonSupertypeSuperclassesSize |
	
	commonSupertypeSuperclassesSize := 0.
	
	commonSupertypes do: [ :currentType | | currentTypeSuperclassesSize |
		currentTypeSuperclassesSize := currentType withAllSuperclasses size.
		currentTypeSuperclassesSize > commonSupertypeSuperclassesSize ifTrue: [
			commonSupertypeSuperclassesSize := currentTypeSuperclassesSize.
			commonSupertype := currentType ]].
	
	^ commonSupertype! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
commonSupertypeIfNoTypes: aBlock

	"TODO remove this!! ALF & MDS"
	| types commonSupertypes commonSupertype |

	searchingTypes isEmpty ifTrue: [ ^aBlock value ].
	searchingTypes size = 1 ifTrue: [ ^searchingTypes anyOne ].
	types := searchingTypes reject: [ :aType | aType = UndefinedObject ].

	"I have to convert types to Array becuase inst var types can be a Set - Hernan"
	commonSupertypes := self allSupertypesOf: types.
	commonSupertype := self commonLowestTypeIn: commonSupertypes.
	
	^commonSupertype ! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeWith: types

	searchingTypes := types.! !

!SupertypeDetective methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
search

	^self commonSupertypeIfNoTypes: [ ProtoObject ]! !

!SupertypeDetective class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
new: types

	^ self new initializeWith: types.! !

!TfgMessageSendNode methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeMethodRef: aMethodRef

	methodRef _ aMethodRef.! !

!TfgMessageSendNode methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:05'!
= anObject

	^(anObject isKindOf: self class) and: [anObject methodRef = methodRef].! !

!TfgMessageSendNode methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:05'!
hash

	^self class hash bitXor: methodRef hash.! !

!TfgMessageSendNode methodsFor: 'private' stamp: 'JFGO 12/11/2023 18:18:05'!
methodRef

	^methodRef! !

!TfgMessageSendNode methodsFor: 'printing' stamp: 'JFGO 12/11/2023 18:18:05'!
printOn: aStream
	aStream nextPutAll: self class asString, '('.
	methodRef printClassAndSelectorOn: aStream.
	aStream nextPut: $)! !

!TfgMessageSendNode class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
methodRef: aMethodRef

	^self basicNew initializeMethodRef: aMethodRef! !

!TfgReturnValue methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:05'!
= anObject

	^(anObject isKindOf: self class).! !

!TfgReturnValue methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:05'!
hash

	^self class hash! !

!TfgReturnValue methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
methodRef

	^methodRef! !

!TfgVariableNode methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeFor: aVariableName 
	
	name _ aVariableName.! !

!TfgVariableNode methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:05'!
= anObject

	^(anObject isKindOf: (self class)) and: [anObject name = name].! !

!TfgVariableNode methodsFor: 'comparing' stamp: 'JFGO 12/11/2023 18:18:05'!
hash

	^name hash! !

!TfgVariableNode methodsFor: 'printing' stamp: 'JFGO 12/11/2023 18:18:05'!
printOn: aStream
	aStream nextPutAll: self class asString, '(', name, ')'! !

!TfgVariableNode methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
name

	^name! !

!TfgVariableNode class methodsFor: 'instance creation' stamp: 'JFGO 12/11/2023 18:18:05'!
for: aVariableName 

	^self new initializeFor: aVariableName ! !

!TracedType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
accessTypesFrom: aLiveType

	^Set with: aLiveType.! !

!TracedType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
argIndex

	^argIndex! !

!TracedType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
argIndexes
	
	^argIndex collect: [:assoc | assoc value]! !

!TracedType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
selector

	^selector! !

!TracedType methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
type

	^type! !

!TracedType methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeFor: aType selector: aSelector argIndex: anIndex

	type _ aType.
	selector _ aSelector.
	argIndex _ anIndex.! !

!TracedType class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
type: aType selector: aSelector argIndex: anIndex

	^self basicNew initializeFor: aType 
				selector: aSelector 
				argIndex: anIndex! !

!TracedTypeFromParameter methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
accessTypesFrom: aLiveType

	| liveTypeSet |
	liveTypeSet := Set new.
	aLiveType liveTypesDo: [:lt | 
		[liveTypeSet addAll: (lt generics at: 1)] 
			on: MessageNotUnderstood
			do: [:error | ].
	].
	^liveTypeSet! !

!TypeFlowGraph methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
edgesSize
	^links size! !

!TypeFlowGraph methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
inNeighborsOf: aNode 

	^(links select: [:assoc | assoc value = aNode] thenCollect: [:assoc | assoc key]).! !

!TypeFlowGraph methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
isConnected: aNode with: anotherNode

	^links anySatisfy: [:assoc | |n1 n2|
		n1 _ assoc key.
		n2 _ assoc value.
		(n1 = aNode and: [n2 = anotherNode ]) or:[n2 = aNode and: [n1 = anotherNode ]].
	].
	
	
	! !

!TypeFlowGraph methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
nodes
	^Set withAll: nodes.! !

!TypeFlowGraph methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
nodesSize
	^nodes size.! !

!TypeFlowGraph methodsFor: 'accessing' stamp: 'JFGO 12/11/2023 18:18:05'!
outNeighborsOf: aNode 

	^(links select: [:assoc | assoc key = aNode] thenCollect: [:assoc | assoc value]).! !

!TypeFlowGraph methodsFor: 'adding' stamp: 'JFGO 12/11/2023 18:18:05'!
addNode: aNode

	nodes add: aNode.
	! !

!TypeFlowGraph methodsFor: 'associating' stamp: 'JFGO 12/11/2023 18:18:05'!
link: aNode to: anotherNode 
	
	self assert: (nodes includes: aNode).
	self assert: (nodes includes: anotherNode).
	
	links add: (Association key: aNode value: anotherNode).! !

!TypeFlowGraph methodsFor: 'initialization' stamp: 'JFGO 12/11/2023 18:18:05'!
initialize

	nodes _ Set new.
	links _ Set new.! !

!TypeFlowGraph methodsFor: 'enumerating' stamp: 'JFGO 12/11/2023 18:18:05'!
from: aTypeFlowGraphNode do: aBlock

"implements DFS from aTypeFlowGraphNode"

	| currentNode visited neighbors nextNodes |
	(nodes includes: aTypeFlowGraphNode) ifFalse: [self error: 'node not found'].
					
	nextNodes _ OrderedCollection with: aTypeFlowGraphNode.
	visited _ Set new.
	
	[nextNodes isEmpty] whileFalse: [
		currentNode _ nextNodes removeLast.
		(visited includes: currentNode) ifFalse: [
			aBlock value: currentNode.
			neighbors _ self outNeighborsOf: currentNode.
			nextNodes addAll: neighbors.
			visited add: currentNode.
		]
	].
	! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
= otherObject

	otherObject ifNotNil: [ 
		(otherObject isKindOf: TypeNode) ifTrue: [
				^ (bound = otherObject bound) 
					and: [generics = otherObject generics ]
					and: [type = otherObject type]
			]
		 ].
	
	^ false.! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
bound
	^ bound! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
generics
	^ generics! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
hash
	^ type hash * generics hash * bound hash! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
initializeWith: aTypeSet 
	| typesToProcess supertype |
	
	typesToProcess := self sanitize: aTypeSet.
	supertype := typesToProcess anyOne supertypeWith: typesToProcess.
	
	(supertype isKindOf: GenericType) 
		ifTrue: [ 
			| processTypesGenerics |
			processTypesGenerics := Array new: (supertype parametersCount).
			1 to: processTypesGenerics size do: [:i | processTypesGenerics at: i put: Set new].
			typesToProcess do: [:aType | 
				1 to: processTypesGenerics size do: [:i | (processTypesGenerics at: i) addAll: (aType generics at: i)].
				"processTypesGenerics addAll: aType generics"
			].
			bound := processTypesGenerics collect: [:aGenericParameter | TypeNode for: aGenericParameter].
			type := FixedType for: supertype liveClass.
		] 
		ifFalse: [
			(supertype isKindOf: UnionType)
				ifTrue: [
					type := FixedType for: Object.
				]
				ifFalse: [
					type := supertype.
				]
		].
	
	(typesToProcess size > 1) 
		ifTrue: [
			generics := typesToProcess collect: [:aType | TypeNode for: aType].
		]
		ifFalse: [
			generics := Set new.
		]! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
printOn: aStream
	aStream nextPutAll: 'TypeNode ', type asString , '<', bound asString, '> # ' , generics asString ! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
sanitize: types
	| sanitizedTypes |
	
	sanitizedTypes := types.
	
	(sanitizedTypes isKindOf: UnionType) ifTrue: [sanitizedTypes := sanitizedTypes types].
	
	(sanitizedTypes isKindOf: Collection) ifFalse: [
			sanitizedTypes := Set with: types.
		].
	
	^ {sanitizedTypes} flatten! !

!TypeNode methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
type
	^ type.! !

!TypeNode class methodsFor: 'as yet unclassified' stamp: 'JFGO 12/11/2023 18:18:05'!
for: aTypeSet
	^ self new initializeWith: aTypeSet.! !

!GADriver methodsFor: 'analysis' stamp: 'AC 4/17/2023 10:38:14'!
analyzeAssignment: anAssignmentNode
! !

!GADriver methodsFor: 'analysis' stamp: 'AC 4/17/2023 10:38:12'!
analyzeMessageSend: aMessageNode 
! !

!GADriver methodsFor: 'analysis' stamp: 'AC 4/17/2023 10:38:09'!
analyzeMethod: aMethodNode
! !

!GADriver methodsFor: 'analysis' stamp: 'AC 4/17/2023 10:38:05'!
analyzeReturn: aReturnNode
! !

!GADriver methodsFor: 'analysis' stamp: 'AC 4/18/2023 23:29:28'!
runAnalysis

	self subclassResponsibility ! !

!GAFlowGraphCreationDriver methodsFor: 'initialization' stamp: 'AC 4/17/2023 10:47:49'!
compiledMethod: aCompiledMethod

	currentCompiledMethod := aCompiledMethod.
	currentGraph := storage graphFor: aCompiledMethod.! !

!GAFlowGraphCreationDriver methodsFor: 'initialization' stamp: 'AC 8/21/2023 23:10:40'!
initializeFor: aCompiledMethod visitor: aGAVisitor storage: aGAStorage

	"this driver only generates the graph for the compiled method, then returns to other driver that performs the actual analysis"

	storage := aGAStorage.
	self visitor: aGAVisitor.
	self compiledMethod: aCompiledMethod.! !

!GAFlowGraphCreationDriver methodsFor: 'initialization' stamp: 'AC 4/17/2023 10:43:00'!
visitor: aGAVisitor

	visitor := aGAVisitor.! !

!GAFlowGraphCreationDriver methodsFor: 'analysis' stamp: 'AC 8/4/2023 03:46:24'!
analyzeAssignment: anAssignmentNode

	| value destination origin graph |

	origin := nil.
	value := (anAssignmentNode value).
	(value isVariableNode 
		and: [(self isPseudoVariable: value) not])
		ifTrue: [origin := TfgVariableNode for: value name.].
	
	value isAssignmentNode
		ifTrue: [origin := TfgVariableNode for: value variable name].

	value isMessageNode ifTrue: [ | classTypes |
		classTypes := (value receiver basicTypesIn: currentCompiledMethod addingIncompleteTypeInfoTo: (Set new)).
		storage trackedMethodRefs do: [ :aTrackedMethodRef | 
			(value selectorSymbol = aTrackedMethodRef selector
			and: [classTypes includes: aTrackedMethodRef actualClass ])
				ifTrue: [
				
				origin := TfgMessageSendNode methodRef: aTrackedMethodRef.
			].
		].
	].
	
	origin isNil ifTrue: [^self].
	destination := TfgVariableNode for: (anAssignmentNode variable name).
	graph := storage graphFor: currentCompiledMethod.
	graph link: origin to: destination.
	
	(graph inNeighborsOf: origin) do: [:node |
		graph link: node to: destination.	
	].	
	(graph outNeighborsOf: origin) do: [:node |
		graph link: node to: destination.	
	].! !

!GAFlowGraphCreationDriver methodsFor: 'analysis' stamp: 'AC 4/14/2023 15:00:35'!
analyzeMessageSend: aMessageNode ! !

!GAFlowGraphCreationDriver methodsFor: 'analysis' stamp: 'AC 7/19/2023 18:43:32'!
analyzeMethod: aMethodNode

	aMethodNode arguments do: [:arg | 
		currentGraph addNode: (TfgVariableNode for: 	arg name).
	].
	aMethodNode tempNames do: [:tmpName | 
		currentGraph addNode: (TfgVariableNode for: tmpName).
	].

	currentCompiledMethod methodClass allInstVarNames do: [ :anInstVarName | 
		currentGraph addNode: (TfgVariableNode for: anInstVarName).
	].

	currentGraph addNode: (TfgReturnValue new).

	storage trackedMethodRefs ifNotEmpty: [ :trackedMethodRefs | 
		trackedMethodRefs do: [ :aTrackedMethodRef |
			currentGraph addNode: (TfgMessageSendNode methodRef: aTrackedMethodRef).
		].
		trackedMethodRefs do: [ :aTrackedMethodRef |
			trackedMethodRefs do: [ :anotherTrackedMethodRef | | node1 node2 |
					node1 := TfgMessageSendNode methodRef: aTrackedMethodRef.
					node2 := TfgMessageSendNode methodRef: anotherTrackedMethodRef.
					currentGraph link:	node1 to: node2.
				
			].
		].
	].
! !

!GAFlowGraphCreationDriver methodsFor: 'analysis' stamp: 'AC 4/30/2023 22:56:24'!
analyzeReturn: aReturnNode

	| expr node graph returnNode |		
	
	graph := storage graphFor: currentCompiledMethod.
 	expr := aReturnNode expr.
	expr isVariableNode 
		ifTrue: [node := TfgVariableNode for: expr name]
		ifFalse: [^self].
		
		
	returnNode := (TfgReturnValue new).
	graph addNode: node.
	graph link: node to: returnNode.
	
	(graph inNeighborsOf: node) do: [:n |
		graph link: n to: returnNode.	
	].
	(graph outNeighborsOf: node) do: [:n |
		graph link: n to: returnNode.	
	]! !

!GAFlowGraphCreationDriver methodsFor: 'analysis' stamp: 'AC 4/14/2023 16:32:15'!
runAnalysis

	currentGraph nodesSize = 0 ifTrue:[	
		visitor driver: self.
		visitor visit: currentCompiledMethod.
	]! !

!GAFlowGraphCreationDriver methodsFor: 'private' stamp: 'AC 4/14/2023 16:12:34'!
isPseudoVariable: aVariableNode 
	
	^(aVariableNode isNilPseudoVariable 
		or: [aVariableNode isTruePseudoVariable] 
		or: [aVariableNode isFalsePseudoVariable] 
		or: [aVariableNode isSelfPseudoVariable] 
		or: [aVariableNode isSelfPseudoVariable]) or: [aVariableNode isThisContextPseudoVariable]! !

!GAFlowGraphCreationDriver class methodsFor: 'as yet unclassified' stamp: 'AC 8/21/2023 23:10:25'!
for: aCompiledMethod visitor: aGAVisitor  storage: aGAStorage 

	^self new initializeFor: aCompiledMethod visitor: aGAVisitor storage: aGAStorage! !

!GALocalVarAnalysisDriver methodsFor: 'initialization' stamp: 'AC 8/21/2023 23:09:57'!
initializeFor: aTfgVariableNode in: aCompiledMethod forTypes: types storage: anAnalysisStorage   

	visitor := GAVisitor new.
	
	self initializeStateFor: aCompiledMethod 
		tracingVariables: {aTfgVariableNode}
		tracingParseNodes: Set new.
	
	storage := anAnalysisStorage.
	states := OrderedCollection new.
	graphBuildingDriver := (GAFlowGraphCreationDriver for: currentCompiledMethod visitor: visitor storage: storage).
	
	storage initializeAnalysisForTypes: types.

	! !

!GALocalVarAnalysisDriver methodsFor: 'analysis' stamp: 'AC 8/2/2023 02:26:35'!
analyzeAssignment: anAssignmentNode

	| type |
	
	(currentTfgVariableNodes includes: (TfgVariableNode for: anAssignmentNode variable name)) ifFalse: [
		(self isVariableFlowingToCurrentVariable: anAssignmentNode value) ifTrue: [
			currentTfgVariableNodes := currentTfgVariableNodes grownTo: (currentTfgVariableNodes size + 1).
			currentTfgVariableNodes at: (currentTfgVariableNodes size) put: (TfgVariableNode for: anAssignmentNode variable name).
		].
		^self
	].
	
	type := anAssignmentNode value liveTypesIn: currentCompiledMethod 
								addingIncompleteTypeInfoTo: Set new 
								storingGenericsInfoIn: storage.
	storage mergeTypes: type.! !

!GALocalVarAnalysisDriver methodsFor: 'analysis' stamp: 'AC 7/23/2023 23:52:27'!
analyzeMessageSend: aMessageNode 
	
	
	| isVariableUnderAnalisys receiver argIndex arguments argIndexSet implementors |
	
	receiver := aMessageNode receiverOrCascadeReceiver.

	"msg send to variable under analysis"
	isVariableUnderAnalisys := self isVariableFlowingToCurrentVariable: receiver.
	isVariableUnderAnalisys 
		ifTrue: [self addTypesFrom: aMessageNode sentIn: currentCompiledMethod].

	"msg send with variable under analisys as argument"
	arguments := aMessageNode arguments.
	argIndex := 1.
	argIndexSet := Set new.
	arguments do: [ :arg |
		(self isVariableFlowingToCurrentVariable: arg) ifTrue:[ 
			argIndexSet add: argIndex.
		].
		argIndex :=	 argIndex + 1.
	].
	
	argIndexSet ifNotEmpty: [
		implementors := self implementorsForMessageNode: aMessageNode.
		implementors do: [:implementor | 
			self analyzeMethodCall: implementor onArgs: argIndexSet from: aMessageNode.
		].
	].
		! !

!GALocalVarAnalysisDriver methodsFor: 'analysis' stamp: 'AC 8/9/2023 13:38:13'!
inferredTypes

	^storage inferredTypes.! !

!GALocalVarAnalysisDriver methodsFor: 'analysis' stamp: 'AC 9/12/2023 21:28:29'!
runAnalysis

	(storage initializedWithAnyGenericType and: [storage hasAvailableResourcesForSubAnalyses] )ifTrue: [
		storage addOneToSubAnalysesCount.
		self runAnalysisWithoutInitializationCheck
	].
	! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 5/2/2023 00:02:18'!
addTypesFrom: aMessageNode sentIn: aCompiledMethod

	| selector tracedTypes |
	selector := aMessageNode selector key.
	
	tracedTypes := storage tracedTypesForSelector: selector.
	tracedTypes do: [:tm | |argIndexes argNode argType | 
		argIndexes := tm argIndexes.
		1 to: argIndexes size do: [:index |  | argIndex |
			argIndex := argIndexes at: index.
			argNode := aMessageNode arguments at: argIndex.
			argType := argNode liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: (Set new) storingGenericsInfoIn: storage.
			storage addType: argType toParameter: index ofTypeTracedBy: tm.
		].
	]. 
	! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 9/12/2023 21:14:55'!
analyzeMethodCall: aCompiledMethod onArgs: anIndexSet from: aMessageNode

	| node variables implementorGraph |

	"storage hasAvailableResourcesForMethodAnalysis ifFalse: [
		no more resources available, do nothing
		^self.	
	].
	storage addOneToAnalyzedMethodsCount."


	node := aCompiledMethod methodNode.
	(self isInCallStack: node) ifTrue: [^self]. "recursive function, just don't get stuck"
	
	"var name may be obtained from additional method state, thus eliminating the need for the method node (the call stack can be changed to used compiled methods too) and with it the need of decompiling the method. - Adrian"
	variables := OrderedCollection new.
	anIndexSet do: [:anIndex | 
		variables add: (TfgVariableNode for: (node arguments at: anIndex) name).
	].
	self  saveStateForMethod: aCompiledMethod 
		variables: variables.
	
	(GAFlowGraphCreationDriver for: aCompiledMethod visitor: visitor storage: storage) runAnalysis.
	
	visitor driver: self.
	visitor visit: aCompiledMethod.
	
	self restorePreviousState.
	
	implementorGraph := storage graphFor: aCompiledMethod.
	(variables anySatisfy: [:aVariable | 
		implementorGraph isConnected: `TfgReturnValue new` with: 	aVariable
	]) ifTrue: [tracedParseNodes add: aMessageNode].

	! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/12/2023 00:28:00'!
implementorsForMessageNode: aMessageNode

	| receiverTypes selector |
	selector := aMessageNode selectorSymbol.
	receiverTypes := aMessageNode receiverOrCascadeReceiver basicTypesIn: currentCompiledMethod addingIncompleteTypeInfoTo: (Set new).
	
	^receiverTypes 
		inject: Set new
		into: [:implementors :aClass | 
			(storage isParameterGetterOrSetter: selector for: aClass) ifFalse: [
				(aClass lookupSelector: selector) ifNotNil: [:implementor |
					implementors add: implementor.
				].
			].
			implementors.
		].
	! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/24/2023 13:14:32'!
initializeStateFor: aCompiledMethod  tracingVariables: aTfgVariableNodeCollection tracingParseNodes: parseNodes.


	currentCompiledMethod := aCompiledMethod.
	currentTfgVariableNodes := aTfgVariableNodeCollection.
	tracedParseNodes := parseNodes.! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 1/24/2023 14:08:14'!
isInCallStack: aMethodNode 
	
	| compiledMethod |
	compiledMethod _ (aMethodNode methodClass) >> (aMethodNode selector).
	^states anySatisfy: [:state | (state at: 'currentCompiledMethod') = compiledMethod].! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 8/3/2023 13:31:45'!
isVariableFlowingToCurrentVariable: aParseNode

	| graph |

	aParseNode = nil ifTrue: [^false].
	
	(tracedParseNodes includes: aParseNode) ifTrue: [^true].

	graph := storage graphFor: currentCompiledMethod.

	aParseNode isVariableNode ifTrue: [ | currentParseNodeVar |
		currentParseNodeVar := TfgVariableNode for: aParseNode name.
		^currentTfgVariableNodes anySatisfy: [:aTfgVariableNode | 
			(aParseNode name = aTfgVariableNode name)
				or: [graph isConnected: aTfgVariableNode 
					with: currentParseNodeVar ]
		].
	]. 

	^false.! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 8/9/2023 13:56:10'!
readInferredTypes

	^storage readInferredTypes! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/24/2023 13:16:27'!
restorePreviousState
	
	| previousState |
	previousState := states removeLast.
	
	self initializeStateFor: (previousState at: 'currentCompiledMethod')
		tracingVariables: (previousState at: 'currentVariableName')
		tracingParseNodes: (previousState at: 'tracedParseNodes').! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 8/9/2023 13:55:54'!
runAnalysisWithoutInitializationCheck
	
	| inferredTypes |
	
	(currentTfgVariableNodes anySatisfy: [:aTfgNode | 
		(storage isUnderAnalysis: aTfgNode on: currentCompiledMethod)
			or: [storage isComputed: aTfgNode on: currentCompiledMethod].
	]) ifTrue: [^self.].
	
	graphBuildingDriver compiledMethod: currentCompiledMethod.
	graphBuildingDriver runAnalysis.
	
	visitor driver: self.
	
	currentTfgVariableNodes do: [:aTfgNode | 
		storage markUnderAnalisys: aTfgNode on: currentCompiledMethod.
	].
	
	visitor visit: currentCompiledMethod.
	
	inferredTypes := self readInferredTypes. 
	currentTfgVariableNodes do: [:aTfgNode | 
		storage markComputed: aTfgNode on: currentCompiledMethod withType: inferredTypes.
	].! !

!GALocalVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/24/2023 13:14:18'!
saveStateForMethod: aCompiledMethod variables: aTfgVariableNodeCollection

	| currentState |
	currentState := Dictionary new.
	currentState at: 'currentCompiledMethod' put: currentCompiledMethod.
	currentState at: 'currentVariableName' put: currentTfgVariableNodes.
	currentState at: 'tracedParseNodes' put: tracedParseNodes.
	
	states addLast: currentState.
	
	self initializeStateFor: aCompiledMethod tracingVariables: aTfgVariableNodeCollection  tracingParseNodes: Set new.! !

!GALocalVarAnalysisDriver class methodsFor: 'instance creation' stamp: 'AC 4/19/2023 01:38:38'!
for: aVarName in: aCompiledMethod forTypes: types storage: storage   

	^self forVarNode: (TfgVariableNode for: aVarName) in: aCompiledMethod forTypes: types storage: storage! !

!GALocalVarAnalysisDriver class methodsFor: 'instance creation' stamp: 'AC 4/18/2023 23:23:37'!
forVarNode: aTfgVariableNode in: aCompiledMethod forTypes: types storage: storage   

	^self new initializeFor: aTfgVariableNode in: aCompiledMethod forTypes: types storage: storage ! !

!GAInstanceVarAnalysisDriver methodsFor: 'initialization' stamp: 'AC 4/18/2023 23:57:21'!
initializeFor: aTfgVariableNode in: aClass forTypes: types storage: anAnalysisStorage

	instVarName := aTfgVariableNode name.
	currentClass := aClass.
	super initializeFor: aTfgVariableNode in: nil forTypes: types storage: anAnalysisStorage.! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/19/2023 01:29:41'!
analyzeLocalAccessesAddingGetterMethodsIn: getterMethods andTheirRefsIn: getterMethodsRefs
	
	| methodsReferencingInstVar instVarTfgNode |
	
	instVarTfgNode := TfgVariableNode for: instVarName.
	methodsReferencingInstVar := currentClass allAccessesTo: instVarName .
	methodsReferencingInstVar do: [:methodRef | | compiledMethod  graph | 
		compiledMethod := methodRef compiledMethod.			
		self runLocalAnalysisForNode: instVarTfgNode in: compiledMethod.
									
		graph := storage graphFor: compiledMethod.
		(graph isConnected: `TfgReturnValue new` with: instVarTfgNode)
			ifTrue: [ 
				getterMethods add: compiledMethod.
				getterMethodsRefs add: methodRef.	
			].
	].! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/19/2023 01:21:58'!
analyzeMessageSendsFrom: aTracedMethodRefsCollection in: aMethodReferenceCollection 
	
	| node |
	
	"all traced methods are connected with each other, so any one of them works - Adrian"
	node := TfgMessageSendNode methodRef: aTracedMethodRefsCollection anyOne.
	aMethodReferenceCollection do: [ :aMethodReference | 
		self runLocalAnalysisForNode: node in: aMethodReference compiledMethod.
	].! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/19/2023 01:28:05'!
analyzeRemoteAccessesOnSendersOf: getterMethods trackingFrom: getterMethodsRefs 
	
	| actualSenders |
	getterMethodsRefs ifEmpty: [^self].
	
	self trackMessageSendsFor: getterMethodsRefs.
	
	actualSenders := self calculateActualSendersOf: getterMethods.
	self analyzeMessageSendsFrom: getterMethodsRefs in: actualSenders.
! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/19/2023 01:14:46'!
calculateActualSendersOf: aMethodCollection 
	
	^(MultiImplementorsActualMessageSendsCollector for: aMethodCollection) value; actualSenders! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 8/6/2023 22:16:58'!
isVariableFlowingToCurrentVariable: aParseNode

	| graph |
	
	aParseNode ifNil: [^false].
	
	(super isVariableFlowingToCurrentVariable: aParseNode) ifTrue: [^true].

	graph := storage graphFor: currentCompiledMethod.	
	(aParseNode isMessageNode and: [storage trackedMethodRefs isEmpty not] )ifTrue: [ | methodRefs types |

		methodRefs := storage trackedMethodRefs select: [:methodRef |
			aParseNode selectorSymbol = methodRef selector.
		].
	
		types := aParseNode receiver
					basicTypesIn: currentCompiledMethod 
					addingIncompleteTypeInfoTo: 	(Set new).

		methodRefs select: [:aMethodRef | types includes: aMethodRef actualClass] 
			thenDo: [:aMethodRef | | messageSendNode |
				messageSendNode := TfgMessageSendNode methodRef: aMethodRef.
				(currentTfgVariableNodes anySatisfy:[ :aTfgNode |
					(graph isConnected: aTfgNode 
						with: 	messageSendNode)
						.
				]) ifTrue: [^true].
		].	
	].		

	^false.! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 8/9/2023 13:56:36'!
runAnalysisWithoutInitializationCheck

	| getterMethods getterMethodsRefs inferredTypes |
	
	(currentTfgVariableNodes anySatisfy: [:aTfgNode | 
		(storage isUnderAnalysis: aTfgNode on: currentCompiledMethod)
			or: [storage isComputed: aTfgNode on: currentCompiledMethod].
	]) ifTrue: [^self.].

	currentTfgVariableNodes do: [:aTfgNode | 
		storage markUnderAnalisys: aTfgNode on: currentCompiledMethod.
	].

	getterMethods := Set new.
	getterMethodsRefs := Set new.
	
	self analyzeLocalAccessesAddingGetterMethodsIn: getterMethods
		andTheirRefsIn: getterMethodsRefs.
		
	self analyzeRemoteAccessesOnSendersOf: getterMethods
		trackingFrom: getterMethodsRefs.
		
	inferredTypes := self readInferredTypes. 
	currentTfgVariableNodes do: [:aTfgNode | 
		storage markComputed: aTfgNode on: currentCompiledMethod withType: inferredTypes.
	].! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/18/2023 23:50:49'!
runLocalAnalysisForNode: aTfgVariableNode in: aCompiledMethod

	currentTfgVariableNodes := {aTfgVariableNode}.
	currentCompiledMethod := aCompiledMethod.
	super runAnalysisWithoutInitializationCheck.! !

!GAInstanceVarAnalysisDriver methodsFor: 'private' stamp: 'AC 4/19/2023 01:13:13'!
trackMessageSendsFor: getterMethodsRefs 
	
	getterMethodsRefs do: [ :aMethodReference | 
		storage trackMessageSendsFor: aMethodReference.
	].! !

!GAInstanceVarAnalysisDriver class methodsFor: 'instance creation' stamp: 'AC 4/18/2023 23:54:57'!
for: aVarName in: aClass forTypes: types storage: storage   

	^self forVarNode: (TfgVariableNode for: aVarName) in: aClass forTypes: types storage: storage! !

!GAInstanceVarAnalysisDriver class methodsFor: 'instance creation' stamp: 'AC 4/19/2023 01:36:10'!
forVarNode: aTfgVariableNode in: aClass forTypes: types storage: storage   

	^self new initializeFor: aTfgVariableNode in: aClass forTypes: types storage: storage ! !

!GAMethodArgumentAnalysisDriver methodsFor: 'initialization' stamp: 'AC 8/4/2023 06:06:35'!
initializeFor: aTfgVariableNode in: aCompiledMethod forTypes: types storage: anAnalysisStorage   

	originalCompiledMethod := aCompiledMethod.
	collectedTypes := IdentityDictionary new.
	super initializeFor: aTfgVariableNode in: aCompiledMethod forTypes: types storage: anAnalysisStorage.! !

!GAMethodArgumentAnalysisDriver methodsFor: 'initialization' stamp: 'AC 8/4/2023 06:05:57'!
initializeForVarNode: aTfgVariableNode withIndex: index in: aCompiledMethod forTypes: types storage: anAnalysisStorage.

	argumentIndex := index.
	self initializeFor: aTfgVariableNode 
		in: aCompiledMethod 
		forTypes: types 
		storage: anAnalysisStorage.! !

!GAMethodArgumentAnalysisDriver methodsFor: 'private' stamp: 'AC 9/12/2023 21:31:46'!
runAnalysisWithoutInitializationCheck
	
	| sureSenders |
	
	onLocalAnalysis := true.
	super runAnalysisWithoutInitializationCheck.
	onLocalAnalysis := false.
	
	sureSenders := (Smalltalk allActualSendersOn: currentCompiledMethod) first.
	visitor driver: self.
	sureSenders do: [:aSureSender |
			"self halt."
		"storage hasAvailableResourcesForMethodAnalysis ifTrue: ["
			"storage addOneToSubAnalysesCount."
			currentCompiledMethod := aSureSender compiledMethod.
			visitor visit: currentCompiledMethod.
		"]."
	].! !

!GAMethodArgumentAnalysisDriver methodsFor: 'analysis' stamp: 'AC 8/4/2023 06:08:28'!
analyzeMessageSend: aMessageNode 

	| receiver receiverTypes |
	
	onLocalAnalysis ifTrue:[^super analyzeMessageSend: aMessageNode].
	
	(aMessageNode selectorSymbol  = originalCompiledMethod selector) ifFalse: [^self].

	receiver := aMessageNode receiverOrCascadeReceiver.
	receiverTypes := receiver basicTypesIn: currentCompiledMethod addingIncompleteTypeInfoTo: Set new. 
	
	(receiverTypes includes: originalCompiledMethod methodClass) ifTrue: [ | types node |
		node := aMessageNode arguments at: argumentIndex.
		types := collectedTypes 
					at:  node
					ifAbsentPut: [node liveTypesIn: currentCompiledMethod 
									addingIncompleteTypeInfoTo: Set new 
									storingGenericsInfoIn: storage].
		
		storage mergeTypes: types.
	].! !

!GAMethodArgumentAnalysisDriver class methodsFor: 'as yet unclassified' stamp: 'AC 4/20/2023 00:10:03'!
for: aVarName withIndex: index in: aCompiledMethod forTypes: types storage: aStorage

	^self forVarNode: (TfgVariableNode for: aVarName) withIndex: index in: aCompiledMethod forTypes: types storage: aStorage.! !

!GAMethodArgumentAnalysisDriver class methodsFor: 'as yet unclassified' stamp: 'AC 4/20/2023 00:10:48'!
forVarNode: aTfgVarNode withIndex: index in: aCompiledMethod forTypes: types storage: aStorage

	^self new initializeForVarNode: aTfgVarNode withIndex: index in: aCompiledMethod forTypes: types storage: aStorage.! !

!GAReturnValueAnalysisDriver methodsFor: 'analysis' stamp: 'AC 8/3/2023 23:58:00'!
analyzeReturn: aReturnNode

	(currentTfgVariableNodes includes: `TfgReturnValue new`) ifTrue: [ | type |
		type := aReturnNode expr liveTypesIn: currentCompiledMethod 
								addingIncompleteTypeInfoTo: Set new 
								storingGenericsInfoIn: storage.
								
		storage mergeTypes: type.
	].! !

!GAReturnValueAnalysisDriver methodsFor: 'analysis' stamp: 'AC 4/18/2023 23:25:17'!
inferredTypes

	^storage inferredTypesAsSet! !

!GAReturnValueAnalysisDriver methodsFor: 'private' stamp: 'AC 8/9/2023 13:57:11'!
readInferredTypes

	^storage readInferredTypesAsSet.! !

!GAReturnValueAnalysisDriver class methodsFor: 'instance creation' stamp: 'AC 8/4/2023 02:46:55'!
in: aCompiledMethod forTypes: types storage: storage

	^self forVarNode: (`TfgReturnValue new`) in: aCompiledMethod forTypes: types  storage: storage ! !

!GANonConfigurableStorage methodsFor: 'initialization-private' stamp: 'AC 8/15/2023 21:17:19'!
initializeGenerics: aGenerics tracedMethods: aTracedMethods tracedMethodsParameters: aTracedMethodsParameters getterMethods: aGetterMethods constructorMethods: aConstructorMethods

	"common to all analyses"
	generics := aGenerics.
	tracedMethods := aTracedMethods.
	tracedMethodsParameters := aTracedMethodsParameters.
	getterMethods := aGetterMethods.
	constructorMethods := aConstructorMethods.
	
	"common to an analysis and all its subanalises"
	graphs := Dictionary new. 
	analysisFrames := OrderedCollection new.
	analysisProgress := Dictionary new.
	
	"common to an analysis and all its subanalises - resource use limitation"
	analyzedMethodCount := 0.! !

!GANonConfigurableStorage methodsFor: 'resource-utilization' stamp: 'AC 9/12/2023 21:28:29'!
addOneToSubAnalysesCount

	analyzedMethodCount := analyzedMethodCount + 1.! !

!GANonConfigurableStorage methodsFor: 'resource-utilization' stamp: 'AC 9/12/2023 21:35:01'!
hasAvailableResourcesForSubAnalyses

	^analyzedMethodCount <= 10.! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 5/1/2023 23:52:23'!
addType: aLiveType to: anIndex for: aClassType

	| collector |
	collector := (self typesToParameters at: aClassType ifAbsent: [^self]).
	aLiveType liveTypesDo: [:lt | collector at: anIndex add: lt].! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 5/1/2023 23:53:55'!
addType: aLiveType toParameter: anIndex ofTypeTracedBy: aTracedType 
	
	| liveTypeSet |
	liveTypeSet := aTracedType accessTypesFrom: aLiveType.
	liveTypeSet do: [ :lt |
		self addType: lt to: anIndex for: aTracedType type.
	]
	! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 5/2/2023 00:43:57'!
addTypes: aLiveTypeCollection to: anIndex for: aClassType

	| collector |
	collector := (self typesToParameters at: aClassType ifAbsent: [^self]).
	aLiveTypeCollection do: [:aLiveType |
		aLiveType liveTypesDo: [:lt | collector at: anIndex add: lt].
	].
	! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 8/9/2023 13:35:46'!
inferredTypes
	
	| finalTypes |
	
	finalTypes := self readInferredTypes.
	self removeLastAnalysisFrame.
	
	^finalTypes.! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 8/9/2023 13:36:46'!
inferredTypesAsSet
	
	| finalTypes |
	
	finalTypes := self readInferredTypesAsSet.
	self removeLastAnalysisFrame.
	
	^finalTypes.! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 5/1/2023 22:06:37'!
initializeAnalysisForTypes: types 
	
	| currentTypesToParameters |
	
	currentTypesToParameters := Dictionary new.
	types do:[:aType | | collector | 
		collector := nil.
		(generics includesKey: aType) ifTrue: [
			collector := GenericParametersCollector for: aType withParameters: (generics at: aType).
		].
		currentTypesToParameters at: aType put: collector.
	].

	self addNewAnalysisFrameWith: currentTypesToParameters.! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 5/2/2023 14:11:05'!
mergeTypes: aLiveType

	aLiveType liveTypesDo: [:currentLiveType | 
		currentLiveType isGenericType ifTrue: [
			1 to: currentLiveType parametersCount do:[:index | 
				self addTypes: (currentLiveType generics at: index) to:	index for: currentLiveType liveClass.
			].
		].	
	].! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 8/9/2023 13:36:11'!
readInferredTypesAsSet
	
	| finalTypes index currentTypesToParameters |
	
	currentTypesToParameters := self typesToParameters.
	finalTypes := Array new: currentTypesToParameters size.
	index := 1.
	currentTypesToParameters keysAndValuesDo: [:k :v |
		v isNil ifTrue: [finalTypes at: index put: k] 
			  ifFalse: [finalTypes at: index put: v].
		index := index + 1.
	].
	
	^(RawToLiveTypesAdapter new adaptToSet: finalTypes).! !

!GANonConfigurableStorage methodsFor: 'analysis' stamp: 'AC 3/28/2023 01:21:42'!
trackMessageSendsFor: aMethodReference 
	
	self currentTrackedMethosRefs add: aMethodReference.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 5/1/2023 22:28:41'!
anyOfIsGeneric: aClassCollection

	aClassCollection do: [:e | (generics includesKey: e) ifTrue: [^true]].
	^false.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 4/24/2023 01:16:55'!
genericTypeConstructorFor: aClass from: aMethodReference
	
	| constructors |
	constructors := constructorMethods at: aClass ifAbsent: [^nil].
	^constructors at: aMethodReference ifAbsent: [nil].! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 4/24/2023 01:35:32'!
genericTypeConstructorFrom: aMethodReference
	
	^constructorMethods at: aMethodReference ifAbsent: [nil].! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 2/22/2023 01:53:43'!
genericTypes

	^generics copy.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 7/23/2023 14:15:58'!
getterMethodsFor: aClassOrLiveType
	
	| getters theClass |
	theClass := (aClassOrLiveType isKindOf: ClassLiveType ) ifTrue: [aClassOrLiveType liveClass] ifFalse:[aClassOrLiveType].
	getters := getterMethods at: theClass ifAbsent:[Dictionary new].
	^getters copy.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 5/2/2023 00:32:27'!
getterMethodsFor: aReceiverType includes: aSelector

	^(self getterMethodsFor: aReceiverType) includesKey: aSelector
	
	! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 3/19/2023 15:09:06'!
graphFor: aCompiledMethod

	^graphs at: aCompiledMethod ifAbsentPut:[TypeFlowGraph new.].! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 4/18/2023 21:58:29'!
initializedWithAnyGenericType

	^self anyOfIsGeneric: self typesToParameters keys! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 4/11/2023 23:04:10'!
isGeneric: aClass

	^generics includes: aClass.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 4/12/2023 00:00:19'!
isParameterGetterOrSetter: selector for: aClass 
	
	^((tracedMethods at: aClass ifAbsent: [`Dictionary new`]) includesKey: selector)
		or: [(getterMethods at: selector ifAbsent: [#()]) includes: aClass].! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 2/20/2023 00:53:32'!
tracedMethodsFor: aClass 
	
	| traced |
	traced _ tracedMethods at: aClass ifAbsent:[Dictionary new].
	^traced copy.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 7/30/2023 21:14:31'!
tracedMethodsFromParametersFor: aClass 
	
	| traced |
	traced := tracedMethodsParameters at: aClass ifAbsent:[Dictionary new].
	^traced copy.! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 4/30/2023 20:10:42'!
tracedTypesForSelector: aSelector 
	
	| genericTypes |
	genericTypes := self typesToParameters associations select:  [:assoc |  assoc value isNil not ].
	^genericTypes inject: Set new into: [ :tracedTypes :assoc | 
		((tracedMethods at: assoc key ifAbsent: [Dictionary new]) includesKey: aSelector) ifTrue: [
			tracedTypes add: (
				TracedType 
					type: assoc key 
					selector: aSelector 
					argIndex: ((tracedMethods at: assoc key) at: aSelector)).
		].
		((tracedMethodsParameters at: assoc key ifAbsent: [Dictionary new]) includesKey: aSelector) ifTrue: [
			tracedTypes add: (
				TracedTypeFromParameter 
					type: assoc key 
					selector: aSelector 
					argIndex: ((tracedMethodsParameters at: assoc key) at: aSelector)).
		].
		tracedTypes.
	].! !

!GANonConfigurableStorage methodsFor: 'accessing' stamp: 'AC 3/28/2023 01:21:16'!
trackedMethodRefs
	
	^self currentTrackedMethosRefs copy.! !

!GANonConfigurableStorage methodsFor: 'private' stamp: 'AC 3/28/2023 01:14:12'!
addNewAnalysisFrameWith: currentTypesToParameters 
	
	| newFrame |
	newFrame := Dictionary new. 
	newFrame at: 'typesToParameters' put: currentTypesToParameters.
	newFrame at: 'trackedMethodRefs' put: OrderedCollection new.
	analysisFrames addLast: newFrame.! !

!GANonConfigurableStorage methodsFor: 'private' stamp: 'AC 3/28/2023 01:23:12'!
currentTrackedMethosRefs

	^analysisFrames last at: 'trackedMethodRefs'.! !

!GANonConfigurableStorage methodsFor: 'private' stamp: 'AC 3/28/2023 01:32:27'!
removeLastAnalysisFrame
	
	analysisFrames removeLast.
	analysisFrames ifEmpty: [graphs := Dictionary new].! !

!GANonConfigurableStorage methodsFor: 'private' stamp: 'AC 3/28/2023 01:16:18'!
typesToParameters

	^analysisFrames last at: 'typesToParameters'.! !

!GANonConfigurableStorage methodsFor: 'analysis-progress' stamp: 'AC 8/9/2023 13:32:14'!
computedValueFor: aTfgNode on: aCompiledMethodOrClass

	| progress |
	progress := analysisProgress at: aCompiledMethodOrClass ifAbsentPut: [{Dictionary new. Set new.}].
	^(progress at: 1) at: aTfgNode.
	! !

!GANonConfigurableStorage methodsFor: 'analysis-progress' stamp: 'AC 8/9/2023 12:56:39'!
isComputed: aTfgNode on: aCompiledMethodOrClass

	| progress |
	progress := analysisProgress at: aCompiledMethodOrClass ifAbsentPut: [{Dictionary new. Set new.}].
	^(progress at: 1) includes: aTfgNode.
	! !

!GANonConfigurableStorage methodsFor: 'analysis-progress' stamp: 'AC 8/9/2023 12:56:43'!
isUnderAnalysis: aTfgNode on: aCompiledMethodOrClass

	| progress |
	progress := analysisProgress at: aCompiledMethodOrClass ifAbsentPut: [{Dictionary new. Set new.}].
	^(progress at: 2) includes: aTfgNode.
	! !

!GANonConfigurableStorage methodsFor: 'analysis-progress' stamp: 'AC 8/9/2023 13:42:20'!
markComputed: aTfgNode on: aCompiledMethodOrClass withType: aLiveType

	| progress |
	progress := analysisProgress at: aCompiledMethodOrClass ifAbsentPut: [{Dictionary new. Set new.}].
	(progress at: 2) remove: aTfgNode ifAbsent: [].
	(progress at: 1) at: aTfgNode put: aLiveType.
	! !

!GANonConfigurableStorage methodsFor: 'analysis-progress' stamp: 'AC 8/9/2023 12:56:54'!
markUnderAnalisys: aTfgNode on: aCompiledMethodOrClass

	| progress |
	progress := analysisProgress at: aCompiledMethodOrClass ifAbsentPut: [{Dictionary new. Set new.}].
	(progress at: 2) add: aTfgNode.
	! !

!GANonConfigurableStorage methodsFor: 'analysis-progress' stamp: 'AC 8/9/2023 13:35:58'!
readInferredTypes
	
	| finalTypes index currentTypesToParameters |
	
	currentTypesToParameters := self typesToParameters.
	finalTypes := Array new: currentTypesToParameters size.
	index := 1.
	currentTypesToParameters keysAndValuesDo: [:k :v |
		v isNil ifTrue: [finalTypes at: index put: k] 
			  ifFalse: [finalTypes at: index put: v].
		index := index + 1.
	].
	
	^(RawToLiveTypesAdapter new adapt: finalTypes).! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:46:32'!
addGeneric: aClass 
	
	self addGeneric: aClass withParameters: 1.! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:46:44'!
addGeneric: aClass withParameters: aParametersQuantity
	
	generics at: aClass put: aParametersQuantity.! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:46:49'!
addGetterFor: aClass on: aSelector

	self addGetterFor: aClass on: aSelector forParameter: 1.! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:46:54'!
addGetterFor: aClass on: aSelector forParameter: aParameterIndex

	| currentGetters |
	currentGetters := getterMethods at: aClass ifAbsentPut:[Dictionary new].
	currentGetters at: aSelector put: aParameterIndex.! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:47:00'!
stopTracing: aClass 
	
	tracedMethods removeKey: aClass ifAbsent: [].! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:47:05'!
stopTracing: aSelector for: aClass 
	
	| tracedForClass |
	tracedForClass := tracedMethods at: aClass ifAbsent: [`Dictionary new`].
	tracedForClass removeKey: aSelector ifAbsent: [].

	tracedForClass := getterMethods at: aClass ifAbsent: [`Dictionary new`].
	tracedForClass removeKey: aSelector ifAbsent: [].	! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 01:28:41'!
trace: aSelector for: aGenericClass onArg: anArgumentIndex

	self trace: aSelector for: aGenericClass onArgs: {1->anArgumentIndex}. ! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 01:29:42'!
trace: aSelector for: aGenericClass onArgParameter: anArgumentIndex 
	
	| currentTracedMethods |
	
	currentTracedMethods := tracedMethodsParameters at: aGenericClass ifAbsentPut: [Dictionary new].
	currentTracedMethods at: aSelector put: {1->anArgumentIndex}.! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:47:21'!
trace: aSelector for: aGenericClass onArgs: paramToArgIndexAssociations 
	
	| currentTracedMethods |
	
	currentTracedMethods := tracedMethods at: aGenericClass ifAbsentPut:[Dictionary new].
	currentTracedMethods at: aSelector put: paramToArgIndexAssociations.! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:47:26'!
traceConstructor: aMethodReference for: aType onArgs: anArgumentIndexCollection

	constructorMethods at: aMethodReference put: (GenericTypeConstructor for: aType from: aMethodReference onArgs: anArgumentIndexCollection).
! !

!GAConfigurableStorage methodsFor: 'tracing' stamp: 'AC 5/3/2023 00:47:30'!
traceConstructor: aMethodReference for: aType onParametersFromArgs: anArgumentIndexCollection
 
	constructorMethods at: aMethodReference put: (GenericTypeConstructor for: aType from: aMethodReference onParamsFromArgs: anArgumentIndexCollection).! !

!GAConfigurableStorage methodsFor: 'initialization' stamp: 'AC 8/2/2023 01:51:57'!
initialize

	self 
		initializeGenerics: Dictionary new 
		tracedMethods: Dictionary new 
		tracedMethodsParameters: Dictionary new
		getterMethods: Dictionary new
		constructorMethods: Dictionary new.! !

!GAConfigurableStorage methodsFor: 'converting' stamp: 'AC 5/3/2023 00:55:32'!
asNonConfigurableStorage

	^GANonConfigurableStorage new 
		initializeGenerics: generics 
		tracedMethods: tracedMethods 
		tracedMethodsParameters: tracedMethodsParameters 
		getterMethods: getterMethods 
		constructorMethods: constructorMethods! !

!ExampleObserver methodsFor: 'as yet unclassified' stamp: 'AC 8/6/2023 19:14:17'!
countOf: selector

	^count at: selector ifAbsent: [0].! !

!ExampleObserver methodsFor: 'as yet unclassified' stamp: 'AC 8/6/2023 19:09:38'!
initialize

	count := Dictionary new.! !

!ExampleObserver methodsFor: 'as yet unclassified' stamp: 'AC 8/6/2023 19:09:27'!
notify: aMessage

	| c |
	c := count at: (aMessage selector) ifAbsentPut: [0].
	count at:  (aMessage selector) put: c + 1.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:31:00'!
example1

	"instance variable 'iv' is modified in first 2 examples"
	iv := Array new: 1.
	iv at: 1 put: 'str'.
	^iv! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:58:28'!
example10: aCollection

	"aCollection receives an Array with a SmallFloat from examples 9 and 11"
	aCollection at: 1 put: 'str'.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 9/14/2023 13:48:25'!
example11

	| tmp |
	
	tmp := Array with: 1.0.
	{self} do: [:eeee | eeee example10: tmp].
	
	"example10: adds a str to tmp, but LiveTyping does not offer type information inside blocks, so the inference algorithm is unable to resolve to which object the 'example10:' message is sent to, thus losing type information. Correct type for tmp is Array<any # SmallFloat64 | String>"! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 04:20:15'!
example12

	| tmp1 tmp2 |
	
	tmp1 := { true. false }.
	tmp2 := #( 1 #aSymbol ).! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:03:43'!
example13

	| tmp1 tmp2 |
	
	tmp1 := Bag new.
	tmp1 add: 1.
	tmp1 add: 1.0.
	
	tmp2 := OrderedCollection withAll: tmp1.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:05:14'!
example14

	| tmp|
	
	tmp := Dictionary new.
	tmp at: 'str' put: 1.
	! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:31:16'!
example2

	"instance variable 'iv' is modified in first 2 examples"
	iv := Array with: 1.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:34:22'!
example3

	| tmp |
	
	tmp := Array new: 10.
	tmp at: 1 put: 'str'.
	tmp at: 1 put: 1.0.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:35:13'!
example4

	| tmp |
	
	tmp := Array new: 10.
	tmp at: 1 put: 'str'.
	
	tmp := Set new.
	tmp add: 'str'.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:02:55'!
example5

	| tmp |
	
	tmp := OrderedCollection new.
	tmp addLast: 1.0.
	
	tmp := Heap new.
	tmp add: 'str'.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:39:09'!
example6

	| inner outer |
	inner := Array new: 10.
	inner at: 1 put: 'str'.
	
	outer := Array new: 10.
	outer at: 1 put: inner.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 02:40:56'!
example7

	| tmp |
	
	tmp := Array new.! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 04:19:39'!
example8

	| tmp1 ret |
	
	tmp1 := Array with: 'str'.
	ret := tmp1 at: 1.
	
	"also, polymorphic parameter gets returned if method is analyzed"
	tmp1 at: 1.
	! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 9/12/2023 21:51:04'!
example9

	| tmp1 ret |
	
	tmp1 := Array new: 1.
	self example10: tmp1. "a str is added to tmp inside this method"
	tmp1 at: 1 put: 1.0.
	
	"LiveTyping annotations improve the type shown for x, as the type got by inference is less precise"
	ret := tmp1 at: 1.
	
	"also, polymorphic parameter gets returned if method is analyzed"
	tmp1 at: 1.
	! !

!GenericsExamples methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:08:23'!
runAllExamples

	self example1.
	self example2.
	self example3.
	self example4.
	self example5.
	self example6.
	self example7.
	self example8.
	self example9.
	"example10: gets executed from examples 9 and 11"
	self example11.
	self example12.
	self example13.
	self example14.
	! !

!Observed methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:11:42'!
addObservedMessage: aSelector

	observedSelectors add: aSelector.! !

!Observed methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:11:01'!
addObserver: anObserver

	observers add: anObserver! !

!Observed methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:23:41'!
doesNotUnderstand: aMessage 

	(observedSelectors includes: aMessage selector) ifTrue: [
		observers do: [:observer | observer notify: aMessage].	
	].

	^observedValue perform: aMessage selector withArguments: aMessage arguments.! !

!Observed methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:23:41'!
initializeFor: anObject

	observedValue := anObject.
	observers := OrderedCollection new.
	observedSelectors := OrderedCollection new.! !

!Observed class methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:27:37'!
initializeGeneric

	| lt |
	lt := LiveTyping.
	
	lt addGeneric: self.
	lt traceConstructor: (MethodReference class: self class selector: #object:) for: self onArgs: #(1).! !

!Observed class methodsFor: 'as yet unclassified' stamp: 'AC 5/3/2023 03:13:44'!
object: anObject

	^self new initializeFor: anObject.! !

!ObservedExample methodsFor: 'as yet unclassified' stamp: 'AC 8/6/2023 19:15:04'!
example

	| tmp1 tmp2 tmp3 observer |
	
	observer := ExampleObserver new.
	
	tmp1 := Observed object: 1.
	tmp1 addObserver: observer.
	tmp1 addObservedMessage: #+.
	
	tmp2 :=  (tmp1 + 1) = 2.
	
	tmp3 := (observer countOf: #+) = 1.
	! !

!ClassSharingProtocolA methodsFor: 'as yet unclassified' stamp: 'AC 4/11/2023 21:04:53'!
addToCollection: aCollection


	aCollection at: 1 put: 1.! !

!ClassSharingProtocolB methodsFor: 'as yet unclassified' stamp: 'AC 4/11/2023 21:05:10'!
addToCollection: aCollection


	aCollection at: 1 put: 'str'.! !

!DummyGeneric methodsFor: 'as yet unclassified' stamp: 'AC 4/11/2023 23:50:20'!
addFirst: x on: aCollection.
	
	aCollection at:1 put: x.! !

!DummyGeneric methodsFor: 'as yet unclassified' stamp: 'AC 4/11/2023 23:49:33'!
addStringFirstIn: aCollection
	
	self addFirst: 'str' on: aCollection.! !

!DummyGeneric class methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 00:10:27'!
with: anObject

	"dummy method, do nothing"! !

!DummyGeneric class methodsFor: 'as yet unclassified' stamp: 'AC 4/24/2023 09:54:15'!
withAll: aCollection

	"dummy method, do nothing"! !

!InstVarTestsAuxiliary methodsFor: 'only used internally' stamp: 'AC 3/10/2023 01:02:56'!
addIntegerToInstVarOnlyUsedInternally

	onlyUsedInternally at: 1 put: 1! !

!InstVarTestsAuxiliary methodsFor: 'only used internally' stamp: 'AC 3/10/2023 01:02:41'!
addStrToInstVarOnlyUsedInternally

	onlyUsedInternally at: 1 put: 'str'! !

!InstVarTestsAuxiliary methodsFor: 'only used internally' stamp: 'AC 3/10/2023 01:02:16'!
initInstVarOnlyUsedInternally

	onlyUsedInternally _ Array new: 10.! !

!InstVarTestsAuxiliary methodsFor: 'exposed by getter' stamp: 'AC 3/10/2023 01:36:38'!
addIntegerToInstVarExposedByGetter

	exposedByGetter at: 1 put: 1! !

!InstVarTestsAuxiliary methodsFor: 'exposed by getter' stamp: 'AC 3/10/2023 01:36:55'!
getterForVarExposedByGetter

	^exposedByGetter ! !

!InstVarTestsAuxiliary methodsFor: 'exposed by getter' stamp: 'AC 3/10/2023 01:35:14'!
initInstVarExposedByGetter

	exposedByGetter _ Array new: 10.! !

!InstVarTestsAuxiliary methodsFor: 'exposed by multiple getters' stamp: 'AC 3/13/2023 21:13:01'!
addIntegerToInstVarExposedByMultipleGetters

	exposedByMultipleGetters at: 1 put: 1! !

!InstVarTestsAuxiliary methodsFor: 'exposed by multiple getters' stamp: 'AC 3/13/2023 21:13:33'!
firstGetterForVarExposedByMultipleGetters

	^exposedByMultipleGetters ! !

!InstVarTestsAuxiliary methodsFor: 'exposed by multiple getters' stamp: 'AC 3/13/2023 21:14:05'!
initInstVarExposedByMultipleGetters

	exposedByMultipleGetters _ Array new: 10.! !

!InstVarTestsAuxiliary methodsFor: 'exposed by multiple getters' stamp: 'AC 3/13/2023 21:13:40'!
secondGetterForVarExposedByMultipleGetters

	^exposedByMultipleGetters ! !

!InstVarTestsAuxiliary methodsFor: 'msg sends to getters' stamp: 'AC 3/14/2023 23:47:37'!
getterReceivingMessages
	
	^receivingMessagesFromGetters! !

!InstVarTestsAuxiliary methodsFor: 'msg sends to getters' stamp: 'AC 3/14/2023 23:45:37'!
initInstVarReceivingMessagesFromGetters

	receivingMessagesFromGetters _ Array new: 10.! !

!InstVarTestsAuxiliary methodsFor: 'getters used as msg args' stamp: 'AC 3/15/2023 00:39:59'!
getterInstVarUsedAsMessageArgumentFromGetter

	^usedAsMessageArgument.! !

!InstVarTestsAuxiliary methodsFor: 'getters used as msg args' stamp: 'AC 3/15/2023 00:39:44'!
initInstVarUsedAsMessageArgumentFromGetter

	usedAsMessageArgument _ Array new: 10.! !

!InstVarTestsAuxiliary methodsFor: 'flowing to other variables' stamp: 'AC 3/15/2023 22:39:23'!
getterInstVarFromOtherVariableToWhichItFlowsTo

	| tmp |
	tmp _ flowingToOtherVariables.
	^tmp.! !

!InstVarTestsAuxiliary methodsFor: 'flowing to other variables' stamp: 'AC 3/15/2023 22:38:13'!
initInstVarFlowingToOtherVariables

	flowingToOtherVariables _ Array new: 10.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar1' stamp: 'AC 12/29/2022 00:15:23'!
instVar1: aValue

	instVar1 _ aValue.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar1' stamp: 'AC 1/20/2023 20:10:52'!
instVar1DirectGetter

	^instVar1! !

!NonSelfTestsAuxiliary methodsFor: 'instVar1' stamp: 'AC 1/20/2023 20:47:29'!
instVar1IndirectGetter

	| tmp |
	tmp _ instVar1.
	^tmp! !

!NonSelfTestsAuxiliary methodsFor: 'instVar1' stamp: 'AC 12/29/2022 00:19:54'!
instVar1PutBoolean

	instVar1 at: 1 put: false.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar1' stamp: 'AC 12/29/2022 00:19:57'!
instVar1PutStr

	instVar1 at: 1 put: 'str'.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar2' stamp: 'AC 12/30/2022 00:16:37'!
instVar2: aValue

	instVar2 _ aValue.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar2' stamp: 'AC 1/6/2023 00:00:30'!
instVar2Put: anObject
	
	instVar2 at: 1 put: anObject.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar2' stamp: 'AC 1/6/2023 00:03:16'!
instVar2PutBooleanIndirect

	self instVar2Put: false.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar3' stamp: 'AC 1/7/2023 20:44:02'!
instVar3
	^instVar3! !

!NonSelfTestsAuxiliary methodsFor: 'instVar3' stamp: 'AC 1/6/2023 21:27:30'!
instVar3: aValue

	instVar3 _ aValue.! !

!NonSelfTestsAuxiliary methodsFor: 'instVar3' stamp: 'AC 1/7/2023 20:42:39'!
instVar3AddThroughGetter: anObject

	self instVar3 at: 1 put: anObject.! !

!NonSelfTestsAuxiliary methodsFor: 'auxiliary' stamp: 'AC 2/10/2023 02:33:53'!
putStrInFirstPositionOf: aCollection

	aCollection at: 1 put: 'str'.! !

!NonSelfTestsAuxiliarySubclass methodsFor: 'as yet unclassified' stamp: 'AC 2/13/2023 16:41:50'!
putIntegerThenStrInFirstPositionOf: aCollection

	aCollection at: 1 put: 1.
	super putStrInFirstPositionOf: aCollection.! !

!LiveTypingGenerics class methodsFor: 'private' stamp: 'JFGO 12/11/2023 18:17:50'!
addClassVarsToLiveTyping

	| ltc storageVarName |
	ltc := LiveTyping class.
	storageVarName := 'genericsStorage'.
	(ltc definesInstanceVariableNamed: storageVarName) ifFalse: [
		ltc addInstVarName: storageVarName.
	].! !

!LiveTypingGenerics class methodsFor: 'private' stamp: 'JFGO 8/8/2024 18:18:05'!
deleteOldLiveTypingMethods

	ParseNode allSubclassesDo: [:aSubClass | | classOrganization |
		classOrganization := aSubClass organization.
		(classOrganization categoryOfElement: #typesIn:addingIncompleteTypeInfoTo:)	 = '*LiveTyping' ifTrue:[
			aSubClass removeSelector: #typesIn:addingIncompleteTypeInfoTo:.
		].
	].
	! !

!LiveTypingGenerics class methodsFor: 'private' stamp: 'JFGO 12/11/2023 18:17:50'!
initializeGenericClassesInfo

	LiveTyping initializeGenerics.
	
	"initialize generic info for supported generic types"
	{
		Array.
		Array2D.
		RunArray.
		RunNotArray.
		ShortRunArray.
		Heap.
		LinkedList.
		OrderedCollection.
		SortedCollection.
		Bag.
		IdentityBag.
		Set.
		IdentitySet.
		Dictionary.
		IdentityDictionary.
		OrderedDictionary.
		
		"the following classes only have very basic support"
		WeakArray.
		WeakKeyDictionary.
		WeakIdentityKeyDictionary.
		WeakRegistry.
		WeakSet.
		WeakIdentitySet.
		WeakValueDictionary.
	}
	do: [:aType | 
		aType initializeGeneric.	
	].! !

!LiveTypingGenerics class methodsFor: 'private' stamp: 'JFGO 12/11/2023 18:17:50'!
runExamples

	"run examples so that live typing collects type info"
	
	GenericsExamples new runAllExamples.
	
	Observed initializeGeneric.
	ObservedExample new example.! !

!LiveTypingGenerics class methodsFor: 'package initialization' stamp: 'JFGO 12/11/2023 18:17:50'!
initialize

	Utilities informUser: 'Initializing live typing generics' during: [ self initializeLiveTypingGenerics ].! !

!LiveTypingGenerics class methodsFor: 'package initialization' stamp: 'JFGO 12/11/2023 18:17:50'!
initializeLiveTypingGenerics

	self addClassVarsToLiveTyping.
	self deleteOldLiveTypingMethods.
	self initializeGenericClassesInfo.
	self runExamples.
	! !

!Object methodsFor: '*LiveTypingGenerics-converting' stamp: 'AC 4/28/2023 04:33:21'!
asLiveType

	^FixedType for: self class.! !

!ClassDescription methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/19/2023 00:03:57'!
liveTypesOfInstanceVariableNamed: anInstVarName storingGenericsInfoIn: aStorage ifAbsent: aBlock

	| types driver |
	types := self typesOfInstanceVariableNamed: anInstVarName ifAbsent: 	[^aBlock value].
	driver := GAInstanceVarAnalysisDriver for: anInstVarName in: self forTypes: types storage: aStorage.
	driver runAnalysis.
	^driver inferredTypes.
	! !

!Collection methodsFor: '*LiveTypingGenerics-converting' stamp: 'AC 4/28/2023 04:37:07'!
asLiveType

	^GenericType for: self class withTypes: (self collect: [:e | e asLiveType]).! !

!Collection class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 7/30/2023 21:59:25'!
initializeGeneric

	| lt |

	lt := LiveTyping.
	lt addGeneric: self.
	"constructors from other collections"
	{
		#(#newFrom: #(1)). 
		#(#ofSize: #()). 
		#(#withAll: #(1)).
	} 
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for: self
		onParametersFromArgs: (aSelectorAndArgListTuple at: 2).
	].
	
	"constructors from arguments"
	{
		#(#with: #(1)).
		#(#with:with: #(1 2)).
		#(#with:with:with: #(1 2 3)).
		#(#with:with:with:with: #(1 2 3 4)).
		#(#with:with:with:with:with: #(1 2 3 4 5)).
		#(#with:with:with:with:with:with: #(1 2 3 4 5 6)).
		
		"just for optimization"
		#(#new #()).
		#(#new: #()).
	}
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for:  self
		onArgs: (aSelectorAndArgListTuple at: 2).
	].
		
	"polymorphic parameters accessors"
	{
		#at:.
		#anyOne.
		#atRandom.
		#atRandom:.
	}
	do: [:aSelector |
		lt addGetterFor: self on: aSelector.
	].
	
	"polymorphic parameters setters from arguments"
	{
		#(#at:put: 2).
		#(#add: 1).
		#(#add:withOccurrences: 1).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].

	"polymorphic parameters setters from other collections"
	{
		#(#addAll: 1).
	} do: [:aSelectorAndArgTuple |
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArgParameter: (aSelectorAndArgTuple at: 2).
	].
	
	
	! !

!SequenceableCollection class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:22:47'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments - none"
	
	"polymorphic parameters accessors"
	{
		#after:ifNone:.
		#antepenultimate.
		#atLast:.
		#atPin:.
		#atWrap:.
		#before:.
		#eighth.
		#fifth.
		#findBinary.
		#first.
		#fourth.
		#last.
		#ninth.
		#penultimate.
		#second.
		#seventh.
		#sixth.
		#third.
	}
	do: [:aSelector |
		lt addGetterFor: self on: aSelector.
	].
	"polymorphic parameters setters from arguments"
	{
		#(#atAll:put: 2).
		#(#atAllPut: 2).
		#(#atLast:put: 2).
		#(#atWrap:put: 2).
		#(replaceAll:with: 2).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].
	"polymorphic parameters setters from other collections"
	{
		#(#atAll:putAll: 2).
		#(#replaceFrom:to:with:startingAt: 3).
	} do: [:aSelectorAndArgTuple |
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArgParameter: (aSelectorAndArgTuple at: 2).
	].! !

!CharacterSequence methodsFor: '*LiveTypingGenerics-converting' stamp: 'AC 4/28/2023 04:39:21'!
asLiveType

	^FixedType for: self class.! !

!CharacterSequence class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:24:54'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!ArrayedCollection class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:22:59'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections"
	{
		#(#new:From: #(2)).
	} 
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for: self
		onParametersFromArgs: (aSelectorAndArgListTuple at: 2).
	].

	"constructors from arguments"
	{
		#(#new:withAll: #(2)).
	}
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for:  self
		onArgs: (aSelectorAndArgListTuple at: 2).
	].
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments"
	{
		#(#insert:shiftingRightAt: 1).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].
	"polymorphic parameters setters from other collections - none"
	
	"not implemented superclass setters"
	lt stopTracing: #add: for: self. ! !

!Array class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:26:41'!
initializeGeneric

	| lt |
	
	super initializeGeneric.

	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments"
	{
		#(braceWithNone #()).
		#(#braceWith: #(1)).
		#(#braceWith:with: #(1 2)).
		#(#braceWith:with:with: #(1 2 3)).
		#(#braceWith:with:with:with: #(1 2 3 4)).
	}
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for:  self
		onArgs: (aSelectorAndArgListTuple at: 2).
	].
	
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments - none"
	
	"polymorphic parameters setters from other collections - none"! !

!WeakActionSequence class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:14:10'!
initializeGeneric

	"no need to implement this method really, it is here just for clarity"

	super initializeGeneric.! !

!WeakArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:11:35'!
initializeGeneric

	"no need to implement this method really, it is here just for clarity"

	super initializeGeneric.! !

!ByteArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 22:18:27'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!CompiledMethod methodsFor: '*LiveTypingGenerics-private' stamp: 'AC 8/9/2023 10:50:17'!
driverForTempVariable: aVarName forTypes: types storage: aStorage
	
	|  argumentNames |
	argumentNames := self methodNode argumentNames.
	(argumentNames includes: aVarName)
		ifTrue: [^GAMethodArgumentAnalysisDriver for: aVarName withIndex: (argumentNames indexOf: aVarName) in: self forTypes: types storage: aStorage]
		ifFalse: [^GALocalVarAnalysisDriver for: aVarName in: self forTypes: types storage: aStorage].
		
	! !

!CompiledMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/13/2023 13:11:32'!
liveTypesOfInstanceVariableNamed: anInstVarName storingGenericsInfoIn: aStore ifAbsent: aBlock

	^self methodClass liveTypesOfInstanceVariableNamed: anInstVarName storingGenericsInfoIn: aStore ifAbsent: aBlock! !

!CompiledMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/20/2023 00:07:49'!
liveTypesOfVariableNamed: aVarName storingGenericsInfoIn: aStorage ifAbsent: aBlock

	| types driver |
	types := self typesOfVariableNamed: aVarName ifAbsent: [^aBlock value].
	driver := self driverForTempVariable: aVarName forTypes: types storage: aStorage.
	driver runAnalysis.
	^driver inferredTypes.! !

!CompiledMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/16/2023 00:56:51'!
returnLiveTypes: aStorage

	^self returnLiveTypesForReceiver: self methodClass usingStorage: aStorage.! !

!CompiledMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/16/2023 00:56:13'!
returnLiveTypesForReceiver: aReceiverType usingStorage: aStorage

	| driver returnClassTypes |
	
	returnClassTypes := self returnTypes collect: [:aType | aType asTypeFor: aReceiverType].
	driver := GAReturnValueAnalysisDriver in: self forTypes: returnClassTypes storage: aStorage.
	driver runAnalysis.
	^driver inferredTypes.! !

!ColorArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 22:18:34'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!FloatArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 22:18:41'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!IntegerArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 22:18:52'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!RunNotArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:02:42'!
initializeGeneric

	"no need to implement this method really, it is here just for clarity"

	super initializeGeneric.! !

!ShortIntegerArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 22:23:47'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!ShortRunArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:09:43'!
initializeGeneric

	| lt |

	super initializeGeneric.
	
	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments - none"
		
	"polymorphic parameters accessors"
	{
		#valueAtRun:.
	}
	do: [:aSelector |
		lt addGetterFor: self on: aSelector.
	].
	
	"polymorphic parameters setters from arguments - none"

	"polymorphic parameters setters from other collections - none"
	
	"not implemented superclass setters"
	lt stopTracing: #at:put: for: self. 
	! !

!Heap class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:44:33'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections"
	{
		#(#withAll:sortBlock: #(1)).
	} 
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for: self
		onParametersFromArgs: (aSelectorAndArgListTuple at: 2).
	].
	
	"constructors from arguments - none"
	
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments - none"
	
	"polymorphic parameters setters from other collections - none"
	! !

!Interval class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:27:24'!
initializeGeneric

	"not a generic type in hierarchy, do nothing"! !

!LinkedList class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:24:14'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments - none"
	
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments"
	{
		#(#add:before: 1).
		#(#addFirst: 1).
		#(#addLast: 1).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].

	"polymorphic parameters setters from other collections - none"! !

!OrderedCollection class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:24:24'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments - none"
	
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments"
	{
		#(#add:after: 1).
		#(#add:afterIndex: 1).
		#(#add:before: 1).
		#(#add:beforeIndex: 1).
		#(#addFirst: 1).
		#(#addLast: 1).
		#(#insert:before: 1).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].

	"polymorphic parameters setters from other collections"
	{
		#(#addAllFirst: 1).
		#(#addAllLast: 1).
	} do: [:aSelectorAndArgTuple |
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArgParameter: (aSelectorAndArgTuple at: 2).
	].

! !

!RunArray class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:25:09'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections"
	{
		#(#new:From: #(2)).
	} 
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for: self
		onParametersFromArgs: (aSelectorAndArgListTuple at: 2).
	].

	"constructors from arguments"
	{
		#(#new:withAll: #(2)).
	}
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for:  self
		onArgs: (aSelectorAndArgListTuple at: 2).
	].
	
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments"
	{
		#(#addFirst: 1).
		#(#addLast: 1).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].

	"polymorphic parameters setters from other collections - none"

	"not implemented superclass setters"
	lt stopTracing: #add: for: self. ! !

!Bag class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/2/2023 23:59:30'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments - none"
	
	"polymorphic parameters accessors - none"
	
	"polymorphic parameters setters from arguments - none"

	"polymorphic parameters setters from other collections - none"
	
	"not implemented superclass setters"
	lt stopTracing: #at:put:  for: self.
	lt stopTracing: #at:  for: self.! !

!Set class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:23:32'!
initializeGeneric

	| lt |

	super initializeGeneric.
	lt := LiveTyping.
	
	"constructors from other collections - none"
	
	"constructors from arguments - none"
	
	"polymorphic parameters accessors - none"
	{
		#keyAt:
	}
	do: [:aSelector |
		lt addGetterFor: self on: aSelector.
	].

	"polymorphic parameters setters from arguments"
	{
		#(#atNewIndex:put: 2).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].

	"polymorphic parameters setters from other collections - none"
	
	"not implemented superclass setters"
	lt stopTracing: #at:put:  for: self.
	lt stopTracing: #at:  for: self.! !

!Dictionary class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 8/6/2023 16:31:18'!
initializeGeneric

	| lt |

	lt := LiveTyping.
	lt addGeneric: self withParameters: 2.
	
	"constructors from other collections - no support for multiple polymorphic parameters"
	
	"constructors from arguments - no support for multiple poymorphic parameters"

	"polymorphic parameters accessors"
	lt addGetterFor: self on: #at: forParameter: 2.
	lt addGetterFor: self on: #keyAt: forParameter: 1.
	lt addGetterFor: self on: #keyAtValue: forParameter: 1.
	
	"polymorphic parameters setters from arguments"
	lt trace: #at:put: for: self onArgs: {1->1. 2->2}.

	"polymorphic parameters setters from other collections - no support for multiple polymorphic parameters"

	"removing unsupported methods"
	lt stopTracing: #add: for: self. 
	lt stopTracing: #addAll: for: self. ! !

!Array2D class methodsFor: '*LiveTypingGenerics-initialization' stamp: 'AC 5/3/2023 01:24:52'!
initializeGeneric

	| lt |

	lt := LiveTyping.
	lt addGeneric: self.
	"constructors from other collections"
	"#fromArrayOfArrays: is a constructor here, but there's no support for that yet - Adrian"
	
	"constructors from arguments"
	{
		#(#extent #()).
		#(#height:width: #()).
		#(newSize: #()).
		#(#width:height: #()).
	}
	do: [:aSelectorAndArgListTuple |
		lt traceConstructor: 
			(MethodReference class: self class selector: (aSelectorAndArgListTuple at: 1)) 
		for:  self
		onArgs: (aSelectorAndArgListTuple at: 2).
	].
		
	"polymorphic parameters accessors"
	{
		#at:.
		#i:j:.
		#wrapI:j:.
		#x:y:.
	}
	do: [:aSelector |
		lt addGetterFor: self on: aSelector.
	].
	
	"polymorphic parameters setters from arguments"
	{
		#(#at:put: 1).
		#(#i:j:put: 3).
		#(#wrapI:j:put: 3).
		#(#x:y:put: 3).
	} do: [:aSelectorAndArgTuple | 
		lt trace: (aSelectorAndArgTuple at: 1) for: self onArg: (aSelectorAndArgTuple at: 2).
	].

	"polymorphic parameters setters from other collections - none"
	! !

!ParseNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons

	self subclassResponsibility ! !

!ParseNode methodsFor: '*LiveTypingGenerics-livetypes' stamp: 'JFGO 12/8/2023 21:15:35'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: anStorage


	^RawToLiveTypesAdapter new adapt: (self basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons).
	
	! !

!ParseNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons

	^self liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: (LiveTyping getGenericsStorage).! !

!AssignmentNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:32'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^value basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons ! !

!AssignmentNode methodsFor: '*LiveTypingGenerics-livetypes' stamp: 'JFGO 12/8/2023 21:15:32'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  storingGenericsInfoIn: aStorage
	
	^value liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  storingGenericsInfoIn: aStorage! !

!BacktickNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:32'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	"This for sure will compile the source code... it would be better to get the literal from the compiled method
	but theres is no way to map from here to the compiled method literals. To do it I would need to generate 
	the code wich means to compile the source code anyway.
	It could also happen that the compiled method does not exist yet...
	Compiling the source code could signal an exception - Hernan"
	^self literalNode basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
! !

!BacktickNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:32'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	^self literalNode liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage! !

!BraceNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^{ Array }
	"elements 
		inject: Set new
		addingAll: [ :aParseNode | aParseNode typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons ]"! !

!BraceNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  storingGenericsInfoIn: aStorage
	
	aStorage initializeAnalysisForTypes: {Array}.
	elements do: [:aParseNode | 
		aStorage 
			addType:  (aParseNode liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  storingGenericsInfoIn: aStorage)
			to:  1
			for: Array.
	].
	^aStorage inferredTypes.! !

!CascadeNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  

	| lastMessage |
	
	lastMessage := messages last.
	lastMessage receiver: receiver.
	
	^[ lastMessage basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons ]
		ensure: [ lastMessage receiver: nil ]
	! !

!CascadeNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage

	| lastMessage |
	
	lastMessage := messages last.
	lastMessage receiver: receiver.
	
	^[ lastMessage liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage ]
		ensure: [ lastMessage receiver: nil ]
	! !

!BlockNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:32'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^`{ BlockClosure }`! !

!BlockNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:32'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	^`FixedType for: BlockClosure`! !

!MethodNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:34'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons
 
	"I assume that if somebody wants the types of a method it is looking for the return types - Hernan"
	^aCompiledMethod returnTypes ! !

!MethodNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:34'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
 
	^aCompiledMethod returnLiveTypes: aStorage! !

!LeafNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  

	^#()! !

!LeafNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: anStorage

	^`EmptyType new`.! !

!LiteralNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^Array with: self literalValue class! !

!LiteralNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	^self literalValue asLiveType.! !

!VariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:36'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	"This is other possible implementation... the problem is that self can be referenced in a method that
	is being executed in a subclass, so self in that context is the subclass no the class where the method
	is defined. 
	If I use the below implementation, the Float>>#storeOn:base: version RNG 10/12/2018 05:43:39
	passes the typecheck. If the above implementation is used, that version does not passes the type check
	because 'self infinite' returns type will be True and not Boolean.
	On the other hand, with the below implementation, if in ProtoObject I type 'self initialize ' and ask for the
	autocompleter, it will look for selectors in all subclasses of ProtoObject, while with the above implementation
	it does not.
	In a statically typed language, self would 'statically' reference only to instances of the class where the method
	is defined, in dynamically typed languages self it would be valid to send a message to self defined in a subclass
	because self could be referencing an instance of a subclass. So the behavior of self when analized statically is 
	different, although sending a message to self not defined in the method's class hierarchy is not really a good
	practice.
	This is something to continue thinking about. Maybe both strategies are valid and contextual to what we are
	doing, if typechecking or autocompete, etc - Hernan "
	
	self isSelfPseudoVariable ifTrue: [ ^{aCompiledMethod methodClass} ].
	"self isSelfPseudoVariable ifTrue: [ ^aCompiledMethod methodClass withAllSubclasses ]."
	
	self isSuperPseudoVariable ifTrue: [ 
		"If there is a message send to super in ProtoObject, the type is ProtoObject - Hernan"
		^{aCompiledMethod methodClass superclass ifNil: [ aCompiledMethod methodClass ] ifNotNil: [ :aClass | aClass ]} ].
	"self isSuperPseudoVariable ifTrue: [ ^aCompiledMethod methodClass superclass withAllSubclasses ]."
	
	self isTruePseudoVariable ifTrue: [ ^`Array with: true class` ].
	self isFalsePseudoVariable ifTrue: [ ^`Array with: false class` ].
	self isThisContextPseudoVariable ifTrue: [ ^`Array with: MethodContext` ]. 
	self isNilPseudoVariable ifTrue: [ ^`Array with: nil class` ]. 
	
	self error: 'Unsupported variable node'! !

!VariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:36'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: anStorage
	
	self isSelfPseudoVariable ifTrue: [ ^FixedType for: aCompiledMethod methodClass ].
	
	self isSuperPseudoVariable ifTrue: [ 
		"If there is a message send to super in ProtoObject, the type is ProtoObject - Hernan"
		^(aCompiledMethod methodClass superclass ifNil: [ FixedType for: aCompiledMethod methodClass ] ifNotNil: [ :aClass | FixedType for: aClass ]) ].
	
	self isTruePseudoVariable ifTrue: [ ^`FixedType for: true class` ].
	self isFalsePseudoVariable ifTrue: [ ^`FixedType for: false class` ].
	self isThisContextPseudoVariable ifTrue: [ ^`FixedType for: MethodContext` ]. 
	self isNilPseudoVariable ifTrue: [ ^`FixedType for: nil class` ]. 
	
	self error: 'Unsupported variable node'! !

!InstanceVariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^ aCompiledMethod typesOfInstanceVariableNamed: name ifAbsent: [ #() ]! !

!InstanceVariableNode methodsFor: '*LiveTypingGenerics-livetypes' stamp: 'JFGO 12/8/2023 21:15:33'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	^aCompiledMethod liveTypesOfInstanceVariableNamed: name storingGenericsInfoIn: aStorage ifAbsent: [`EmptyType new`].! !

!LiteralVariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^ Array with: key value class! !

!LiteralVariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:33'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  storingGenericsInfoIn: aStorage
	
	^FixedType for: key value class
	
	
	
	
! !

!TempVariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^aCompiledMethod typesOfVariableNamed: name ifAbsent: [ #() ]! !

!TempVariableNode methodsFor: '*LiveTypingGenerics-livetypes' stamp: 'JFGO 12/8/2023 21:15:35'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage 
	
	^aCompiledMethod liveTypesOfVariableNamed: name
					storingGenericsInfoIn: aStorage
					ifAbsent: [`EmptyType new`].! !

!UndeclaredVariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:36'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: aSet 
	
	^#()! !

!UndeclaredVariableNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:36'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	^`EmptyType new`! !

!MessageNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 9/11/2024 17:37:41'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	| types sentSelector receiverTypes  |

	sentSelector := self selectorSymbol.
	
	receiverTypes := self receiverTypesIn: aCompiledMethod addingIncompleteTypeInfoTo:  incompleteTypeInfoReasons.
	
	types := receiverTypes
		inject: Set new
		into: [ :messageReturnTypes :aReceiverType | 								
			(aReceiverType lookupSelector: sentSelector) 
				ifNil: [ incompleteTypeInfoReasons add: (
					IncompleteTypeInfoWarning dueToMissingImplementationOf: (MethodReference class: aReceiverType selector: sentSelector)) ]
				ifNotNil: [ :implementor | | returnTypes |
					returnTypes := implementor returnTypes.
					returnTypes isEmpty
						ifTrue: [ incompleteTypeInfoReasons add: (IncompleteTypeInfoWarning dueToNoReturnTypeOf: implementor methodReference) ]
						ifFalse: [ messageReturnTypes addAll: (returnTypes collect: [ :aType | aType asTypeFor: aReceiverType])]].
			messageReturnTypes ].
		
	^types! !

!MessageNode methodsFor: '*LiveTypingGenerics-livetypes' stamp: 'JFGO 8/8/2024 17:58:15'!
receiverLiveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
	
	^self receiverOrCascadeReceiver liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage.! !

!MessageNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 8/8/2024 18:06:07'!
receiverTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons 
	
	^self receiverOrCascadeReceiver basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons.! !

!ReturnNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
	
	^aCompiledMethod returnTypes
! !

!ReturnNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
 
	^aCompiledMethod returnLiveTypes: aStorage! !

!TemporariesDeclarationNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  

	^#()! !

!TemporariesDeclarationNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:35'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
 
	^`EmptyType new`! !

!TemporaryDeclarationNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:36'!
basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  

	^variableNode basicTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons  
! !

!TemporaryDeclarationNode methodsFor: '*LiveTypingGenerics' stamp: 'JFGO 12/8/2023 21:15:36'!
liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
 
	^variableNode liveTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons storingGenericsInfoIn: aStorage
! !

!ActualMessageSendsCollector methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/4/2023 09:49:52'!
analizeMessageSend: aMessageNode
	
	 | receiverTypes incompleteTypeInfoReasons |

	incompleteTypeInfoReasons := Set new.
	receiverTypes := [ aMessageNode receiverOrCascadeReceiver 
		basicTypesIn: toAnalize 
		addingIncompleteTypeInfoTo: incompleteTypeInfoReasons ]
			on: MethodNotAnnotatingTypes 
			do: [ :anError | #() ].			
	
	receiverTypes isEmpty
		ifTrue: [ possibleMessageSends add: aMessageNode->(Array with: 'Could not get receiver''s type info') ]
		ifFalse: [ 
			"A method can have sure message sends and possible message sends!! - Hernan"
			(self isSureMessageSendFor: receiverTypes) ifTrue: [ sureMessageSends add: aMessageNode ].
			incompleteTypeInfoReasons notEmpty ifTrue: [ possibleMessageSends add: aMessageNode->incompleteTypeInfoReasons ]]! !

!MultiImplementorsActualMessageSendsCollector methodsFor: '*LiveTypingGenerics' stamp: 'AC 3/19/2023 11:59:27'!
actualSenders
	
	^completeSureSenders.! !

!ReceiverTypesOfMessageSendsConform methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/4/2023 10:43:35'!
visitMessageNode: aMessageNode

	| receiverTypes |
	
	(aMessageNode selector isNamed: sentSelector) ifTrue: [
		"I don't care if receiverTypes is empty or if there are error collecting the types.
		This should change if we want a more restrictive rename - Hernan"
		receiverTypes := aMessageNode receiverOrCascadeReceiver basicTypesIn: currentSender addingIncompleteTypeInfoTo: OrderedCollection new.
		(self isMessageSendToAnyImplementor: receiverTypes) ifTrue: [ self add: aMessageNode toNotIncludedReceiverTypesIfCorrespond: receiverTypes ]].! !

!SmalltalkEditor methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/6/2023 20:53:55'!
balloonTypeInfoOfInstanceVariableAt: mousePositionInText

	| instVarName typeInfo types |
	
	instVarName := (self wordUnder: mousePositionInText) asString.
	"typeInfo := self codeProvider selectedClass typeInfoOfInstanceVariableNamed: instVarName ifAbsent: [^'']."
	types := self codeProvider selectedClass 
				liveTypesOfInstanceVariableNamed: instVarName 
				storingGenericsInfoIn: (LiveTyping getGenericsStorage) 
				ifAbsent: [`EmptyType new`].
	typeInfo := InstanceVariableTypeInfo of: instVarName in: self codeProvider selectedClass are: types asArray.
	^typeInfo printTypesUpTo: 5! !

!NotImplementedMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/13/2023 14:20:08'!
analyzeGenericsOn: aTfgNode storingGenericsInfoIn: aStorage

	"not implemented method, do nothing"! !

!NotImplementedMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/13/2023 13:11:32'!
liveTypesOfInstanceVariableNamed: anInstVarName storingGenericsInfoIn: aStorage ifAbsent: anAbsentBlock 
	
	^self actualClass liveTypesOfInstanceVariableNamed: anInstVarName storingGenericsInfoIn: aStorage ifAbsent: anAbsentBlock! !

!NotImplementedMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/13/2023 13:19:46'!
liveTypesOfVariableNamed: aVarName storingGenericsInfoIn: aStorage ifAbsent: anAbsentBlock
	
	^anAbsentBlock value! !

!NotImplementedMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/24/2023 01:04:08'!
returnLiveTypes: aStorage

	^`EmptyType new`! !

!NotImplementedMethod methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/16/2023 01:03:06'!
returnLiveTypesForReceiver: aReceiverType usingStorage: aStorage

	^`EmptyType new`! !

!DynamicTypesTest methodsFor: '*LiveTypingGenerics-tests' stamp: 'AC 4/4/2023 09:53:30'!
test04ClassMessageSendChainsClassType

	|  method types |
	
	"To be sure that collects the return type - Hernan"
	self twoClassMessageSend.
	
	method := self class>>#twoClassMessageSend.
	types := method methodNode block statements first expr basicTypesIn: method addingIncompleteTypeInfoTo: Set new.
	
	self assert: types size equals: 1.
	self assert: types anyOne equals: Metaclass.
	self assert: method returnTypes asSet equals: types
	! !

!DynamicTypesTest methodsFor: '*LiveTypingGenerics-tests' stamp: 'AC 4/4/2023 10:39:59'!
test06newTypeIsMetaclassSoleInstance

	| method types |
	
	"To be sure that collects the return type - Hernan"
	self createNewInstance.

	method := self class>>#createNewInstance.
	types := method methodNode block statements first expr basicTypesIn: method addingIncompleteTypeInfoTo: Set new.
	
	self assert: types size equals: 1.
	self assert: types anyOne equals: self class.
	self assert: method returnTypes asSet equals: types
! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:03:50'!
test06CommonSupertypeOfSiblingsClassesReturnsRightSuperclass

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 10).

	variableTypeInfo addType: (FixedType for: (1 class)).
	variableTypeInfo addType: (FixedType for: (1.0 class)).

	self assert: Number equals: variableTypeInfo commonSupertype.! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:04:56'!
test07CommonSupertypeOnSameHierarchyIsMostTopClass

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 10).

	variableTypeInfo addType: (FixedType for: 'hello' class).
	variableTypeInfo addType: (FixedType for: #hello class).

	self assert: String equals: variableTypeInfo commonSupertype.! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:05:22'!
test08CommonSupertypeOnSameHierarchyIsNotAffectedByAddingOrder

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 10).

	variableTypeInfo addType: (FixedType for: 'hello' class).
	variableTypeInfo addType: (FixedType for: #hello class).

	self assert: String equals: variableTypeInfo commonSupertype.! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:05:43'!
test09ObjectIsCommonSupertypeWhenClassesAreNotSiblings

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 10).

	variableTypeInfo addType: (FixedType for: 'hello' class).
	variableTypeInfo addType: (FixedType for: 1 class).

	self assert: Object equals: variableTypeInfo commonSupertype.! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:06:31'!
test30CommonSupertypeIfGenericEvaluatesIfGenericBlockForObject

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 2).

	variableTypeInfo addType: (FixedType for: 1 class).
	variableTypeInfo addType: (FixedType for: $a class).

	variableTypeInfo commonSupertypeIfGeneric: [ :aGenericSupertype | ^ self assert: aGenericSupertype equals: Object ].
	self fail.! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:06:58'!
test31CommonSupertypeIfGenericEvaluatesIfGenericBlockForProtoObject

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 2).

	variableTypeInfo addType: (FixedType for: Object).
	variableTypeInfo addType: (FixedType for: MessageCatcher) .

	variableTypeInfo commonSupertypeIfGeneric: [ :aGenericSupertype | ^ self assert: aGenericSupertype equals: ProtoObject ].
	self fail.! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:07:26'!
test32WithCommonSupertypeDoIfGenericEvaluatesDoBlockWhenNoGenericSupertype

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 2).

	variableTypeInfo addType: (FixedType for: 1 class).
	variableTypeInfo addType: (FixedType for: 1.0 class).

	variableTypeInfo 
		withCommonSupertypeDo: [ :commonSupertype | self assert: commonSupertype equals: Number ]
		ifGeneric: [ :aGenericSupertype | self fail ]! !

!VariableTypeInfoTest methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/17/2023 21:07:57'!
test33WithCommonSupertypeDoIfGenericEvaluatesGenericBlockWhenGenericSupertype

	| variableTypeInfo |

	variableTypeInfo := VariableTypeInfo new initializeRawTypes: (Array new: 2).

	variableTypeInfo addType: (FixedType for: 1 class).
	variableTypeInfo addType: (FixedType for: $a class).

	variableTypeInfo 
		withCommonSupertypeDo: [ :commonSupertype | self fail ]
		ifGeneric: [ :aGenericSupertype | self assert: aGenericSupertype equals: Object ]! !

!LiveTypingSmalltalkCompleter methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/16/2023 00:22:25'!
commonSupertypeOrSelectorsOf: aNodeUnderCursor in: aMethodNode  
	
	| methodToAnalyze types liveTypes methodClass |
	
	methodClass := aMethodNode encoder classEncoding.
	methodToAnalyze := methodClass compiledMethodAt: aMethodNode selector ifAbsent: [ NotImplementedMethod class: methodClass selector: aMethodNode selector ].
	
	liveTypes := (aNodeUnderCursor typesIn: methodToAnalyze addingIncompleteTypeInfoTo: Set new).
	types := OrderedCollection new. 
	liveTypes classTypesDo: [:aClass | types add: aClass].
	
	^ VariableTypeInfo new initializeRawTypes: types asArray.
	
! !

!ChangeSelectorApplier methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/4/2023 10:44:39'!
actualImplementorsAndSendersWhenOnMessageSend

	| incompleteTypeInfo receiverTypes |

	incompleteTypeInfo := Set new.
	receiverTypes := self messageNode receiverOrCascadeReceiver 
		basicTypesIn: selectedClass>>self selectedSelector addingIncompleteTypeInfoTo: incompleteTypeInfo.
	
	receiverTypes isEmpty ifTrue: [ self canNotRefactorWithoutTypeInfo ].
	incompleteTypeInfo notEmpty ifTrue: [ self canNotRefactorWithIncompleteTypeInfo ].
	
	self refactoringClass 
		addActualImplementorsOf: oldSelector 
		forTypes: receiverTypes 
		to: implementors 
		andActualSendersTo: senders 
		inSystem: Smalltalk ! !

!BrowseActualSelectors methodsFor: '*LiveTypingGenerics-private' stamp: 'AC 8/17/2023 23:02:08'!
browseActualMessageNode: messageNode 
self halt.
	sentSelector := messageNode selector key.
	incompleteTypeInfoReasons := Set new.
	types := messageNode receiverOrCascadeReceiver typesIn: methodToLookUp addingIncompleteTypeInfoTo: incompleteTypeInfoReasons.

	types isEmptyType
		ifTrue: [ self browseActualWithNoTypeInfoSendTo: messageNode receiverOrCascadeReceiver ]
		ifFalse: [ self browseActualWithTypeInfo ].
		
		
! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 3/26/2023 23:30:09'!
addGeneric: aClass 
	
	genericsStorage addGeneric: aClass.! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 5/3/2023 00:44:22'!
addGeneric: aClass withParameters: aParametersQuantity

	genericsStorage addGeneric: aClass withParameters: aParametersQuantity! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/7/2023 15:23:47'!
addGetterFor: aClass on: aSelector

	genericsStorage addGetterFor: aClass on: aSelector.! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 5/3/2023 00:44:38'!
addGetterFor: aClass on: aSelector forParameter: aParameterIndex

	genericsStorage addGetterFor: aClass on: aSelector forParameter: aParameterIndex! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 5/3/2023 00:56:51'!
getGenericsStorage

	^genericsStorage asNonConfigurableStorage ! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 5/3/2023 00:49:04'!
initializeGenerics

	genericsStorage := GAConfigurableStorage new.
	! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 3/24/2023 18:27:07'!
stopTracing: aClass 
	
	genericsStorage stopTracing: aClass.! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 3/24/2023 18:27:15'!
stopTracing: aSelector for: aClass 
	
	genericsStorage stopTracing: aSelector for: aClass .! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 3/24/2023 18:27:25'!
trace: aSelector for: aGenericClass onArg: anArgumentIndex

	genericsStorage trace: aSelector for: aGenericClass onArg: anArgumentIndex.! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 5/3/2023 00:45:00'!
trace: aSelector for: aGenericClass onArgParameter: anArgumentIndex 
	
	genericsStorage trace: aSelector for: aGenericClass onArgParameter: anArgumentIndex ! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 5/3/2023 00:45:16'!
trace: aSelector for: aGenericClass onArgs: paramToArgIndexAssociations 
	
	genericsStorage trace: aSelector for: aGenericClass onArgs: paramToArgIndexAssociations ! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/28/2023 04:02:42'!
traceConstructor: aMethodReference for: aType onArgs: anArgumentIndexCollection

	genericsStorage traceConstructor: aMethodReference for: aType onArgs: anArgumentIndexCollection.! !

!LiveTyping class methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/28/2023 04:02:59'!
traceConstructor: aMethodReference for: aType onParametersFromArgs: anArgumentIndexCollection

	genericsStorage traceConstructor: aMethodReference for: aType onParametersFromArgs: anArgumentIndexCollection! !

!ParseNodeTypeInfo methodsFor: '*LiveTypingGenerics' stamp: 'AC 7/21/2023 10:01:21'!
visitMessageNode: aMessageNode
	
	| implementors receiverTypes |
	
	receiverTypes := aMessageNode receiverOrCascadeReceiver typesIn: method addingIncompleteTypeInfoTo: Set new.
	implementors := IdentitySet new.
	receiverTypes classTypesDo: [ :aType | (aType lookupSelector: aMessageNode selectorSymbol) ifNotNil: [ :implementor | implementors add: implementor ]].
	
	implementors size = 1 ifTrue: [ typeInfo := implementors anyOne returnTypeInfo ]! !

!ParseNodeTypesDisplay methodsFor: '*LiveTypingGenerics' stamp: 'AC 7/21/2023 09:59:35'!
showTypes

	types isEmptyType 
		ifTrue: [ self inform: 'There is no type info for ', parseNodeToAnalize nodeTypeAndIdentifierPrintString ]
		ifFalse: [ self showTypesWhenNotEmpty ].
	! !

!VariableTypeInfo methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/18/2023 00:00:16'!
commonSupertype
	
	"^self commonSupertypeIfNoTypes: [ ProtoObject ]"
	| liveTypes types |
	liveTypes := RawToLiveTypesAdapter new adapt: self types.
	types := Set new.
	liveTypes classTypesDo: [:aClass | types add: aClass].
	^(SupertypeDetective new: types) search.! !

!VariableTypeInfo methodsFor: '*LiveTypingGenerics' stamp: 'AC 8/16/2023 02:03:22'!
printTypesOn: aStream upTo: aNumberOfTypes

	| liveTypes |   
	
        liveTypes := RawToLiveTypesAdapter new adapt: self types.   
        (LiveTypesPrinter on: aStream) print: liveTypes upTo: aNumberOfTypes. ! !

!MethodVariablesTypes methodsFor: '*LiveTypingGenerics' stamp: 'AC 4/8/2023 23:19:52'!
typeInfoOf: aVarName cachingPartialDataIn: aStorage ifAbsent: anAbsentBlock

	| rawTypes |
	
	rawTypes := methodProperties rawTypesOf: aVarName ifAbsent: [ ^anAbsentBlock value ].
	
	^method methodClass createMethodVariableTypeInfoOf: aVarName in: method are: rawTypes ! !
LiveTypingGenerics initialize!

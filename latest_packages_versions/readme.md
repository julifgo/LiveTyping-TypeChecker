# LiveTypingTypeChecker - Integración
Sobre una imagen limpia de CUIS (esta version fue probada con la imagen 6169 y con la version de LiveTyping 1.117) integrar los paquetes de Generics y TypeChecker.

A su vez, es necesario eliminar componentes de LiveTyping. El paquete que se encuentra en este repositorio contiene todos estos metodos eliminados, pero tambien puede hacerse manualmente:

## Cambios en Paquete Live Typing
Consiste en eliminar metodos que son obsoletos producto de las nuevas implementaciones de generics y type checker.

Estos son:
- La Categoria TypeChecking y TypeChecking tests
- ParseNode >> typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons castingWith: aTypeCastApplier 
- AssignmentNode >> typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons castingWith: aTypeCastApplier 
- MessageNode >> receiverTypesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons castingWith: aTypeCastApplier 
- MessageNode >> typesIn: aCompiledMethod addingIncompleteTypeInfoTo: incompleteTypeInfoReasons castingWith: aTypeCastApplier 


Finalmente, se puede verificar que todos los tests de LiveTyping (294), todos los de Generics (159) y todos los de TypeChecker (88) siguen pasando correctamente y la funcionalidad typeCheck puede ser utilizada desde cualquiera de sus opciones en los menus contextuales.

Estos paquetes fueron integrados con la version 6169 de CUIS University.
Para la completa integracion en una imagen nueva, cargar los paquetes de generics y type checker.
Luego ir a LiveTyping y eliminar la categoria TypeChecking (ésta eliminará automaticamente Tambien la categoria de tests).

Todos los tests deben seguir pasando:
- tests de LiveTyping (294 tests para la imagen testeada)
- tests de generics (159 tests)
- tests de TypeChecker (88 tests)

Luego, hacer un type check cualquiera sobre algun metodo para verificar correcto funcionamiento.

Finalmente, parte de este trabajo consistio en eliminar referencias al viejo LiveTyping. Quedan algunas porque estan en la categoria propiamente dicha de extension de LiveTyping).
Estas son referencias a los castAppliers.

Para encontrarlas basta con abrir un workspace, escribir 'aTypeCastApplier' y buscar todo el source code relacionado.
Es seguro eliminar todos los mensajes que surgen de esa busqueda (todos los tests siguen pasando).
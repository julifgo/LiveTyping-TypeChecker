
A partir de aqui, el paquete de generics también sufre modificaciones.
Es producto de poder eliminar el TypeChecking que viene integrado en LiveTyping.
Esa eliminacion incluye mensajes con castAppliers que ya no aplican.

Para testear estos paquetes, cargarlos en una imagen limpia, eliminar las categorias de typeChecking originales y correr los tests de generics y el nuevo typeChecker.
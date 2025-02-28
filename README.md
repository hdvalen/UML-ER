# EXAMEN UML-ER
    Base de datos para un concesionario de vehículos que gestione la información sobre los vehículos en stock, clientes, ventas, y servicios de mantenimiento. La base de datos debe permitir registrar y gestionar vehículos, vendedores, clientes, transacciones de ventas y servicios realizados. Los estudiantes deben crear un diagrama UML E-R que represente la estructura de la base de datos y entregar una documentación detallada que explique las decisiones de diseño, las relaciones entre las tablas y las restricciones impuestas.
    
## Entidades y atributos
    
## Vehiculos 
    Marca
    Modelo
    Año
    Numero Serie(VIN)
    Precio
    Color
    Tipo Combustible
    Tipo transmisión
    Estado(nuevo, usado)
    Debe tener disponibilidad actualizada en el inventario

## Clientes
    Nombre
    Teléfono
    Correo Electrónico
    Direccion
    
## Vendedores
    Nombre
    Numero Empleado
    Fecha Contratacion
   

## Ventas
    Fecha Venta
    Total Transaccion
    Metodo Pago(Tarjeta, Tranferencia)

## Mantenimiento
    TipoServicio(Preventivo, correctivo)
    Costo
    FechaServicio
    Los vehiculos pueden recibir mantenimiento

## Relaciones
    Un clientes puede comprar varios vehiculos y solicitar varios servicios de mantenimiento
    El vendedor puede realizar varias ventas
    El vendedor se asocia a varias transacciones de venta


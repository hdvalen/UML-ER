CREATE DATABASE campusCar;

CREATE TABLE vehiculos(
    idVehiculos INT PRIMARY KEY 
    marca
    modelo
    año
    numeroSerie
    precio
    color
    tipoCombustible
    tipoTransmision
    estado
);

CREATE TABLE clientes(
    idClientes INT PRIMARY KEY
    nombre
    telefono
    correoElectronico
    direccion
);

CREATE TABLE vendedores(
    idVendedores INT PRIMARY KEY 
    nombre
    numeroEmpleado
    fechaContratacion
);

CREATE TABLE ventas(
    idVentas INT PRIMARY KEY 
    fechaVenta
    totalTransaccion
    metodoPago
);

CREATE TABLE mantenimieto(
    idMantenimiento INT PRIMARY KEY 
    tipoServicio
    costo
    fechaServicio
)

CREATE TABLE concesionario (
    idConcesionario INT PRIMARY KEY 
)

CREATE TABLE detalleMovimiento(
    idDetalleMovimiento INT PRIMARY KEY 
)

CREATE TABLE inventario(
    idInventario INT PRIMARY KEY 
)

CREATE TABLE detalleVenta(
    idDetalleVenta INT PRIMARY KEY 
)

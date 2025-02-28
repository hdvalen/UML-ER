CREATE DATABASE campusCar;

CREATE TABLE concesionario (
    idConcesionario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(50),
    telefono NUMERIC(10),
    correoElectronico VARCHAR(50)
);

CREATE TABLE vehiculos (
    idVehiculos INT AUTO_INCREMENT PRIMARY KEY, 
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año DATE,
    numeroSerie VARCHAR(50),
    precio NUMERIC,
    color VARCHAR(50),
    tipoCombustible VARCHAR(50),
    tipoTransmision VARCHAR(50),
    estado VARCHAR(50),
    VIN NUMERIC,
    idConcesionario INT,
    CONSTRAINT fk_concesionario FOREIGN KEY (idConcesionario) REFERENCES concesionario(idConcesionario)
);

CREATE TABLE clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono NUMERIC(10),
    correoElectronico VARCHAR(50),
    direccion VARCHAR(50)
);

CREATE TABLE vendedores (
    idVendedores INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    numeroEmpleado NUMERIC,
    fechaContratacion DATE,
    idConcesionario INT,
    CONSTRAINT fk_concesionario FOREIGN KEY (idConcesionario) REFERENCES concesionario(idConcesionario)
);

CREATE TABLE ventas (
    idVentas INT AUTO_INCREMENT PRIMARY KEY, 
    fechaVenta DATE,
    totalTransaccion NUMERIC,
    metodoPago VARCHAR(50),
    idVendedores INT,
    idCliente INT,
    CONSTRAINT fk_vendedores FOREIGN KEY (idVendedores) REFERENCES vendedores(idVendedores),
    CONSTRAINT fk_clientes FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);

CREATE TABLE mantenimiento (
    idMantenimiento INT AUTO_INCREMENT PRIMARY KEY, 
    costo NUMERIC,
    fechaServicio DATE,
    idVehiculos INT,
    CONSTRAINT fk_vehiculos FOREIGN KEY (idVehiculos) REFERENCES vehiculos(idVehiculos)
);

CREATE TABLE detalleMovimiento (
    idDetalleMovimiento INT AUTO_INCREMENT PRIMARY KEY,
    idServicios INT,
    CONSTRAINT fk_servicios FOREIGN KEY (idServicios) REFERENCES servicios(idServicios)
);

CREATE TABLE servicios (
    idServicios INT AUTO_INCREMENT PRIMARY KEY, 
    descripcion VARCHAR(50)
);

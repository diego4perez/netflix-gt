CREATE DATABASE IF NOT EXISTS netflix_gt;
USE netflix_gt;

CREATE TABLE IF NOT EXISTS `tbl_categoria_pelicula` (
    `id_categoria` int(11) NOT NULL,
    `nombre_categoria` varchar(50) NOT NULL,
    `descripcion_categoria` varchar(255),
    PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `tbl_pais_pelicula` (
    `id_pais` int(11) NOT NULL,
    `nombre_pais` varchar(50) NOT NULL,
    PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `tbl_productora_pelicula` (
    `id_productora` int(11) NOT NULL,
    `nombre_productora` varchar(255) NOT NULL,
    PRIMARY KEY (`id_productora`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `tbl_clasificacion_pelicula` (
    `id_clasificacion` int(11) NOT NULL,
    `nombre_clasificacion` varchar(50) NOT NULL,
    `descripcion_clasificacion` varchar(255),
    PRIMARY KEY (`id_clasificacion`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `tbl_detalle_pelicula` (
    `id_detalle` int(11) NOT NULL,
    `id_categoria` int(11) NOT NULL,
    `id_pais` int(11) NOT NULL,
    `id_productora` int(11) NOT NULL,
    `id_clasificacion` int(11) NOT NULL,
    `duracion_pelicula` varchar(50) NOT NULL,
    `fecha_pelicula` date NOT NULL,
    `reparto_pelicula` varchar(255) NOT NULL,
    `direccion_pelicula` varchar(255) NOT NULL,
    `descripcion_pelicula` varchar(255),
    PRIMARY KEY (`id_detalle`),
    FOREIGN KEY (`id_categoria`) REFERENCES tbl_categoria_pelicula(`id_categoria`),
    FOREIGN KEY (`id_pais`) REFERENCES tbl_pais_pelicula(`id_pais`),
    FOREIGN KEY (`id_productora`) REFERENCES tbl_productora_pelicula(`id_productora`),
    FOREIGN KEY (`id_clasificacion`) REFERENCES tbl_clasificacion_pelicula(`id_clasificacion`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `tbl_enc_pelicula` (
    `id_pelicula` int(11) NOT NULL,
    `id_detalle` int(11) NOT NULL,
    `titulo_pelicula` varchar(50) NOT NULL,
    PRIMARY KEY (`id_pelicula`),
    FOREIGN KEY (`id_detalle`) REFERENCES tbl_detalle_pelicula(`id_detalle`)
) ENGINE=InnoDB;

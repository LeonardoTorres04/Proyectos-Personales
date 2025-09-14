

CREATE TABLE `escritores` (
  `id_escritor` int(11) NOT NULL,
  `tipo_doc` varchar(2) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `escritores` (`id_escritor`, `tipo_doc`, `nombres`, `apellidos`, `direccion`) VALUES
(8719932, 'cc', 'william', 'morales prada', 'CALL 43 A N 1 E 75'),
(42123457, 'cc', 'carlos', 'ramirez vega', 'CRA 26 D NO  65 64'),
(42147874, 'cc', 'yair', 'acosta', 'call 29 b 132-20'),
(1103114208, 'cc', 'leonardo', 'torres velilla', 'cll 16 #1a-185'),
(1234567899, 'cc', 'pedro', 'perez tovar', 'cra 20 # 15-2'),
(1234789740, 'cc', 'ana', 'martinez duran', 'cra 15 # 21-30');



CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `Escritores_id_escritor` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `generos` (`id_genero`, `Escritores_id_escritor`, `titulo`, `fecha_creacion`, `categoria`) VALUES
(123456, 1234567899, '100 años de soledad', '2010-10-01', 'drama'),
(258693, 42123457, 'anatomia de moore', '2015-11-07', 'anatomia'),
(369258, 8719932, 'fisiologia medica de guytun y hall', '2016-11-02', 'fisiologia'),
(456512, 1234789740, 'el crimen de la calle morgue', '2014-03-17', 'terror'),
(741258, 42147874, 'la culpa es de la vaca', '2011-02-03', 'comedia'),
(987654, 1103114208, 'las mil y una noche', '2013-04-21', 'romance');

CREATE TABLE `libreria` (
  `id_libreria` int(11) NOT NULL,
  `lugar` varchar(30) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `libreria` (`id_libreria`, `lugar`, `direccion`, `nombre`) VALUES
(1479654, 'barranquilla', 'cra 25 #14-21', 'panamericana'),
(3652413, 'santa marta', 'cra 25 #14-21', 'clips libreria'),
(8745847, 'cartagena', 'cra 22# 17-10', 'libreria cientifica'),
(9214581, 'medellin', 'cra 1 a 175-20', 'clc libreria'),
(9587142, 'bogota', 'cra 75#125-20', 'sueños de papel'),
(9587432, 'soledad', 'cra 34#72-105', 'libreria nacional');

CREATE TABLE `libreria_has_libros` (
  `Libreria_id_libreria` int(11) NOT NULL,
  `Libros_id_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `libreria_has_libros` (`Libreria_id_libreria`, `Libros_id_libro`) VALUES
(1479654, 100254789),
(3652413, 112300011),
(8745847, 112345678),
(9214581, 114789623),
(9587142, 123458739),
(9587432, 145698732);

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `libros` (`id_libro`, `titulo`, `precio`) VALUES
(100254789, 'fisiologia medica de guytun y hall', 215000),
(112300011, 'el crimen de la calle morgue', 95000),
(112345678, '100 años de soledad', 120000),
(114789623, 'las mil y una noche', 80000),
(123458739, 'la culpa es de la vaca', 68500),
(145698732, 'anatomia de moore', 152000);

CREATE TABLE `libros_has_generos` (
  `Libros_id_libro` int(11) NOT NULL,
  `Generos_id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `libros_has_generos` (`Libros_id_libro`, `Generos_id_genero`) VALUES
(100254789, 123456),
(112300011, 258693),
(112345678, 369258),
(114789623, 456512),
(123458739, 741258),
(145698732, 987654);

ALTER TABLE `escritores`
  ADD PRIMARY KEY (`id_escritor`);

- ADD PRIMARY KEY (`id_genero`),
  ADD KEY `Generos_FKIndex1` (`Escritores_id_escritor`);

ALTER TABLE `libreria`
  ADD PRIMARY KEY (`id_libreria`);


  ADD PRIMARY KEY (`Libreria_id_libreria`,`Libros_id_libro`),
  ADD KEY `Libreria_has_Libros_FKIndex1` (`Libreria_id_libreria`),
  ADD KEY `Libreria_has_Libros_FKIndex2` (`Libros_id_libro`);

  ADD PRIMARY KEY (`id_libro`);


ALTER TABLE `libros_has_generos`
  ADD PRIMARY KEY (`Libros_id_libro`,`Generos_id_genero`),
  ADD KEY `Libros_has_Generos_FKIndex1` (`Libros_id_libro`),
  ADD KEY `Libros_has_Generos_FKIndex2` (`Generos_id_genero`);

ALTER TABLE `generos`
  ADD CONSTRAINT `generos_ibfk_1` FOREIGN KEY (`Escritores_id_escritor`) REFERENCES `escritores` (`id_escritor`) ON DELETE CASCADE;

ALTER TABLE `libreria_has_libros`
  ADD CONSTRAINT `libreria_has_libros_ibfk_1` FOREIGN KEY (`Libreria_id_libreria`) REFERENCES `libreria` (`id_libreria`) ON DELETE CASCADE,
  ADD CONSTRAINT `libreria_has_libros_ibfk_2` FOREIGN KEY (`Libros_id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE;


ALTER TABLE `libros_has_generos`
  ADD CONSTRAINT `libros_has_generos_ibfk_1` FOREIGN KEY (`Generos_id_genero`) REFERENCES `generos` (`id_genero`) ON DELETE CASCADE,
  ADD CONSTRAINT `libros_has_generos_ibfk_2` FOREIGN KEY (`Libros_id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE;



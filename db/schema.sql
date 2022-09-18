
CREATE TABLE `ciclos` (
  `codigo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `ciclos` (`codigo`, `nombre`) VALUES
('IFC303', 'Desarrollo de Aplicaciones Web');


CREATE TABLE `modulos` (
  `codigo` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciclo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horas` smallint(4) UNSIGNED NOT NULL,
  `curso` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0373','IFC303', 'Lenguajes de marcas y sistemas de gestión de información', 96, '1'),
('0483','IFC303', 'Sistemas informáticos', 160, '1'),
('0484','IFC303', 'Bases de datos', 192, '1'),
('0485','IFC303', 'Programación', 256, '1'),
('0487','IFC303', 'Entornos de desarrollo', 96, '1'),
('0612','IFC303', 'Desarrollo web en entorno cliente', 126, '2'),
('0613','IFC303', 'Desarrollo web en entorno servidor', 189, '2'),
('0614','IFC303', 'Despliegue de aplicaciones web', 84, '2'),
('0615','IFC303', 'Diseño de interfaces Web', 126, '2'),
('0616','IFC303', 'Proyecto de desarrollo de aplicaciones Web', 40, '2'),
('0617','IFC303', 'Formación y orientación laboral', 96, '1'),
('0618','IFC303', 'Empresa e iniciativa emprendedora', 63, '2'),
('0619','IFC303', 'Formación en centros de trabajo', 370, '2'),
('A052','IFC303', 'Lengua Extranjera profesional: Inglés 1', 64, '1'),
('A053','IFC303', 'Lengua Extranjera profesional: Inglés 2', 42, '2');

ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`codigo`);

ALTER TABLE `modulos`
  ADD PRIMARY KEY (`codigo`,`ciclo`),
  ADD KEY `ciclo` (`ciclo`),
  ADD KEY `codigo` (`codigo`);

ALTER TABLE `modulos`
  ADD CONSTRAINT `ciclos_formativos_modulos` FOREIGN KEY (`ciclo`) REFERENCES `ciclos` (`codigo`);
COMMIT;
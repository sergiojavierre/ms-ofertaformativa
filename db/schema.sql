
CREATE TABLE `ciclos` (
  `codigo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  primary key (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `modulos` (
  `codigo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciclo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horas` smallint(4) UNSIGNED NOT NULL,
  `curso` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  primary key (codigo),
  foreign key (ciclo) references ciclos(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `ciclos` (`codigo`, `nombre`) VALUES
('C0M201','Actividades comerciales'),
('ELE202','Instalaciones eléctricas y automáticas'),
('IMA201','Mantenimiento electromecánico'),
('QUI201','Operaciones de laboratorio'),
('AFD301','Enseñanza y animación sociodeportiva'),
('AFD302','Acondicionamiento físico'),
('ELE304','Sistemas de teleconomunicaciones e informáticos'),
('ENA301','Eficiencia energética y energía solar térmica'),
('ENA302','Energías renovables'),
('EOC301','Proyecto de edificación'),
('IFC303','Desarrollo de Aplicaciones Web'),
('IMA301','Mantenimiento de instalaciones térmicas y de fluidos'),
('IMA302','Mecatrónica industrial'),
('QUI301','Laboratorio de análisis y de control de calidad');

--INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
--('','', '', , ''),

--COM201
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('1226','COM201', 'Marketing en la actividad comercial',160 , '1'),
('1229','COM201', 'Gestión de compras', 96, '1'),
('1231','COM201', 'Dinamización del punto de venta', 160, '1'),
('1232','COM201', 'Procesos de venta', 160, '1'),
('1233','COM201', 'Aplicaciones informáticas para el comercio', 128, '1'),
('0156','COM201', 'Inglés', 160, '1'),
('1236','COM201', 'Formación y orientación laboral', 96, '1'),
('1227','COM201', 'Gestión de un pequeño comercio', 168, '1'),
('1228','COM201', 'Técnicas de almacén', 126, '2'),
('1230','COM201', 'Venta técnica', 126, '2'),
('1234','COM201', 'Servicios de atención comercial', 84, '2'),
('1235','COM201', 'Comercio electrónico', 126, '2'),
('1237','COM201', 'Formación en centros de trabajo', 410, '2');
--ELE202
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0232','ELE202', 'Automatismos industriales.', 256, '1'),
('0234','ELE202', 'Electrotecnia.', 224, '1'),
('0235','ELE202', 'Instalaciones eléctricas interiores.', 288, '1'),
('0239','ELE202', 'Instalaciones solares fotovoltaicas.', 64, '1'),
('0241','ELE202', 'Formación y orientación laboral.', 96, '1'),
('0233','ELE202', 'Electrónica.', 63, '2'),
('0236','ELE202', 'Instalaciones de distribución.', 147, '2'),
('0237','ELE202', 'Infraestructuras comunes de telecomunicación en viviendas y edificios.', 126, '2'),
('0238','ELE202', 'Instalaciones domóticas.', 126, '2'),
('0240','ELE202', 'Máquinas eléctricas.', 105, '2'),
('0242','ELE202', 'Empresa e iniciativa emprendedora.', 63, '2'),
('0243','ELE202', 'Formación en centros de trabajo.', 410, '2');
--IMA201
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0949','IMA201', 'Técnicas de Fabricación.', 280, '1'),
('0950','IMA201', 'Técnicas de Unión y Montaje.', 130, '1'),
('0951','IMA201', 'Electricidad y Automatismos Eléctricos.', 190, '1'),
('0952','IMA201', 'Automatismos Neumáticos e Hidráulicos.', 255, '1'),
('0956','IMA201', 'Formación y orientación laboral.', 96, '1'),
('0953','IMA201', 'Montaje y Mantenimiento Mecánico.', 210, '2'),
('0954','IMA201', 'Montaje y Mantenimiento Eléctrico-Electrónico.', 176, '2'),
('0955','IMA201', 'Montaje y Mantenimiento de Líneas Automatizadas.', 190, '2'),
('0957','IMA201', 'Empresa e Iniciativa Emprendedora.', 63, '2'),
('0958','IMA201', 'Formación en Centros de Trabajo.', 410, '2');
--QUI201
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('1249','QUI201', 'Química aplicada.', 256, '1'),
('1250','QUI201', 'Muestreo y operaciones unitarias de laboratorio.', 192, '1'),
('1251','QUI201', 'Pruebas fisicoquímicas.', 128, '1'),
('1253','QUI201', 'Seguridad y organización en el laboratorio.', 96, '1'),
('1254','QUI201', 'Técnicas básicas de microbiología y bioquímica.', 192, '1'),
('1258','QUI201', 'Formación y orientación laboral.', 96, '1'),
('0116','QUI201', 'Principios de mantenimiento electromecánico.', 105, '2'),
('1252','QUI201', 'Servicios auxiliares en el laboratorio.', 42, '2'),
('1255','QUI201', 'Operaciones de análisis químico.', 273, '2'),
('1256','QUI201', 'Ensayos de materiales.', 105, '2'),
('1257','QUI201', 'Almacenamiento y distribución en el laboratorio.', 42, '2'),
('1259','QUI201', 'Empresa e iniciativa emprendedora.', 63, '2');
--AFD301
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('1124','AFD301', 'Dinamización grupal.', 128, '1'),
('1136','AFD301', 'Valoración de la condición física e intervención en accidentes.', 192, '1'),
('1138','AFD301', 'Juegos y actividades físico-recreativas y de animación turística.', 160, '1'),
('1139','AFD301', 'Actividades físico-deportivas individuales.', 192, '1'),
('1143','AFD301', 'Metodología de la enseñanza de actividades físico-deportivas.', 128, '1'),
('1145','AFD301', 'Formación y orientación laboral.', 96, '1'),
('A028','AFD301', 'Lengua extranjera profesional: inglés.', 64, '1'),
('1123','AFD301', 'Actividades de ocio y tiempo libre', 147, '2'),
('1137','AFD301', 'Planificación de la animación sociodeportiva', 42, '2'),
('1140','AFD301', 'Actividades físico-deportivas de equipo', 126, '2'),
('1141','AFD301', 'Actividades físico-deportivas de implementos', 126, '2'),
('1142','AFD301', 'Actividades físico-deportivas para la inclusión social', 84, '2'),
('1146','AFD301', 'Empresa e iniciativa emprendedora', 63, '2'),
('A029','AFD301', 'Lengua extranjera profesional: inglés 2', 42, '2'),
('1144','AFD301', 'Proyecto de enseñanza y animación sociodeportiva', 40, ''),
('1147','AFD301', 'Formación en centros de trabajo', 370, '2');
--AFD302
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('1136','AFD302', 'Valoración de la condición física e intervención en accidentes', 192, '1'),
('1149','AFD302', 'Actividades básicas de acondicionamiento físico con soporte musical', 192, '1'),
('1152','AFD302', 'Técnicas de hidrocinesia', 128, '1'),
('1153','AFD302', 'Control postural, bienestar  mantenimiento funcional', 192, '1'),
('A139','AFD302', 'Didáctica aplicada al acondicionamiento físico', 96, '1'),
('1155','AFD302', 'Formación y orientación laboral', 96, '1'),
('A140','AFD302', 'Lengua extranjera: inglés 1', 64, '1'),
('0017','AFD302', 'Habilidades sociales', 126, '2'),
('1148','AFD302', 'Fitness en la sala de entrenamiento polivalente', 210, '2'),
('1150','AFD302', 'Actividades especializadas de acondicionamiento físico con soporte musical', 84, '2'),
('1151','AFD302', 'Acondicionamiento físico en el agua', 105, '2'),
('1156','AFD302', 'Empresa e iniciativa emprendedora', 63, '2'),
('A141','AFD302', 'Lengua extranjera: inglés', 42, '2'),
('1154','AFD302', 'Proyecto de acondicionamiento físico', 40, '2'),
('1157','AFD302', 'Formación en centros de trabajo', 370, '2');
--ELE304
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0525','ELE304', 'Configuración de infraestructuras de sistemas de telecomunicaciones', 128, '1'),
('0551','ELE304', 'Elementos de sistemas de telecomunicaciones', 160, '1'),
('0552','ELE304', 'Sistemas informáticos y redes locales', 160, '1'),
('0553','ELE304', 'Técnicas y procesos en infraestructuras de telecomunicaciones', 128, '1'),
('0601','ELE304', 'Gestión de proyectos de instalaciones de telecomunicaciones', 64, '1'),
('0713','ELE304', 'Sistemas de telefonía fija y móvil', 160, ''),
('A046','ELE304', 'Lengua Extranjera entorno profesional Inglés I', 64, '1'),
('0559','ELE304', 'Formación y orientación laboral', 42, '1'),
('0554','ELE304', 'Sistemas de producción audiovisual', 168, '2'),
('0555','ELE304', 'Redes telemáticas', 126, '2'),
('0556','ELE304', 'Sistemas de radiocomunicaciones', 126, '2'),
('0557','ELE304', 'Sistemas integrados y hogar digital', 105, '2'),
('A047','ELE304', 'Lengua Extranjera entorno profesional Inglés II', 42, '2'),
('0560','ELE304', 'Empresa e iniciativa emprendedora', 63, '2'),
('0558','ELE304', 'Proyecto de Sistemas de Telecomunicaciones e Informáticos', 40, '2'),
('0561','ELE304', 'Formación en centros de trabajo', 370, '2');
--ENA301
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0121','ENA301', 'Equipos e instalaciones térmicas', 256, '1'),
('0122','ENA301', 'Procesos de montaje de instalaciones', 256, '1'),
('0123','ENA301', 'Representación gráfica de instalaciones', 96, '1'),
('0351','ENA301', 'Gestión eficiente del agua en edificación', 64, '1'),
('0352','ENA301', 'Configuración de instalaciones solares térmicas', 128, '1'),
('0352','ENA301', 'Configuración de instalaciones solares térmicas', 84, '2'),
('0356','ENA301', 'Formación y orientación laboral', 96, '1'),
('A028','ENA301', 'Lengua Extranjera entorno profesional Inglés I', 64, '1'),
('0350','ENA301', 'Certificación energética de edificios', 189, '2'),
('0349','ENA301', 'Eficiencia energética de instalaciones', 189, '2'),
('0353','ENA301', 'Gestión del montaje y mantenimiento de instalaciones solares térmicas', 84, '2'),
('0354','ENA301', 'Promoción del uso eficiente de la energía y del agua', 63, '2'),
('0357','ENA301', 'Empresa e iniciativa emprendedora', 63, '2'),
('A029','ENA301', 'Lengua Extranjera entorno profesional Inglés II', 42, '2'),
('0355','ENA301', 'Proyecto de eficiencia energética y energía solar térmica', 40, '2'),
('0358','ENA301', 'Formación en centros de trabajo', 370, '2');
--ENA302
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0668','ENA302', 'Sistemas eléctricos en centrales', 192, '1'),
('0670','ENA302', 'Telecontrol y automatismos', 192, '1'),
('0671','ENA302', 'Prevención de riesgos eléctricos', 74, '1'),
('0680','ENA302', 'Sistemas de energías renovables', 192, '1'),
('0681','ENA302', 'Configuración de instalaciones solares fotovoltaicas', 160, '1'),
('0687','ENA302', 'Formación y orientación laboral', 96, '1'),
('A095','ENA302', 'Lengua Extranjera entorno profesional Inglés I', 64, '1'),
('0669','ENA302', 'Subestaciones eléctricas', 126, '2'),
('0682','ENA302', 'Gestión del montaje de instalaciones solares fotovoltaicas', 105, '2'),
('0683','ENA302', 'Gestión del montaje de parques eólicos', 147, '2'),
('0684','ENA302', 'Operación y mantenimiento de parques eólicos', 147, '2'),
('0688','ENA302', 'Empresa e iniciativa emprendedora', 63, '2'),
('A096','ENA302', 'Lengua Extranjera entorno profesional_ Inglés II', 42, '2'),
('0686','ENA302', 'Proyecto de energías renovables', 40, '2'),
('0689','ENA302', 'Formación en centros de trabajo', 370, '2');
--IFC303
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
--IMA301
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0120','IMA301', 'Sistemas eléctricos y automáticos', 192, '1'),
('0121','IMA301', 'Equipos e instalaciones térmicas', 252, '1'),
('0122','IMA301', 'Procesos de montaje de instalaciones', 256, '1'),
('0123','IMA301', 'Representación gráfica de instalaciones', 96, '1'),
('0138','IMA301', 'Formación y orientación laboral', 96, '1'),
('A024','IMA301', 'Lengua Extranjera entorno profesional_ Inglés I', 64, '1'),
('0124','IMA301', 'Energías renovables y eficiencia energética', 63, '2'),
('0133','IMA301', 'Gestión del montaje, de la calidad y del mantenimiento', 63, '2'),
('0134','IMA301', 'Configuración de instalaciones térmicas y de fluidos', 126, '2'),
('0135','IMA301', 'Mantenimiento de instalaciones frigoríficas y de climatización', 147, '2'),
('0136','IMA301', 'Mantenimiento de instalaciones caloríficas y de fluidos', 126, '2'),
('0139','IMA301', 'Empresa e iniciativa emprendedora', 63, '2'),
('A025','IMA301', 'Lengua Extranjera entorno profesional_ Inglés II', 42, '2'),
('0137','IMA301', 'Proyecto de mantenimiento de instalaciones térmicas y de fluidos', 40, '2'),
('0140','IMA301', 'Formación en centros de trabajo', 370, '2');
--IMA302
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0936','IMA302', 'Sistemas hidraúlico y neumático', 160, '1'),
('0937','IMA302', 'Sistemas eléctrico y electrónico', 160, '1'),
('0939','IMA302', 'Procesos de fabricación', 224, '1'),
('0940','IMA302', 'Representación gráfica de sistemas mecatrónicos', 128, '1'),
('0938','IMA302', 'Elementos de máquinas', 128, '1'),
('A079','IMA302', 'Lengua extranjera profesional: inglés 1', 64, '1'),
('0946','IMA302', 'Formación y orientación laboral', 96, '1'),
('0942','IMA302', 'Procesos y gestión del mantenimiento y calidad', 105, '2'),
('0935','IMA302', 'Sistemas mecánicos', 105, '2'),
('0943','IMA302', 'Integración de sistemas', 147, '2'),
('0944','IMA302', 'Simulación de sistemas mecatrónicos', 42, '2'),
('0941','IMA302', 'Configuración de sistemas mecatrónicos', 126, '2'),
('A080','IMA302', 'Lengua extrajera profesional: inglés 2', 42, '2'),
('0947','IMA302', 'Empresa e iniciativa emprendedora', 63, '2'),
('0945','IMA302', 'Proyecto de mecatrónica industrial', 63, '2'),
('0948','IMA302', 'Formación en centros de trabajo', 370, '2');
--QUI301
INSERT INTO `modulos` (`codigo`,`ciclo`, `nombre`, `horas`, `curso`) VALUES
('0065','QUI301', 'Muestreo y preparación de la muestra', 160, '1'),
('0066','QUI301', 'Análisis químicos', 320, '1'),
('0069','QUI301', 'Ensayos fisicoquímicos', 96, '1'),
('0070','QUI301', 'Ensayos microbiológicos', 160, '1'),
('0072-1','QUI301', 'Calidad y seguridad en el laboratorio (I)', 169, '1'),
('0074','QUI301', 'Formación y orientación laboral', 96, '1'),
('A018','QUI301', 'Lengua Extranjera entorno profesional_ Inglés I', 64, '1'),
('0067','QUI301', 'Análisis instrumental', 231, '2'),
('0068','QUI301', 'Ensayos Físicos', 105, '2'),
('0071','QUI301', 'Ensayos biotecnológicos', 84, '2'),
('0072-2','QUI301', 'Calidad y seguridad en el laboratorio (II)', 169, '2'),
('0075','QUI301', 'Empresa e iniciativa emprendedora', 63, '2'),
('A019','QUI301', 'Lengua Extranjera entorno profesional Inglés II', 42, '2'),
('0073','QUI301', 'Proyecto de laboratorio de análisis y de control de calidad', 40, '2'),
('0076','QUI301', 'Formación en centros de trabajo', 370, '2');
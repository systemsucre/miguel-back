-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql-systemsucre.alwaysdata.net
-- Generation Time: May 17, 2023 at 08:34 AM
-- Server version: 10.6.11-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `systemsucre_contactos`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `headline` varchar(400) DEFAULT NULL,
  `create_` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `number`, `headline`, `create_`) VALUES
(11, 'Ryan', '65214589', 'systemsucre@gmail.com', '2023-05-02'),
(12, 'Carmen', '68541252', 'systemsucre@gmail.com', '2023-05-02'),
(16, 'juanca', '70007000', 'cruzito@gmail.com', '0000-00-00'),
(17, 'juan', '70007000', 'jeraldine@gmail.com', '0000-00-00'),
(18, 'pichon', '70007000', 'giraldine111@gmail.com', '2023-05-09'),
(19, 'trabajador 1', '70007000', 'sixto1990@gmail.com', '2023-05-04'),
(20, 'mirian', '60077676', 'cristina@gmail.com', '2023-05-01'),
(21, 'miry', '60077676', 'faustinamorales@gmail.com', '2023-05-02'),
(22, 'amiga', '60077676', 'lachiquititabombom@gmail.com', '2023-05-01'),
(23, 'miguel facu', '60077671', 'gustavoaguilares@gmail.com', '2023-05-02'),
(24, 'miguel docente', '60077676', 'richigbanvester', '2023-05-03'),
(13087, '18 de Marzo', '71152726', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13088, '18 de Marzo', '71152726', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13090, 'Eduin Mita Contratista', '+569 5765 0272', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13093, 'Esther Avendaño', '74457476', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13094, 'Laura Victoria 🌻', '+573182858687', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13101, 'Albertina', '62218353', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13104, 'Abran Aguilar', '63718865', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13105, 'Alex Área Computers', '76116100', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13108, 'Amelia Oquendo', '72852266', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13109, 'Alfredo Calvo', '72038871', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13112, 'Aidee Sistemas', '76303982', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13115, 'Amely', '63744706', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13117, 'Amely', '63744706', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13121, 'Ariel Santillan', '67616016', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13122, 'Americo Sistemas', '78661674', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13123, 'Anavel Aguilar', '73445557', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13125, 'Carlos Trabajo', '68653440', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13129, 'Braulio', '68742214', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13130, 'Braulio', '68742214', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13132, 'Atencion al Cliente:', '103', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13138, 'Cliente Anahi', '68668101', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13139, 'Bomberos', '119', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13146, 'Cliente Mario Moscoso', '68629820', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13147, 'Cliente Benjamín Días Arquitectura', '65280215', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13149, 'Cliente Ramiro Ali', '72381319', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13151, 'Sedes Ing Maribel', '73422699', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13152, 'Salvador Tecnico', '76118240', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13155, 'Cliente Sandra Davila', '67648795', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13159, 'Clemente', '67627492', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13160, 'Cliente José Arturo Quispe', '72425554', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13161, 'Cinthia Cuñis', '63704245', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13162, 'Cliente Fernando Garabito', '61652802', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13163, 'Consulta Saldo', '*105', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13165, 'Cliente Rubén Bobarin', '71813858', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13169, 'Cliente Isabel', '68320793', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13173, 'Cliente Fidelia Arquitectura', '68643959', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13176, 'Consumo Pospago', '105', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13178, 'Cliente Fernando', '77120829', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13179, 'Cliente Fernando Gómez', '62897667', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13182, 'Cliente Alexander Julián', '67620636', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13183, 'Cliente Mabel Anachuri', '73416357', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13184, 'Cliente Javier Estrada', '63759895', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13186, 'Cumpa Hijo De Venancio', '74517675', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13187, 'Cliente Jovana Peñaranda', '73443607', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13188, 'Cliente Katerin Mendoza', '72209301', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13189, 'Cuarto San Cristóbal', '73477465', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13191, 'Conductor UYUNI', '71826375', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13193, 'David Cabrera', '67912618', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13197, 'Eduin Mita Contratis', '+56957650272', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13201, 'Albert', '74422913', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13204, 'F=Tino', '67981559', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13205, 'Fotocopiadora Copy Sell FAC.Tecnologia', '73438200', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13207, 'Fotocopiadora Copy Sell FAC.Tecnologia', '73438200', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13208, 'Doris', '74454794', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13209, 'Dr. Zulma Directora Hospital', '72872983', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13214, 'Diario Líder Com Sagitario', '69957823', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13215, 'Feliza Cuñis', '74253695', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13217, 'Doña Lenny', '70335876', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13218, 'Dr. Edwin Espada', '72883809', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13219, 'Fabio Sistemas', '72561582', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13221, 'Genius Distribuidora', '70314140', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13223, 'David Cabrera Intern', '73853202', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13224, 'FC', '74200086', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13228, 'Estrll ⭐™', '67627184', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13229, 'Frank', '77128086', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13230, 'Estrll ⭐™', '67627184', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13231, 'FNCB', '64363065', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13233, 'Hab Medicina 2', '71168903', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13234, 'Hab Medicina 2', '71168903', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13236, 'Gilmer', '68402226', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13237, 'Grover Sistema', '65280094', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13238, 'Hab. Alquiler Calle Destacamento 111 #', '63314996', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13239, 'Hab Medicina 3-1', '78683276', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13245, 'Hab. Medicina 3', '68256042', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13246, 'Gus', '71166513', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13248, 'Hab. Alquiler Calle Pocoata 15', '72856941', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13249, 'Hermanito Guido Alexander😊', '73468197', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13251, 'Hab. Alquiler Calle Macha', '72585797', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13254, 'Hab. Arriba Medicina', '72867416', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13255, 'Hab. Alquiler Calle Pocoata #1', '78419418', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13256, 'Huawei', '+52800 148 2934', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13257, 'Info Telef. Fijos', '104', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13260, 'Importadora Desde China', '76740262', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13261, 'Hugo ⚽', '74217309', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13262, 'Ing Oscar Galarza', '78661169', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13264, 'Ing Nekoma🐈', '72861989', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13265, 'Ing Montellano', '72880553', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13269, 'Ing Oscar Galarza', '78661164', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13271, 'Ing Ramiro Duran', '77130007', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13277, 'Ing Sonia GUAMAN🌳🌳', '67417264', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13278, 'Ing. Juanqui', '77134319', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13279, 'Juan José Empastador', '79312259', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13280, 'José Trabajo', '68646489', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13282, 'Juanito', '+569 5239 0717', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13283, 'Jhery', '76123838', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13287, 'Jesús Cliente', '73464766', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13289, 'Internet Universidad', '69694118', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13290, 'Internet Universidad', '69694118', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13292, 'Ing Álvaro Paredon', '68660209', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13294, 'Israel Palacio', '72889436', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13295, 'Ing. Victoria Belianzcaya', '75446969', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13297, 'Juanito', '+56952390717', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13299, 'Kevin KZC', '77198606', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13300, 'Iván Aguilar', '73358837', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13301, 'Kevin Sistemas', '71173955', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13303, 'Lety', '72399362', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13305, 'Laura Victoria 🌻', '+57318 2858687', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13306, 'Khuno', '71154436', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13307, 'Mamá', '73462670', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13308, 'Mariana', '67373211', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13311, 'Mayoristas Tecnologias', '62296622', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13312, 'Nelson Puma', '74422311', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13313, 'Nelson Puma', '74422311', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13314, 'Nestor Wallpa Torres', '+56952070614', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13315, 'Nestor Wallpa Torres', '+569 5207 0614', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13319, 'Miguel Sistema', '72890321', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13321, 'Primo Néstor', '+56991885852', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13322, 'Nestor Barrientos In', '+56995073344', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13323, 'Otrillas', '63421288', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13325, 'Orlando Cruz', '73408262', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13333, 'Prima Esther Chiri A', '74524360', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13336, 'Rebeca', '73424299', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13338, 'Primo Lino Sandoval', '72317622', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13339, 'Rodrigo', '70329086', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13340, 'Primo Néstor', '+569 9188 5852', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13341, 'Radio Patrullas', '110', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13342, 'Recarga Prepago', '*109', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13345, 'Ramiro Técnico Sedes', '71155008', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13347, 'Reina Acuña', '67644629', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13348, 'Red De Distribución Deepcool Tjermal Corp Srl', '60685556', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13350, 'Roque', '72880322', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13351, 'Said', '73424123', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13353, 'Ing Gustavo Poquechoque', '72867155', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13354, 'Roy Sistemas', '75784107', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13355, 'Sergio 🫡 Benito Sistemas', '65263449', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13356, 'Tio Epifanio Aguilar', '+549 298 4282940', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13358, 'Tio Epifanio Aguilar', '+5492984282940', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13360, 'Wili', '74554609', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13363, '~Giovanni Condori', '+549 11 31295510', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13364, 'Sedes Ing Hosman', '67612810', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13365, 'Trabajo Potosí Mina Chaqui', '63691146', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13366, 'Trabajo Nocturno', '75449843', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13368, 'Toni Villca Z Dir Director b', '73447233', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13370, '~Giovanni Condori', '+5491131295510', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13373, 'Yobanny', '73417288', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13377, 'Weimar Sistemas', '73465131', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13379, 'Wilbert Áreas', '79178435', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13380, 'rogelventura4', '73461228', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13381, 'Yudi', '74830316', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13385, 'Upea', '65676718', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13386, 'Tío Ismael', '74517880', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13390, 'Tio Javier Torres', '67449125', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13391, 'Trqbajo Tec Computadora', '63073132', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13392, 'Tío Virgilio', '73479047', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13394, 'Tio Lino Aguilar', '+56956165036', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13395, 'Viqui Cisneiros', '77648680', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13396, 'Vladimir Sistemas', '69668593', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13397, 'Yobanni Condori A', '74416180', 'gustavoaguilares@gmail.com', '0000-00-00'),
(13398, 'Wanda', '68632961', 'gustavoaguilares@gmail.com', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sesion`
--

CREATE TABLE `sesion` (
  `id` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sesion`
--

INSERT INTO `sesion` (`id`, `idusuario`, `fecha`, `token`) VALUES
(11, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDc6MzQ6MjgiLCJpYXQiOjE2ODM2MTA0NjgsImV4cCI6MTY4NDgyMDA2OH0.9fl3ThsGtQcJF8ODGQovGZrz3_Wni7fkmGUP6ObUd9Y'),
(12, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDc6Mzc6MzgiLCJpYXQiOjE2ODM2MTA2NTgsImV4cCI6MTY4NDgyMDI1OH0.0-fQxpNuZv1bCrd2zPFoILjvWBj6BRS0RZlt4TjivNM'),
(13, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDc6Mzg6MjgiLCJpYXQiOjE2ODM2MTA3MDgsImV4cCI6MTY4NDgyMDMwOH0.i0Hn_UJUHcqYejVzTgyEwuOb3QXXhail1B9MtyNc-Go'),
(14, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDc6NDE6MzAiLCJpYXQiOjE2ODM2MTA4OTAsImV4cCI6MTY4NDgyMDQ5MH0.JHK-ZVUVy3ps2dsn_axJasE8KGMoAnzbaylp0VDnFK4'),
(15, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDg6MDI6NDYiLCJpYXQiOjE2ODM2MTIxNjYsImV4cCI6MTY4NDgyMTc2Nn0.HUm9aJlfC6MUAVswFEfTNQvDcPPw-sDLkcgaT_XXjS4'),
(16, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDg6MDM6NTEiLCJpYXQiOjE2ODM2MTIyMzEsImV4cCI6MTY4NDgyMTgzMX0.0kElyBWJ65Tk-d09REIFF3zZGz6bTwK1PO7PYjWHrds'),
(17, 1, '2023-05-09', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3VhcmlvIjoiYWRtaW4iLCJmZWNoYSI6IjIwMjMtMDUtMDkgMDg6MDQ6MzUiLCJpYXQiOjE2ODM2MTIyNzUsImV4cCI6MTY4NDgyMTg3NX0.Px_5YCXre74MWZC5liPnwQjtWaFZYuELGdmFL1B3cYU');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(400) DEFAULT NULL,
  `pass` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `pass`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13399;

--
-- AUTO_INCREMENT for table `sesion`
--
ALTER TABLE `sesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sesion`
--
ALTER TABLE `sesion`
  ADD CONSTRAINT `sesion_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

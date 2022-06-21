SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `airports` (
  `airport_id` int(11) NOT NULL,
  `airport_international_code` varchar(3) COLLATE utf8_hungarian_ci NOT NULL,
  `airport_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `settlement_id` int(11) NOT NULL,
  `GPS1` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  `GPS2` varchar(45) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `airports` (`airport_id`, `airport_international_code`, `airport_name`, `settlement_id`, `GPS1`, `GPS2`) VALUES
(1, 'ALG', 'Houari Boumediene Airport', 1, '', ''),
(2, 'ORA', 'Oran International Airport Ahmed Ben Bella', 2, '', ''),
(3, 'CZL', 'Aeropuerto Internacional Mohamed Boudiaf', 3, '', ''),
(4, 'MRU', 'Sir Seewoosagur Ramgoolam International Airport', 4, '', ''),
(5, 'CPT', 'Cape Town International Airport', 5, '', ''),
(6, 'DUR', 'King Shaka International Airport', 6, '', ''),
(7, 'TIA', 'Tirana International Airport', 7, '', ''),
(8, 'LJU', 'Ljubljana Jože Pučnik Airport', 8, '', ''),
(9, 'CUN', 'Cancun International Airport', 9, '', ''),
(10, 'GDL', 'Miguel Hidalgo y Costilla International Airport', 10, '', ''),
(11, 'MID', 'Mérida International Airport', 11, '', ''),
(12, 'MEX', 'Mexico City International Airport', 12, '', ''),
(13, 'MTY', 'Monterrey International Airport', 13, '', ''),
(14, 'TIJ', 'Tijuana International Airport', 14, '', '');

CREATE TABLE `bus_lines` (
  `bus_station_id_1` int(11) NOT NULL,
  `bus_station_id_2` int(11) NOT NULL,
  `travel_distance` double NOT NULL,
  `travel_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `bus_lines` (`bus_station_id_1`, `bus_station_id_2`, `travel_distance`, `travel_time`) VALUES
(7, 12, 2747.1, 2210),
(7, 12, 2747.1, 2210),
(9, 12, 1693.6, 1630),
(14, 12, 2749.8, 2273),
(13, 12, 905, 630),
(10, 12, 536.4, 340),
(6, 5, 1636.1, 1635),
(1, 2, 416.4, 480),
(11, 12, 1315.1, 1245),
(10, 14, 2221, 1930),
(10, 13, 804.5, 660),
(11, 9, 312.7, 360);

CREATE TABLE `bus_stations` (
  `bus_station_id` int(11) NOT NULL,
  `bus_station_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `settlement_id` int(11) NOT NULL,
  `GPS1` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  `GPS2` varchar(45) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `bus_stations` (`bus_station_id`, `bus_station_name`, `settlement_id`, `GPS1`, `GPS2`) VALUES
(1, 'Arrêt de bus 1er Mai', 1, '36.754093', '3.0049872'),
(2, 'El Bahia Bus Station', 2, '35.679517', '-0.612323'),
(3, 'SNTV Est', 3, '36.351898', '6.622759'),
(4, 'Plaine Lauzun Bus Terminal', 4, '-20.171407', '57.478743'),
(5, 'Myciti Porterfield Bus Stop', 5, '33.815205', '18.485712'),
(6, 'Durban Metro Bus Service', 6, '-29.851636', '31.013836'),
(7, 'Kafja e Rremës', 7, '41.357397', '19.84757'),
(8, 'Avtobusna postaja Ljubljana', 8, '46.057674', '14.509574'),
(9, 'Turismo y Excursiones \"Alianza\"', 9, '21.178525', '-86.832631'),
(10, 'Ruta 33A', 10, '20.682636', '-103.347565'),
(11, 'Linea 12 De Octubre', 11, '20.964815', '-89.61798'),
(12, 'Terminal de Autobuses', 12, ' 19.420929', '-99.07847'),
(13, 'Central San Jerónimo Senda', 13, '25.674477', '-100.36763'),
(14, 'Terminal de Autobús', 14, '32.546127', '-116.974144');

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `settlement_number` int(11) DEFAULT 0,
  `airport_number` int(11) DEFAULT 0,
  `train_station_number` int(11) DEFAULT 0,
  `bus_station_number` int(11) DEFAULT 0,
  `ship_station_number` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `countries` (`country_id`, `country_name`, `region_id`, `settlement_number`, `airport_number`, `train_station_number`, `bus_station_number`, `ship_station_number`) VALUES
(1, 'Algeria', 1, 0, 0, 0, 0, 0),
(2, 'Angola', 1, 0, 0, 0, 0, 0),
(3, 'Benin', 1, 0, 0, 0, 0, 0),
(4, 'Botswana', 1, 0, 0, 0, 0, 0),
(5, 'Burkina Faso', 1, 0, 0, 0, 0, 0),
(6, 'Burundi', 1, 0, 0, 0, 0, 0),
(7, 'Cameroon', 1, 0, 0, 0, 0, 0),
(8, 'Cape Verde', 1, 0, 0, 0, 0, 0),
(9, 'Central African Republic', 1, 0, 0, 0, 0, 0),
(10, 'Chad', 1, 0, 0, 0, 0, 0),
(11, 'Comoros', 1, 0, 0, 0, 0, 0),
(12, 'Cote d\'Ivoire', 1, 0, 0, 0, 0, 0),
(13, 'Democratic Republic of the Congo', 1, 0, 0, 0, 0, 0),
(14, 'Djibouti', 1, 0, 0, 0, 0, 0),
(15, 'Egypt', 1, 0, 0, 0, 0, 0),
(16, 'Equatorial Guinea', 1, 0, 0, 0, 0, 0),
(17, 'Eritrea', 1, 0, 0, 0, 0, 0),
(18, 'Ethiopia', 1, 0, 0, 0, 0, 0),
(19, 'Gabon', 1, 0, 0, 0, 0, 0),
(20, 'Gambia', 1, 0, 0, 0, 0, 0),
(21, 'Ghana', 1, 0, 0, 0, 0, 0),
(22, 'Guinea', 1, 0, 0, 0, 0, 0),
(23, 'Guinea-Bissau', 1, 0, 0, 0, 0, 0),
(24, 'Kenya', 1, 0, 0, 0, 0, 0),
(25, 'Lesotho', 1, 0, 0, 0, 0, 0),
(26, 'Liberia', 1, 0, 0, 0, 0, 0),
(27, 'Libya', 1, 0, 0, 0, 0, 0),
(28, 'Madagascar', 1, 0, 0, 0, 0, 0),
(29, 'Malawi', 1, 0, 0, 0, 0, 0),
(30, 'Mali', 1, 0, 0, 0, 0, 0),
(31, 'Mauritania', 1, 0, 0, 0, 0, 0),
(32, 'Mauritius', 1, 0, 0, 0, 0, 0),
(33, 'Morocco', 1, 0, 0, 0, 0, 0),
(34, 'Mozambique', 1, 0, 0, 0, 0, 0),
(35, 'Namibia', 1, 0, 0, 0, 0, 0),
(36, 'Niger', 1, 0, 0, 0, 0, 0),
(37, 'Nigeria', 1, 0, 0, 0, 0, 0),
(38, 'Republic of the Congo', 1, 0, 0, 0, 0, 0),
(39, 'Reunion', 1, 0, 0, 0, 0, 0),
(40, 'Rwanda', 1, 0, 0, 0, 0, 0),
(41, 'Saint Helena', 1, 0, 0, 0, 0, 0),
(42, 'Sao Tome and Principe', 1, 0, 0, 0, 0, 0),
(43, 'Senegal', 1, 0, 0, 0, 0, 0),
(44, 'Seychelles', 1, 0, 0, 0, 0, 0),
(45, 'Sierra Leone', 1, 0, 0, 0, 0, 0),
(46, 'Somalia', 1, 0, 0, 0, 0, 0),
(47, 'South Africa', 1, 0, 0, 0, 0, 0),
(48, 'South Sudan', 1, 0, 0, 0, 0, 0),
(49, 'Sudan', 1, 0, 0, 0, 0, 0),
(50, 'Swaziland', 1, 0, 0, 0, 0, 0),
(51, 'Tanzania', 1, 0, 0, 0, 0, 0),
(52, 'Togo', 1, 0, 0, 0, 0, 0),
(53, 'Tunisia', 1, 0, 0, 0, 0, 0),
(54, 'Uganda', 1, 0, 0, 0, 0, 0),
(55, 'Western Sahara', 1, 0, 0, 0, 0, 0),
(56, 'Zambia', 1, 0, 0, 0, 0, 0),
(57, 'Zimbabwe', 1, 0, 0, 0, 0, 0),
(58, 'Afghanistan', 2, 0, 0, 0, 0, 0),
(59, 'Armenia', 2, 0, 0, 0, 0, 0),
(60, 'Azerbaijan', 2, 0, 0, 0, 0, 0),
(61, 'Bahrain', 2, 0, 0, 0, 0, 0),
(62, 'Bangladesh', 2, 0, 0, 0, 0, 0),
(63, 'Bhutan', 2, 0, 0, 0, 0, 0),
(64, 'Brunei', 2, 0, 0, 0, 0, 0),
(65, 'Burma', 2, 0, 0, 0, 0, 0),
(66, 'Cambodia', 2, 0, 0, 0, 0, 0),
(67, 'China', 2, 0, 0, 0, 0, 0),
(68, 'Cyprus', 2, 0, 0, 0, 0, 0),
(69, 'East Timor', 2, 0, 0, 0, 0, 0),
(70, 'Georgia', 2, 0, 0, 0, 0, 0),
(71, 'Hong Kong', 2, 0, 0, 0, 0, 0),
(72, 'India', 2, 0, 0, 0, 0, 0),
(73, 'Indonesia', 2, 0, 0, 0, 0, 0),
(74, 'Iran', 2, 0, 0, 0, 0, 0),
(75, 'Iraq', 2, 0, 0, 0, 0, 0),
(76, 'Israel', 2, 0, 0, 0, 0, 0),
(77, 'Japan', 2, 0, 0, 0, 0, 0),
(78, 'Jordan', 2, 0, 0, 0, 0, 0),
(79, 'Kazakhstan', 2, 0, 0, 0, 0, 0),
(80, 'Kuwait', 2, 0, 0, 0, 0, 0),
(81, 'Kyrgyzstan', 2, 0, 0, 0, 0, 0),
(82, 'Laos', 2, 0, 0, 0, 0, 0),
(83, 'Lebanon', 2, 0, 0, 0, 0, 0),
(84, 'Macau', 2, 0, 0, 0, 0, 0),
(85, 'Malaysia', 2, 0, 0, 0, 0, 0),
(86, 'Maldives', 2, 0, 0, 0, 0, 0),
(87, 'Mongolia', 2, 0, 0, 0, 0, 0),
(88, 'Nepal', 2, 0, 0, 0, 0, 0),
(89, 'North Korea', 2, 0, 0, 0, 0, 0),
(90, 'Oman', 2, 0, 0, 0, 0, 0),
(91, 'Pakistan', 2, 0, 0, 0, 0, 0),
(92, 'Philippines', 2, 0, 0, 0, 0, 0),
(93, 'Qatar', 2, 0, 0, 0, 0, 0),
(94, 'Saudi Arabia', 2, 0, 0, 0, 0, 0),
(95, 'Singapore', 2, 0, 0, 0, 0, 0),
(96, 'South Korea', 2, 0, 0, 0, 0, 0),
(97, 'Sri Lanka', 2, 0, 0, 0, 0, 0),
(98, 'Syria', 2, 0, 0, 0, 0, 0),
(99, 'Taiwan', 2, 0, 0, 0, 0, 0),
(100, 'Tajikistan', 2, 0, 0, 0, 0, 0),
(101, 'Thailand', 2, 0, 0, 0, 0, 0),
(102, 'Turkey', 2, 0, 0, 0, 0, 0),
(103, 'Turkmenistan', 2, 0, 0, 0, 0, 0),
(104, 'United Arab Emirates', 2, 0, 0, 0, 0, 0),
(105, 'Uzbekistan', 2, 0, 0, 0, 0, 0),
(106, 'Vietnam', 2, 0, 0, 0, 0, 0),
(107, 'Anguilla', 3, 0, 0, 0, 0, 0),
(108, 'Antigua and Barbuda', 3, 0, 0, 0, 0, 0),
(109, 'Aruba', 3, 0, 0, 0, 0, 0),
(110, 'The Bahamas', 3, 0, 0, 0, 0, 0),
(111, 'Barbados', 3, 0, 0, 0, 0, 0),
(112, 'Bermuda', 3, 0, 0, 0, 0, 0),
(113, 'British Virgin Islands', 3, 0, 0, 0, 0, 0),
(114, 'Cayman Islands', 3, 0, 0, 0, 0, 0),
(115, 'Cuba', 3, 0, 0, 0, 0, 0),
(116, 'Dominica', 3, 0, 0, 0, 0, 0),
(117, 'Dominican Republic', 3, 0, 0, 0, 0, 0),
(118, 'Grenada', 3, 0, 0, 0, 0, 0),
(119, 'Guadeloupe', 3, 0, 0, 0, 0, 0),
(120, 'Haiti', 3, 0, 0, 0, 0, 0),
(121, 'Jamaica', 3, 0, 0, 0, 0, 0),
(122, 'Martinique', 3, 0, 0, 0, 0, 0),
(123, 'Montserrat', 3, 0, 0, 0, 0, 0),
(124, 'Netherlands Antilles', 3, 0, 0, 0, 0, 0),
(125, 'Puerto Rico', 3, 0, 0, 0, 0, 0),
(126, 'Saint Kitts and Nevis', 3, 0, 0, 0, 0, 0),
(127, 'Saint Lucia', 3, 0, 0, 0, 0, 0),
(128, 'Saint Vincent and the Grenadines', 3, 0, 0, 0, 0, 0),
(129, 'Trinidad and Tobago', 3, 0, 0, 0, 0, 0),
(130, 'Turks and Caicos Islands', 3, 0, 0, 0, 0, 0),
(131, 'U.S. Virgin Islands', 3, 0, 0, 0, 0, 0),
(132, 'Belize', 4, 0, 0, 0, 0, 0),
(133, 'Costa Rica', 4, 0, 0, 0, 0, 0),
(134, 'El Salvador', 4, 0, 0, 0, 0, 0),
(135, 'Guatemala', 4, 0, 0, 0, 0, 0),
(136, 'Honduras', 4, 0, 0, 0, 0, 0),
(137, 'Nicaragua', 4, 0, 0, 0, 0, 0),
(138, 'Panama', 4, 0, 0, 0, 0, 0),
(139, 'Albania', 5, 0, 0, 0, 0, 0),
(140, 'Andorra', 5, 0, 0, 0, 0, 0),
(141, 'Austria', 5, 0, 0, 0, 0, 0),
(142, 'Belarus', 5, 0, 0, 0, 0, 0),
(143, 'Belgium', 5, 0, 0, 0, 0, 0),
(144, 'Bosnia and Herzegovina', 5, 0, 0, 0, 0, 0),
(145, 'Bulgaria', 5, 0, 0, 0, 0, 0),
(146, 'Croatia', 5, 0, 0, 0, 0, 0),
(147, 'Czech Republic', 5, 0, 0, 0, 0, 0),
(148, 'Denmark', 5, 0, 0, 0, 0, 0),
(149, 'Estonia', 5, 0, 0, 0, 0, 0),
(150, 'Finland', 5, 0, 0, 0, 0, 0),
(151, 'France', 5, 0, 0, 0, 0, 0),
(152, 'Germany', 5, 0, 0, 0, 0, 0),
(153, 'Gibraltar', 5, 0, 0, 0, 0, 0),
(154, 'Greece', 5, 0, 0, 0, 0, 0),
(155, 'Holy See', 5, 0, 0, 0, 0, 0),
(156, 'Hungary', 5, 0, 0, 0, 0, 0),
(157, 'Iceland', 5, 0, 0, 0, 0, 0),
(158, 'Ireland', 5, 0, 0, 0, 0, 0),
(159, 'Italy', 5, 0, 0, 0, 0, 0),
(160, 'Kosovo', 5, 0, 0, 0, 0, 0),
(161, 'Latvia', 5, 0, 0, 0, 0, 0),
(162, 'Liechtenstein', 5, 0, 0, 0, 0, 0),
(163, 'Lithuania', 5, 0, 0, 0, 0, 0),
(164, 'Luxembourg', 5, 0, 0, 0, 0, 0),
(165, 'Macedonia', 5, 0, 0, 0, 0, 0),
(166, 'Malta', 5, 0, 0, 0, 0, 0),
(167, 'Moldova', 5, 0, 0, 0, 0, 0),
(168, 'Monaco', 5, 0, 0, 0, 0, 0),
(169, 'Montenegro', 5, 0, 0, 0, 0, 0),
(170, 'Netherlands', 5, 0, 0, 0, 0, 0),
(171, 'Norway', 5, 0, 0, 0, 0, 0),
(172, 'Poland', 5, 0, 0, 0, 0, 0),
(173, 'Portugal', 5, 0, 0, 0, 0, 0),
(174, 'Romania', 5, 0, 0, 0, 0, 0),
(175, 'Russia', 5, 0, 0, 0, 0, 0),
(176, 'San Marino', 5, 0, 0, 0, 0, 0),
(177, 'Slovak Republic', 5, 0, 0, 0, 0, 0),
(178, 'Slovenia', 5, 0, 0, 0, 0, 0),
(179, 'Spain', 5, 0, 0, 0, 0, 0),
(180, 'Serbia', 5, 0, 0, 0, 0, 0),
(181, 'Montenegro', 5, 0, 0, 0, 0, 0),
(182, 'Sweden', 5, 0, 0, 0, 0, 0),
(183, 'Switzerland', 5, 0, 0, 0, 0, 0),
(184, 'Ukraine', 5, 0, 0, 0, 0, 0),
(185, 'United Kingdom', 5, 0, 0, 0, 0, 0),
(186, 'Canada', 6, 0, 0, 0, 0, 0),
(187, 'Greenland', 6, 0, 0, 0, 0, 0),
(188, 'Mexico', 6, 0, 0, 0, 0, 0),
(189, 'Saint Pierre and Miquelon', 6, 0, 0, 0, 0, 0),
(190, 'United States', 6, 0, 0, 0, 0, 0),
(191, 'American Samoa', 7, 0, 0, 0, 0, 0),
(192, 'Australia', 7, 0, 0, 0, 0, 0),
(193, 'Christmas Island', 7, 0, 0, 0, 0, 0),
(194, 'Cocos (Keeling) Islands', 7, 0, 0, 0, 0, 0),
(195, 'Cook Islands', 7, 0, 0, 0, 0, 0),
(196, 'Federated States of Micronesia', 7, 0, 0, 0, 0, 0),
(197, 'Fiji', 7, 0, 0, 0, 0, 0),
(198, 'French Polynesia', 7, 0, 0, 0, 0, 0),
(199, 'Guam', 7, 0, 0, 0, 0, 0),
(200, 'Kiribati', 7, 0, 0, 0, 0, 0),
(201, 'Marshall Islands', 7, 0, 0, 0, 0, 0),
(202, 'Nauru', 7, 0, 0, 0, 0, 0),
(203, 'New Caledonia', 7, 0, 0, 0, 0, 0),
(204, 'New Zealand', 7, 0, 0, 0, 0, 0),
(205, 'Niue', 7, 0, 0, 0, 0, 0),
(206, 'Northern Mariana Islands', 7, 0, 0, 0, 0, 0),
(207, 'Palau', 7, 0, 0, 0, 0, 0),
(208, 'Papua New Guinea', 7, 0, 0, 0, 0, 0),
(209, 'Pitcairn Islands', 7, 0, 0, 0, 0, 0),
(210, 'Samoa', 7, 0, 0, 0, 0, 0),
(211, 'Solomon Islands', 7, 0, 0, 0, 0, 0),
(212, 'Tokelau', 7, 0, 0, 0, 0, 0),
(213, 'Tonga', 7, 0, 0, 0, 0, 0),
(214, 'Tuvalu', 7, 0, 0, 0, 0, 0),
(215, 'Vanuatu', 7, 0, 0, 0, 0, 0),
(216, 'Wallis and Futuna Islands', 7, 0, 0, 0, 0, 0),
(217, 'Argentina', 8, 0, 0, 0, 0, 0),
(218, 'Bolivia', 8, 0, 0, 0, 0, 0),
(219, 'Brazil', 8, 0, 0, 0, 0, 0),
(220, 'Chile', 8, 0, 0, 0, 0, 0),
(221, 'Colombia', 8, 0, 0, 0, 0, 0),
(222, 'Ecuador', 8, 0, 0, 0, 0, 0),
(223, 'Falkland Islands', 8, 0, 0, 0, 0, 0),
(224, 'French Guiana', 8, 0, 0, 0, 0, 0),
(225, 'Guyana', 8, 0, 0, 0, 0, 0),
(226, 'Paraguay', 8, 0, 0, 0, 0, 0),
(227, 'Peru', 8, 0, 0, 0, 0, 0),
(228, 'Suriname', 8, 0, 0, 0, 0, 0),
(229, 'Uruguay', 8, 0, 0, 0, 0, 0),
(230, 'Venezuela', 8, 0, 0, 0, 0, 0);

CREATE TABLE `flights` (
  `airport_id_1` int(11) NOT NULL,
  `airport_id_2` int(11) NOT NULL,
  `travel_distance` double NOT NULL,
  `travel_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `flights` (`airport_id_1`, `airport_id_2`, `travel_distance`, `travel_time`) VALUES
(1, 2, 349.94, 65),
(1, 3, 321.6, 50),
(12, 9, 1297.1, 144),
(12, 14, 2300.54, 227),
(10, 14, 1881.48, 180),
(10, 12, 466.2, 85),
(12, 13, 700.95, 95),
(10, 13, 637.21, 85),
(11, 12, 1006.28, 110),
(1, 2, 349.94, 65),
(1, 3, 321.6, 50),
(12, 9, 1297.1, 144),
(12, 14, 2300.54, 227),
(10, 14, 1881.48, 180),
(10, 12, 466.2, 85),
(12, 13, 700.95, 95),
(10, 13, 637.21, 85),
(11, 12, 1006.28, 110);

CREATE TABLE `geo_regions` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `country_number` int(11) NOT NULL,
  `airport_number` int(11) DEFAULT 0,
  `train_station_number` int(11) DEFAULT 0,
  `bus_station_number` int(11) DEFAULT 0,
  `ship_station_number` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `geo_regions` (`region_id`, `region_name`, `country_number`, `airport_number`, `train_station_number`, `bus_station_number`, `ship_station_number`) VALUES
(1, 'Africa', 57, 0, 0, 0, 0),
(2, 'Asia', 50, 0, 0, 0, 0),
(3, 'Caribbean', 25, 0, 0, 0, 0),
(4, 'Central America', 7, 0, 0, 0, 0),
(5, 'Europe', 47, 0, 0, 0, 0),
(6, 'North America', 5, 0, 0, 0, 0),
(7, 'Oceania', 26, 0, 0, 0, 0),
(8, 'South America', 14, 0, 0, 0, 0);

CREATE TABLE `neighbours` (
  `country_id_1` int(11) NOT NULL,
  `country_id_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `neighbours` (`country_id_1`, `country_id_2`) VALUES
(3, 37),
(3, 37),
(36, 37),
(36, 37),
(37, 10),
(37, 10),
(154, 102),
(154, 102),
(154, 139),
(154, 139),
(154, 145),
(154, 145),
(154, 165),
(154, 165),
(172, 147),
(172, 147),
(172, 152),
(172, 152),
(172, 163),
(172, 163),
(172, 177),
(172, 177),
(172, 184),
(172, 184),
(179, 173),
(179, 173),
(190, 186),
(190, 186),
(190, 188),
(190, 188),
(219, 218),
(219, 218),
(219, 221),
(219, 221),
(219, 226),
(219, 226),
(219, 227),
(219, 227),
(219, 229),
(219, 229);

CREATE TABLE `settlements` (
  `settlement_id` int(11) NOT NULL,
  `settlement_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `settlement_type` varchar(1) COLLATE utf8_hungarian_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `airport_number` int(11) DEFAULT 0,
  `bus_station_number` int(11) DEFAULT 0,
  `ship_station_number` int(11) DEFAULT 0,
  `train_station_number` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `settlements` (`settlement_id`, `settlement_name`, `settlement_type`, `country_id`, `airport_number`, `bus_station_number`, `ship_station_number`, `train_station_number`) VALUES
(1, 'Algiers', 'C', 1, 1, 10, 0, 0),
(2, 'Oran', 'C', 1, 1, 1, 0, 0),
(3, 'Constantine', 'C', 1, 1, 9, 0, 0),
(4, 'Port Louis', 'C', 32, 1, 14, 0, 0),
(5, 'Cape Town', 'C', 47, 1, 29, 0, 0),
(6, 'Durban', 'C', 47, 1, 7, 0, 0),
(7, 'Tirana', 'C', 139, 1, 308, 0, 0),
(8, 'Ljubljana', 'C', 178, 1, 2, 0, 0),
(9, 'Cancún', 'C', 188, 1, 3, 0, 0),
(10, 'Guadalajara', 'C', 188, 1, 40, 0, 0),
(11, 'Mérida', 'C', 188, 1, 20, 0, 0),
(12, 'Mexico City', 'C', 188, 1, 122, 0, 0),
(13, 'Monterrey', 'C', 188, 1, 3, 0, 0),
(14, 'Tijuana', 'C', 188, 1, 8, 0, 0);

CREATE TABLE `ship_lines` (
  `ship_station_id_1` int(11) NOT NULL,
  `ship_station_id_2` int(11) NOT NULL,
  `travel_distance` double NOT NULL,
  `travel_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `ship_lines` (`ship_station_id_1`, `ship_station_id_2`, `travel_distance`, `travel_time`) VALUES
(3, 5, 2900, 0),
(3, 5, 2900, 78),
(3, 6, 5900, 159),
(3, 5, 16800, 453),
(1, 6, 8600, 232),
(6, 4, 12800, 345),
(3, 5, 2900, 0),
(3, 5, 2900, 78),
(3, 6, 5900, 159),
(3, 5, 16800, 453),
(1, 6, 8600, 232),
(6, 4, 12800, 345);

CREATE TABLE `ship_stations` (
  `ship_station_id` int(11) NOT NULL,
  `ship_station_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `settlement_id` int(11) NOT NULL,
  `GPS1` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  `GPS2` varchar(45) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `ship_stations` (`ship_station_id`, `ship_station_name`, `settlement_id`, `GPS1`, `GPS2`) VALUES
(1, 'Port D\"alger', 1, '36.75829283609324', '3.075671895181152'),
(2, 'Gare MaritimeTerminal 1&2 Oran', 2, '35.70980837973298', '-0.6473306482742377'),
(3, 'Port of Port Louis', 4, '-20.159933294533506', '57.49693044711415'),
(4, 'Simons Town Waterfront', 5, '-34.19069085547232', '18.432043357983606'),
(5, 'Naval station Durban', 6, '-29.881463521009966', '31.039466794980907'),
(6, 'Playa Tortuga Ferry Terminal', 9, '21.139015147405345', '-86.76938194062687');

CREATE TABLE `train_lines` (
  `train_station_id_1` int(11) NOT NULL,
  `train_station_id_2` int(11) NOT NULL,
  `travel_distance` double NOT NULL,
  `travel_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `train_lines` (`train_station_id_1`, `train_station_id_2`, `travel_distance`, `travel_time`) VALUES
(9, 13, 2200, 39),
(10, 8, 2400, 37),
(12, 11, 2800, 47),
(13, 11, 2800, 47);

CREATE TABLE `train_stations` (
  `train_station_id` int(11) NOT NULL,
  `train_station_name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `settlement_id` int(11) NOT NULL,
  `GPS1` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  `GPS2` varchar(45) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `train_stations` (`train_station_id`, `train_station_name`, `settlement_id`, `GPS1`, `GPS2`) VALUES
(1, 'Station Algiers', 1, '36.78004492308897', '3.061952576699692'),
(2, 'Gare Centrale dOran', 2, '35.69998670994753', '-0.6388762777061122'),
(3, 'Gare de Constantine', 3, '36.367289781024844', '6.618654435810316'),
(4, 'St Louis Station', 4, '-20.18070673376245', '57.476894496919364'),
(5, 'Cape Town Main Train Station', 5, '-33.920477449729745', '18.424906538077018'),
(6, 'Durban Station', 6, '-29.838836902513105', '31.024272534667876'),
(7, 'Stacioni Kashar', 7, '41.358376238548686', '19.74120196618229'),
(8, 'Ljubljana train station', 8, '46.05881070915101', '14.511998123300305'),
(9, 'Estación URDANETA', 10, '20.64338080579435', '-103.37262055856309'),
(10, 'Estación de Mérida', 11, '38.92222571522694', '-6.343072745889284'),
(11, 'Buenavista', 12, '19.44656140918513', '-99.15283884205219'),
(12, 'Central', 13, '25.687212863272947', '-100.32436934681867'),
(13, 'Estación Tijuana', 14, '32.542299894824446', '-117.0262422486601');


ALTER TABLE `airports`
  ADD PRIMARY KEY (`airport_id`),
  ADD KEY `settlement_id` (`settlement_id`);

ALTER TABLE `bus_lines`
  ADD KEY `bus_station_id_1` (`bus_station_id_1`,`bus_station_id_2`),
  ADD KEY `bus_station_id_2` (`bus_station_id_2`);

ALTER TABLE `bus_stations`
  ADD PRIMARY KEY (`bus_station_id`),
  ADD KEY `settlement_id` (`settlement_id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `region_id` (`region_id`);

ALTER TABLE `flights`
  ADD KEY `airport_id_1` (`airport_id_1`,`airport_id_2`),
  ADD KEY `airport_id_2` (`airport_id_2`);

ALTER TABLE `geo_regions`
  ADD PRIMARY KEY (`region_id`);

ALTER TABLE `neighbours`
  ADD KEY `country_id_1` (`country_id_1`,`country_id_2`),
  ADD KEY `country_id_2` (`country_id_2`);

ALTER TABLE `settlements`
  ADD PRIMARY KEY (`settlement_id`),
  ADD KEY `country_id` (`country_id`);

ALTER TABLE `ship_lines`
  ADD KEY `ship_station_id_1` (`ship_station_id_1`,`ship_station_id_2`),
  ADD KEY `ship_station_id_2` (`ship_station_id_2`);

ALTER TABLE `ship_stations`
  ADD PRIMARY KEY (`ship_station_id`),
  ADD KEY `settlement_id` (`settlement_id`);

ALTER TABLE `train_lines`
  ADD UNIQUE KEY `UK_aowpagoe99996wvflehqjk3ky` (`train_station_id_1`),
  ADD KEY `train_station_1` (`train_station_id_1`,`train_station_id_2`),
  ADD KEY `train_station_id_2` (`train_station_id_2`);

ALTER TABLE `train_stations`
  ADD PRIMARY KEY (`train_station_id`),
  ADD KEY `settlement_id` (`settlement_id`);


ALTER TABLE `airports`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `bus_stations`
  MODIFY `bus_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

ALTER TABLE `geo_regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `settlements`
  MODIFY `settlement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `ship_stations`
  MODIFY `ship_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `train_stations`
  MODIFY `train_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `airports`
  ADD CONSTRAINT `FK7p8bpbpdfhitsl6q74e35uf9f` FOREIGN KEY (`settlement_id`) REFERENCES `settlements` (`settlement_id`);

ALTER TABLE `bus_lines`
  ADD CONSTRAINT `FK2aow9pmbbe6n4d57yemwj99aq` FOREIGN KEY (`bus_station_id_1`) REFERENCES `bus_stations` (`bus_station_id`),
  ADD CONSTRAINT `FKex70o9kqkwlhvqvv0j54mliry` FOREIGN KEY (`bus_station_id_2`) REFERENCES `bus_stations` (`bus_station_id`);

ALTER TABLE `bus_stations`
  ADD CONSTRAINT `FK1krfcuac6pkh4m1u24xth3bw5` FOREIGN KEY (`settlement_id`) REFERENCES `settlements` (`settlement_id`);

ALTER TABLE `countries`
  ADD CONSTRAINT `FK5k34jtjupv1wbbnxvifsu9jik` FOREIGN KEY (`region_id`) REFERENCES `geo_regions` (`region_id`);

ALTER TABLE `flights`
  ADD CONSTRAINT `FK7pfowu3617149vgxv1twp5tg8` FOREIGN KEY (`airport_id_2`) REFERENCES `airports` (`airport_id`),
  ADD CONSTRAINT `FKfliviidoqofovvsmrn06dg02u` FOREIGN KEY (`airport_id_1`) REFERENCES `airports` (`airport_id`);

ALTER TABLE `neighbours`
  ADD CONSTRAINT `FK2irt2y93537184v9oyu7owqdh` FOREIGN KEY (`country_id_2`) REFERENCES `countries` (`country_id`),
  ADD CONSTRAINT `FKq6byv1e64o7yxfofou9jq0h34` FOREIGN KEY (`country_id_1`) REFERENCES `countries` (`country_id`);

ALTER TABLE `settlements`
  ADD CONSTRAINT `FKkrel913qhndtjoquesm52xwey` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);

ALTER TABLE `ship_lines`
  ADD CONSTRAINT `FK2p0ku43uhf5if1trn2run2q5g` FOREIGN KEY (`ship_station_id_2`) REFERENCES `ship_stations` (`ship_station_id`),
  ADD CONSTRAINT `FKfbtlr7k4l9906yn1gw8ungcvt` FOREIGN KEY (`ship_station_id_1`) REFERENCES `ship_stations` (`ship_station_id`);

ALTER TABLE `ship_stations`
  ADD CONSTRAINT `FK31gvei7jwt8hde7w8nyixqjrm` FOREIGN KEY (`settlement_id`) REFERENCES `settlements` (`settlement_id`);

ALTER TABLE `train_lines`
  ADD CONSTRAINT `FKckt69t2isdt0atuslvx7rnrup` FOREIGN KEY (`train_station_id_2`) REFERENCES `train_stations` (`train_station_id`),
  ADD CONSTRAINT `FKeyry1plnepehesghu56sllqep` FOREIGN KEY (`train_station_id_1`) REFERENCES `train_stations` (`train_station_id`);

ALTER TABLE `train_stations`
  ADD CONSTRAINT `FKbgdmdtikr5iyu6af4ivxwq46p` FOREIGN KEY (`settlement_id`) REFERENCES `settlements` (`settlement_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

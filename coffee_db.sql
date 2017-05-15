-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 12 2017 г., 11:14
-- Версия сервера: 5.6.34
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `coffee_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'КОФЕМАШИНЫ', NULL, NULL),
(2, 0, 'КОФЕ', NULL, NULL),
(3, 0, 'КОФЕВАРКИ', NULL, NULL),
(4, 0, 'КОФЕЙНЫЕ АКСЕССУАРЫ', NULL, NULL),
(5, 0, 'ЧАЙ', NULL, NULL),
(8, 5, 'Черный', NULL, NULL),
(9, 1, 'Италия', NULL, NULL),
(10, 1, 'Франция', NULL, NULL),
(11, 1, 'Германия', NULL, NULL),
(23, 0, 'ЧАЙНИКИ', NULL, NULL),
(35, 4, 'Чашки', NULL, NULL),
(36, 4, 'Ложки', NULL, NULL),
(37, 4, 'Тарелки', NULL, NULL),
(38, 2, 'Боливия', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(20) NOT NULL,
  `isMain` int(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product1/51fd29.jpg', 1, 1, 'Product', 'c5cf176bbc-1', ''),
(2, 'Products/Product2/a1f21f.jpg', 2, 1, 'Product', '84b312a38f-1', ''),
(3, 'Products/Product15/3462c5.jpg', 15, 1, 'Product', '46e82e27dd-1', ''),
(4, 'Products/Product16/7417d6.jpg', 16, 1, 'Product', '6f0f672df7-1', ''),
(5, 'Products/Product17/083a44.jpg', 17, 1, 'Product', '062c772e9f-1', ''),
(6, 'Products/Product18/50693e.jpg', 18, 1, 'Product', 'f96115e7a0-1', ''),
(7, 'Products/Product19/47c204.jpg', 19, 1, 'Product', '37c37718fa-1', ''),
(8, 'Products/Product21/a20eb5.jpg', 21, 1, 'Product', '8d888496f3-1', ''),
(9, 'Products/Product22/833b87.jpeg', 22, 1, 'Product', '8d70524bf0-1', ''),
(10, 'Products/Product23/dd9e89.jpg', 23, 1, 'Product', 'a4130f3b12-1', ''),
(11, 'Products/Product24/2b5328.jpg', 24, 1, 'Product', 'faad20c7de-1', ''),
(12, 'Products/Product25/c354af.jpg', 25, 1, 'Product', '1a5aee0c26-1', ''),
(13, 'Products/Product26/f0570f.jpg', 26, 1, 'Product', '4e7bfe4a75-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1493751956);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(1, '2017-04-29 15:58:52', '2017-04-29 15:58:52', 14, 36444, '1', '123', '123@co.com', '123', '133'),
(3, '2017-04-29 16:21:36', '2017-04-29 16:21:36', 1, 56, '0', '12', '123@co.com', '123', '175765'),
(4, '0000-00-00 00:00:00', '2002-05-20 17:00:00', 333, 5358310, '1', 'aaa', 'aaa@a.com', '868756546', '5467867'),
(5, '2017-05-11 13:11:37', '2017-05-11 13:11:37', 1, 54613, '0', 'gkgkjgf', 'gkgk@gkgk.com', '14546456', '456465465'),
(6, '2017-05-11 13:12:40', '2017-05-11 13:12:40', 1, 54613, '0', 'gkgkjgf', 'gkgk@mail.com', '14546456', '456465465'),
(7, '2017-05-11 13:13:53', '2017-05-11 13:13:53', 2, 54913, '0', 'bmbm', 'hjhj@co.com', 'jkhk/gkg', '/gjkg/g/gj/');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 2, 2, 'Сер Лердофр', 56, 4, 224),
(2, 2, 5, 'Машина из Франции', 21000, 1, 21000),
(3, 2, 3, 'Ложка серебренная', 200, 6, 1200),
(4, 2, 4, 'Машина из Италии', 7000, 2, 14000),
(5, 2, 7, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(6, 3, 2, 'Сер Лердофр', 56, 1, 56),
(7, 5, 15, 'Машина из Италии', 54613, 1, 54613),
(8, 6, 15, 'Машина из Италии', 54613, 1, 54613),
(9, 7, 15, 'Машина из Италии', 54613, 1, 54613),
(10, 7, 24, 'Боливия в', 300, 1, 300);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(14, 11, 'De`Longhi EC 685.BK', '<p><strong>De`Longhi Dedica EC 685.BK</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:open sans,sans-serif; font-size:13px\">&nbsp;&mdash; обновленная модель&nbsp;стильной ультракомпактной ручной кофемашины для дома. Готовить латте стало еще удобнее &mdash; съемный поддон и специальная подставка для высоких стаканов, гаратируют комфортное приготовление.&nbsp;Регулируемая &laquo;Система Капучино&raquo; дает возможность получать идеальную молочную пенку для латте, горячего молока, флет вайта, эспрессо-макиато и других любимых кофейных напитков.&nbsp;Технологичный дизайн &mdash; самая стройная кофеварка на рынке с отличными продуктивными характеристиками. Ее ширина составляет 15 см, давление на уровне профессиональных кофемашин составляет 15 Бар, а термоблоки и электронные компоненты позволяют работать с повышенной эффективностью.&nbsp;</span><strong>De`Longhi Dedica EC 685.BK</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:open sans,sans-serif; font-size:13px\">&nbsp;имеет возможность регулировать размер порции эспрессо. Управление сосредоточено на передней панели и состоит из кнопок и переключателя режима воды/пара. Кофеварка готовит, как одну, так и две порции кофе одновременно. Металлический холдер работает на молотом и таблетированном кофе, встроенный регулятор давления позволяет приготовить качественный эспрессо с пенкой крема.&nbsp;</span><strong>De`Longhi Dedica EC 685.BK</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:open sans,sans-serif; font-size:13px\">&nbsp;компактный стильный помощник в приготовлении качественного итальянского эспрессо дома.</span></p>\r\n', 7999, '', '', 'no-image.png', '1', '1', '0'),
(15, 9, 'Машина из Италии', '<p><img alt=\"\" src=\"/web/upload/global/691236_94783471.jpg\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</span></p>\r\n', 54613, 'кофе, италия', '', 'no-image.png', '1', '0', '0'),
(16, 9, 'Италия 2', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 21543, '', '', 'no-image.png', '0', '1', '0'),
(17, 9, 'Италия 3', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 12000, '', '', 'no-image.png', '0', '1', '0'),
(18, 9, 'Италия 4', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 20000, '', '', 'no-image.png', '0', '0', '0'),
(19, 9, 'Италия 888', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 65323, '', '', 'no-image.png', '0', '0', '0'),
(20, 9, 'Италия 789', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 32222, '', '', 'no-image.png', '0', '0', '0'),
(21, 9, 'ИТалия ', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 12121, '', '', 'no-image.png', '1', '0', '0'),
(22, 1, 'Италия 999', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 554545, '', '', 'no-image.png', '0', '1', '0'),
(23, 38, 'Боливия 1', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 129, '', '', 'no-image.png', '0', '0', '0'),
(24, 38, 'Боливия в', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 300, '', '', 'no-image.png', '1', '0', '0'),
(25, 38, 'Боливия 56', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 350, '', '', 'no-image.png', '0', '0', '0'),
(26, 38, 'Боливия 5555', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ornare fermentum augue, in cursus nulla euismod ut. Sed dolor magna, lobortis eu leo a, suscipit facilisis tellus. Cras vitae varius felis. Integer vitae est vel justo aliquet interdum sit amet eget felis. Phasellus vehicula metus accumsan ligula vulputate sodales. Maecenas semper turpis massa, eu molestie nisi efficitur et. Vivamus in ligula mattis, porta purus vitae, facilisis eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p style=\"text-align:justify\">Etiam at risus porttitor, vulputate ipsum et, tempor tellus. Maecenas iaculis magna ac venenatis dictum. Integer condimentum ligula vitae lacinia venenatis. Duis sed mollis est. Donec aliquet molestie orci, vel vestibulum ex condimentum non. Curabitur ornare quis quam in maximus. In maximus commodo est, eget iaculis augue egestas a. Suspendisse non pharetra mi. Suspendisse potenti. Curabitur sit amet accumsan sapien, vitae porta nunc. In pharetra ultricies sem, et finibus orci varius vel.</p>\r\n', 333, '', '', 'no-image.png', '0', '1', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$Ujzzi3jluJgbD1DXl1uKO.qrKzqqkfmVDm/L5cTDG1sPRGlno5NXG', 'm8gfBc-zs_TPXEtzMBuDYw18jOkU2U99');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

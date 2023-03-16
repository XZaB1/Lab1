-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 16 2023 г., 23:13
-- Версия сервера: 5.7.29
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `forhotel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `nums`
--

CREATE TABLE `nums` (
  `id` int(11) UNSIGNED NOT NULL,
  `img` varchar(90) NOT NULL DEFAULT 'url',
  `name` varchar(60) NOT NULL,
  `id_worker` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `nums`
--

INSERT INTO `nums` (`id`, `img`, `name`, `id_worker`, `description`, `cost`) VALUES
(1, 'https://sovcominvest.ru/uploads/photo/26286/image/65e0f32e8c4e48319c3cd665aeefec6d.jpeg', 'Комната в Сочи', 2, 'Крутая комната Сочи с видом на пляж! Все удобства.', 12000),
(2, 'https://megotel.ru/images/hotels/66285/42.jpg', 'Номер в Дубае.', 1, 'Шведский Стол, все удобства в номере, балкон с видом на море.', 20000),
(3, 'https://www.pogostite.ru/images/1280/960/0/admin/images/914/izmajlovo_delta_19.jpg', 'Номер в Абхазии', 6, 'Номер в Абхазии. Сейф, шкаф в номере. Санузел раздельный.', 18000),
(4, 'https://riverahotel.ru/upload/iblock/0ab/12.jpg', 'Номер в МСК!', 4, 'Номер недалеко от метро и остановок, все в близком доступе.', 9000),
(5, 'https://static.tildacdn.com/tild3738-3164-4363-a233-636636386336/2.jpg', 'Номер в ЕКБ', 5, 'Хороший номер в центре екатеринбурга. Все в доступе для вас, лучший отель.', 6000),
(6, 'https://sovcominvest.ru/uploads/photo/8576/image/35f5820f853f747b93a05df05dfa562b.jpg', 'Номер в Калифорнии', 7, 'Хороший номер для молодоженов в Калифорнии! Топовый отель со шведским столом.', 18000),
(7, 'https://sovcominvest.ru/uploads/photo/11988/image/c83ab8c9f216add2b7329149c9188e7e.jpg', 'Комната в Якутске', 3, 'Хорошая комната в Якутске. Чистая, раздельный санузел.', 5000),
(8, 'https://megotel.ru/images/rooms/1768/9224/79d727bf458c2.jpg', 'Номер в Шанхае', 8, 'Рядом метро и местный торговый центр.', 12000),
(9, 'https://sovcominvest.ru/uploads/photo/12394/image/c66f6053ce97df86b5fb25f7412b31ca.jpg', 'Номер в Тайланде', 9, 'Номер со всеми удобствами. 2-й этаж, балкон смотрит на гавань.', 13500),
(10, 'https://hotels.sletat.ru/i/f/46879_3.jpg', 'Номер в Казахстане', 10, 'Номер со всеми удобствами и красивым видом.', 9250);

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `id` int(11) UNSIGNED NOT NULL,
  `worker` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`id`, `worker`) VALUES
(1, 'Пупкин Василий Викторович'),
(2, 'Лесницкий Александр Сергеевич'),
(3, 'Мещиков Илья Игоревич'),
(4, 'Датинский Игорь Витальевич'),
(5, 'Лагерев Иван Сергеевич'),
(6, 'Репин Семен Евгеньевич'),
(7, 'Кочетов Савелий Игоревич'),
(8, 'Бойко Василий Александрович'),
(9, 'Дальников Сергей Викторович'),
(10, 'Сеченов Сергей Алексеевич');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `nums`
--
ALTER TABLE `nums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_1` (`id_worker`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `nums`
--
ALTER TABLE `nums`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

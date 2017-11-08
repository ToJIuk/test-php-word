-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 08 2017 г., 10:08
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpword`
--

-- --------------------------------------------------------

--
-- Структура таблицы `arr_docs`
--

CREATE TABLE `arr_docs` (
  `id` int(50) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `doc_gen_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `arr_docs`
--

INSERT INTO `arr_docs` (`id`, `company_name`, `doc_gen_link`) VALUES
(1, 'name1', 'files/arr_docs_generated/1_doc_gen.docx'),
(2, 'name2', 'files/arr_docs_generated/2_doc_gen.docx'),
(3, 'name3', 'files/arr_docs_generated/3_doc_gen.docx'),
(4, 'name4', 'files/arr_docs_generated/4_doc_gen.docx');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arr_docs`
--
ALTER TABLE `arr_docs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `arr_docs`
--
ALTER TABLE `arr_docs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

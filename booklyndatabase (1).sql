-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 12:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booklyndatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookgenres`
--

CREATE TABLE `bookgenres` (
  `GenreID` int(11) NOT NULL,
  `GenreName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookgenres`
--

INSERT INTO `bookgenres` (`GenreID`, `GenreName`) VALUES
(17, 'Adventure'),
(23, 'Autobiography'),
(22, 'Biographical Fiction'),
(8, 'Biography'),
(11, 'Classic Literature'),
(13, 'Coming-of-Age Fiction'),
(28, 'Contemporary Fiction'),
(10, 'Cookbook'),
(19, 'Crime Fiction'),
(1, 'Fantasy'),
(18, 'Fantasy/Adventure'),
(6, 'Historical Fiction'),
(20, 'Historical Non-Fiction'),
(7, 'Horror'),
(12, 'Humor'),
(3, 'Mystery'),
(15, 'Non-Fiction'),
(16, 'Poetry'),
(5, 'Romance'),
(27, 'Romantic Suspense'),
(21, 'Science'),
(2, 'Science Fiction'),
(9, 'Self-Help'),
(24, 'Spirituality'),
(4, 'Thriller'),
(26, 'Thriller/Mystery'),
(25, 'Travel'),
(29, 'Western'),
(14, 'Young Adult');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL,
  `PublicationDate` date DEFAULT NULL,
  `CoverImageURL` varchar(255) DEFAULT NULL,
  `GenreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Author`, `ISBN`, `Publisher`, `PublicationDate`, `CoverImageURL`, `GenreID`) VALUES
(1, 'The Name of the Wind', 'Patrick Rothfuss', '9780756404741', 'DAW', '2008-04-01', 'https://images-na.ssl-images-amazon.com/images/I/71wHuFF6ZxL.jpg', 1),
(2, 'Dune', 'Frank Herbert', '9780441013593', 'Ace Books', '2005-08-02', 'https://images-na.ssl-images-amazon.com/images/I/81vsKXWaMzL.jpg', 2),
(3, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307949486', 'Vintage Crime/Black Lizard', '2009-06-23', 'https://images-na.ssl-images-amazon.com/images/I/91TKgJfRpmL.jpg', 3),
(4, 'The Da Vinci Code', 'Dan Brown', '9780307474278', 'Anchor', '2006-03-28', 'https://images-na.ssl-images-amazon.com/images/I/91m1PO2ln-L.jpg', 4),
(5, 'Pride and Prejudice', 'Jane Austen', '9780141439518', 'Penguin Classics', '2003-04-27', 'https://images-na.ssl-images-amazon.com/images/I/81MSoq8Z+FL.jpg', 5),
(6, 'The Nightingale', 'Kristin Hannah', '9780312577223', 'St. Martin\'s Griffin', '2017-04-25', 'https://images-na.ssl-images-amazon.com/images/I/81vHUvQ8QwL.jpg', 6),
(7, 'The Shining', 'Stephen King', '9780307743657', 'Anchor', '2012-06-26', 'https://images-na.ssl-images-amazon.com/images/I/91%2BdbjcpKRL.jpg', 7),
(8, 'Steve Jobs', 'Walter Isaacson', '9781501127625', 'Simon & Schuster', '2016-09-06', 'https://images-na.ssl-images-amazon.com/images/I/71nM3ZflI6L.jpg', 8),
(9, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', '9780062457714', 'HarperOne', '2016-09-13', 'https://images-na.ssl-images-amazon.com/images/I/71t4GuxLCuL.jpg', 9),
(10, 'The Joy of Cooking', 'Irma S. Rombauer, Marion Rombauer Becker, Ethan Becker', '9781501169717', 'Scribner', '2019-11-12', 'https://images-na.ssl-images-amazon.com/images/I/91mYRz6Vv6L.jpg', 10),
(11, '1984', 'George Orwell', '9780451524935', 'Signet Classics', '1961-01-01', 'https://images-na.ssl-images-amazon.com/images/I/71%2Bc%2BJbCrPL.jpg', NULL),
(12, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Harper Perennial Modern Classics', '2006-10-11', 'https://images-na.ssl-images-amazon.com/images/I/81xW-jI5vdL.jpg', 11),
(13, 'The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', '9780345391803', 'Del Rey', '1995-09-27', 'https://images-na.ssl-images-amazon.com/images/I/91Yy8TnIbBL.jpg', NULL),
(14, 'The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 'Little, Brown and Company', '1991-05-01', 'https://images-na.ssl-images-amazon.com/images/I/61PNFopPoQL.jpg', 13),
(15, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Scribner', '2004-09-30', 'https://images-na.ssl-images-amazon.com/images/I/81-SbPvzUfL.jpg', 11),
(16, 'The Lord of the Rings', 'J.R.R. Tolkien', '9780618640157', 'Houghton Mifflin Harcourt', '2005-09-15', 'https://images-na.ssl-images-amazon.com/images/I/81V%2B8N84gIL.jpg', 1),
(17, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '9780590353427', 'Scholastic Inc.', '1998-09-08', 'https://images-na.ssl-images-amazon.com/images/I/51IQXv8-1bL.jpg', NULL),
(18, 'The Hobbit', 'J.R.R. Tolkien', '9780345534835', 'Del Rey', '2012-09-18', 'https://images-na.ssl-images-amazon.com/images/I/91fjFfXwYaL.jpg', 1),
(19, 'Brave New World', 'Aldous Huxley', '9780060850524', 'Harper Perennial Modern Classics', '2006-10-17', 'https://images-na.ssl-images-amazon.com/images/I/81Fh8uLvxYL.jpg', NULL),
(20, 'The Hunger Games', 'Suzanne Collins', '9780439023481', 'Scholastic Press', '2008-09-14', 'https://images-na.ssl-images-amazon.com/images/I/51JaK8PvD5L.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loginregistration`
--

CREATE TABLE `loginregistration` (
  `UserId` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookgenres`
--
ALTER TABLE `bookgenres`
  ADD PRIMARY KEY (`GenreID`),
  ADD UNIQUE KEY `GenreName` (`GenreName`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `loginregistration`
--
ALTER TABLE `loginregistration`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookgenres`
--
ALTER TABLE `bookgenres`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `loginregistration`
--
ALTER TABLE `loginregistration`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

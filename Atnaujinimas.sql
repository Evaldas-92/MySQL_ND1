--
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;

CREATE TABLE `Authors` (
  `authorId` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Authors`
--

INSERT INTO `Authors` (`authorId`, `name`) VALUES
(1, 'Chris Smith'),
(2, 'Steven Levithan'),
(3, ' Jan Goyvaerts'),
(4, 'Ryan Benedetti'),
(5, ' Al Anderson'),
(6, 'Clay Breshears'),
(7, 'Kevlin Henney'),
(8, 'Lukas Bendinskas'),
(9, 'Evaldas Pužauskas'),
(10, 'Vardenis Pavardenis'),
(11, 'Jonas Jonaitis'),
(12, 'Jonas Jonaitiss');

--
-- Table structure for table `Authors_Books`
--

DROP TABLE IF EXISTS `Authors_Books`;

CREATE TABLE `Authors_Books` (
  `bookId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authors_Books`
--

INSERT INTO `Authors_Books` (`bookId`, `authorId`) VALUES
(1, 8),
(1, 9),
(2, 2),
(3, 4),
(4, 6),
(5, 7),
(9, 10),
(10, 9),
(11, 8),
(12, 11),
(13, 9),
(13, 10),
(13, 12);

--
-- Table structure for table `Genres`
--

DROP TABLE IF EXISTS `Genres`;

CREATE TABLE `Genres` (
  `bookId` int(11) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genres`
--

INSERT INTO `Genres` (`bookId`, `Genre`) VALUES
(1, 'Science'),
(2, 'Science'),
(3, 'Science'),
(4, 'Science'),
(5, 'Science'),
(6, 'Science'),
(7, 'Science'),
(8, 'Science'),
(9, 'Science');

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;

CREATE TABLE `Books` (
  `bookId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`bookId`, `title`, `year`) VALUES
(1, 'Programming F# 3.0, 2nd Edition', 2012),
(2, 'Regular Expressions Cookbook, 2nd Edition', 2012),
(3, 'Head First Networking', 2009),
(4, 'The Art of Concurrency', 2009),
(5, '97 Things Every Programmer Should Know', 2010),
(9, 'Anykščių šilelis', 2017),
(10, 'Knyga', 2016),
(11, 'Programming Basics', 2001),
(12, 'MySQL Basics', 1998),
(13, 'MySQL Basics 2', 2000);

--
-- Indexes for table `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`authorId`);

--
-- Indexes for table `Authors_Books`
--
ALTER TABLE `Authors_Books`
  ADD UNIQUE KEY `bookId` (`bookId`,`authorId`);

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD UNIQUE KEY `bookId` (`bookId`,`Genre`);

--
-- AUTO_INCREMENT for table `Authors`
--
ALTER TABLE `Authors`
  MODIFY `authorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Books`
--
ALTER TABLE `Books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;



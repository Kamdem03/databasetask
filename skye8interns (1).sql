-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skye8interns`
--

-- --------------------------------------------------------

--
-- Table structure for table `logbooks`
--

CREATE TABLE `logbooks` (
  `id` int(50) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logbooks`
--

INSERT INTO `logbooks` (`id`, `user_id`, `title`, `description`, `date`) VALUES
(1, 3, 'Form Handling', 'I was assigned a task to build a simple logging system using functional php. The superglobals $GET and $POST are used for form handling. Both methods creat an array. It holds key and value pairs where key=name of the form control and values=input data of the form. $GET is passed through the URL protocol while $POST is passes through the HTTP POST METHOD', '2023-02-23'),
(2, 4, 'Django Framework', 'Django is a python framework used that is used to build applications. I navigated the framework through practical examples such as building a simple logging sytem so i familiarise myself with it', '2023-03-02'),
(3, 5, 'Introduction to Tyescript and Kotlin', 'Resources were given by my supervisor whereby he asked us to read through, watch videos and understand and he gave some task to carry out with respect to the resources sent', '2023-02-25'),
(4, 6, 'Databases for all', 'my supervisor sent me resources to go through in which it spoke about databases,  database types, database management systems, database normalisartion and mysql', '2023-03-06'),
(5, 7, 'Introduction to GIT and GITHUB', 'A session was held were i had the basics of git and github  I learned the basic commands such as git init, git add ., git commit -m \"\", git push and got the basic understand of the online hosting platform', '2023-02-24'),
(6, 8, 'Mobile App Development', 'I wad introduced to mobile app development where I learned of the various languages such as Dart, framework known as Flutter. I was assigned a task to install the programs needed for this field ', '2023-02-18'),
(7, 9, 'introduction to Front-End Development', 'resources were sent by my supervisor with regars to Frot-End. we were expected to install the various software needed for the course and aswell navigate w3schools too learn the basics', '2023-03-03'),
(8, 10, 'Introduction to Computer Engineering', 'We had a session where i was introduced to computer engineering, its various carriers and Methodologies', '2023-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(50) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_created` date NOT NULL,
  `score` int(200) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `content`, `date_created`, `score`, `deadline`) VALUES
(1, 3, 'database', 'what is a database', '2023-02-01', 25, '2023-02-02'),
(2, 3, 'database', 'Types of database', '2023-03-12', 20, '2023-03-13'),
(3, 4, 'php', 'Basics of php', '2023-03-03', 22, '2023-03-05'),
(4, 4, 'php', 'simple logging system', '2023-03-06', 12, '2023-03-07'),
(5, 5, 'python', 'Basics of python', '2023-03-07', 22, '2023-03-08'),
(6, 5, 'python', 'Blog application', '2023-03-08', 22, '2023-03-12'),
(7, 6, 'html', 'Basics of html', '2023-03-07', 23, '2023-03-10'),
(8, 6, 'html', 'Code Googles Landing page', '2023-03-11', 20, '2023-03-15'),
(9, 7, 'Troduction to Computer Engineering', 'Different Carriers in Computer Engineering', '2023-03-12', 24, '2023-03-18'),
(10, 7, 'Troduction to Computer Engineering', 'Summarise the Agile Methodology', '2023-03-13', 25, '2023-03-19'),
(11, 8, 'GIT AND GITHUB', 'Create a repository with index.html and README.md and push it to github', '2023-03-12', 13, '2023-03-20'),
(12, 8, 'GIT AND GITHUB', 'Create a githubpage with index.html and README.md and push it to github', '2023-03-15', 17, '2023-03-22'),
(13, 9, 'Javascript', 'learn the basics of javascript on w3schools', '2023-03-12', 12, '2023-03-20'),
(14, 9, 'Javascript', 'logging page usng javascript', '2023-03-16', 19, '2023-03-24'),
(15, 10, 'Product Design', 'Setting up envroments on Figma', '2023-03-16', 20, '2023-03-17'),
(16, 9, 'Product Design', 'Design Sprint', '2023-03-17', 22, '2023-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone_number` int(50) NOT NULL,
  `role` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `role`) VALUES
(1, 'Nfon Andrew', 'nfonandrew@gmail.com', 677521223, 'Supervisor'),
(2, 'Ankinibom Muso', 'ankinisings@gmail.com', 654378213, 'Supervisor'),
(3, 'Kamdem Syntyche', 'kamdemsyntyche@gmail.com', 652485054, 'Intern'),
(4, 'Divina Mbel', 'divinaanye@gmail.com', 656602233, 'Intern'),
(5, 'Ase SIlvester', 'slyking@gmail.com', 680827761, 'Intern'),
(6, 'Anjinwie Sandrine', 'sandracastino@gmail.com', 680187254, 'Intern'),
(7, 'Ankinibom Donald', 'ankinibomsonald113@gmail.com', 677765687, 'Intern'),
(8, 'Sama Albright', 'samaalbright@gmail.com', 652312803, 'Intern'),
(9, 'Karl Njiose', 'karlnjiose@gmail.com', 678754231, 'Intern'),
(10, 'Chemutah Denzel', 'chemutahdenzel@gmail.com', 676789021, 'Intern');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logbooks`
--
ALTER TABLE `logbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logbooks`
--
ALTER TABLE `logbooks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logbooks`
--
ALTER TABLE `logbooks`
  ADD CONSTRAINT `logbooks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--get all admins from the users table
SELECT * FROM users WHERE role='supervisor';

--get all interns from the users table
SELECT * FROM users WHERE role='intern';

--get taks for user with userid-3
SELECT * FROM `tasks` WHERE user_id = 3;

--get task for user with user_id-3
SELECT * FROM tasks 
LEFT JOIN users
ON tasks.user_id=users.id
WHERE tasks.user_id ='3';

--get all logbooks for users with users who creates=d them
SELECT * FROM logbooks
LEFT JOIN users
ON logbooks.user_id=users.id;

--get sum of all scores of all tasks on the task table
SELECT SUM(score)
FROM tasks;

-- get the tasks with max score
SELECT MAX(score)
FROM tasks;

SELECT * FROM tasks WHERE score = '25';

-- get the tasks with min  score
SELECT MIN(score)
FROM tasks;

SELECT * FROM tasks WHERE score = '12';


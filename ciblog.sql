-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2020 at 12:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
/* username: mike
password:12345*/

-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(2, 2, 'Football Latest', '2020-07-13 19:20:25'),
(3, 1, 'Politics Today', '2020-07-13 23:23:48'),
(4, 1, 'Foreign News', '2020-07-14 21:19:32'),
(5, 1, 'Health Talks and Tips', '2020-07-14 21:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 12, 'Michael', 'michael@gmail.com', 'This is my first comment!!!', '2020-07-14 01:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(12, 1, 1, 'TEST POST WITH IMAGE', 'TEST-POST-WITH-IMAGE', '<p>Sed et iaculis diam, eget rutrum purus. Nam cursus leo odio, at vestibulum magna elementum id. Etiam at erat malesuada nisl efficitur imperdiet eget id purus. Aenean vehicula erat a odio fringilla, a vestibulum dolor aliquet. Cras bibendum sem ante, nec aliquam eros mollis euismod. Duis vel dui elit. Mauris efficitur finibus laoreet. Duis in sem eget lacus sollicitudin commodo. Nullam et diam malesuada mi viverra volutpat. Vivamus sit amet ligula purus.</p>\r\n', 'angular.png', '2020-07-13 20:45:08'),
(13, 2, 1, 'TEST POST WITH NO IMAGE', 'TEST-POST-WITH-NO-IMAGE', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut placerat lorem eu pretium ullamcorper. Vivamus ex metus, aliquet dapibus ultrices in, tincidunt ac arcu. Donec suscipit viverra placerat. Vestibulum aliquet, purus non fringilla finibus, felis lectus consectetur quam, eu finibus turpis nibh nec quam. Nam a vehicula erat, id tincidunt turpis. Sed at orci vel tortor ultricies pharetra et nec sem. Phasellus posuere ex ipsum, in auctor massa pharetra sit amet. Vivamus et elit ut turpis hendrerit mattis. Proin ac rhoncus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis sodales rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut placerat lorem eu pretium ullamcorper. Vivamus ex metus, aliquet dapibus ultrices in, tincidunt ac arcu. Donec suscipit viverra placerat. Vestibulum aliquet, purus non fringilla finibus, felis lectus consectetur quam, eu finibus turpis nibh nec quam. Nam a vehicula erat, id tincidunt turpis. Sed at orci vel tortor ultricies pharetra et nec sem. Phasellus posuere ex ipsum, in auctor massa pharetra sit amet. Vivamus et elit ut turpis hendrerit mattis. Proin ac rhoncus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis sodales rhoncus.</p>\r\n', 'noimage.jpg', '2020-07-13 20:47:56'),
(14, 3, 1, 'ADDING POST TO TEST FOR PAGINATION', 'ADDING-POST-TO-TEST-FOR-PAGINATION', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut placerat lorem eu pretium ullamcorper. Vivamus ex metus, aliquet dapibus ultrices in, tincidunt ac arcu. Donec suscipit viverra placerat. Vestibulum aliquet, purus non fringilla finibus, felis lectus consectetur quam, eu finibus turpis nibh nec quam. Nam a vehicula erat, id tincidunt turpis. Sed at orci vel tortor ultricies pharetra et nec sem. Phasellus posuere ex ipsum, in auctor massa pharetra sit amet. Vivamus et elit ut turpis hendrerit mattis. Proin ac rhoncus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis sodales rhoncus.</p>\r\n\r\n<p>Sed et iaculis diam, eget rutrum purus. Nam cursus leo odio, at vestibulum magna elementum id. Etiam at erat malesuada nisl efficitur imperdiet eget id purus. Aenean vehicula erat a odio fringilla, a vestibulum dolor aliquet. Cras bibendum sem ante, nec aliquam eros mollis euismod. Duis vel dui elit. Mauris efficitur finibus laoreet. Duis in sem eget lacus sollicitudin commodo. Nullam et diam malesuada mi viverra volutpat. Vivamus sit amet ligula purus.</p>\r\n', 'noimage.jpg', '2020-07-14 20:57:33'),
(15, 1, 1, 'FINAL TEST FOR THE BLOG APP!!!!', 'FINAL-TEST-FOR-THE-BLOG-APP', '<p>In auctor, urna dignissim fermentum imperdiet, diam augue dapibus erat, in sodales eros libero in lacus. Mauris imperdiet ultrices diam, non hendrerit turpis pellentesque ut. Cras sem lectus, ornare quis nisl cursus, sagittis sodales urna. Donec ac enim non nisi auctor tincidunt. Sed molestie, quam nec imperdiet euismod, nisi orci tincidunt ipsum, in pulvinar neque orci at dolor. Etiam scelerisque, nulla at sagittis pellentesque, lectus nulla dictum felis, nec aliquet lorem leo sed enim. Aenean et ligula sed nisl vehicula aliquet at dignissim augue. Vivamus id malesuada dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut tristique, tortor nec condimentum cursus, lacus arcu blandit tortor, in ultricies elit leo a neque. Vivamus tempus et metus in gravida. In hac habitasse platea dictumst. Sed erat velit, dignissim at lobortis imperdiet, rhoncus eu massa. Pellentesque vitae dolor id orci efficitur dictum. Etiam vel elit vulputate, ornare massa quis, consectetur sem</p>\r\n', 'ci.png', '2020-07-14 20:58:58'),
(16, 2, 2, 'Another Post Three', 'Another-Post-Three', '<p>In auctor, urna dignissim fermentum imperdiet, diam augue dapibus erat, in sodales eros libero in lacus. Mauris imperdiet ultrices diam, non hendrerit turpis pellentesque ut. Cras sem lectus, ornare quis nisl cursus, sagittis sodales urna. Donec ac enim non nisi auctor tincidunt. Sed molestie, quam nec imperdiet euismod, nisi orci tincidunt ipsum, in pulvinar neque orci at dolor. Etiam scelerisque, nulla at sagittis pellentesque, lectus nulla dictum felis, nec aliquet lorem leo sed enim. Aenean et ligula sed nisl vehicula aliquet at dignissim augue. Vivamus id malesuada dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut tristique, tortor nec condimentum cursus, lacus arcu blandit tortor, in ultricies elit leo a neque. Vivamus tempus et metus in gravida. In hac habitasse platea dictumst. Sed erat velit, dignissim at lobortis imperdiet, rhoncus eu massa. Pellentesque vitae dolor id orci efficitur dictum. Etiam vel elit vulputate, ornare massa quis, consectetur sem.</p>\r\n', 'angular.png', '2020-07-14 22:01:26'),
(17, 5, 2, 'Post Four', 'Post-Four', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut placerat lorem eu pretium ullamcorper. Vivamus ex metus, aliquet dapibus ultrices in, tincidunt ac arcu. Donec suscipit viverra placerat. Vestibulum aliquet, purus non fringilla finibus, felis lectus consectetur quam, eu finibus turpis nibh nec quam. Nam a vehicula erat, id tincidunt turpis. Sed at orci vel tortor ultricies pharetra et nec sem. Phasellus posuere ex ipsum, in auctor massa pharetra sit amet. Vivamus et elit ut turpis hendrerit mattis. Proin ac rhoncus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis sodales rhoncus.</p>\r\n\r\n<p>Sed et iaculis diam, eget rutrum purus. Nam cursus leo odio, at vestibulum magna elementum id. Etiam at erat malesuada nisl efficitur imperdiet eget id purus. Aenean vehicula erat a odio fringilla, a vestibulum dolor aliquet. Cras bibendum sem ante, nec aliquam eros mollis euismod. Duis vel dui elit. Mauris efficitur finibus laoreet. Duis in sem eget lacus sollicitudin commodo. Nullam et diam malesuada mi viverra volutpat. Vivamus sit amet ligula purus.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut placerat lorem eu pretium ullamcorper. Vivamus ex metus, aliquet dapibus ultrices in, tincidunt ac arcu. Donec suscipit viverra placerat. Vestibulum aliquet, purus non fringilla finibus, felis lectus consectetur quam, eu finibus turpis nibh nec quam. Nam a vehicula erat, id tincidunt turpis. Sed at orci vel tortor ultricies pharetra et nec sem. Phasellus posuere ex ipsum, in auctor massa pharetra sit amet. Vivamus et elit ut turpis hendrerit mattis. Proin ac rhoncus ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis sodales rhoncus.</p>\r\n\r\n<p>Sed et iaculis diam, eget rutrum purus. Nam cursus leo odio, at vestibulum magna elementum id. Etiam at erat malesuada nisl efficitur imperdiet eget id purus. Aenean vehicula erat a odio fringilla, a vestibulum dolor aliquet. Cras bibendum sem ante, nec aliquam eros mollis euismod. Duis vel dui elit. Mauris efficitur finibus laoreet. Duis in sem eget lacus sollicitudin commodo. Nullam et diam malesuada mi viverra volutpat. Vivamus sit amet ligula purus.</p>\r\n', 'OS_Ubuntu.png', '2020-07-14 22:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Clay Spenser', '21342', 'clay@gmail.com', 'claySpenser', '827ccb0eea8a706c4c34a16891f84e7b', '2020-07-14 02:38:53'),
(2, 'Mike', '203043', 'mike@gmail.com', 'mike', '827ccb0eea8a706c4c34a16891f84e7b', '2020-07-14 20:24:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

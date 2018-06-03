-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2018 at 08:02 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP Tutorial', NULL, NULL),
(2, 'Ruby on Rails Tutorials', NULL, NULL),
(3, 'Android Tutorials', '2017-09-22 15:23:14', '2017-09-22 15:23:14'),
(4, 'Personal Updates', '2017-09-22 15:23:48', '2017-09-22 15:23:48'),
(5, 'laravel', '2018-03-24 14:22:08', '2018-03-24 14:22:08'),
(6, 'Python', '2018-03-24 14:22:22', '2018-03-24 14:22:22'),
(7, 'Authentication', '2018-03-29 09:18:57', '2018-03-29 09:18:57'),
(8, 'Java', '2018-04-07 12:59:51', '2018-04-07 12:59:51'),
(9, 'CodeIgnitor', '2018-04-07 13:00:00', '2018-04-07 13:00:00'),
(10, 'VueJs', '2018-04-07 13:00:05', '2018-04-07 13:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `likes`, `approved`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'rasel khan', 'rasel@mail.com', 'this is test comment', 0, 1, 8, '2017-09-23 17:07:00', '2017-09-23 17:07:00'),
(2, 'debu', 'debu@mail.com', 'This is 2nd testing comment', 0, 1, 8, '2017-09-23 17:15:29', '2017-09-23 17:15:29'),
(3, 'rasel khan', 'rasel@mail.com', 'This is another comments', 0, 1, 8, '2017-09-23 17:25:10', '2017-09-23 17:25:10'),
(4, 'yusuf', 'yusuf@mail.com', 'This is another 2nd comment', 0, 1, 8, '2017-09-23 17:25:40', '2017-09-23 17:25:40'),
(5, 'mahbub nayeem', 'mahbubnayeem007@yahoo.com', 'THis is final comment', 0, 1, 8, '2017-09-23 17:27:56', '2017-09-23 17:27:56'),
(6, 'mahbub yusuf', 'mahbubnayeem007@gmail.com', 'THis is another final comment', 0, 1, 8, '2017-09-23 17:28:23', '2017-09-23 17:28:23'),
(7, 'Gourango', 'gourango420@mail.com', 'sfdfi', 0, 1, 8, '2017-09-23 20:38:48', '2017-09-23 20:38:48'),
(8, 'yusuf', 'yusuf@mail.com', 'good post', 0, 1, 1, '2018-03-19 09:22:22', '2018-03-19 09:22:22'),
(9, 'debu', 'debu@mail.com', 'this is comment', 0, 1, 6, '2018-03-29 02:17:14', '2018-03-29 02:17:14'),
(10, 'rahat', 'rahat@mail.com', 'efewfwf', 0, 1, 10, '2018-03-31 01:14:17', '2018-03-31 01:14:17'),
(11, 'jamal', 'jamal@mail.com', 'gddjkhcilhvdkjav', 0, 1, 5, '2018-03-31 01:34:55', '2018-03-31 01:34:55'),
(12, 'rahat', 'rahat@mail.com', '123sdfgs45ffgfhfj', 0, 1, 5, '2018-03-31 01:36:46', '2018-03-31 01:36:46'),
(13, 'rehan', 'rehan@mail.com', 'Laravel makes implementing authentication very simple. ... The authentication configuration file is located at config/auth.php , which contains several well documented options for tweaking the behavior of the authentication services. By default, Laravel includes an App\\User model in your app directory.', 0, 1, 12, '2018-04-06 04:16:39', '2018-04-06 04:16:39'),
(14, 'asif', 'asif@mail.com', 'A class, in the context of Java, are templates that are used to create objects, and to define object data types and methods. Core properties include the data types and methods that may be used by the object. All class objects should have the basic class properties. Classes are categories, and objects are items within each category.', 0, 1, 16, '2018-04-07 13:08:15', '2018-04-07 13:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `likes_dislikes`
--

CREATE TABLE `likes_dislikes` (
  `id` int(11) NOT NULL,
  `likesBy` varchar(100) NOT NULL,
  `dislikesBy` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes_dislikes`
--

INSERT INTO `likes_dislikes` (`id`, `likesBy`, `dislikesBy`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'mahbub@mail.com', '', 2, '2018-03-24 16:45:58', '2018-03-24 16:45:58'),
(2, 'debu@mail.com', '', 3, '2018-03-25 13:29:10', '2018-03-25 13:29:10'),
(3, 'debu@mail.com', '', 4, '2018-03-26 17:28:41', '2018-03-26 17:28:41'),
(4, 'debu@mail.com', '', 6, '2018-03-27 05:37:59', '2018-03-27 05:37:59'),
(5, 'mahbub@mail.com', '', 1, '2018-03-29 01:42:53', '2018-03-29 01:42:53'),
(6, 'debu@mail.com', '', 7, '2018-03-29 08:13:20', '2018-03-29 08:13:20'),
(7, 'debu@mail.com', '', 1, '2018-03-31 07:10:41', '2018-03-31 07:10:41'),
(8, 'debu@mail.com', '', 10, '2018-03-31 07:14:37', '2018-03-31 07:14:37'),
(9, 'debu@mail.com', '', 5, '2018-03-31 07:15:10', '2018-03-31 07:15:10'),
(10, 'aman@mail.com', '', 12, '2018-04-06 10:17:23', '2018-04-06 10:17:23'),
(11, 'atiq@mail.com', '', 13, '2018-04-07 19:02:16', '2018-04-07 19:02:16'),
(12, 'sadik@mail.com', '', 16, '2018-04-07 19:09:00', '2018-04-07 19:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_07_31_111343_create_posts_table', 1),
('2017_09_07_062707_add_slug_to_users', 1),
('2017_09_22_213322_create_categories_table', 2),
('2017_09_22_214345_add_category_id_to_posts', 2),
('2017_09_23_135422_create_tags_table', 3),
('2017_09_23_150929_create_post_tag_table', 4),
('2017_09_24_041707_create_comments_table', 5),
('2018_04_02_152111_create_questions_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `dislikes` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `slug`, `likes`, `dislikes`, `views`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'This is our first post', 'This is the first post we have ever made & that\'s make us excited. I want to learn more about Laravel.. Now finally it shows', 'first-post', 2, 0, 103, 1, '2017-09-09 12:57:54', '2017-09-14 01:53:08'),
(2, 2, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. not working Session', 'learn-loremipsum', 1, 0, 17, 2, '2017-09-14 01:35:26', '2017-09-14 01:37:32'),
(3, 3, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'loremIpsum-uses', 1, 0, 10, 2, '2017-09-14 01:49:33', '2017-09-14 01:49:33'),
(4, 4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'LoremIpsum-origin', 1, 0, 3, 4, '2017-09-14 01:51:19', '2017-09-22 23:45:32'),
(5, 2, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'LoremIpsum-get', 2, 0, 27, 1, '2017-09-14 01:52:25', '2017-09-14 01:52:25'),
(6, 1, 'This is new post 1', 'this is new post for finding some errors.', 'newPost-1', 1, 0, 8, 2, '2017-09-14 01:58:00', '2017-09-14 01:58:26'),
(7, 8, 'Our Newest Blog Post', 'This the newest blog post of this project..', 'newest-blog', 2, 0, 7, 3, '2017-09-22 22:40:19', '2017-09-22 22:40:19'),
(8, 7, 'Marketing post', 'Marketing Long post', 'marketing-post', 1, 0, 30, 4, '2017-09-23 12:13:58', '2017-09-23 12:13:58'),
(9, 4, 'Laravel Auth', 'can\'t access to login page', 'php-auth', 0, 0, 2, 1, '2018-03-29 02:15:47', '2018-03-29 02:15:47'),
(10, 3, 'new Post', 'thjhdlk', 'post-1', 1, 0, 5, 3, '2018-03-29 18:19:40', '2018-03-29 18:19:40'),
(11, 2, 'laravel vueJs Problem', 'dfhshd', 'vueJs-Js', 0, 0, 3, 1, '2018-03-29 18:25:27', '2018-03-29 18:25:27'),
(12, 1, 'what is laravel authentication?', 'I am struggling with laravel authentication. I want to know about it in details....', 'laravel-auth', 1, 0, 7, 5, '2018-04-06 04:15:20', '2018-04-06 04:15:20'),
(13, 3, 'what is android?', 'I want to know about android & its origin', 'android-name', 1, 0, 3, 3, '2018-04-07 01:25:25', '2018-04-07 01:25:25'),
(14, 3, 'asdftr', 'sdfghjklkjhgfddfghjkllkjhgfdfghjkllkjh', 'dsds-er', 0, 0, 4, 1, '2018-04-07 01:33:51', '2018-04-07 01:33:51'),
(16, 11, 'Java Class', 'what is java class??', 'java-program', 1, 0, 4, 8, '2018-04-07 13:06:25', '2018-04-07 13:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(5, 8, 2),
(6, 8, 4),
(7, 4, 5),
(9, 2, 4),
(10, 2, 6),
(11, 1, 3),
(12, 1, 4),
(13, 3, 7),
(15, 5, 4),
(16, 5, 6),
(24, 8, 5),
(25, 10, 4),
(26, 11, 5),
(27, 12, 2),
(28, 12, 5),
(29, 13, 4),
(30, 14, 7),
(33, 16, 9),
(34, 16, 11);

-- --------------------------------------------------------

--
-- Table structure for table `post_users`
--

CREATE TABLE `post_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zipcode` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `occupation` varchar(191) DEFAULT NULL,
  `instituteName` varchar(191) DEFAULT NULL,
  `expertiseArea` varchar(191) DEFAULT NULL,
  `interestedTopic` varchar(191) DEFAULT NULL,
  `about` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `city`, `zipcode`, `country`, `occupation`, `instituteName`, `expertiseArea`, `interestedTopic`, `about`, `created_at`, `updated_at`) VALUES
(1, 8, 'Sydney', '9723', 'Australia', 'Trainer', 'IT AU', 'Web Design', 'HTML, CSS', 'I am web Designer', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(2, 3, 'Comilla', '1000', 'Bangladesh', 'Student', 'Daffodil International University', 'Web Development', 'PHP', 'I am skilled PHP developer', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(3, 1, 'Dhaka', '1200', 'Bangladesh', 'Student', 'Daffodil International University', 'Web Development', 'Laravel', ' ', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(4, 2, 'UK', '1200', 'Bangladesh', 'Student', 'Daffodil International University', 'Web Development', 'Python', ' ', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(5, 4, 'New York', '1000', 'USA', 'CEO', 'Daffodil International University', 'Software Development', 'JAVA', 'I am skilled JAVA developer', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(6, 5, 'Chicago', '1000', 'USA', 'CEO', 'Daffodil International University', 'Software Development', 'C#', 'I am skilled C# developer', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(7, 6, 'Montreal', '1750', 'Canada', 'CEO', 'Daffodil International University', 'Software Development', 'C#', 'I am skilled C# developer', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(8, 7, 'Tangail', '1750', 'Bangladesh', 'CEO', 'Daffodil International University', 'Software Development', 'C#', 'I am skilled C# developer', '2018-03-28 06:09:59', '2018-03-28 06:09:59'),
(9, 9, 'Faridpur', '32324', 'Bangladesh', 'Student', 'DIU', 'Game Development', 'Android', ' ', '2018-03-28 12:32:07', '2018-03-28 12:32:07'),
(10, 10, 'Sylhet', '1234', 'Bangladesh', 'Student', 'Daffodil International University', 'Game Development', 'Java', ' I am skilled & professional developer', '2018-04-07 12:27:16', '2018-04-07 12:27:16'),
(11, 11, 'Sylhet', '1234', 'Bangladesh', 'Student', 'Daffodil International University', 'Game Development', 'Java, PHP', ' I am skilled Programmer', '2018-04-07 13:02:02', '2018-04-07 13:02:02'),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-07 13:08:52', '2018-04-07 13:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `optionA` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `optionB` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `optionC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `optionD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `difficultyLevel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publicationStatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `cat_id`, `question`, `optionA`, `optionB`, `optionC`, `optionD`, `answer`, `difficultyLevel`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is laravel?', 'Fruit', 'Flawer', 'Framework', 'Language', 'Framework', 'easy', 1, NULL, '2018-04-04 23:10:03'),
(4, 1, 'jhg', 'jhg', 'jhg', 'hjg', 'jhg', 'jhg', 'medium', 1, '2018-04-02 10:34:48', '2018-04-02 10:34:48'),
(5, 7, 'What is laravel?', 'Fruit', 'Flawer', 'Framework', 'Language', 'Framework', 'hard', 0, '2018-04-03 05:49:53', '2018-04-03 05:49:53'),
(6, 0, 'asdfghjkl', 'ggh', 'hh', 'hcffg', 'ddd', 'asdfghjkl', 'hard', 1, '2018-04-03 06:41:19', '2018-04-07 13:12:36'),
(7, 2, 'asdf', 'wer', 'uuu', 'qqq', 'rrr', 'qqq', 'hard', 1, '2018-04-03 07:17:12', '2018-04-03 07:17:12'),
(8, 5, 'fxfhggfhdgfh', 'sfaf', 'hhg', 'ooo', 'iii', 'ooo', 'medium', 1, '2018-04-03 07:18:11', '2018-04-03 07:18:11'),
(11, 3, 'What is laravel?---', 'Fruit', 'Flawer', 'Framework', 'Language', 'Framework', 'hard', 1, '2018-04-04 08:56:59', '2018-04-04 08:56:59'),
(12, 1, 'What is laravel?', 'Fruit', 'Flawer', 'Framework', 'Language', 'C&&', 'easy', 1, '2018-04-04 08:57:18', '2018-04-04 08:57:18'),
(13, 6, 'how to work with python?', 'larabel', 'fruit', 'flower', 'language', 'language', 'easy', 1, '2018-04-05 08:32:46', '2018-04-05 08:32:46'),
(14, 6, 'fdhjkjg', 'dadf', 'vsafg', 'awrer', 'qqq', 'qqq', 'easy', 1, '2018-04-05 08:33:49', '2018-04-05 08:33:49'),
(15, 6, 'wewer', 'EFWE', 'FED', 'add', 'ddd', 'ddd', 'easy', 1, '2018-04-05 08:34:13', '2018-04-05 08:34:13'),
(18, 8, 'what is Java', 'Programming Language', 'country', 'fruit', 'flower', 'Programming Language', 'easy', 0, '2018-04-07 13:16:31', '2018-04-07 13:16:31'),
(19, 8, 'what is the best IDE for JAVA', 'netBeans', 'eclipse', 'intellijIDE', 'codeblocks', 'intellijIDE', 'medium', 1, '2018-04-07 13:18:01', '2018-04-07 13:18:01'),
(20, 1, 'what is PHP', 'Hypertext Preprocessor', 'country', 'intellijIDE', 'flower', 'Hypertext Preprocessor', 'easy', 0, '2018-04-07 15:22:30', '2018-04-07 15:22:46'),
(21, 8, 'what is Java', 'Programming Language', 'country', 'fruit', 'codeblocks', 'Programming Language', 'easy', 0, '2018-04-07 15:28:13', '2018-04-07 15:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'PHP', '2017-09-23 04:55:55', '2017-09-23 04:55:55'),
(3, 'Artificial Intelligence - AI', '2017-09-23 04:57:33', '2018-03-29 09:03:48'),
(4, 'Android', '2017-09-23 04:57:56', '2018-03-26 07:49:08'),
(5, 'Laravel', '2017-09-23 04:58:02', '2017-09-23 04:58:02'),
(6, 'Rubi-On-Rails', '2017-09-23 04:58:41', '2018-04-07 13:00:58'),
(7, 'Python', '2017-09-23 04:58:50', '2017-09-23 04:58:50'),
(9, 'Java', '2018-03-26 05:54:36', '2018-03-26 05:54:36'),
(11, 'Java Class', '2018-04-07 13:00:18', '2018-04-07 13:00:18'),
(12, 'VueJs', '2018-04-07 13:00:28', '2018-04-07 13:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `admins` tinyint(1) NOT NULL DEFAULT '0',
  `userType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `slug`, `pic`, `admins`, `userType`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahbub nayeem', 'mahbub@mail.com', 'male', 'mahbub-nayeem', 'YUSUF.jpg', 1, 'teacher', '$2y$10$vMU7hFXYkdWAlSI5puUlYeaR.8mw94QewebAqXnb7Gzggi9mQ1xzm', 0, '5BcwzM09wvPsdiRXGKU8SaVOwS70dl7DO3kChBoTQw1GNqvs1uZrPseGY5vB', '2017-09-16 18:21:58', '2018-04-13 07:36:06'),
(2, 'Yusuf Naeem', 'mahbubnayeem007@gmail.com', 'male', 'Yusuf-Naeem', 'boy.png', 0, 'student', '$2y$10$nc5jKZROoV7oTfVtB5qHPu8LLwCT9WmKlXIoVLlhm79tx0bnMmGrG', 0, '3gUOTpoMsW4LxKd5Mc1WI60FGLxtRQWgZIHzcm1hWcb5lyluXb8hoo4drtlg', '2017-09-19 16:34:50', '2017-09-22 07:58:33'),
(3, 'Debu', 'debu@mail.com', 'male', 'Debu', '18582385_1883918528537793_8839868152874396562_n.jpg', 0, 'student', '$2y$10$S0v0oOBxf0SaZCaP8HWl2.lf.lrbPafbT4dJAOlgBZkvK.WO.9.AK', 0, 'J06EK3URumUux2gPtbw5wKwHK9DgVigLWOqDOPD95Qk91l4acj8xLAFeMNF9', '2017-09-22 14:51:51', '2018-04-28 10:33:20'),
(4, 'Aman', 'aman@mail.com', 'male', 'Aman', 'boy.png', 0, 'student', '$2y$10$bOGAvDs8fimF7FrGZAscP.p.uPjcB9MpKjGWB0UFtw7QYXv977xG2', 0, 'OyRaoQ7Z7VM6L5pNzhvUldUa1EOP5HKsFWTWGf9HZlElXxqfUCc9QtR9WRPQ', '2018-03-19 09:20:09', '2018-04-06 05:05:41'),
(5, 'Rasel Ahmed', 'rasel@mail.com', 'male', 'Rasel-Ahmed', 'boy.png', 0, 'teacher', '$2y$10$VBXM7CW5.C1m5BYXGMohke4yUvtn4K92ivClvTAICnZ5MbgV/izNO', 1, 'qwisDxmrPC3SGRSlrcZ2ngW5O5tSVPB9CKapvRZiHdVdemO1Cp7SUsoKJlxi', '2018-03-23 10:10:52', '2018-03-28 23:48:27'),
(6, 'Rina Akhter', 'rina@mail.com', 'female', 'rina-akhter', 'girl.png', 0, 'student', '$2y$10$I1w150y6wZuKPXl2vVK2D.PlUefVcHsRmeB6uwOhA0nwk2iCq7qj.', 0, 'kXKvEj8eqg8ogLV0w9QWrZaKdMIDihIi4tn9d6I3GFzyPzKhO9u7EJcZfOJT', '2018-03-27 09:49:00', '2018-03-27 15:03:57'),
(7, 'lima khan', 'lima@mail.com', 'female', 'lima-khan', 'girl.png', 0, 'teacher', '$2y$10$uUSekGPp69.VHBUnLyX3deEVYqqJYMAJmYbZI4Z/.qWcDZrkGeG5i', 0, 'jNXU52NCbiGcSgyb0PjaQFInv0iuzJzTd1leMOt9kUgUKpGH1uY9RAOcSBcR', '2018-03-27 15:04:19', '2018-03-27 15:13:29'),
(8, 'Rita Akhter', 'rita@mail.com', 'female', 'rita-akhter', 'girl.png', 0, 'student', '$2y$10$kmiDvXJ8Yoo8qeYVmbxx.eW5uFIAYVV2xESSxzqHLuyjx2DicnJxu', 0, 'BVqkxv8CRpXn5hgbhLi445WLbX6yfebwp3zcvHtvxTbzhyXGrTeDPDMHjtDH', '2018-03-28 06:09:59', '2018-03-28 07:19:40'),
(9, 'Gourango Sutradhar', 'gour@mail.com', 'male', 'gourango-sutradhar', '26195388_1939797479615092_245949661776232878_n.jpg', 0, 'teacher', '$2y$10$Rrf825BUsXVMpu1hb2ceCOh7BlXm.lDUhKQt1b1bz7AV2xkire87S', 0, NULL, '2018-03-28 12:32:06', '2018-03-28 12:32:06'),
(11, 'Atiqur Rahman', 'atiq@mail.com', 'male', 'atiqur-rahman', 'atiqur.jpg', 0, 'student', '$2y$10$mb3459ViZXaOSUp8xP5YteDevfmoXU7FQ4DvEqbDYXgSHcHLnLzde', 0, 'loiD0NBkhcReZu34pusza0hhZ5mCdbyOExsKNGHyTQKv0u1roivkUDmVFlnA', '2018-04-07 13:02:02', '2018-04-07 13:07:37'),
(12, 'Sadik Sami', 'sadik@mail.com', 'male', 'sadik-sami', 'boy.png', 0, 'teacher', '$2y$10$oPL2zOXPsQLb7JoiY0Yaa.BniLijU3xgF5diwYM3MiwSFm47fAfgS', 0, '2bABvvN8rc1nMTMBkUsNN7adB4dmhssQqTuyJ3UGjGsvTDPvJoGpYJtAfKzz', '2018-04-07 13:08:52', '2018-04-07 13:18:37');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `likes_dislikes`
--
ALTER TABLE `likes_dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `post_users`
--
ALTER TABLE `post_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `likes_dislikes`
--
ALTER TABLE `likes_dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `post_users`
--
ALTER TABLE `post_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `post_users`
--
ALTER TABLE `post_users`
  ADD CONSTRAINT `post_users_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

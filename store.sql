------time settings--------------------
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-----database : store-------------------------------------------
DROP DATABASE IF EXISTS store;
CREATE DATABASE store CHARACTER SET utf8 COLLATE utf8_general_ci;
USE store


-----table : items-----------------------------------------------
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Canon EOS', 33000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 12500),
(4, 'Olympus DSLR', 8500),
(5, 'Apple Watch Ultra 2', 1500),
(6, 'Casio DH H5600', 365),
(7, 'Casio PRW 61', 560),
(8, 'Garmin Vivomove', 279),
(9, 'Iphone 15 Pro Max', 4500),
(10, 'Huawei Mate 60', 2500),
(11, 'Samsung S23 Ultra', 4500),
(12, 'Sony Xperia V1', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'moez', 'moez@gmail.com', '708175b3fdb269c4ebe8e7751bb3fccd', '98456123', 'Tunis', 'Mnihla'),
(2, 'ahmed', 'ahmed@gmail.com', '72eea11febe23ae3dcab2bf59794c54c', '95124873', 'Tunis', 'Kram'),
(3, 'ali', 'ali@gmail.com', '1b7b4c38f626766bbdcfc895e2c514f6', '96358741', 'Sfax', 'El kasr'),
(4, 'hsin', 'hussein@gmail.com', '1537c1dea8479ff52bc68336e323385f', '98741236', 'Sfax', 'El kasr'),
(5, 'sadok', 'sadok@gmail.com', 'f4690de2554616f5b853d35f5a7970d4', '96587412', 'Tunis', 'Ariana'),
(6, 'salma', 'salma@gmail.com', '8231ac09972b51e692a5f515f8349a29', '97413017', 'Tunis', 'Nassr');


-- --------------------------------------------------------

--
-- Table structure for table `user_item`
--

CREATE TABLE `user_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed','','') NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_item`
--

INSERT INTO `user_item` (`id`, `user_id`, `item_id`, `status`, `date_time`) VALUES
(1, 1, 2, 'Confirmed', '2024-04-20 21:08:35'),
(2, 1, 10, 'Confirmed', '2024-04-20 21:08:38'),
(3, 3, 7, 'Confirmed', '2024-04-20 21:09:06'),
(4, 3, 12, 'Confirmed', '2024-04-20 21:09:10'),
(5, 5, 5, 'Confirmed', '2024-04-20 21:22:01'),
(6, 5, 1, 'Confirmed', '2024-04-20 21:22:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_item`
--
ALTER TABLE `user_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_item`
--
ALTER TABLE `user_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

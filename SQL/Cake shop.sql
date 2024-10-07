-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2024 at 07:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Cake Shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'Mehedi', 'Hasan', 'mehedi@gmail.com', '01733888950', 'Dhaka', '91ec8d992540095dccbaa04a3e5ba55f', 'admin', '139474'),
(2, 'Jannat', 'Rimi', 'jannat@gmail.com', '01735678965', 'Gazipur', 'c3ac70501ad99a467f14f62dd4642391', 'admin', '101795'),
(3, 'Lia', 'Jahan', 'lia@gmail.com', '01759768940', 'Gazipur', '25d55ad283aa400af464c76d713c07ad', 'staff', '111284');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pid`, `quantity`) VALUES
(2, 0, 20, 1),
(3, 1, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL,
  `delivery` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`, `delivery`) VALUES
(1, 3, 1, 2, 'Gazipur', '01612544446', 'no', '2024-05-21', '0000-00-00', 'Express Delivery +100php upon '),
(2, 3, 6, 1, 'Gazipur', '01612544446', 'Yes', '2024-05-21', '2024-05-22', 'Standard Delivery'),
(3, 4, 81, 1, 'Gazipr', '01754332110', 'Yes', '2024-09-29', '2024-09-29', 'Express Delivery +100TK upon c'),
(4, 4, 12, 1, 'Gazipr', '01754332110', 'no', '2024-09-29', '0000-00-00', 'Standard Delivery'),
(5, 5, 63, 3, 'gazipur', '01543795434', 'no', '2024-09-29', '0000-00-00', 'Standard Delivery'),
(6, 5, 32, 1, 'gazipur', '01543795434', 'no', '2024-09-29', '0000-00-00', 'Express Delivery +100TK upon c'),
(7, 5, 20, 1, 'gazipur', '01543795434', 'Yes', '2024-09-29', '2024-09-29', 'Express Delivery +100php upon '),
(8, 1, 81, 2, 'Gazipur', '01733888950', 'no', '2024-09-30', '0000-00-00', 'Express Delivery +100TK upon c'),
(9, 1, 81, 1, 'Gazipur', '01733888950', 'no', '2024-09-30', '0000-00-00', 'Express Delivery +100TK upon c'),
(10, 1, 81, 1, 'Gazipur', '01733888950', 'no', '2024-09-30', '0000-00-00', 'Express Delivery +100TK upon c'),
(11, 1, 81, 1, 'Gazipur', '01733888950', 'no', '2024-09-30', '0000-00-00', 'Express Delivery +100TK upon c');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `piece`, `description`, `available`, `item`, `pCode`, `picture`) VALUES
(1, 'Chocolate Cream Cake Half kg', 1200, 3, 'Product Details:      Cake Flavour- Chocolate     Type of Cake - Cream     Shape- Round     Weight: 500 gm     Net Quantity: 1 Cake     Diameter: 7.5 inch     Serves: 4-6 People', 2, 'chocholate', 'm-5354', '1716248182.jpg'),
(2, 'Chocolate Cake 1 kg', 1800, 3, 'Product Details:      Cake Flavour- Chocolate     Type of Cake - Cream  ', 3, 'chocholate', 'm-5351', '1716248440.jpg'),
(3, 'Beautiful Pearl Vanilla Cake', 999, 4, 'Product Details:      Cake Flavour: Vanilla      Shape: Round      Type of Cake: Cream      Type of Sponge: Vanilla      Type of Cream: Vanilla      Filling in Layers: Vanilla      Toppings: Chocolate Pearls Garnish      Net Quantity: 1 Cake', 2, 'vanilla', 'v-3554', '1716248652.jpg'),
(4, 'Mango Maharaja Cake', 1999, 2, 'Product Details:      Cake Flavour: Mango      Shape: Round      Type of Cake: Cream      Type of Sponge: Vanilla      Type of Cream: Vanilla      Filling in Layers: Mango Filling      Toppings: Mango Glaze With Chocolate Garnish      Net Quantity: 1 Cake ', 1, 'mango', 'm-335', '1716249006.jpg'),
(5, 'Orange Sponge Peach Cake', 798, 3, 'Freshly Home-Baked Orange Sponge Peach Cake!', 2, 'orange', 'O-23324', '1716249219.jpg'),
(6, 'Red Velvet Cake', 1900, 2, 'The most amazing red velvet cake with cream cheese frosting.', 1, 'redvelvet', 'R-234', '1716249473.jpg'),
(7, 'The Best Chocolate Cake', 1000, 4, 'This is the Best Chocolate Cake.Moist homemade chocolate cake.', 2, 'chocholate', 'c-23326', '1716264495.jpg'),
(8, 'Chocolate lovers cake', 1200, 3, 'Yummy ,fresh,taste chocolate lovers cake.', 1, 'chocholate', 'c-23427', '1716264952.jpg'),
(9, 'Mouth Melting Chocolate Cake', 1250, 3, 'Product Details:  Cake Flavour: Chocolate  Shape: Round  Type of Cake: Cream  Type of Sponge: Chocolate  Type of Cream: Chocolate  Filling in Layers: Chocolate Cream  Toppings: Chocolate Garnish  Net Quantity: 1 Cake ', 0, 'chocholate', 'c-23428', '1716265156.jpg'),
(10, 'Easy Chocolate Drip Cake', 900, 3, 'This Chocolate Cake  truly is the BEST EVER! You HAVE TO try it! It’s a 3-layer, super moist ...', 1, 'chocholate', 'c23329', '1716265364.jpg'),
(11, 'Black Forest Cake', 1000, 4, 'This Black Forest Cake combines rich chocolate cake layers', 2, 'chocholate', 'c23330', '1716265483.jpg'),
(12, 'Customized chocolate cake', 1700, 2, 'Rich and detailed 3d model of birthday cake with Prepared for Architectural Interior, Small, Food, Home,', 1, 'chocholate', 'C-23331', '1716265886.jpg'),
(13, 'Finest Vanilla Cake', 700, 3, 'taste & healty cake ', 2, 'vanilla', '1230', '1716266380.jpg'),
(14, 'Floral Vanilla Birthday Cake', 1000, 4, 'Get this lovely vanilla cake for your beloved on birthday with same day & midnight delivery.', 1, 'vanilla', 'V-1231', '1716266491.jpg'),
(15, 'Delicious Pista Vanilla Cake', 900, 5, 'Order Online Delicious Pista Vanilla Cake For Birthday , Fresh Cream', 2, 'vanilla', 'V-1232', '1716266609.jpg'),
(16, 'Multi Flower Vanilla Cake', 1100, 3, ' Get this Birthday Vanilla Cake for your loved ones on birthday with same day and midnight delivery in ...', 0, 'vanilla', 'V-1123', '1716266784.jpg'),
(17, 'Text with Hearts Around Cake', 1000, 3, 'Such an elegant online cake delivery with superb cake in Noida and near by.', 1, 'vanilla', '1234', '1716266933.jpg'),
(18, 'Sweetheart Bento Cake', 200, 3, 'Having a whimsical birthday party? Look no further, this delicate  cake will blow your mind Each.', 1, 'bento', 'B-1231', '1716267811.jpg'),
(19, 'Pink Rose Fresh Vanilla Cake', 700, 2, 'A cute way to celebrate a loved one’s Available in sizes, flavours', 1, 'vanilla', 'v-2341', '1716268006.jpg'),
(20, 'purple vanilla cake', 1900, 2, 'This moist vanilla layer cake is made of three layers of moist vanilla cake that are filled and ...', 1, 'vanilla', 'V-1256', '1716268490.jpg'),
(21, '5 Inch Bento Cake', 600, 3, 'Bento cakes are miniature cakes which make the perfect gift', 1, 'bento', 'B-2341', '1716268610.jpg'),
(22, 'Love Couple Heart Bento Cake', 250, 2, 'Send Red Velvet Bento cake from Petalscart. Gift red velvet bento cake for your beloved on birthday, anniversary with same day & midnight delivery in ...', 1, 'bento', 'B-2314', '1716268719.jpg'),
(23, 'Making Mini Bento Cakes', 400, 3, 'Bento cakes are miniature cakes which make the perfect gif', 2, 'bento', 'B1256', '1716268912.jpg'),
(24, 'Flower Bento Cake', 350, 2, 'mini cake with your choice of flavor., Devil’s chocolate : chocolate sponge layered with couverture Belgian chocolate., Mango Raspberry: vanilla ...', 1, 'bento', 'B-1257', '1716269015.jpg'),
(25, 'Heart Shaped Bento Cake', 300, 4, 'The hottest trend in Korea, \"Bento Box Cakes\" with multiple designs to choose from. All the wonderful designs are locally made by ...', 1, 'bento', 'B-1367', '1716269130.jpg'),
(26, 'Best Orange Flavour Cake', 1000, 2, 'The oranges blossom during the Monsoon season and are ready to be harvested from the month of The orange crop here grows twice a', 1, 'orange', 'O-2314', '1716270517.jpg'),
(27, 'Beautiful Rose Orange Cake', 2000, 2, 'no need any caption for this delicious cake', 0, 'orange', 'O-2319', '1716270758.jpg'),
(28, 'Orange cakes (sponge cake)', 1000, 4, 'Send this delicious, fresh and juicy Birthday Cakes Gift ', 1, 'orange', 'O-2134', '1716270920.jpg'),
(29, 'orange cake', 1000, 3, 'his Lemon Orange Cake recipe is so moist and bursting with citrus flavor!', 2, 'orange', 'O-2135', '1716271293.jpg'),
(30, 'Cake, Orange Cake, Delicious, Food, Sweets,', 1100, 4, 'The orange cake, I hope it sounds so good to you.', 3, 'orange', 'O-1254', '1716271388.jpg'),
(31, 'Orange Dream Cake', 1300, 3, 'A light vanilla and orange cake with orange chunks, and topped with whipped cream frosting/buttercream frosting', 1, 'orange', 'O-1567', '1716271490.jpg'),
(32, 'Beautiful Rose Orange Cake', 2000, 3, 'no need any caption for this delicious cake', 1, 'orange', 'O-1567', '1716271675.jpg'),
(33, 'Fresh Mango Cake', 900, 2, 'ou go, we go, we all go Let’s Go for Mango!', 1, 'mango', 'M-1234', '1716271823.png'),
(34, 'Fresh Mango Cake', 900, 2, 'ou go, we go, we all go Let’s Go for Mango!', 1, 'mango', 'M-1234', '1716271863.jpg'),
(35, 'Lemon Chantilly Cream Cake', 900, 3, 'This moist and creamy lemon chantilly cake is flavored entirely with fresh lemon juice and zest! ...', 2, 'lemon', 'L-4321', '1716307381.jpg'),
(36, 'Soft Red Velvet Cake', 1200, 2, 'This red velvet cake is so super soft, moist and full of flavour! Frosted with a creamy, tart cream ...', 1, 'redvelvet', 'R-1231', '1716307810.jpg'),
(37, 'Red Velvet Double', 2200, 2, 'Cake Flavor - Red velvet, Weight- 2.5 Kg, Cake type - Cream, Serves- 30 to 35 People, Shape - 2 tier round, Candles & Knife Included', 1, 'redvelvet', 'R-1232', '1716308039.jpg'),
(38, 'Order Sinful Red Velvet Cakes', 1500, 3, 'Looking to surprise your loved one? Choose midnight delivery from Gurgaon Bakers and impress your loved ones with tasty red velvet cakes', 2, 'redvelvet', 'R-1233', '1716308141.jpg'),
(39, 'Best Red Velvet Cake Design', 1300, 4, 'The queen of all layered cakes., The Oven Café & Bakery are proud to present our Red velvet cake with cream cheese frosting. This is the most ...', 1, 'redvelvet', 'R-1234', '1716308231.jpg'),
(40, 'Two Tier Red Velvet Cake', 3000, 2, '• Flavor: By Default Red velvet Cake. (Design of the cake may vary according to the delivery city). ', 1, 'redvelvet', 'R-2341', '1716308388.jpg'),
(41, 'Indulge in Elegance: Semi Red Velvet Cake', 1400, 4, 'Experience the perfect blend of sophistication and sweetness with our Semi Red Velvet Cakes. Order now for a taste of elegance delivered straight to ...', 1, 'redvelvet', 'R-2346', '1716308495.jpg'),
(42, 'Beautiful Vanilla Jar Cake', 150, 7, 'DESCRIPTION:-Try something new and exotic Beautiful Vanilla Jar Cake. Unique cute looking jar with soft and Flavored pastries. Surprise anyone from ...', 2, 'jar', 'J-1267', '1716308991.jpg'),
(43, 'Chocolate Jar Cake Recipe', 180, 8, 'These cake jars are such a delicious treat that you can enjoy anytime anywhere! Cake jars are full of fun devein flavors layers! These cake jars', 3, 'jar', 'J-1268', '1716309120.jpg'),
(44, 'chocolate jar cakes', 160, 8, ' This is very very easy to make and you can gift ...', 3, 'jar', 'J-2341', '1716310210.jpg'),
(46, 'Jar cake Black forest', 160, 6, ' Note:*Any types of complaint regarding products, customer has to inform within 2 working ...', 2, 'jar', 'J-2134', '1716430183.jpg'),
(47, 'Yummy & Soft Cake Jars', 200, 5, 'Description:Design your own cake jar. Featuring a selection of our scratch-made cakes, buttercreams, and fillings. You can customize your jar to your ...', 1, 'jar', 'J-2122', '1716430317.jpg'),
(50, 'Disposable Plastic Cake Tub', 600, 7, 'Outer Size: Inner Size: of containers per order: Depend on Selection', 3, 'tub', 'T-1235', '1716431296.jpg'),
(51, 'Disposable Plastic Cake Tub', 500, 6, 'Outer Size: Inner Size: of containers per order: Depend on Selection', 3, 'tub', 'T-2313', '1716431839.jpg'),
(52, 'Acrylic Cake Tub', 650, 5, 'Cake Decor Transparent Acrylic Dessert Tub With Lid, The item is a set of Acrylic cake tub Tub which are made of durable food-grade source material', 2, 'tub', 'T-2341', '1716432034.jpg'),
(53, 'Tub Cake', 500, 3, 'Minimum Tub cake order 2 no.This is available in all Flavour', 2, 'tub', 'T-2314', '1716432309.jpg'),
(54, 'Acrylic Tub', 400, 6, ' You can choose the flavour from the options below.', 3, 'tub', 'T-3421', '1716432434.jpg'),
(56, 'Red Velvet Mousse Cake Tub', 500, 5, ' classic dessert known for its rich flavor and striking A perfect balance of sweetness and cocoa, with subtle tanginess from the addition', 2, 'tub', 'T-2343', '1716432674.jpg'),
(57, 'Gifted Tub Cake Chocolate', 600, 4, 'Moist chocolate sponge layered with Nutella mousse and sprinkled with roasted hazelnuts.', 2, 'tub', 'T-3432', '1716432777.jpg'),
(58, 'Maamas delight on X: \"Cake tubs', 600, 7, 'A classic dessert known for its rich flavor and striking A perfect balance of sweetness and cocoa, with subtle tanginess from the addition', 4, 'tub', 'T-3425', '1716432929.jpg'),
(59, 'Gifted Tub Cake Chocolate', 450, 7, 'Immerse yourself in the indulgent symphony of dark, milk, and white chocolate with Daily Triple Chocolate Tub Cake. Elevate your everyday moments with ...', 4, 'tub', 'T-3546', '1716433098.jpg'),
(60, 'Daily Triple Chocolate Tub Cake', 500, 6, ' Tub with lid, The best tub for cakes., Suitable for:, Cakes, Pudding, Mousse, ...', 3, 'tub', 'T-3467', '1716433213.jpg'),
(61, 'Mellow Fresh - Mango Cream Cake', 700, 2, ' \"Converting the best quality mangoes to these delicious Mango Cake Tubs! , Dig in one spoon and', 5, 'tub', 'T-3456', '1716433849.jpg'),
(62, 'chocolate tub cake', 600, 7, 'Tub Cake is now very popular now a days. Its easy to make and very convenient to ship. You can use these boxes for Cake, Cookies, dessert and many ...', 4, 'tub', 'T-2356', '1716434103.jpg'),
(63, 'Mystery Cake Jar', 200, 6, 'Chocolate Cake Layer Preheat oven to 350°F. Line an 11x17-inch jelly roll pan with parchment paper; ...', 3, 'jar', 'J-1254', '1716434226.jpg'),
(64, 'Mango flavour cake?', 1000, 5, 'Experience the juicy and heavenly taste of mangoes with fresh cream and mango toppings in our mango cake.Order now and enjoy your day.Eggless variety ...', 2, 'mango', 'M-3214', '1716655610.jpg'),
(66, 'Premium Mango Cake', 1200, 5, 'The flavors of Summer, this uber delicious Mango Cake (1 Kg) has all the goodness of the king of fruits. Indulge in a mangolicious treat with this ...', 2, 'mango', 'M-3221', '1716655813.jpg'),
(67, 'Creamy Mango Cake', 1100, 4, 'Fruity and delicious mango cake with sponge cake, mango puree filling and mango whipped cream!', 1, 'mango', 'M-2231', '1716655901.png'),
(68, 'Mango Birthday Cake', 1000, 3, 'beijing,chongqing,dongguan,foshan,guangzhou,haikou,hangzhou,kunming,luoyang,nanc', 1, 'mango', 'M-2233', '1716656030.jpeg'),
(71, 'Lemon Cake', 1200, 3, 'If Summer was a cake, this would be it ????It’s fluffy, tart, creamy and most importantly…not too ...', 1, 'lemon', 'L-3112', '1716656714.jpg'),
(72, 'Lemon Thyme Cake', 1000, 5, 'Layers of soft, zesty lemon cake topped with delicious lemon cream .', 2, 'lemon', 'L-2231', '1716656793.jpg'),
(74, 'Lemon First Birthday Cake', 2400, 5, '* This listing is for dozen lemon shaped vanilla Individually wrapped and tied with coordinating Cookies will be', 3, 'lemon', 'L-2323', '1716656986.jpg'),
(75, 'Lemon First Birthday Cake', 1200, 4, 'Small lemon cake recipe with easy lemon cream filling.', 2, 'lemon', 'L-3412', '1716657077.jpg'),
(76, 'Lemon Fresh Cake', 1200, 4, 'A lemon-flavored white cake is stacked with layers of lemon curd and white chocolate', 2, 'lemon', 'L-3422', '1716657239.jpg'),
(77, 'Simple Lemon Cake', 1000, 3, 'A lemon-flavored white cake is stacked with layers of lemon curd and white chocolate', 2, 'lemon', 'L-2312', '1716657340.jpg'),
(78, 'Mango Ice- cream Cake', 1300, 6, 'Celebrate the king of fruits with the fresh mango cake from Liliyum, with real wholesome fruits inside and out.', 3, 'mango', 'M-2345', '1716657543.jpg'),
(79, 'Mango Birthday Cake', 1500, 3, 'Mango Cake is one of my favourite cakes. It is so refreshing with whipping cream', 1, 'mango', 'M-3323', '1716657667.jpg'),
(80, 'Dorimon Theme Vanilla Cake', 1600, 4, 'Enjoy & celeberate you special day with our delecious cake', 2, 'vanilla', 'V-1567', '1716657882.jpg'),
(81, 'Flower chocolate cake', 2000, 5, 'Pretty flower cake makes your day more beautiful.', 0, 'chocholate', 'C-1298', '1716658030.jpg'),
(82, 'Beautiful Chocolate Cake', 1800, 4, 'Most elegent & beautiful fresh & healty cakes for you friends & family.', 1, 'chocholate', 'V-1987', '1716658246.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  `activation` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(1, 'Mehedi', 'Hasan', 'mehedi@gmail.com', '01733888950', 'Gazipur', '91ec8d992540095dccbaa04a3e5ba55f', '0', 'yes'),
(2, 'Rimi', 'Rimi', 'rimi@gmail.com', '01765842774', 'gazipur', 'f614be5c658acd76f5c71592b6ec09e6', '0', 'yes'),
(3, 'Lia', 'Jahan', 'lia@gmail.com', '01612544446', 'Gazipur', '25d55ad283aa400af464c76d713c07ad', '0', 'yes'),
(4, 'Jannat', 'Rimi', 'jannat.rimi.12345@gmail.com', '01754332110', 'Gazipr', 'f4a5be541320dc56e799cf51482e2d2f', '0', 'yes'),
(5, 'Rifa', 'Shanjida', 'shanzidasaba@gmail.com', '01543795434', 'gazipur', '252c8dc8858883913213e119057cb458', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

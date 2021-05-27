-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2021 at 03:14 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'man'),
(2, 'women'),
(3, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_release` varchar(125) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_storyline`, `movies_release`, `product_type`) VALUES
(1, 'mens-charged-rogue-running-shoes.jpg', 'Mens Charged Running Shoes', '115', 'Engineered mesh upper is lightweight & breathable\r\nFirm external heel counter for additional support that keeps the back of the foot locked in place\r\nMolded Comfort Collar locks in the heel with a soft, plush feel for zero distractions\r\nFull-length molded sockliner forms to the foot, eliminating slippage & providing ideal underfoot comfort\r\nCharged Cushioning midsole is firmer in the heel & softer in the forefoot for support & comfort\r\nTPU midsole shank for added stability & support\r\nRubber outsole provides full ground contact with deep flex grooves for flexibility where you need it', ' BLACK/BLACK/BLACKBLACK/BLACK/BLACK', 'shoes'),
(2, 'mens-drift.jpg', 'Mens Drift Running Shoes', '100', 'Neutral: For runners who need flexibility, cushioning & versatility\r\n4E Sizing built to better fit athletes with extra wide feet\r\nEngineered mesh upper is extremely lightweight & breathable, with strategic support where you need it\r\nFoam padding placed around your ankle collar & under the tongue for an incredibly comfortable fit & feel\r\nComfort sockliner molds to your foot with padding in the heel for ultimate cushioning at heel-strike\r\nCharged Cushioning® midsole uses compression molded foam for ultimate responsiveness & durability\r\nTire inspired outsole pattern provides ultimate flex & superior traction', 'BLACK/BLACK/BLACK', 'shoes'),
(3, 'mens-drift-2.jpg', 'Mens Charged Pursuit 2 Running shoes', '90', 'Neutral: For runners who need flexibility, cushioning & versatility\r\nEngineered mesh upper is extremely lightweight & breathable, with strategic support where you need it\r\nFoam padding placed around your ankle collar & under the tongue for an incredibly comfortable fit & feel\r\nComfort sockliner molds to your foot with padding in the heel for ultimate cushioning at heel-strike\r\nCharged Cushioning® midsole uses compression molded foam for ultimate responsiveness & durability\r\nTire inspired outsole pattern provides ultimate flex & superior traction', 'March 3,2017', ''),
(4, 'mens-running-shoes.jpg', 'HOVR Sonic 4 Running shoes', '150', 'Connects To UA Mapmyrun™: Tracks & analyzes your running metrics to help make you a better runner\r\nUA HOVR™ technology provides \'zero gravity feel\' to maintain energy return that helps eliminate impact\r\nCompression mesh energy web contains & molds UA HOVR™ foam to give back the energy you put in\r\nLightweight engineered mesh upper for ultimate breathability\r\nTongue is attached to the footbed by stretchable support wings to maintain a snug fit throughout the foot\r\nOne-piece heel construction with external TPU heel counter for additional support & structure\r\nRemovable sockliner molds to the foot for customized comfort & cushion\r\nRemovable sockliner molds to the foot for customized comfort & cushion\r\nNeutral: For runners who need a balance of flexibility & cushioning', 'BLACK/WHITE/WHITE', 'shoes'),
(5, 'mens-running-shoes-2.jpg', 'Chrgd Rogue 2 Twist Running Shoes', '85', 'Engineered mesh upper with 2-tone twist effect is extremely lightweight & breathable\r\nLightweight, external heel counter for additional support that keeps the back of the foot locked in place\r\nDual density Charged Cushioning midsole for the ultimate blend of comfort & explosive energy return\r\nFull-length molded sockliner forms to the foot, eliminating slippage & providing ideal underfoot comfort\r\nSolid rubber outsole covers high impact zones for greater durability with less weight\r\nNeutral: For runners who need a balance of flexibility & cushioning', 'BLACK/WHITEBLACK/WHITE', ''),
(6, 'mens-jacket-1.jpg', 'The North Face Men\'s Venture 2.5L Jacket', '97', 'Unlined, packable, weatherproof rain jacket for year-round use\r\nRelaxed fit\r\nWaterproof, breathable, seam-sealed DryVent™ 2.5L shell\r\n100% windproof fabric\r\nAdjustable hood\r\nVelcro® stormflap covers front zipper\r\nPit-zip venting for added breathability\r\nCovered, secure-zip hand pockets\r\nVelcro® adjustable cuff tabs\r\nHem cinch-cord\r\nPacks into its own pocket', 'TNF DARK GREY HEATHER - DYZ', ''),
(7, 'mens-jacket-2.jpg', 'The North Face Men\'s Campshire Jacket', '118', 'Standard fit\r\nHigh-pile, 300-weight Campshire Sherpa fleece\r\nReverse-coil center front zip\r\nSecure-zip welt hand pockets\r\nLogo patch on left chest', 'AVIATOR NAVY/MALLARD BLUE', 'jacket'),
(8, 'mens-jacket-3.jpg', 'The North Face Men\'s Campshire pullover jacket', '55', 'Relaxed fit\r\nHigh-pile, 300-weight Campshire Sherpa fleece\r\nLow-profile, reverse-coil quarter zip\r\nSide-entry, secure-zip kangaroo hand pocket\r\nWoven elbow patches for added durability\r\nElastic-bound hood, center front zip and cuffs\r\nLogo patch on left chest\r\n', 'TIMBER TAN/AVIATOR NAVY', 'jacket'),
(9, 'mens-jacket-4.jpg', 'The North Face Men\'s Pardee Insulated Jacket', '110', 'Standard fit\r\n100 g Heatseeker™ Eco recycled insulation for warmth even in wet weather\r\nInspired, iconic colorblocking on front and back yoke in select colorways\r\nExposed, VISLON® center front zip\r\nKnit collar and cuffs\r\nCovered, secure-zip, welt hand pockets\r\nEmbroidered logo on left chest and back-right shoulder', 'TNF BLACK', ''),
(10, 'mens-jacket-5.jpg', 'The North Face Men\'s Pullover hooded jacket', '120', 'Relaxed fit\r\nHigh-pile, 300-weight Campshire Sherpa fleece\r\nLow-profile, reverse-coil quarter zip\r\nSide-entry, secure-zip kangaroo hand pocket\r\nWoven elbow patches for added durability\r\nElastic-bound hood, center front zip and cuffs\r\nLogo patch on left chest', 'BRANDY BROWN/AVAIATOR NAVY', 'jacket'),
(11, 'women-jacket-1.jpg', 'The North Face Women\'s Resolve 2 Shell Jacket', '138', 'Weatherproof rain jacket with breathable mesh lining\r\nCenter front stormflap with Velcro® closure\r\nRelaxed Fit\r\nCovered, secure-zip hand pockets\r\nWaterproof, breathable, seam-sealed DryVent™ 2L jacket with mesh drop liner\r\nElastic-bound cuffs\r\nHem cinch-cord\r\nAdjustable hood stows in collar\r\nBack panel kicker\r\nImported\r\nMachine Wash', 'GREEN', ''),
(12, 'women-jacket-2.jpg', 'The North Face Women\'s Resolve 2 Shell Jacket', '89', 'Weatherproof rain jacket with breathable mesh lining\r\nRelaxed Fit\r\nWaterproof, breathable, seam-sealed DryVent™ 2L jacket with mesh drop liner\r\n100% windproof fabric\r\nAdjustable hood stows in collar\r\nCenter front stormflap with Velcro® closure\r\nCovered, secure-zip hand pockets\r\nElastic-bound cuffs\r\nHem cinch-cord\r\nBack panel kicker', 'IMPATIENS PINK K47', ''),
(13, 'women-jacket-3.jpg', 'The North Face Women\'s Eco Venture Jacket', '93', 'Unlined, weatherproof rain jacket for year-round use\r\nStormflap with Velcro® closure covers front zipper\r\nRelaxed Fit\r\nCovered, secure-zip hand pockets\r\nWaterproof, breathable, fully seam-sealed DryVent™ 2.5L shell\r\nPit-zip venting for added breathability\r\nHem cinch-cord\r\nAdjustable hood\r\nStowable in hand pocket\r\nImported', 'WILD ASTER PURPLE ZDN', 'jacket'),
(14, 'women-jacket-4.jpg', 'The North Face Women\'s Resolve II Shell jacket', '75', 'Standard fit\r\nWaterproof, breathable, seam-sealed DryVent 2L shell with mesh lining\r\n100% windproof\r\nUpdated fit and design\r\nImproved shaping\r\nStowable hood packs into collar\r\nStormflap with Velcro® closure covers the center front zip\r\nEncased-elastic detail at side waist\r\nCovered, zippered hand pockets\r\nElastic-bound cuffs', 'TNF MEDIUM GREY HEATHER DYY', 'jacket'),
(15, 'women-jacket-5.jpg', 'The North Face Women\'s Dryzzle Jacket', '45', 'Standard fit\r\nBreathable-waterproof, seam-sealed FUTURELIGHT™ 3L shell with a soft, recycled, stretch-woven face and recycled, stretch-knit backer for warmth and comfort\r\n100% windproof fabric\r\nAttached, fully adjustable hood\r\nLaminated stormflap with snap closure at top collar and hem covers the center front zip\r\nExposed, matte polyurethane (PU) chest pocket zip\r\nCovered, secure-zip hand pockets\r\nAdjustable Velcro® cuff tabs\r\nHem cinch-cord\r\nSlight drop-tail hem\r\nRecycled content by weight: solid colorways are rated “best”; heather colorways are rated “better”', 'TNF BLACK JK3', 'jacket'),
(16, 'women-hoodie-1.jpg', 'Puma Women\'s Plus Size Rival Hoodie', '67', 'Super-soft, lightweight Terry with brushed interior for added warmth\r\nMaterial wicks sweat & dries really fast\r\n4-way stretch construction moves better in every direction\r\nScuba neck hood construction with drawcord adjust\r\nFront kangaroo pocket\r\nDrop hem shoulder\r\nGradient wordmark taping details\r\nFit & Care: Machine wash cold with like colors, use only non-chlorine bleach when needed, tumble dry low, do not iron, do not use softeners, do not dry clean', 'BLACKBLACK', 'hoodie'),
(17, 'women-hoodie-2.jpg', 'PUMA Women\'s essentials Logo Hoodie', '90', 'PUMA Essentials Logo Hoodie. Rock a look essential to your everyday style. With a crisp, clean design and a classic fit, the Essentials Logo Hoodie is perfect for every occasion.\r\nNo. 1 Logo rubber print\r\nJersey lined hood with drawcord for an adjustable fit\r\nKangaroo pocket for a convenient storage solution\r\nRib cuffs and waistband\r\nRegular fit\r\nMade with recycled polyester', 'BLACK', 'hoodie'),
(18, 'women-hoodie-3.jpg', 'PUMA Women\'s sportswear Amplified Hoodie', '105', 'PUMA No.1 logo rubber print\r\nPrinted tape on the sleeves with repeated Puma No. 1 Logo\r\nRib cuffs\r\nRelaxed fit\r\nMade with cotton from Better Cotton Initiative\r\nMade with OEKO-TEX®Standard\r\nSPECIFICATIONS\r\n', 'PUMA BLACKPUMA BLACK', ''),
(19, 'women-hoodie-4.jpg', 'PUMA Women\'s sporstwear Logo Fleece Hoodie', '117', 'No.1 logo pigment print\r\nRegular fit\r\nJersey lined hood with drawcord for an adjustable fit\r\nKangaroo pocket for a convenient storage solution\r\nRib cuffs and hem', 'OXGLOVEFOXGLOVE', ''),
(20, 'women-hoodie-5.jpg', 'PUMA Women\'s sportswear logo metallic hoodie', '103', 'No.1 logo metallic print\r\nCropped fit\r\nMaterial: 32% Polyester / 68% Cotton', 'PUMA WHITE - SILVERPUMA WHITE SILVER', 'hoodie'),
(21, 'women-running-shoes.jpg', 'Under Armour Women\'s Charged Escape 3 Running shoes', '81', 'Engineered mesh upper is lightweight & breathable\r\nFirm external heel counter for additional support that keeps the back of the foot locked in place\r\nMolded Comfort Collar locks in the heel with a soft, plush feel for zero distractions\r\nFull-length molded sockliner forms to the foot, eliminating slippage & providing ideal underfoot comfort\r\nCharged Cushioning midsole is firmer in the heel & softer in the forefoot for support & comfort\r\nTPU midsole shank for added stability & support\r\nRubber outsole provides full ground contact with deep flex grooves for flexibility where you need it\r\nRubber outsole provides full ground contact with deep flex grooves for flexibility where you need it\r\nNeutral: For runners who need a balance of flexibility & cushioning', 'BLACK/WHITE', 'shoes'),
(22, 'women-running-shoes-2.jpg', 'Under Armour Women\'s Charged Impulse Knit Running Shoes', '99', 'Neutral: For runners who need a balance of flexibility & cushioning\r\nFully knit upper for a breathable, compression-like fit that delivers lightweight directional strength\r\nDual-layer Charged Cushioning® midsole with minimal outsole rubber for the ultimate cushioned, flexible & lightweight ride\r\nSolid rubber outsole covers high impact zones for greater durability with less weight\r\nReflective details for greater visibility on low-light runs', 'BLK/WHT/IRIDES', ''),
(23, 'women-running-shoes-3.jpg', 'Under Armour Women\'s Charged Pursuit SE 2 Running Shoes', '139', 'Engineered mesh upper is extremely lightweight & breathable, with strategic support where you need it\r\nFoam padding placed around your ankle collar & under the tongue for an incredibly comfortable fit & feel\r\nComfort sockliner molds to your foot with padding in the heel for ultimate cushioning at heel-strike\r\nCharged Cushioning® midsole uses compression molded foam for ultimate responsiveness & durability\r\nTire inspired outsole pattern provides ultimate flex & superior traction\r\nFit & Care: Regular, Neutral - For runners who need a balance of flexibility & cushioning', 'BLACK/WHITE', 'shoes'),
(24, 'women-running-shoes-4.jpg', 'Under Armour Women\'s HOVR Machina 2 Colorshift Running Shoes', '140', 'Connects To UA Mapmyrun™: Tracks & analyzes your running metrics to help make you a better runner\r\nUA HOVR™ technology provides \'zero gravity feel\' to maintain energy return that helps eliminate impact\r\nCompression mesh Energy Web contains & molds UA HOVR™ foam to give back the energy you put in\r\nUltralight 3D spacer mesh upper for increased breathability & ultimate speed\r\nAs your body emits energy, the mineral-infused UA RUSH™ lining absorbs & reflects it back, improving endurance\r\nExternal heel counter for added stability & a locked-in feel\r\nSprint spike-inspired Pebax® speed plate for increased return & more powerful push-offs\r\nSprint spike-inspired Pebax® speed plate for increased return & more powerful push-offs\r\nReflective details\r\nNeutral: For runners who need a balance of flexibility & cushioning\r\nOffset: 8mm\r\nWeight: 8.14 oz.', 'BLACK/PEACHBLACK/PEACH', 'shoes'),
(25, 'women-running-shoes-5.jpg', 'Under Armour Women\'s HOVR Sonic 4 Running Shoes', '155', 'Connects To UA Mapmyrun™: Tracks & analyzes your running metrics to help make you a better runner\r\nUA HOVR™ technology provides \'zero gravity feel\' to maintain energy return that helps eliminate impact\r\nCompression mesh energy web contains & molds UA HOVR™ foam to give back the energy you put in\r\nLightweight engineered mesh upper for ultimate breathability\r\nTongue is attached to the footbed by stretchable support wings to maintain a snug fit throughout the foot\r\nOne-piece heel construction with external TPU heel counter for additional support & structure\r\nRemovable sockliner molds to the foot for customized comfort & cushion\r\nRemovable sockliner molds to the foot for customized comfort & cushion\r\nFit & Care: Regular, Neutral - For runners who need a balance of flexibility & cushioning\r\nWeight: 8.18 oz\r\nOffset: 8mm', 'DK PURPLE', 'shoes'),
(26, 'kids-running-shoes-1.jpg', 'adidas Kids’ 4Uture RNR AC Running Shoes', '104', 'Rubber outsole\r\nElastic laces with top strap\r\nTextile upper\r\nSoft and ergonomic\r\nShoes for growing feet\r\nCushioned Cloudfoam midsole', 'BLACK', 'shoes'),
(27, 'kids-running-shoes-2.jpg', 'adidas Kids\' Grade/Pre-School Fortarun Running Shoes', '103', 'Lace closure\r\nBreathable mesh upper\r\nSoft, cushioned feel\r\nPerformance running-inspired shoes\r\nSoft cloudfoam midsole cushioning\r\nTPU midsole support and rubber outsole', 'CORE BLACK/WHITE', 'shoes'),
(28, 'kids-running-shoes-3.jpg', 'adidas Kids\' Grade School Kaptir Running Shoes', '100', 'Lace closure\r\nKnit upper\r\nMesh lining\r\nHeel counter\r\nSynthetic outsole\r\nSculpted Cloudfoam midsole', 'BLACK/WHITE/SOLAR RED', 'shoes'),
(29, 'kids-running-shoes-4.jpg', 'adidas Kids’ Edge Game Day Running Shoes', '55', 'Multisurface rubber outsole\r\nLace closure\r\nMesh upper\r\nLight and breathable feel\r\nEveryday running shoes\r\nFlexible Bounce+ midsole cushioning', 'BLACK', 'shoes'),
(30, 'kids-running-shoes-5.jpg', 'adidas Kids\' Grade School Duramo SL Running Shoes', '65', 'Rubber outsole\r\nLace closure\r\nMesh upper with support overlays\r\nSoft, breathable feel\r\nIndoor or outdoor training shoe\r\nCushioned Cloudfoam midsole', 'BLACK', 'shoes'),
(31, 'kids-hoodie-1.jpg', 'Nike Sportswear Boys\' Club Pullover Hoodie', '41', 'French terry fleece feels smooth on the outside and supersoft and fuzzy on the inside\r\nRibbed cuffs and hem help secure your fit\r\nStandard fit for a relaxed, easy feel\r\nFront pocket\r\nBody: 80% Cotton / 20% Polyester\r\nHood lining: 100% Cotton', 'WHITE/BARELY VOLTWHITE/BARELY VOLT', 'hoodie'),
(32, 'kids-hoodie-2.jpg', 'Nike Sportswear Boys\' Club Pullover Hoodie', '51', 'Fleece feels soft and comfortable\r\nRibbed cuffs and hem help secure your fit\r\nStandard fit for a relaxed, easy feel\r\nFront pocket\r\nBody: 80% Cotton / 20% Polyester\r\nHood Lining: 100% Cotton', 'CUCUMBER CALM', 'hoodie'),
(33, 'kids-hoodie-3.jpg', 'Nike Sportswear Boys\' Pack Amplify Pullover Hoodie', '56', 'French terry fleece feels soft and warm\r\nRibbed cuffs help secure your fit\r\nStandard fit for a relaxed, easy feel\r\nFront pocket\r\nBody: 80% Cotton / 20% Polyester\r\nRib: 97% Cotton / 3% Spandex', 'GAME ROYAL/GAME ROYAL/STADIUM GREEN', 'hoodie'),
(34, 'kids-hoodie-4.jpg', 'Nike Sportswear Boys\' Zero Max Pullover Hoodie', '55', 'Recycled Fabric; This hoodie is made of recycled and organic fabric in an effort to reduce waste\r\nRegrind Logo; The logo is made of regrind material from recycled shoes to give a unique speckled design\r\nStandard fit for a relaxed, easy feel\r\nRibbed cuffs and hem\r\nFront pocket\r\nMaterial: 82% Cotton / 18% Polyester', 'BLACK/DARK SMOKE GREYBLACK/DK SMOKE GREY', 'hoodie'),
(35, 'kids-hoodie-5.jpg', 'Nike Sportswear Boys\' Jersey Pullover Hoodie', '90', 'Knit jersey fabric feels soft and lightweight\r\nRibbed cuffs help keep your fit in place\r\nStandard fit for a relaxed, easy feel\r\nFront pocket\r\nMaterial: 65% Polyester / 35% Rayon', 'BLACK/WHITE', 'hoodie'),
(36, 'kids-swim-1.jpg', '', '', '', '', ''),
(37, 'kids-swim-2.jpg', '', '', '', '', ''),
(38, 'kids-swim-3.jpg', '', '', '', '', ''),
(39, 'kids-swim-4.jpg', '', '', '', '', ''),
(40, 'kids-swim-5.jpg', '', '', '', '', ''),
(41, 'women-shorts-1.jpg', '', '', '', '', ''),
(42, 'women-shorts-2.jpg', '', '', '', '', ''),
(43, 'women-shorts-3.jpg', '', '', '', '', ''),
(44, 'women-shorts-4.jpg', '', '', '', '', ''),
(45, 'women-shorts-5.jpg', '', '', '', '', ''),
(46, 'men-pants-1.jpg', '', '', '', '', ''),
(47, 'men-pants-2.jpg', '', '', '', '', ''),
(48, 'men-pants-3.jpg', '', '', '', '', ''),
(49, 'men-pants-4.jpg', '', '', '', '', ''),
(50, 'men-pants-5.jpg', '', '', '', '', ''),
(51, 'women-leggings-1.jpg', '', '', '', '', ''),
(52, 'women-leggings-2.jpg', '', '', '', '', ''),
(53, 'women-leggings-3.jpg', '', '', '', '', ''),
(54, 'women-leggings-4.jpg', '', '', '', '', ''),
(55, 'women-leggings-5.jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 2),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 26, 3),
(38, 27, 3),
(39, 28, 3),
(40, 29, 3),
(41, 30, 3),
(42, 31, 3),
(43, 32, 3),
(44, 33, 3),
(45, 34, 3),
(46, 35, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_type`
--

DROP TABLE IF EXISTS `tbl_mov_type`;
CREATE TABLE IF NOT EXISTS `tbl_mov_type` (
  `mov_type_id` int(15) NOT NULL AUTO_INCREMENT,
  `movies_id` int(15) NOT NULL,
  `type_id` int(15) NOT NULL,
  PRIMARY KEY (`mov_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_type`
--

INSERT INTO `tbl_mov_type` (`mov_type_id`, `movies_id`, `type_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 2),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 2),
(39, 37, 4),
(38, 36, 4),
(40, 38, 4),
(41, 39, 4),
(42, 40, 4),
(43, 41, 5),
(44, 42, 5),
(45, 43, 5),
(46, 44, 5),
(47, 45, 5),
(48, 46, 6),
(49, 47, 6),
(50, 48, 6),
(51, 49, 6),
(52, 50, 6),
(53, 51, 7),
(54, 52, 7),
(55, 53, 7),
(56, 54, 7),
(57, 55, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

DROP TABLE IF EXISTS `tbl_type`;
CREATE TABLE IF NOT EXISTS `tbl_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'shoes'),
(2, 'hoodie'),
(3, 'jacket'),
(4, 'swimwear'),
(5, 'shorts'),
(6, 'pants'),
(7, 'leggings');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

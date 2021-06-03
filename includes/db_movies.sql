-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2021 at 03:32 PM
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
(2, 'female'),
(3, 'children');

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
(6, 'mens-jacket-1.jpg', 'The North Face Men\'s Venture 2.5L Jacket', '97', 'Unlined, packable, weatherproof rain jacket for year-round use\r\nRelaxed fit\r\nWaterproof, breathable, seam-sealed DryVent™ 2.5L shell\r\n100% windproof fabric\r\nAdjustable hood\r\nVelcro® stormflap covers front zipper\r\nPit-zip venting for added breathability\r\nCovered, secure-zip hand pockets\r\nVelcro® adjustable cuff tabs\r\nHem cinch-cord\r\nPacks into its own pocket', 'TNF DARK GREY HEATHER - DYZ', 'jacket'),
(7, 'mens-jacket-2.jpg', 'The North Face Men\'s Campshire Jacket', '118', 'Standard fit\r\nHigh-pile, 300-weight Campshire Sherpa fleece\r\nReverse-coil center front zip\r\nSecure-zip welt hand pockets\r\nLogo patch on left chest', 'AVIATOR NAVY/MALLARD BLUE', 'jacket'),
(8, 'mens-jacket-3.jpg', 'The North Face Men\'s Campshire pullover jacket', '55', 'Relaxed fit\r\nHigh-pile, 300-weight Campshire Sherpa fleece\r\nLow-profile, reverse-coil quarter zip\r\nSide-entry, secure-zip kangaroo hand pocket\r\nWoven elbow patches for added durability\r\nElastic-bound hood, center front zip and cuffs\r\nLogo patch on left chest\r\n', 'TIMBER TAN/AVIATOR NAVY', 'jacket'),
(9, 'mens-jacket-4.jpg', 'The North Face Men\'s Pardee Insulated Jacket', '110', 'Standard fit\r\n100 g Heatseeker™ Eco recycled insulation for warmth even in wet weather\r\nInspired, iconic colorblocking on front and back yoke in select colorways\r\nExposed, VISLON® center front zip\r\nKnit collar and cuffs\r\nCovered, secure-zip, welt hand pockets\r\nEmbroidered logo on left chest and back-right shoulder', 'TNF BLACK', 'jacket'),
(10, 'mens-jacket-5.jpg', 'The North Face Men\'s Pullover hooded jacket', '120', 'Relaxed fit\r\nHigh-pile, 300-weight Campshire Sherpa fleece\r\nLow-profile, reverse-coil quarter zip\r\nSide-entry, secure-zip kangaroo hand pocket\r\nWoven elbow patches for added durability\r\nElastic-bound hood, center front zip and cuffs\r\nLogo patch on left chest', 'BRANDY BROWN/AVAIATOR NAVY', 'jacket'),
(11, 'women-jacket-1.jpg', 'The North Face Women\'s Resolve 2 Shell Jacket', '138', 'Weatherproof rain jacket with breathable mesh lining\r\nCenter front stormflap with Velcro® closure\r\nRelaxed Fit\r\nCovered, secure-zip hand pockets\r\nWaterproof, breathable, seam-sealed DryVent™ 2L jacket with mesh drop liner\r\nElastic-bound cuffs\r\nHem cinch-cord\r\nAdjustable hood stows in collar\r\nBack panel kicker\r\nImported\r\nMachine Wash', 'GREEN', ''),
(12, 'women-jacket-2.jpg', 'The North Face Women\'s Resolve 2 Shell Jacket', '89', 'Weatherproof rain jacket with breathable mesh lining\r\nRelaxed Fit\r\nWaterproof, breathable, seam-sealed DryVent™ 2L jacket with mesh drop liner\r\n100% windproof fabric\r\nAdjustable hood stows in collar\r\nCenter front stormflap with Velcro® closure\r\nCovered, secure-zip hand pockets\r\nElastic-bound cuffs\r\nHem cinch-cord\r\nBack panel kicker', 'IMPATIENS PINK K47', 'jacket'),
(13, 'women-jacket-3.jpg', 'The North Face Women\'s Eco Venture Jacket', '93', 'Unlined, weatherproof rain jacket for year-round use\r\nStormflap with Velcro® closure covers front zipper\r\nRelaxed Fit\r\nCovered, secure-zip hand pockets\r\nWaterproof, breathable, fully seam-sealed DryVent™ 2.5L shell\r\nPit-zip venting for added breathability\r\nHem cinch-cord\r\nAdjustable hood\r\nStowable in hand pocket\r\nImported', 'WILD ASTER PURPLE ZDN', 'jacket'),
(14, 'women-jacket-4.jpg', 'The North Face Women\'s Resolve II Shell jacket', '75', 'Standard fit\r\nWaterproof, breathable, seam-sealed DryVent 2L shell with mesh lining\r\n100% windproof\r\nUpdated fit and design\r\nImproved shaping\r\nStowable hood packs into collar\r\nStormflap with Velcro® closure covers the center front zip\r\nEncased-elastic detail at side waist\r\nCovered, zippered hand pockets\r\nElastic-bound cuffs', 'TNF MEDIUM GREY HEATHER DYY', 'jacket'),
(15, 'women-jacket-5.jpg', 'The North Face Women\'s Dryzzle Jacket', '45', 'Standard fit\r\nBreathable-waterproof, seam-sealed FUTURELIGHT™ 3L shell with a soft, recycled, stretch-woven face and recycled, stretch-knit backer for warmth and comfort\r\n100% windproof fabric\r\nAttached, fully adjustable hood\r\nLaminated stormflap with snap closure at top collar and hem covers the center front zip\r\nExposed, matte polyurethane (PU) chest pocket zip\r\nCovered, secure-zip hand pockets\r\nAdjustable Velcro® cuff tabs\r\nHem cinch-cord\r\nSlight drop-tail hem\r\nRecycled content by weight: solid colorways are rated “best”; heather colorways are rated “better”', 'TNF BLACK JK3', 'jacket'),
(16, 'women-hoodie-1.jpg', 'Puma Women\'s Plus Size Rival Hoodie', '67', 'Super-soft, lightweight Terry with brushed interior for added warmth\r\nMaterial wicks sweat & dries really fast\r\n4-way stretch construction moves better in every direction\r\nScuba neck hood construction with drawcord adjust\r\nFront kangaroo pocket\r\nDrop hem shoulder\r\nGradient wordmark taping details\r\nFit & Care: Machine wash cold with like colors, use only non-chlorine bleach when needed, tumble dry low, do not iron, do not use softeners, do not dry clean', 'BLACKBLACK', 'hoodie'),
(17, 'women-hoodie-2.jpg', 'PUMA Women\'s essentials Logo Hoodie', '90', 'PUMA Essentials Logo Hoodie. Rock a look essential to your everyday style. With a crisp, clean design and a classic fit, the Essentials Logo Hoodie is perfect for every occasion.\r\nNo. 1 Logo rubber print\r\nJersey lined hood with drawcord for an adjustable fit\r\nKangaroo pocket for a convenient storage solution\r\nRib cuffs and waistband\r\nRegular fit\r\nMade with recycled polyester', 'BLACK', 'hoodie'),
(18, 'women-hoodie-3.jpg', 'PUMA Women\'s sportswear Amplified Hoodie', '105', 'PUMA No.1 logo rubber print\r\nPrinted tape on the sleeves with repeated Puma No. 1 Logo\r\nRib cuffs\r\nRelaxed fit\r\nMade with cotton from Better Cotton Initiative\r\nMade with OEKO-TEX®Standard\r\nSPECIFICATIONS\r\n', 'PUMA BLACKPUMA BLACK', 'hoodie'),
(19, 'women-hoodie-4.jpg', 'PUMA Women\'s sporstwear Logo Fleece Hoodie', '117', 'No.1 logo pigment print\r\nRegular fit\r\nJersey lined hood with drawcord for an adjustable fit\r\nKangaroo pocket for a convenient storage solution\r\nRib cuffs and hem', 'OXGLOVEFOXGLOVE', 'hoodie'),
(20, 'women-hoodie-5.jpg', 'PUMA Women\'s sportswear logo metallic hoodie', '103', 'No.1 logo metallic print\r\nCropped fit\r\nMaterial: 32% Polyester / 68% Cotton', 'PUMA WHITE - SILVERPUMA WHITE SILVER', 'hoodie'),
(21, 'women-running-shoes.jpg', 'Under Armour Women\'s Charged Escape 3 Running shoes', '81', 'Engineered mesh upper is lightweight & breathable\r\nFirm external heel counter for additional support that keeps the back of the foot locked in place\r\nMolded Comfort Collar locks in the heel with a soft, plush feel for zero distractions\r\nFull-length molded sockliner forms to the foot, eliminating slippage & providing ideal underfoot comfort\r\nCharged Cushioning midsole is firmer in the heel & softer in the forefoot for support & comfort\r\nTPU midsole shank for added stability & support\r\nRubber outsole provides full ground contact with deep flex grooves for flexibility where you need it\r\nRubber outsole provides full ground contact with deep flex grooves for flexibility where you need it\r\nNeutral: For runners who need a balance of flexibility & cushioning', 'BLACK/WHITE', 'shoes'),
(22, 'women-running-shoes-2.jpg', 'Under Armour Women\'s Charged Impulse Knit Running Shoes', '99', 'Neutral: For runners who need a balance of flexibility & cushioning\r\nFully knit upper for a breathable, compression-like fit that delivers lightweight directional strength\r\nDual-layer Charged Cushioning® midsole with minimal outsole rubber for the ultimate cushioned, flexible & lightweight ride\r\nSolid rubber outsole covers high impact zones for greater durability with less weight\r\nReflective details for greater visibility on low-light runs', 'BLK/WHT/IRIDES', 'shoes'),
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
(36, 'kids-swim-1.jpg', 'Nike Girls\' Cheetah Spiderback Midkini Set', '52', 'SPIDER BACK DESIGN for freedom of movement\r\nERGONOMIC ENHANCED FIT designed for the young athlete\r\nSTANDARD BOTTOM COVERAGE - Standard bottom coverage that\'s ideal for all water activities\r\n\r\nDry Instructions: Dry Flat\r\nIron Instructions: Do Not Iron\r\nLining: 100% Polyester\r\nLining Fabric Type: Woven\r\nNumber of Side Pockets: 0\r\nPocket Closure Type(s): No Pocket Closure\r\nPocket Type(s): No Pocket\r\nPrimary fabric: 82% Nylon / 18% Spandex\r\nPrimary Fabric Type: Woven\r\nSwimsuit Type: Bikini Set\r\nWash Instructions: Machine Wash', 'BLACK', 'swimwear'),
(37, 'kids-swim-2.jpg', 'Nike Girls\' Butterfly Crossback Two Piece Tankini', '52', 'ERGONOMIC ENHANCED FIT designed for the young athlete\r\nT-BACK DESIGN for freedom of movement\r\nSTANDARD BOTTOM COVERAGE - Standard bottom coverage that\'s ideal for all water activities\r\nDry Instructions: Dry Flat\r\nIron Instructions: Do Not Iron\r\nLining: 100% Polyester\r\nLining Fabric Type: Woven\r\nNumber of Side Pockets: 0\r\nPocket Closure Type(s): No Pocket Closure\r\nPocket Type(s): No Pocket\r\nPrimary fabric: 82% Nylon / 18% Spandex\r\nPrimary Fabric Type: Woven\r\nSwimsuit Type: Tankini Set\r\nWash Instructions: Machine Wash', 'BRIGHT CRIMSONBRIGHT CRIMSON', 'swimwear'),
(38, 'kids-swim-3.jpg', 'Nike Girls\' Core Solid Fastback One Piece Swimsuit', '58', 'Tight fit helps you feel fast, confident and supported\r\nFlat seams for reduced chafing\r\nNike hydrastrong fabric provides long-lasting durability, swim after swim\r\nEmbroidered Swoosh\r\nBody: 53% Polyester / 47% Polybutylene Terephthalate\r\nLining: 50% Recycled Polyester 50% Polyester', 'WATERMELONWATERMELON', 'swimwear'),
(39, 'kids-swim-4.jpg', 'Nike Girls\' Butterfly Crossback One Piece Swimsuit', '52', 'T-BACK DESIGN for freedom of movement\r\nERGONOMIC ENHANCED FIT designed for the young athlete\r\nSTANDARD BOTTOM COVERAGE - Standard bottom coverage that\'s ideal for all water activities\r\nDry Instructions: Dry Flat\r\nIron Instructions: Do Not Iron\r\nLining: 100% Polyester\r\nLining Fabric Type: Woven\r\nNumber of Side Pockets: 0\r\nPocket Closure Type(s): No Pocket Closure\r\nPocket Type(s): No Pocket\r\nPrimary fabric: 82% Polyester / 18% Spandex\r\nPrimary Fabric Type: Woven\r\nSwimsuit Type: One-Piece\r\nWash Instructions: Machine Wash', 'BLACKBLACK', 'swimwear'),
(40, 'kids-swim-5.jpg', 'Nike Girls\' Hydroguard', '42', 'Dri-FIT TECHNOLOGY helps keep you dry and comfortable\r\nUV PROTECTION from the sun on areas covered (UPF 40+)\r\nINTERNAL NECK TAPE offers added comfort against the skin\r\nDry Instructions: Dry Flat\r\nIron Instructions: Do Not Iron\r\nLining Fabric Type: Unlined\r\nNumber of Side Pockets: 0\r\nPocket Closure Type(s): No Pocket Closure\r\nPocket Type(s): No Pocket\r\nPrimary fabric: 91% Polyester / 9% Spandex\r\nPrimary Fabric Type: Woven\r\nSwimsuit Type: Rash Guard\r\nWash Instructions: Machine Wash', 'FUCHSIA GLOWFUCHSIA GLOW', 'swimwear'),
(41, 'women-shorts-1.jpg', 'Nike Pro Women\'s 365 5 Inch Shorts', '35', 'Sweat-Wicking Support - Stretchy fabric with Dri-FIT technology helps keep you feeling dry, comfortable and supported\r\nSupportive Coverage - The mid-rise design has a wide elastic waistband that wraps your core in supportive comfort\r\nCut for Focus - The curved seam at the back and seams placed toward the back highlight your natural lines while reducing distractions\r\nTight fit for a body-hugging feel\r\nMaterial: 78% Polyester / 22% Spandex\r\nInseam: 5 Inch', 'BLK/WHTE', 'shorts'),
(42, 'women-shorts-2.jpg', 'Nike Sportswear Women\'s Essential Bike Shorts', '42', 'Sweat-Wicking Comfort - This soft and stretchy fabric helps wick sweat away from your body to help keep you feeling cool and dry throughout the day\r\nMid-Rise Design - A contoured mid-rise design offers a comfortable fit that sits just below your belly button\r\nSimple Swoosh - An embroidered Swoosh on the leg helps show your love for the brand\r\nTight fit for a body-hugging feel\r\nMaterial: 61% Cotton / 33% Polyester / 6% Spandex', 'BLACK', 'shorts'),
(43, 'women-shorts-3.jpg', 'Nike Sportswear Women\'s Essential Shorts', '48', 'Lightweight Comfort - Soft French terry fabric is perfect for warm weather. Slight curve at the side seam adds fun, fresh style\r\nCustom Fit - Elastic waistband with drawcord offers adjustable comfort\r\nOpen hand pockets\r\nBody: 80% Cotton / 20% Polyester\r\nPocket Bags: 100% Cotton\r\nModel is 5’3” and wearing a size Small', 'BLACK/WHITE', 'shorts'),
(44, 'women-shorts-4.jpg', 'Nike Women\'s The Yoga Luxe 7 Inch Shorts', '55', 'Luxurious Feel - Infinalon fabric is an infinitely comfortable and incredibly stretchy new material that feels so good you’ll want to wear it everywhere. Thinner, lighter and even stronger than our traditional yarns, Infinalon feels irresistibly soft and smooth while providing a gentle, compressive feel that hugs your body so you can breathe, stretch and move without limits\r\nSweat-Wicking Power - Dri-FIT technology moves sweat from your skin for quicker evaporation to help you stay dry and comfortable\r\nConfident Coverage - The high-waisted design has a slight V-shape on the back to contour to your natural lines and let you move confidently as you bend and stretch\r\nTight fit for a body-hugging feel', ' BLACK/DK SMOKE GREYBLACK/DK SMOKE GREY', 'shorts'),
(45, 'women-shorts-5.jpg', 'Nike Women\'s Flex 2 In 1 Shorts', '48', 'Flexible Outer Layer - The woven outer shorts are made with Nike Flex fabric that stretches with your body, helping you get the most out of your performance—without getting in your way\r\nBody-Hugging Beneath - The sweat-wicking, stretchy inner shorts help keep you feeling dry, supported and confident during intense activity\r\nNike Dri-FIT technology helps you stay dry, comfortable and focused\r\nThe pocket on the right is big enough to hold a phone\r\nStandard fit outer shorts for a relaxed, easy feel\r\nJust Do It. repeat graphic at inner waist', 'BLACK/WHITEBLACK/WHITE', 'shorts'),
(46, 'men-pants-1.jpg', 'Nike Men\'s Therma Tapered Pants\r\n\r\n', '68', 'Nike Therma fabric helps keep you warm\r\nDri-FIT technology helps keep you dry and comfortable\r\nMedia pocket offers space for your electronic device\r\nSide pockets', '010 - BLACK/MTLC HEMATITE', 'pants'),
(47, 'men-pants-2.jpg', 'Nike Sportswear Men\'s Tech Fleece Jogger Pants', '130', 'Tech Fleece Fabric - Smooth on both sides, Tech Fleece offers premium warmth and an elevated look without adding weight or bulk\r\nTech Fleece Pocket - Bonded tape around the zippered pocket and at seam details are signature Tech Fleece details. Within the zippered pocket is an extra interior pocket to help keep your keys, cards and phone in place and easy to grab\r\nTapered Fit - Room in the thighs helps you move without restriction. Tapering at the knee provides a tailored look to help your sneakers shine\r\nElastic waistband with drawcord provides a snug fit\r\nSlim fit for a tailored feel\r\nRibbed cuffs and a tapered leg design\r\nMachine wash\r\n', 'GREYWOLF GREY/TURF ORANGE', 'pants'),
(48, 'men-pants-3.jpg', 'Nike Pro Men\'s Woven Pants', '100', 'Sweat-Wicking Warmth - Soft fleece with Dri-FIT technology moves sweat from your skin to help you stay warm, dry and comfortable\r\nAdjustable Coverage - A thin, adjustable elastic waistband and ribbed cuffs help keep the pants in place while you move\r\nHandy Storage - Front pockets with another zip pocket at the right keep your things close\r\nStandard fit for a relaxed, easy feel\r\n', '010 - BLACK', 'pants'),
(49, 'men-pants-4.jpg', 'Nike Men\'s Unlined Woven Utility Pants', '104', 'Woven Fabric - Lightweight and durable, this smooth, unlined fabric offers a premium look and feel perfect for everyday wear\r\nPersonalize the Fit - An elastic waistband and adjustable drawcord let you personalize the fit and coverage. Nike branded metal drawcord tips deliver a premium feel\r\nUtility Details - Patch back pockets complete with pull tabs provide convenient storage for your wallet and phone. Front hand pockets offer quick storage for other essentials. A slightly tapered leg design provides a clean look ready for everyday wear\r\nStandard fit for a relaxed, easy feel', 'BLACK/ICE SILVER/WHITE/(WHITE)STONE/ICE SILVER/WHITE/(WHITE)', 'pants'),
(50, 'men-pants-5.jpg', 'Nike Sportswear Men\'s Club BB Pants', '55', 'Brushed-back fleece fabric feels soft and smooth\r\nElastic waistband with an adjustable drawcord lets you personalize the fit\r\nOpen hem allows pants to rest comfortably over shoes\r\nVendor Style Number: BV2707-010\r\n80% Cotton / 20% Polyester', ' BLACK', 'pants'),
(51, 'women-leggings-1.jpg', 'Nike Women\'s One Mid-Rise 2.0 Tights', '68', 'Work Out. Stay Dry - Stretchy fabric with Dri-FIT technology moves sweat from your skin for quicker evaporation to help you stay dry and comfortable\r\nWork It. Feel Confident - Soft fabric stays opaque to help keep you confidently covered, whether you\'re reaching for groceries or bending into a squat. The sides are seamless and the waistband is contoured with a V shape on the back to give you a smooth silhouette\r\nWork Smart. Stay Ready - The design includes 2 hidden pockets in the mid-rise waistband to keep you ready for whatever you tackle in a day. The pocket at the back is big enough to hold a phone\r\nTight fit for a body-hugging feel\r\nFull length', 'BLACK/WHITEBLACK/WHITE', 'leggings'),
(52, 'women-leggings-2.jpg', 'Nike Sportswear Women\'s Essential Legging Futura Tights\r\n', '55', 'Sweat-Wicking Comfort - This soft and stretchy fabric helps wick sweat away from your body to help keep you feeling cool and dry throughout the day\r\nHigh-Rise Design - A contoured high-rise design sits higher on your hips for body-conforming comfort\r\nStretch Waistband - A stretch waistband provides a snug, comfortable feel\r\nPrinted graphic at the calf helps show love for the brand\r\nTight fit for a body-hugging feel\r\nMachine wash', 'BLACK/WHITEBLACK/WHITE', 'leggings'),
(53, 'women-leggings-3.jpg', 'Nike Pro Women\'s Therma Warm Tights', '64', 'Nike Therma fabric with a fleece interior feels warm and soft\r\nDri-FIT technology helps you stay dry and comfortable\r\nMinimal seams create a sleek silhouette\r\nTight fit for a body-hugging feel\r\nElastic waistband\r\nFull length\r\nBody: 80% Polyester / 20% Spandex\r\nGusset Lining: 100% Polyester', 'BLACK', 'leggings'),
(54, 'women-leggings-4.jpg', 'Nike Pro Women\'s 365 Tights', '64', 'Nike Dri-FIT technology helps you stay dry, comfortable and focused\r\nA wide, smooth mid-rise waistband feels supportive around your core\r\nVentilated mesh panels along the back of the lower legs create airflow for breathability\r\nTight fit for a body-hugging feel\r\nMid rise\r\nMaterial: 78% Polyester / 22% Spandex', 'BLACK/WHITEBLACK/WHITE', 'leggings'),
(55, 'women-leggings-5.jpg', 'Nike Women\'s One Mid-Rise Crop Tights', '64', 'Work Out. Stay Dry. - Stretchy fabric with Dri-FIT technology moves sweat from your skin for quicker evaporation to help you stay dry and comfortable\r\nWork It. Feel Confident. - Soft fabric stays opaque to keep you confidently covered, whether you\'re reaching for groceries or bending into a squat. The sides are seamless and the waistband is contoured with a V shape on the back to give you a smooth silhouette\r\nWork Smart. Stay Ready. - The design includes 2 hidden pockets in the mid-rise waistband to keep you ready for whatever you tackle in a day. The pocket at the back is big enough to hold a phone\r\nTight fit for a body-hugging feel\r\nCropped length\r\nMid rise', 'BLACK/WHITEBLACK/WHITE', 'leggings');

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
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
(26, 26, 3),
(27, 27, 3),
(28, 28, 3),
(29, 29, 3),
(30, 30, 3),
(31, 31, 3),
(32, 32, 3),
(33, 33, 3),
(34, 34, 3),
(35, 35, 3),
(36, 36, 3),
(37, 26, 3),
(38, 27, 3),
(39, 28, 3),
(40, 40, 3),
(41, 41, 2),
(42, 42, 2),
(43, 43, 2),
(44, 44, 2),
(45, 45, 2),
(46, 46, 1),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 2),
(52, 52, 2),
(53, 53, 2),
(54, 54, 2),
(55, 55, 2),
(56, 9, 1),
(57, 10, 1);

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
  `user_level` int(5) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_level`) VALUES
(1, '', 'admin', 'admin123', '', '2021-05-27 13:23:11', '::1', 1),
(2, '', 'add', 'add', '', '2021-06-01 02:25:53', 'no', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

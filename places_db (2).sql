-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 04:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `places_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1_users_schema', 1, '2021-12-29 07:09:17'),
(2, '2_places_schema', 1, '2021-12-29 07:09:17'),
(3, '3_review_schema', 1, '2021-12-29 07:09:17'),
(4, '4_favorites_schema', 1, '2021-12-29 07:09:17'),
(5, '5_recommended_place_schema', 1, '2021-12-29 07:09:17'),
(6, '6_recommended_place_detail_schema', 2, '2021-12-29 07:09:55'),
(7, '7_recommeded_trip_schema', 2, '2021-12-29 07:09:55'),
(8, '8_recommeded_trip_detail_schema', 2, '2021-12-29 07:09:55'),
(9, '9_vdo_schema', 2, '2021-12-29 07:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` varchar(255) NOT NULL,
  `places_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `img_places` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `lat`, `lng`, `detail`, `img_places`, `category`, `created_at`, `updated_at`) VALUES
('22bc0fd1-3619-4232-9c91-acdde16a2ce2', 'วัดโมลีโลกยารามราชวรวิหาร', 13.741209, 100.489578, '<h1><span style=\"color: #ff6600;\">วัดโมลีโลกยารามราชวรวิหาร</span></h1>\r\n<p>วัดเก่าแก่ที่มีมาตั้งแต่สมัยอยุธยา เดิมเรียกกันว่า<strong>&nbsp;\"วัดท้ายตลาด\"</strong>&nbsp;ด้วยความที่อยู่ต่อจากตลาดเมืองธนบุรี จนเมื่อพระเจ้าตากสินมหาราชทรงมาสร้างพระราชวัง ก็ได้อาณาบริเวณยาวลงมาครอบคลุมถึงวัดแห่งนี้ด้วย และกลายเป็นวัดในเขตพระราชฐานในพระราชวังกรุงธนบุรี&nbsp; ภายในวัดจะมีฉางเกลือ หรือ ที่เก็บเกลือ ซึ่งในอดีตเกลือมีความสำคัญมากในการถนอมอาหารรูปแบบต่าง ๆ เพื่อเก็บอาหารไว้กินในช่วงสงคราม จนเมื่อเกลือเริ่มหมดความสำคัญลง ซึ่งปัจจุบันกลายเป็นพระวิหารลักษณะทรงไทยผสมจีน มีพระพุทธรูปปางมารวิชัยขนาดใหญ่ และพระอัครสาวกประดิษฐานอยู่ภายในพระวิหาร</p>\r\n<p>&nbsp;</p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/temple%2F%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B9%82%E0%B8%A1%E0%B8%A5%E0%B8%B5%E0%B9%82%E0%B8%A5%E0%B8%81%E0%B8%A2%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%A1%E0%B8%A3%E0%B8%B2%E0%B8%8A%E0%B8%A7%E0%B8%A3%E0%B8%A7%E0%B8%B4%E0%B8%AB%E0%B8%B2%E0%B8%A3.jpg?alt=media&token=cb6492a8-4ce1-4659-8f08-33e69d546a88\"]', 'temple', '2022-01-17 12:18:20', '2022-01-17 12:18:20'),
('4b94df9c-ac10-40ed-8607-b11922c38e4c', 'วัดอมรินทรารามวรวิหาร', 13.757906, 100.483256, '<h1><span style=\"color: #ff6600;\"><strong>วัดอมรินทรารามวรวิหาร</strong></span></h1>\r\n<p>วัดที่มีความสำคัญทางด้านประวัติศาสตร์ โดยเฉพาะในช่วงสมัยสงครามโลกครั้งที่ 2 ภายในประกอบด้วยโบราณสถานสำคัญต่าง ๆ ได้แก่ ตำหนักเขียว พระปรางค์ มณฑปพระพุทธบาทจำลอง และที่สำคัญที่สุดคือ หลวงพ่อโบสถ์น้อย ซึ่งเป็นที่เคารพนับถือของชาวพุทธเป็นอย่างมาก นับว่าเป็นปูชนียวัตถุที่สำคัญ เป็นมิ่งขวัญและเป็นที่พึ่งทางใจของชาวเมืองธนบุรี ที่ไม่ว่าใครก็ตามที่สัญจรผ่านไปมาบนสะพานอรุณอัมรินทร์ เป็นต้องยกมือไหว้กันแทบทุกคน<strong><img src=\"https://img-prod.api-onscene.com/cdn-cgi/image/format=auto%2Cwidth=1600%2Cheight=900/https://sls-prod.api-onscene.com/partner_files/trueidintrend/232567/S__7675947.jpg\" /><img src=\"https://sls-prod.api-onscene.com/partner_files/trueidintrend/232567/S__7675960.jpg\" alt=\"หลวงพ่อโบสถ์น้อย\" /></strong></p>\r\n<p>ความเชื่อและความศักดิ์สิทธิ์ขององค์หลวงพ่อโบสถ์น้อยมีมากมายนับไม่ถ้วน กลายเป็นตำนานเล่าขานที่บอกต่อ ๆ กันมา ส่วนหนึ่งเชื่อว่ามาจากเมื่อครั้งระหว่างสงครามโลกครั้งที่ 2 ซึ่งองค์หลวงพ่อโบสถ์น้อยได้รับความเสียหายเพียงเล็กน้อยจากแรงระเบิด จะมีก็แต่พระเศียรขององค์หลวงพ่อร้าวเท่านั้นเอง เหตุการณ์เหล่านี้กลายเป็นที่กล่าวขานในเหตุอัศจรรย์ดังกล่าว ซึ่งมีประชาชนทั่วไปให้ความศรัทธาและเลื่อมใสองค์หลวงพ่อโบสถ์น้อยเป็นจำนวนมาก</p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/temple%2F%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%AD%E0%B8%A1%E0%B8%A3%E0%B8%B4%E0%B8%99%E0%B8%97%E0%B8%A3%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%A11.jpg?alt=media&token=c465df67-0d57-4b23-a5d5-af25967dbbe3\"]', 'temple', '2022-01-17 12:40:18', '2022-01-17 12:40:18'),
('8254af5e-66a9-4a24-991d-121531936aff', 'ไอคอนสยาม เขตคลองสาน', 13.726694, 100.510498, '<p>ไอคอนสยาม มีขนาดพื้นที่ 750,000 ตารางเมตร ริมแม่น้ำเจ้าพระยา เขตคลองสาน ประกอบด้วย ไอคอนสยาม (Main retails &amp; Entertainment) พื้นที่ 500,000 ตารางเมตร และ ไอคอนลักซ์ (Luxury Wing) พื้นที่ 25,000 ตารางเมตร รวบรวมแบรนด์เนมชั้นนำที่จะเป็น Flagship Stores ขนาดใหญ่ที่สุดในประเทศไทย และคอนโดมิเนียมพักอาศัยมาตรฐานระดับโลก 2 อาคาร คือ แมกโนเลียส์ วอเตอร์ฟร้อนท์ เรสซิเดนซ์ ณ ไอคอนสยาม และ เดอะ เรสซิเดนซ์ แอท แมนดาริน โอเรียนเต็ล กรุงเทพฯ</p>\r\n<p><img src=\"https://iconsiam-aws-s3-prod.s3.ap-southeast-1.amazonaws.com/assets/e5cddb57c1e8649e4759c9e98563f313.jpg\" /></p>\r\n<p>ตัวอาคาร ไอคอนสยามและไอคอนลักซ์ ได้รับแรงบันดาลใจในการออกแบบมาจากรูปทรงของกระทง บายศรี และสไบของไทย โดยบริษัท Urban Architects ออกแบบออกมาได้อย่างงดงามสมบูรณ์แบบ</p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/landmark%2Flandmark.jpeg?alt=media&token=7548e77c-ce89-4394-95d4-c4bfcda9425e\",\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/landmark%2Ficon2.jpeg?alt=media&token=4b98eae0-0021-4283-ba95-cd31c73a102c\"]', 'landmark', '2021-12-29 08:50:56', '2021-12-29 08:50:56'),
('a6027f28-58a1-4752-b589-23026b9e0f70', 'วัดระฆังโฆสิตารามวรมหาวิหาร', 13.752683, 100.485485, '<h1><span style=\"color: #ff6600;\">วัดระฆังโฆสิตารามวรมหาวิหาร</span></h1>\r\n<p>&nbsp; วัดโบราณที่มีมาตั้งแต่ครั้งกรุงศรีอยุธยา แต่เดิมชื่อ&nbsp;<strong>\"วัดบางหว้าใหญ่\"</strong>&nbsp;จนต่อมาในรัชกาลที่ 1 มีการขุดค้นพบระฆังโบราณในเขตวัด ประชาชนทั่วไปจึงเรียกวัดระฆังตั้งแต่นั้นมา เป็นอีกหนึ่งวัดที่มีชื่อเสียงที่สุดแห่งหนึ่งในย่านฝั่งธนบุรี มีพุทธศาสนิกชนจำนวนไม่น้อยเดินทางมาทำบุญกันที่นี่เป็นจำนวนมาก ยิ่งวันเสาร์-อาทิตย์ด้วยแล้ว ยิ่งหนาตากว่าทุกวัน โดยภายในวัดประกอบไปด้วยศาสนสถานสำคัญมากมาย</p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/temple%2F%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%A3%E0%B8%B0%E0%B8%86%E0%B8%B1%E0%B8%87.jpg?alt=media&token=5812e6fe-aa49-47dd-96e4-21d5d61d038c\"]', 'temple', '2022-01-17 13:06:24', '2022-01-17 13:06:24'),
('f17bd85c-4833-48d6-8d03-6dbd943f5bae', 'วัดกัลยาณมิตรวรมหาวิหาร', 13.739885, 100.491359, '<div>\r\n<h1><span style=\"color: #ff6600;\">วัดกัลยาณมิตร</span></h1>\r\n<div>วัดกัลยาณมิตร หรือ วัดกัลยาณ์ เป็นพระอารามหลวงชั้นโท ชนิดวรมหาวิหาร เจ้าพระยานิกรบดินทร์มหินทรมหากัลยาณมิตร (โต) ต้นสกุลกัลยาณมิตร ได้อุทิศบ้านและที่ดินบริเวณใกล้เคียง สร้างเป็นวัดขึ้นเมื่อ พ.ศ. 2368 และน้อมเกล้าฯ ถวายเป็นพระอารามหลวง พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว พระราชทานนามว่า \"วัดกัลยาณมิตร\" และทรงสร้างพระวิหารหลวงและพระประธานพระราชทาน เป็นพระพุทธรูปองค์ใหญ่ ชื่อ พระพุทธไตรรัตนนายก หรือ หลวงพ่อโต</div>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.dpu.ac.th/dpuplace/upload/content/images/Picture74.jpg\" alt=\"วัดกัลยาณมิตรวรมหาวิหาร\" /></div>\r\n<div>&nbsp;</div>\r\n<div>หลวงพ่อโตเป็นที่เคารพสักการะอย่างสูง โดยเฉพาะในหมู่ชาวจีน เรียกชื่อแบบจีนว่า ซำปอฮุดกง หรือ ซำปอกง&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>พระอุโบสถเป็นที่ประดิษฐานพระพุทธรูปปางปาลิไลยก์ (ป่าเลไลย์) ภายในมีภาพจิตรกรรมฝาผนังแสดงพุทธประวัติ และแสดงชีวิตชาวบ้านในสมัยรัชกาลที่ 3 และยังมีหอพระธรรมมณเฑียรเถลิงพระเกียรติ เป็นที่เก็บพระไตรปิฎกสมัยรัชกาลที่ 4 หน้าวิหารหลวงเป็นหอระฆังที่เพิ่งสร้างใหม่ เก็บระฆังยักษ์ที่ใหญ่ที่สุดของไทย</div>\r\n</div>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/temple%2F%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%81%E0%B8%B1%E0%B8%A5%E0%B8%A2%E0%B8%B2%E0%B8%93%E0%B8%A1%E0%B8%B4%E0%B8%95%E0%B8%A3%E0%B8%A7%E0%B8%A3%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%A7%E0%B8%B4%E0%B8%AB%E0%B8%B2%E0%B8%A3.jpg?alt=media&token=b999fce3-b9b9-4d43-b696-ca2bec2946ce\"]', 'temple', '2022-01-17 12:35:08', '2022-01-17 12:35:08'),
('f739af5a-a71e-4184-a870-d0a8e3d5bd52', 'วัดอรุณ เขตบางกอกน้อย', 13.7434, 100.4892, '<h1>ประวัติความเป็นมาของวัดอรุณ</h1>\r\n<p>วัดอรุณราชวราราม เป็นวัดโบราณสร้างมาตั้งแต่สมัยอยุธยา ตั้งอยู่ทางทิศตะวันตกของฝั่งแม่น้ำเจ้าพระยา เดิมเรียกว่า \"วัดมะกอก\" ตามชื่อ ตำบลบางมะกอกซึ่งเป็นตำบลที่ตั้งวัด ภายหลังเปลี่ยนเป็น \"วัดมะกอกนอก\" เพราะมีวัดสร้างขึ้นใหม่ในตำบลเดียวกัน แต่อยู่ลึกเข้าไปในคลองบางกอก ใหญ่ชื่อ \"วัดมะกอกใน\" ต่อมาใน พ.ศ. ๒๓๑๐ เมื่อสมเด็จ พระเจ้าตากสินมหาราชม พระราชประสงค์จะย้ายราชธานีมาตั้ง ณ กรุงธนบุรีจึงเสด็จกรีฑาทัพล่องลงมาทาง ชลมารคถึงหน้าวัดมะกอกนอกนี้เมื่อเวลารุ่งอรุณพอดี จึงทรงเปลี่ยนชื่อวัดมะกอกนอกเป็น \"วัดแจ้ง\" เพื่อเป็นอนุสรณ์แห่งนิมิตที่ได้เสด็จมาถึงวัดนี้เมื่อเวลาอรุณรุ่ง&nbsp;</p>\r\n<p><img src=\"https://img.kapook.com/u/2021/sutasinee/12/5.jpg\" /></p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; ชื่อ \"วัดแจ้ง\" นี้ มีเรื่องสมเด็จฯ กรมพระยาดำรงราชานุภาพทูลสมเด็จฯ กรมพระยานริศรา นุวัตติวงศ์ไว้ว่า \"หม่อมฉันเคยเห็นแผนที่เมืองธนบุรีที่ฝรั่งเศสทำเมื่อรัชกาลสมเด็จพระนารายณ์ ในแผนที่นั้นมีแต่วัดเลียบกับวัดแจ้ง เวลานั้นยังเป็นชานป้อมใหญ่ ซึ่งอยู่ราวโรงเรียนราชินี เพราะฉะนั้นวัดโพธิ์เป็นวัดสร้างเมื่อล่วงรัชกาลสมเด็จพระนารายณ์มาแล้ว</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เมื่อพระเจ้าตากสินมหาราชโปรดให้ย้ายราชธานีจากกรุงศรีอยุธยามาตั้ง ณ กรุงธนบุรี และได้ทรงสร้างพระราชวังใหม่ มีการขยายเขตพระราชฐาน เป็นเหตุให้วัดแจ้งตั้งอยู่กลาง พระราชวังจึงไม่โปรดให้มีพระสงฆ์จำพรรษา</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;นอกจากนั้นในช่วงเวลาที่กรุงธนบุรีเป็นราชธานี ถือกันว่าวัดแจ้งเป็นวัดคู่บ้าน คู่เมือง เนื่องจากเป็นวัดที่ประดิษฐานพระแก้วมรกตและพระบาง ซึ่งสมเด็จพระยามหากษัตริย์ศึก (พระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลกมหาราช)ได้ไว้ในมณฑป และมีการสมโภชใหญ่ ๗ คืน ๗ วัน(ในปี พ.ศ. ๒๓๒๗ พระแก้วมรกตได้ย้ายมาประดิษฐาน ณ วัดพระศรีรัตนศาสดาราม ในพระบรมหาราชวัง ส่วนพระบางนั้นสมเด็จพระพุทธยอดฟ้าจุฬาโลกได้โปรดพระราชทานคืนไปนครเวียงจันทร์)</p>\r\n<p><img src=\"https://img.kapook.com/u/2021/sutasinee/12/3.jpg\" alt=\"วัดอรุณราชวราราม ราชวรมหาวิหาร\" /></p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;เมื่อพระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลก มหาราช รัชกาลที่ ๑ เสด็จเถลิงถวัลราชสมบัติ ได้โปรดให้สร้างพระนครใหม่ฝั่งตะวันออก ของแม่น้ำเจ้าพระยา และรื้อกำแพงพระราชวังกรุงธนบุรีออก วัดแจ้งจึงไม่ได้อยู่ในเขตพระราชวังอีกต่อไป พระองค์จึงโปรดให้วัดแจ้งเป็นวัดที่มี พระสงฆ์จำพรรษาอีกครั้งหนึ่ง นอกจากนั้นพระองค์ทรงมอบหมายให้สมเด็จ พระเจ้าลูกยาเธอเจ้าฟ้ากรมหลวงอิศรสุนทร (ร. ๒) เป็นผู้ดำเนินการปฏิสังขรณ์วัดแจ้ง แต่สำเร็จเพียงแค่กุฎีสงฆ์ก็สิ้นรัชกาลที่ ๑ ใน พ.ศ. ๒๓๕๒ เสียก่อน</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ต่อมาในรัชกาลพระบาทสมเด็จพระพุทธเลิศหล้านภาลัย รัชกาลที่ ๒ พระองค์ทรงดำเนินการปฏิสังขรณ์ต่อจนเสร็จ ทั้งได้ทรงปั้นหุ่นพระพุทธรูปด้วยฝีพระหัตถ์ และโปรดให้หล่อขึ้นประดิษฐานเป็นพระประธาน ในพระอุโบสถ และโปรดให้มีมหรสพสมโภชฉลองวัดในปี พ.ศ. ๒๓๖๓ แล้วโปรดพระราชทาน พระนามวัดว่า \"วัดอรุณราชธาราม\"&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; ถึงรัชกาลที่ ๔ พระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัว โปรดเกล้าฯ ให้บูรณปฏิสังขรณ์เพิ่มเติมอีก แล้วทรงเปลี่ยนชื่อวัดเป็น \"วัดอรุณราชวราราม\" ดังที่เรียกกันมาจนถึงปัจจุบัน</p>\r\n<p>&nbsp;</p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/temple%2Ftemple.jpeg?alt=media&token=d8de3b66-ad87-4263-a63a-de12dfaf5b3b\"]', 'temple', '2022-01-08 07:40:44', '2022-01-08 07:40:44'),
('f9464cba-5d46-4ac0-87a6-c66fe61e0d94', 'ร้าน Archie เขตธนบุรี', 13.732495858396193, 100.49496623180411, '<h1 class=\"single_post_title_main\">ชิมรสอร่อยไม่มีซ่อนเร้นที่ร้าน Archie ย่านวงเวียนใหญ่</h1>\r\n<p class=\"p2\"><span class=\"s1\">หากให้นิยามว่า</span><span class=\"s2\">&nbsp;&ldquo;Archie&rdquo; (</span><span class=\"s1\">อาร์ชชี่</span><span class=\"s2\">)&nbsp;</span><span class=\"s1\">คือร้านอาหารประเภทไหน</span>&nbsp;<span class=\"s1\">คงนิยามได้ยาก</span>&nbsp;<span class=\"s1\">หากบอกว่าเป็นร้านอาหารอิตาเลียนก็ไม่ผิดนัก</span>&nbsp;<span class=\"s1\">แต่หากบอกว่าเป็นคาเฟ่ที่เสิร์ฟกาแฟและขนมหวานรสอร่อยก็ถูกเช่นกัน</span>&nbsp;<span class=\"s1\">เพราะ</span><span class=\"s2\">&nbsp;Archie&nbsp;</span><span class=\"s1\">ร้านอาหารกึ่งคาเฟ่แห่งนี้เสิร์ฟความอร่อยของอาหารหลากหลายสัญชาติ</span>&nbsp;<span class=\"s1\">พร้อมด้วยความหลากหลายของประเภทอาหาร</span>&nbsp;<span class=\"s1\">ผ่านแนวคิดแบบ</span><span class=\"s2\">&nbsp;&lsquo;</span><span class=\"s1\">ตรงไปตรงมา</span><span class=\"s2\">&rsquo;&nbsp;</span><span class=\"s1\">ทั้งบรรยากาศ</span>&nbsp;<span class=\"s1\">รสชาติอาหาร</span>&nbsp;<span class=\"s1\">และราคา</span></p>\r\n<p class=\"p2\"><span class=\"s2\">Archie&nbsp;</span><span class=\"s1\">ร้านอาหารน้องใหม่ย่านวงเวียนใหญ่</span>&nbsp;<span class=\"s1\">ตั้งอยู่ปากซอยประชาธิปก</span><span class=\"s2\">&nbsp;4&nbsp;</span><span class=\"s1\">ริมถนนประชาธิปก</span>&nbsp;<span class=\"s1\">ซึ่งหากใครขับรถผ่านไปมาบนถนนเส้นนี้คงสะดุดตากับอาคารสีน้ำเงินตัดด้วยกำแพงอิฐมอญสีส้มดูดิบเท่</span>&nbsp;<span class=\"s1\">ผนวกกับหน้าร้านที่เลือกใช้ผนังกระจกบานใหญ่ที่ทำให้มองเห็นบรรยากาศเท่ๆ</span>&nbsp;<span class=\"s1\">ภายใน</span></p>\r\n<p class=\"p2\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_02.jpg\" alt=\"Archie_02\" /></p>\r\n<p class=\"p2\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_05.jpg\" alt=\"Archie_05\" /></p>\r\n<p class=\"p2\"><span class=\"s1\">ภายในร้านตกแต่งสไตล์อินดัสเทรียลลอฟท์</span>&nbsp;<span class=\"s1\">โดยเน้นโทนสีน้ำเงินและผนังโชว์แนวดิบๆ</span>&nbsp;<span class=\"s1\">ทันทีที่ประตูจะสะดุดตากับผนังอิฐโชว์แนว</span>&nbsp;<span class=\"s1\">เติมจุดเด่นด้วยลังพลาสติกสีน้ำเงิน</span><span class=\"s2\">&nbsp;&ndash;&nbsp;</span><span class=\"s1\">เทา</span>&nbsp;<span class=\"s1\">เพ้นท์ชื่อร้าน</span>&nbsp;<span class=\"s1\">กลายเป็นความเท่แบบไม่ซ้ำใคร</span>&nbsp;<span class=\"s1\">โดยเบรกความดิบด้วยความอ่อนหวานจากแจกันดอกไม้สดที่จัดวางอย่างมีศิลปะ</span></p>\r\n<p class=\"p2\"><span class=\"s1\">ถัดจากผนังคือพื้นที่รองรับที่จัดสเปซให้ความเป็นส่วนตัวกับลูกค้า</span>&nbsp;<span class=\"s1\">โดยภายในร้านมีพื้นที่รองรับถึง</span><span class=\"s2\">&nbsp;2&nbsp;</span><span class=\"s1\">ชั้น</span>&nbsp;<span class=\"s1\">แต่หากใครอยากชมการอบพิซซ่าต้องเลือกนั่งชั้นหนึ่ง</span>&nbsp;<span class=\"s1\">พื้นที่ที่โดดเด่นด้วยเตาอบพิซซ่าขนาดใหญ่สีทองแดง</span>&nbsp;<span class=\"s1\">พร้อมด้วยบาร์นวดแป้งที่ทางร้านนวดแและอบสดใหม่แบบถาดต่อถาด</span>&nbsp;<span class=\"s1\">ซึ่งเป็นอีกหนึ่งไฮไลท์ของ</span><span class=\"s2\">&nbsp;Archie&nbsp;</span><span class=\"s1\">ที่ต้องการเสิร์ฟความอร่อยแบบสดใหม่ให้ลิ้มลอง</span></p>\r\n<p class=\"p2\"><span class=\"s1\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_06.jpg\" /></span><span class=\"s1\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_07.jpg\" /></span></p>\r\n<p class=\"p2\"><span class=\"s2\"><em>&ldquo;</em></span><span class=\"s1\">อาหารและเครื่องดื่มของที่นี่</span><em>&nbsp;</em><span class=\"s1\">เราคิดค้นและเลือกสรรมาจากความตั้งใจและใจรักในการกินดื่ม</span><em>&nbsp;</em><span class=\"s1\">บวกกับแนวคิดแบบตรงไปตรงมาของเรา</span><em>&nbsp;</em><span class=\"s1\">ทำให้เราเลือกวัตถุดิบที่มีคุณภาพ</span><em>&nbsp;</em><span class=\"s1\">ถ้าใส่ไปแล้วอร่อย</span><em>&nbsp;</em><span class=\"s1\">เราก็จะใส่เพื่อให้อาหารออกมาดีสมบูรณ์แบบที่สุด</span><em>&nbsp;</em><span class=\"s1\">ในแบบที่ทุกคนชอบ</span><em>&nbsp;</em><span class=\"s1\">อร่อย</span><em>&nbsp;</em><span class=\"s1\">และพอใจ</span><em>&nbsp;</em><span class=\"s1\">หลายๆ</span><em>&nbsp;</em><span class=\"s1\">ครั้งเราทำเรื่องยุ่งยาก</span><em>&nbsp;</em><span class=\"s1\">เช่น</span><em>&nbsp;</em><span class=\"s1\">เตาพิซซ่าเราจะใช้เตาฟืน</span><em>&nbsp;</em><span class=\"s1\">ไม่ได้ใช้แก๊ส</span><em>&nbsp;</em><span class=\"s1\">เพราะฟืนอบพิซซ่าได้หอมอร่อยกว่า</span><em>&nbsp;</em><span class=\"s1\">รวมถึงเตาย่างเราก็ใช้ฟืนเช่นกัน</span><span class=\"s2\"><em>&rdquo;</em>&nbsp;</span><span class=\"s1\">ข้อความที่ตีพิมพ์บนหน้าเมนูอาหาร</span>&nbsp;<span class=\"s1\">บอกเล่าถึงความตั้งใจของ</span><span class=\"s2\">&nbsp;Archie<em>&nbsp;</em></span><span class=\"s1\">ในการส่งต่อความสุขผ่านรสชาติอาหารที่อร่อย</span></p>\r\n<p class=\"p2\"><span class=\"s1\">เริ่มจากเมนูพิซซ่า</span>&nbsp;<span class=\"s1\">ซึ่งเป็นเมนูซิกเนเจอร์ของร้าน</span>&nbsp;<span class=\"s1\">แม้ว่าที่นี่จะเสิร์ฟพิซซ่าหน้าตาไม่คุ้นเคย</span>&nbsp;<span class=\"s1\">แต่รสชาติอร่อยถูกปากอย่างแน่นอน</span>&nbsp;<span class=\"s1\">เพราะทางร้านลงทุนส่งเชฟไปเรียนทำพิซซ่าจากต้นแบบ</span>&nbsp;<span class=\"s1\">พิซซ่าของที่นี่จึงเป็นพิซซ่าแป้งบางกรอบ</span>&nbsp;<span class=\"s1\">โดยจะนวดแป้งสดใหม่ทุกวัน</span>&nbsp;<span class=\"s1\">และอบด้วยเตาฟืนที่ทำให้พิซซ่าหอมอร่อย</span>&nbsp;<span class=\"s1\">เสมือนไปลิ้มลองจากต้นฉบับ</span></p>\r\n<p class=\"p2\"><span class=\"s1\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_08.jpg\" /><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_09.jpg\" /></span></p>\r\n<p class=\"p2\"><span class=\"s1\">ส่วนหน้าพิซซ่ามีหลากหลายให้เลือก</span>&nbsp;<span class=\"s1\">ซึ่งเราเลือกลิ้มลอง</span><span class=\"s2\">&nbsp;&ldquo;<strong>Pizza Carbonara&rdquo;</strong>&nbsp;(260&nbsp;</span><span class=\"s1\">บาท</span><span class=\"s2\">)&nbsp;</span><span class=\"s1\">พิซซ่าแป้งบางกรอบกับความหอมจากซอสคาโบนาร่า</span>&nbsp;<span class=\"s1\">ซีส</span>&nbsp;<span class=\"s1\">เบค่อน</span>&nbsp;<span class=\"s1\">และไข่แดง</span>&nbsp;<span class=\"s1\">แม้จะเป็นพิซซ่าหน้าตาคลาสสิก</span>&nbsp;<span class=\"s1\">แต่ความอร่อยต้องรอให้คุณมาลิ้มลองเอง</span>&nbsp;<span class=\"s1\">แล้วจะติดใจ</span>&nbsp;<span class=\"s1\">หรือจะสั่ง</span><span class=\"s2\">&nbsp;Pizza Salmone&nbsp;</span><span class=\"s1\">ที่เสิร์ฟความอร่อยของแป้งพิซซ่าควบคู่กับแซลม่อนรมควัน</span>&nbsp;<span class=\"s1\">ไวท์ซอส</span>&nbsp;<span class=\"s1\">เคเปอร์</span>&nbsp;<span class=\"s1\">แชะชีส</span>&nbsp;<span class=\"s1\">แนะนำพิซซ่าอีกหนึ่งหน้าพิเศษกับ</span><span class=\"s2\">&nbsp;Pizza Prociutto Di Parma&nbsp;</span><span class=\"s1\">ซึ่งประกอบด้วยซอสมะเขือเทศ</span>&nbsp;<span class=\"s1\">ชีส</span>&nbsp;<span class=\"s1\">และพาร์ม่าแฮม</span></p>\r\n<p class=\"p2\"><span class=\"s1\">ต่อกันด้วยเมนูเส้นที่เอาใจสายสปาเก็ตตี้กับ</span><span class=\"s2\">&nbsp;<strong>&ldquo;Spaghetti with Bacon</strong>&rdquo; (185&nbsp;</span><span class=\"s1\">บาท</span><span class=\"s2\">)&nbsp;</span><span class=\"s1\">เส้นสปาเก็ตตี้เหนียวนุ่มที่ปรุงในรสจัดจ้าน</span>&nbsp;<span class=\"s1\">เติมความกรุบกรอบผ่านเบค่อนทอด</span>&nbsp;<span class=\"s1\">แนะนำให้สั่งทานคู่กับ</span><span class=\"s2\">&nbsp;<strong>&ldquo;Chicken Lollipops&rdquo;</strong>&nbsp;(3&nbsp;</span><span class=\"s1\">ชิ้น</span><span class=\"s2\">&nbsp;140&nbsp;</span><span class=\"s1\">บาท</span><span class=\"s2\">&nbsp;/ 6&nbsp;</span><span class=\"s1\">ชิ้น</span><span class=\"s2\">&nbsp;260&nbsp;</span><span class=\"s1\">บาท</span><span class=\"s2\">)&nbsp;</span><span class=\"s1\">เมนูที่มีชื่อไทยน่ารักๆ</span>&nbsp;<span class=\"s1\">ว่า</span><span class=\"s2\">&nbsp;&lsquo;</span><span class=\"s1\">อมยิ้มไก่</span><span class=\"s2\">&rsquo;&nbsp;</span><span class=\"s1\">เพราะเสิร์ฟในรูปแบบอมยิ้ม</span>&nbsp;<span class=\"s1\">เคล็ดลับความอร่อยของเมนูนี้อยู่ที่ซอสสูตรลับเฉพาะของร้าน</span>&nbsp;<span class=\"s1\">กับการอบไก่จนได้เนื้อไก่นุ่มๆ</span>&nbsp;<span class=\"s1\">แบบไม่เหนียว</span></p>\r\n<p class=\"p2\"><span class=\"s1\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_10.jpg\" /></span></p>\r\n<p class=\"p2\"><span class=\"s1\">นอกจากเมนูแนะนำเหล่านี้แล้ว</span><span class=\"s2\">&nbsp;Archie&nbsp;</span><span class=\"s1\">ยังเสิร์ฟความอร่อยของอาหารประเภทอื่นๆ</span>&nbsp;<span class=\"s1\">อีกด้วย</span>&nbsp;<span class=\"s1\">ไม่ว่าจะเป็นเบอร์เกอร์ที่ได้เชฟสาวจากกอร์ดองเบลอมารังสรรค์ความอร่อย</span>&nbsp;<span class=\"s1\">หรือหากชอบเมนูรสไทยๆ</span>&nbsp;<span class=\"s1\">ที่นี่ยังมี</span><span class=\"s2\">&nbsp;Thai Stuff&nbsp;</span><span class=\"s1\">ไม่ว่าจะเป็น</span>&nbsp;<span class=\"s1\">ลาบเนื้อออสเตรเลีย</span><span class=\"s2\">,&nbsp;</span><span class=\"s1\">หมูทอดน้ำปลา</span><span class=\"s2\">,&nbsp;</span><span class=\"s1\">แหนมชุบเกล็ดทอด</span>&nbsp;<span class=\"s1\">ฯลฯ</span></p>\r\n<p class=\"p2\"><span class=\"s1\">นอกจากอาหารคาวอิ่มท้องแล้ว</span><span class=\"s2\">&nbsp;Archie&nbsp;</span><span class=\"s1\">ยังเสิร์ฟขนมหวานและเครื่องดื่มประเภทกาแฟ</span>&nbsp;<span class=\"s1\">ชา</span>&nbsp;<span class=\"s1\">และอื่นๆ</span>&nbsp;<span class=\"s1\">ให้เราแวะไปนั่งพักในวันว่าง</span>&nbsp;<span class=\"s1\">อาทิ</span><span class=\"s2\">&nbsp;Red Velvet Lava&nbsp;</span><span class=\"s1\">เค้กลาวา</span>&nbsp;<span class=\"s1\">เรดเวิลเว็ดที่หอมโกโก้</span>&nbsp;<span class=\"s1\">อุ่นร้อนๆ</span>&nbsp;<span class=\"s1\">เสริฟคู่กับไอศกรีม</span><span class=\"s2\">&nbsp;Soft Serve&nbsp;</span><span class=\"s1\">สูตรของร้าน</span>&nbsp;<span class=\"s1\">สั่งมาทานคู่กับกาแฟแก้วโปรดก็อร่อยไปอีกแบบ</span>&nbsp;<span class=\"s1\">ฯลฯ</span>&nbsp;<span class=\"s1\">และในคืนวันศุกร์</span><span class=\"s2\">&nbsp;Archie&nbsp;</span><span class=\"s1\">ยังเสิร์ฟความผ่อนคลายผ่านดนตรีสดสไตล์</span><span class=\"s2\">&nbsp;Accoustic&nbsp;</span><span class=\"s1\">ที่ให้เราฟังเพลินๆ</span>&nbsp;<span class=\"s1\">ระหว่างทานอาหารอีกด้วย</span></p>\r\n<p class=\"p2\"><img src=\"https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2018/03/Archie_11.jpg\" /></p>\r\n<h2 class=\"p2\">ข้อมูลติดต่อ</h2>\r\n<p><span class=\"s1\"><strong>Archie<br /></strong></span><span class=\"s1\"><strong>&bull; Open:</strong>&nbsp;</span><span class=\"s3\">เวลา</span><span class=\"s1\">&nbsp;12.00 &ndash; 22.00&nbsp;</span><span class=\"s3\">น</span><span class=\"s1\">.&nbsp;</span><span class=\"s3\">ปิดวันพุธ<br /></span><span class=\"s2\"><strong>&bull; Address:</strong>&nbsp;</span><span class=\"s1\">ซอยประชาธิปก</span><span class=\"s2\">&nbsp;4&nbsp;</span><span class=\"s1\">ถนนประชาธิปก</span>&nbsp;<span class=\"s1\">วงเวียนใหญ่<br /></span><span class=\"s1\"><strong>&bull; Tel:</strong>&nbsp;02 002 1233<br /></span><span class=\"s4\"><strong>&bull; Facebook:</strong>&nbsp;</span><span class=\"s1\"><a href=\"https://www.facebook.com/Archie-1732697840327342/\"><span class=\"s5\">https://www.facebook.com/Archie-1732697840327342</span></a></span></p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/restaurant%2F%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99Archie%2FArchie_11.jpg?alt=media&token=24d5006c-2e16-406d-88b4-d51ee60319ec\",\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/restaurant%2F%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99Archie%2FArchie_2.jpg?alt=media&token=f5f34bea-88a7-45ed-a233-982b236dda25\"]', 'restaurant', '2022-01-08 07:44:44', '2022-01-08 07:44:44'),
('f9e1998f-024f-4d4b-bb09-995c9ed1d127', 'ตลาดวังหลัง', 13.755195312814, 100.485241642176, '<h1><span style=\"color: #ff6600;\">ตลาดวังหลัง ศิริราช</span></h1>\r\n<p><strong>ตลาดนัดในกรุงเทพ ที่ต้องมาชิล</strong></p>\r\n<p>&nbsp; &nbsp; &nbsp; ตลาดวังหลังนั้น เป็นสถานที่เก่าแก่ที่มีมาตั้งแต่สมัยรุ่นปู่ย่าตายาย นานมาหลายต่อหลายรุ่นทีเดียวค่ะ ที่มาของชื่อเรียกติดปากว่า &ldquo;วังหลัง&rdquo; นั้น เพราะว่าแต่เดิมแล้วบริเวณที่ตั้งส่วนหนึ่งของตลาดในปัจจุบันคือ พระราชวังของสมเด็จเจ้าฟ้ากรมพระอนุรักษ์เทเวศร์กรมพระราชวังบวรสถานภิมุข ในสมัยรัชกาลที่ 1&nbsp;</p>\r\n<p>ถัดจากวังหลังลงไปทางวัดระฆังฯ เป็นตำบลสวนมังคุด ซึ่งมีวังที่ประทับเดิมของสมเด็จพระพี่นางเธอเจ้าฟ้ากรมพระยาเทพสุดาวดี และยังมีร่องรอยแนวกำแพงอิฐเก่าแก่อายุกว่าร้อยปีให้เห็นอยู่ด้วย&nbsp;และในปัจจุบันวังเก่าแห่งนี้ กลับกลายเปลี่ยนเป็นตลาดนัดที่มีของมากมายหลายหลากตั้งแต่สากกะเบือยันเรือรบเลยทีเดียว<img src=\"https://cms.dmpcdn.com/travel/2020/05/12/270f2d90-941d-11ea-90c4-73c466dc4865_original.JPG\" alt=\"ตลาดวังหลัง ศิริราช ตลาดนัดในกรุงเทพ\" /></p>\r\n<p><strong>ไม่ว่าใครที่ได้มีโอกาสมาใช้บริการที่โรงพยาบาลศิริราช</strong>&nbsp;ย่อมไม่พลาดที่จะไปเดินเที่ยวชมตลาดวังหลัง ย่านการค้าสุดคลาสสิก ที่มีทั้งสินค้าและร้านอาหารอร่อยมากมาย</p>\r\n<p>ตลาดวังหลังไม่ได้อยู่ใกล้แนวรถไฟฟ้าเสียทีเดียว แต่หากคุณต้องการมาเที่ยวและต้องการการเดินทางที่สะดวกรวดเร็วต้องนั่งรถไฟฟ้ามาลงที่สถานีสะพานตากสิน จากนั้นต่อเรือด่วนเจ้าพระยาที่ท่าเรือสาทรมาขึ้นที่ท่าวังหลัง ก็จะเข้าสู่พื้นที่ตลาดที่เต็มไปด้วยร้านค้าและผู้คนพลุกพล่าน</p>\r\n<p>บรรยากาศในตลาดแห่งนี้ไม่ต่างจากการเดินเที่ยวเล่นย่านคลองถม สำเพ็งเยาวราช แต่ต่างกันตรงที่ใกล้โรงพยาบาลเราจึงได้เห็นผู้สูงอายุที่มาเดินเที่ยวหลังพบแพทย์ รวมทั้งมีบรรดานักศึกษาแพทย์ พยาบาล และคุณหมอมาเดินเล่นกันเยอะสักหน่อย ถ้าเป็นช่วงเย็นก็จะเห็นนักศึกษาธรรมศาสตร์นั่งเรือข้ามฟากมาเที่ยวเล่นซื้อเสื้อผ้าชุดนักศึกษา</p>\r\n<p>สินค้าที่วางขายก็มีตั้งแต่ของใช้ส่วนตัวไม่ว่าจะเป็น เสื้อผ้า กระเป๋า รองเท้า จนถึงแกดเจ็ตรุ่นใหม่ๆ แถมราคายังสามารถต่อรองกันได้ ส่วนร้านค้าร้านอาหารที่มีชื่อเสียงก็มีหลายร้าน เช่น ร้านเบเกอรี่ขนมปังวังหลัง มากันแบบไส้ทะลักทะล้น แนะนำไส้ลูกเกด และไส้หมูหย็องอร่อยจนลืมไปเลยว่ายังอ้วนอยู่<img src=\"https://static.posttoday.com/media/content/2018/09/29/5F7DA746750F4D6F9FA7B1D548A7F6C2_1000.jpg\" /></p>\r\n<p>วังหลัง ก็เรียกชื่อตามตำแหน่งที่ตั้งของวังโดยยึดวังหลวงเป็นหลัก วังหลังก็จะอยู่ด้านหลังของวังหลวงโดยมีเจ้านายฝ่ายในเป็นผู้ดูแล เรียกว่าเป็นตำแหน่งวังหลัง ตามข้อมูลที่ได้จากราชบัณฑิตยสถาน ตำแหน่งวังหลังจะมีชื่อเรียกอย่างเป็นทางการคือ กรมพระราชวังบวรสถานพิมุข เป็นตำแหน่งรองจากกรมพระราชวังบวรสถานมงคล ถือศักดินา 1.5 หมื่นไร่</p>\r\n<p>มีหน้าที่ในการเสด็จไปปฏิบัติราชการสงครามแทนพระองค์ หรือตามพระบรมราชโองการของพระมหากษัตริย์ หรือถ้าพระมหากษัตริย์และกรมพระราชวังบวรสถานมงคลเสด็จฯ ในราชการสงคราม กรมพระราชวังบวรสถานพิมุขก็จะทรงทำหน้าที่รักษาพระนครให้เรียบร้อยแทนพระมหากษัตริย์ นอกจากนี้ก็ปฏิบัติงานตามแต่จะมีรับสั่ง</p>\r\n<p>มีการสถาปนาตำแหน่งนี้ครั้งแรกในรัชสมัยสมเด็จพระเพทราชาแห่งกรุงศรีอยุธยา และสืบต่อมาจนถึงรัชสมัยพระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลกมหาราชแห่งกรุงรัตนโกสินทร์ ซึ่งมีพระบรมราชโองการโปรดเกล้าฯ แต่งตั้งสมเด็จเจ้าฟ้ากรมหลวงอนุรักษ์เทเวศร์ เป็น กรมพระราชวังบวรสถานพิมุข ซึ่งเป็นพระองค์เดียวในสมัยรัตนโกสินทร์และเป็นพระองค์สุดท้าย&nbsp;</p>\r\n<p>ต่อมาเมื่อสมเด็จเจ้าฟ้ากรมหลวงอนุรักษ์เทเวศร์ กรมพระราชวังบวรสถานพิมุขเสด็จทิวงคตแล้ว ก็ไม่มีการแต่งตั้งผู้ใดขึ้นมาดำรงตำแหน่งนี้อีกเลย ทำให้วังหลังรกร้างลงไปจนกระทั่งปี 2429 พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว ทรงพระกรุณาโปรดเกล้าฯ ให้ดำเนินการก่อสร้างโรงพยาบาลเพื่อพระราชทานให้เป็นสถานที่รักษาแก่ประชาชนอย่างเท่าเทียมกัน จึงนำวังหลังซึ่งเป็นสถานที่รกร้างมาสร้างเป็นสถานพยาบาลรักษาผู้ป่วย ในชื่อโรงพยาบาลศิริราช</p>\r\n<p>แต่ชาวบ้านสมัยก่อนนิยมเรียกว่า&nbsp;โรงพยาบาลวังหลัง ตามชื่อที่ตั้ง จากนั้นก็ได้มีการเวนคืนที่ดินบางส่วนเพื่อขยายพื้นที่โรงพยาบาลสำหรับรองรับประชาชนที่เดินทางเข้ามารักษากันมากขึ้น</p>\r\n<figure class=\"article-img\"><a class=\"gallery-icon\" href=\"https://static.posttoday.com/media/content/2018/09/29/5DFD4FE1CD6B4E1A968EB72C7A63680B_1000.jpg\" data-fancybox=\"images-gallery\" data-type=\"image\" data-caption=\"\"><picture><source srcset=\"https://static.posttoday.com/media/content/2018/09/29/5DFD4FE1CD6B4E1A968EB72C7A63680B_1000.jpg\" media=\"(min-width: 300px)\" data-srcset=\"https://static.posttoday.com/media/content/2018/09/29/5DFD4FE1CD6B4E1A968EB72C7A63680B_1000.jpg\" /><img class=\"img-fluid lazyloaded\" src=\"https://static.posttoday.com/media/content/2018/09/29/5DFD4FE1CD6B4E1A968EB72C7A63680B_1000.jpg\" data-src=\"https://static.posttoday.com/media/content/2018/09/29/5DFD4FE1CD6B4E1A968EB72C7A63680B_1000.jpg\" /></picture></a></figure>\r\n<p>ในช่วงเวลาเดียวกันพื้นที่ที่อยู่บริเวณใกล้เคียงก็เริ่มพัฒนาให้เป็นอาคารพาณิชย์และตลาดเพื่อรองรับความต้องการของผู้คนที่สัญจรกันมากขึ้น จนกลายเป็นตลาดวังหลังที่เห็นอยู่ในปัจจุบัน</p>\r\n<p>อีกสิ่งหนึ่งที่ทำให้ตลาดวังหลังเป็นที่ชื่นชอบของนักท่องเที่ยวก็คือบรรยากาศโดยรอบที่อยู่ในย่านกรุงเก่า ผสานยุคใหม่ มีวิวริมแม่น้ำเจ้าพระยาที่สวยงาม&nbsp; อีกทั้งยังสามารถนั่งเรือไปเที่ยวจุดแลนด์มาร์คอื่นๆ ของกรุงเทพฯ ไม่ว่าจะเป็น วัดพระแก้ว วัดโพธิ์ วัดอรุณฯ และปิดท้ายด้วยร้านอาหารกลางคืนริมแม่น้ำเจ้าพระยาก็สามารถเดินทางได้สะดวกรวดเร็ว</p>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/market%2Fmarket.jpeg?alt=media&token=1273ee5a-51ec-4d67-b7b6-4731394e150f\"]', 'market', '2022-01-08 07:33:14', '2022-01-08 07:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `recommeded_trips`
--

CREATE TABLE `recommeded_trips` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img_cover` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recommeded_trip_details`
--

CREATE TABLE `recommeded_trip_details` (
  `id` varchar(255) NOT NULL,
  `ref_recommended` varchar(255) DEFAULT NULL,
  `img_place` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_places`
--

CREATE TABLE `recommended_places` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img_cover` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_place_details`
--

CREATE TABLE `recommended_place_details` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ref_recommended` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `img_places` text DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` varchar(255) NOT NULL,
  `places_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `img_profile` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `nick_name`, `img_profile`, `created_at`, `updated_at`) VALUES
('03d24e46-8661-4bfd-8669-4fb079dc98ec', 'ikool009@hotmail.com', '$2a$10$SD7pFd/LWf6ccbOznbSP9.MpcbazIdEviaI1wL5VFQExj2K30vV6a', NULL, NULL, NULL, 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2021-12-29 15:47:14', '2021-12-29 15:47:14'),
('508e47fc-5612-482f-92df-2dc7adc4ea0a', 'abc3@hotmail.com', '$2a$10$WZnQja.ROZzZiZ63WbE80.OZNCz7Ka0Kfpr7mUWs10RC27fy465ne', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:52:51', '2021-12-29 14:52:51'),
('645395f7-cc08-4fa6-a0f5-907e6af76666', 'abc1@hotmail.com', '$2a$10$Qwoqlu4nUTT1tn5OrV4lhO1FEqOVEOJImhi3vsqRaBRGGAtG0eF8O', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:51:39', '2021-12-29 14:51:39'),
('78f31918-1bdc-4fbc-bd90-6808c11fa544', 'abc2@hotmail.com', '$2a$10$nHP.z3riH592VlZXGo0Kl.Dk60ezGJoaYVVJGoMwrmhyu0k9jt5ji', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:52:18', '2021-12-29 14:52:18'),
('99d17f94-1e6e-45e6-9671-41be148e0772', 'abc98@hotmail.com', '$2a$10$CffbEE4fz1g1.F38VZ6JiuYC02yZ3mtRAff4dciSGDik4wQTLn3pO', 'firstname', 'lastname', 'ball', 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2021-12-29 15:04:00', '2021-12-29 15:04:00'),
('a5eaf7e3-e9e4-4004-9475-b081db1d6e18', 'abb@gmail.com', '$2a$10$rWhwRawe8D55ENvJxuJgP.TeiD7KpV8KYoNI6uPpiMpNyOv5YV8MG', NULL, NULL, NULL, 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2022-01-16 20:32:08', '2022-01-16 20:32:08'),
('f7e1a883-7e32-4d3d-b746-7da0ab33cc7b', 'abc7@hotmail.com', '$2a$10$MfgcITyXFrcCibfMXbBR7.qksQ93A2amo/g8BSgCjEIRaWT0izd3i', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:39:38', '2021-12-29 15:01:45'),
('fec6c92c-dda6-4fe9-89cd-3ce3f02c8701', 'ice.p@ebronco.co', '$2a$10$bEXSclPupMXt/jtqZ0aH1eJX9pURfnSed6sYWvDlPV2JTuiinKobK', NULL, NULL, NULL, 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2021-12-29 15:43:48', '2021-12-29 15:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `vdos`
--

CREATE TABLE `vdos` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img_cover` text DEFAULT NULL,
  `vdo_link` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vdos`
--

INSERT INTO `vdos` (`id`, `name`, `img_cover`, `vdo_link`, `created_at`, `updated_at`) VALUES
('377f5fd2-64a2-4b57-926c-3c02a5ade950', 'Vlog เที่ยวไร้สาระ 1 วัน ที่ฝั่งธน', NULL, 'https://www.youtube.com/watch?v=phXiieWY6Ug', '2022-01-29 14:57:23', '2022-01-29 14:57:23'),
('3d97b5af-e7fb-4315-bc66-645300abf16e', 'เยือนถิ่นฝั่งธน พากินย่าน #ตลาดพลู', NULL, 'https://www.youtube.com/watch?v=U17a_RdMSEU', '2022-01-29 14:55:34', '2022-01-29 14:55:34'),
('8d2fd363-961e-4fa5-8828-09ad2ad1ba22', 'ตะลุยกินแหลกให้ตัวแตกย่านเมืองเก่าริมน้ำฝั่งธนฯ ด้วยงบ 500 บาท l เที่ยวตามสั่ง', NULL, 'https://www.youtube.com/watch?v=A64zmOkEkTU', '2022-01-29 14:52:37', '2022-01-29 14:52:37'),
('b3b8656a-95fd-4221-88ca-ffed09b9553e', 'ตลาดมือสองเริ่มต้น 5 บาท!! ของหลากหลายแนว แห่งใหม่ ณ ช่างชุ่ย', NULL, 'https://www.youtube.com/watch?v=UGUIz8ACHng', '2022-01-29 16:31:02', '2022-01-29 16:31:02'),
('c7cc94b6-1f43-4a9a-b177-43f62d6d3ade', 'เที่ยวฝั่งธน ใครว่าไม่ฮิป !', NULL, 'https://www.youtube.com/watch?v=wqPGWC46Qik', '2022-01-29 16:38:42', '2022-01-29 16:38:42'),
('fbf9674e-546c-4dc7-a0f9-02673dfc31f5', '15ที่เที่ยวกรุงเทพ ถ่ายรูปสวยปัง ไม่จำเจ', NULL, 'https://www.youtube.com/watch?v=3NSEyDAMgtM', '2022-01-29 14:56:22', '2022-01-29 14:56:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_places_id_index` (`places_id`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommeded_trips`
--
ALTER TABLE `recommeded_trips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recommeded_trips_title_unique` (`title`);

--
-- Indexes for table `recommeded_trip_details`
--
ALTER TABLE `recommeded_trip_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommeded_trip_details_ref_recommended_index` (`ref_recommended`);

--
-- Indexes for table `recommended_places`
--
ALTER TABLE `recommended_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommended_place_details`
--
ALTER TABLE `recommended_place_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommended_place_details_ref_recommended_index` (`ref_recommended`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_places_id_index` (`places_id`),
  ADD KEY `reviews_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vdos`
--
ALTER TABLE `vdos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `recommeded_trip_details`
--
ALTER TABLE `recommeded_trip_details`
  ADD CONSTRAINT `recommeded_trip_details_ref_recommended_foreign` FOREIGN KEY (`ref_recommended`) REFERENCES `recommeded_trips` (`id`);

--
-- Constraints for table `recommended_place_details`
--
ALTER TABLE `recommended_place_details`
  ADD CONSTRAINT `recommended_place_details_ref_recommended_foreign` FOREIGN KEY (`ref_recommended`) REFERENCES `recommended_places` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

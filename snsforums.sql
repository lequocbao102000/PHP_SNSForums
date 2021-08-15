-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2021 at 03:18 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snsforums`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` char(50) NOT NULL,
  `password` char(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `fullname`, `email`) VALUES
('admin', '$2y$10$v0uQzrur/ji/WOBu/TkuKOKFjBuX9Vuxv8jcQcmxynVsE5PT0U6Zi', 'Lê Quốc Bảo', 'lequocbao102000@gmail.com'),
('quocbao1010', '$2y$10$.pLrN0H8XUrNCFAH4xcuYu4dts.QivPgSHOy7V1vWpQV1lBttDaRy', 'Lê Quốc Bảo', 'lequocbao102000@gmail.com'),
('tuthanh', '$2y$10$FMgROCg9AE.gPTm/CBJ0o.v/D3Hxj31nHcfMi8CCt8r31HoUCAcBG', 'Phạm Tú Thanh', 'phamtuthanh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `categorychild`
--

CREATE TABLE `categorychild` (
  `id_child` int(11) NOT NULL,
  `name_child` varchar(100) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorychild`
--

INSERT INTO `categorychild` (`id_child`, `name_child`, `id_parent`) VALUES
(1, 'Bắn sung góc nhìn thứ nhất', 1),
(2, 'Bắn sung góc nhìn thứ 3', 1),
(3, 'Nhập vai', 2),
(4, 'Kinh dị', 2),
(5, 'Sinh tồn', 2),
(6, 'Bóng đá', 4),
(7, 'Đua xe', 4),
(8, 'Indie', 5),
(9, 'Văn phòng', 8),
(10, 'Thiết kế', 8);

-- --------------------------------------------------------

--
-- Table structure for table `categoryparent`
--

CREATE TABLE `categoryparent` (
  `id_parent` int(11) NOT NULL,
  `name_parent` varchar(100) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoryparent`
--

INSERT INTO `categoryparent` (`id_parent`, `name_parent`, `id_menu`) VALUES
(1, 'Hành động', 1),
(2, 'Phiêu lưu', 1),
(4, 'Thể thao', 1),
(5, 'Khác', 1),
(8, 'Phần mềm - Tiện ích', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `img_main` varchar(100) DEFAULT NULL,
  `img_extra` varchar(500) DEFAULT NULL,
  `config` varchar(2000) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `trailer` varchar(2000) DEFAULT NULL,
  `id_child` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `img_main`, `img_extra`, `config`, `link`, `trailer`, `id_child`, `created_at`, `updated_at`) VALUES
(7, 'Far Cry Primal', '                                                                                     Far Cry Primal - Far Cry thường đặt bạn ở rìa của thế giới được biết đến, trong một biên giới xinh đẹp, vô luật và man rợ. The Stone Age, trong một cách, biên giới đầu tiên cho loài người; đó là thời gian khi con người đặt một cây gậy xuống đất và tuyên bố mặt đất cho riêng mình, thời gian khi chúng ta bắt đầu leo lên các chuỗi thức ăn. Điều đó đến với các cuộc xung đột, không chỉ chống lại những con người khác của loài người, mà còn chống lại thiên nhiên.\n<br><br>\nSeri Far Cry vẫn chứng tỏ sức mạnh của sự sáng tạo của mình khi giới thiệu Far Cry Primal. Bắt đầu từ thiên đường nhiệt đới với biển xanh cát trắng trong Far Cry 1 và Far Cry 3, trải qua những đồng cỏ nắng cháy của châu Phi trong Far Cry 2, rồi lên vùng núi tuyết của dãy Himalaya trong Far Cry 4, bây giờ Ubisoft lại đưa các bạn đi vào cuộc đấu tranh ban đầu cho sự sống còn của nhân loại với gameplay sandbox thế giới mở, những con thú to lớn, môi trường ngoạn mục, và những cuộc gặp gỡ không thể đoán trước trong Far Cry Primal.\n\n<br><br>\nChào mừng bạn đến thời kỳ đồ đá, một thời kỳ mà nguy hiểm là ở khắp nơi và cuộc phiêu lưu vô hạn, nơi mà những con voi mamút khổng lồ và hổ hổ răng kiếm cai trị trái đất, và con người chỉ là động vật ở dưới cùng của chuỗi thức ăn. Là người sống sót cuối cùng của nhóm, các bạn sẽ tìm hiểu để xây một kho vũ khí chết người, chống lại những kẻ săn mồi hung dữ và các bộ lạc thù địch, chứng minh con người là động vật thông minh hơn tất cả các loài, cứu nhân loại và chinh phục thế giới này.                                                                                              ', 'farcryprimalmain.png', '/farcry1.jpg/farcry2.jpg/farcry3.jpg/farcryprimalmain.png', '                                                                         RECOMMENDED:<br><br>\nOS: Windows 7, Windows 8.1, Windows 10 (64-bit versions only)<br>\nProcessor: Intel Core i7-2600K | AMD FX-8350 or equivalent<br>\nMemory: 8 GB RAM<br>\nGraphics: NVIDIA GeForce GTX 780 | AMD Radeon R9 280X or equivalent<br>\nStorage: 20 GB available space                                                                                               ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/LJ2iH57Fs3M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-06 16:01:00', '2021-08-06 16:01:00'),
(8, 'Dead Island: Game of the Year', '                             Được đánh giá như sự “pha trộn” giữa Dead Rising, Far Cry và Left 4 Dead, Dead Island mang đến người chơi một khung cảnh tuyệt đẹp nhưng chưa đựng vô số những điều đáng sợ bí ẩn bên trong.                                             ', 'deadislandmain.jpeg', '/deadisland1.png/deadisland2.jpg/deadislandmain.jpeg/deadislane3.jpg', '                        RECOMMENDED:<br><br>\r\nOS: Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit / Windows® 10 64-bit<br>\r\nProcessor: Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)<br>\r\n                                           ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/_iiPw6Tw7RI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-06 16:37:28', '2021-08-06 16:37:28'),
(9, 'Fallout 3 Game of the Year Edition', '<b> Fallout 3 Game of the Year Edition</b> bao gồm tất cả năm DLC của Fallout 3. Fallout 3 diễn ra tại bờ đông, nơi trước kia từng là thủ đô Washington D.C, 200 năm sau thảm họa hạt nhân. Chuyện game bắt đầu từ Vault 101, là loại hầm ngầm hiện đại, tiện nghi được xây dựng làm nơi trú ẩn phóng xạ, có thể chứa đến 1000 người.                       ', 'fallmain.jpg', '/fall1.jpg/fall2.jpg/fall3.jpg/fallmain.jpg', '   RECOMMENDED:<br><br>\r\nOperating system: Windows XP/Vista<br>\r\nProcessor: Intel Core 2 Duo processor<br>\r\nMemory: 2 GB System RAM<br>\r\nHard disk space: 7 GB   <br>                  ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/iYZpR51XgW0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 10:25:01', '2021-08-07 10:25:01'),
(10, 'Alien Isolation The Collection', '<b>Alien Isolation The Collection</b> là bản đầy đủ các DLC của game Alien Isolation, một game bắn súng góc nhìn thứ nhất, kinh dị, tàng hình (stealth),  được phát triển bởi Creative Assembly và được xuất bản bởi SEGA. Nhà sản xuất hy vọng game sẽ là sự kết hợp các tinh hoa từ BioShock và Dishonored.<br>\r\nNhiệm vụ chính của các bạn trong game là gì? cực kỳ ngắn gọn: sống sót. Các bạn sẽ khám phá ý nghĩa thực sự của sự sợ hãi trong Alien: Isolation, một game kinh dị sống còn đặt trong một bầu không khí sợ hãi liên tục và nguy hiểm chết người. Trong vai Amanda, các bạn đi vào một trận chiến tuyệt vọng cho sự sống còn, một nhiệm vụ để làm sáng tỏ sự thật đằng sau sự biến mất của mẹ cô. Các bạn sẽ phải thông qua một thế giới đầy biến động và phải đối mặt với hoảng loạn, tuyệt vọng và các tình huống không thể đoán trước trong một cuộc chiến với người ngoài hành tinh tàn nhẫn. Các bạn sẽ phải nhặt rác tài nguyên và sử dụng trí thông minh của bạn, không phải để thành công trong nhiệm vụ của bạn mà chỉ đơn giản là để sống sót.<br>\r\n\r\n                        ', 'ailenmain.jpg', '/ailen1.jpg/ailen2.jpg/ailen3.jpg/ailenmain.jpg', 'RECOMMENDED:<br><br>\r\nOS: Windows 7 (64bit)<br>\r\nProcessor: AMD: Phenom II X4 955 - 4 Core, 3.2 GHz or Intel: Core 2 Quad Q9650 - 4 Core, 3.0 GHz<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: 2GB (AMD GPU: AMD Radeon R9 200 Series or Nvidia GPU: Nvidia GeForce GTX660)     <br>                   ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/7h0cgmvIrZw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 10:21:05', '2021-08-07 10:21:05'),
(11, 'Cyberpunk 2077', 'Dựa xây dựng dựa trên trò chơi cờ bàn Cyberpunk 2020, Cyberpunk 2077 lấy bối cảnh ở Night City, một đô thị rộng lớn nơi các tập đoàn khổng lồ và những băng đảng nguy hiểm cùng tồn tại. Được phát triển bởi đội ngũ đã xây dựng nên dòng game The Witcher, Cyberpunk 2077 hiện đang là một trong những tựa game nóng hổi được mong chờ nhất hành tinh.\r\n<br>\r\n\r\n\r\nTại E3 2019 này, họp báo Microsoft đã hé lộ cho chúng ta một thông tin tuyệt vời: cánh cửa tới năm 2077 giả tưởng sẽ mở vào ngày 16/4/2020. Không những thế, game còn có sự góp mặt của Keanu Reeves, “nam thần” của dòng phim John Wick nổi tiếng. <br>                       ', 'cyberpunkmain.jpg', '/cyberpunkmain.jpg/cyperpunk1.jpg/cyperpunk2.jpg/cyperpunk3.jpg', 'RECOMMENDED:<br>  <br>  \r\nRequires a 64-bit processor and operating system\r\nOS: Windows 10<br>  \r\nProcessor: Intel Core i7-4790 or AMD Ryzen 3 3200G<br>  \r\nMemory: 12 GB RAM<br>  \r\nGraphics: NVIDIA GeForce GTX 1060 or AMD Radeon R9 Fury    <br>                      ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/8X2kIfS6fb8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 10:09:11', '2021-08-07 10:09:11'),
(12, 'Doom 3', ' Doom 3 được thiết lập trong năm 2145 tại một cơ sở nghiên cứu khoa học trên sao Hỏa. Người chơi phải chiến đấu để ngăn chặn ma quỷ từ địa ngục tấn công Trái đất. Doom 3 Gold Edition gồm Doom 3 và Doom 3: Resurrection of EvilTheo cốt truyện của trò chơi, Tổng công ty hàng không vũ trụ Liên bang (UAC) đã thiết lập một cơ sở nghiên cứu trên sao Hỏa. Tại cơ sở này, UAC có thể tiến hành nghiên cứu ...<br>\r\nTheo cốt truyện của trò chơi, Tổng công ty hàng không vũ trụ Liên bang (UAC) đã thiết lập một cơ sở nghiên cứu trên sao Hỏa. Tại cơ sở này, UAC có thể tiến hành nghiên cứu một số lĩnh vực khoa học, bao gồm cả phát triển tiên tiến vũ khí, nghiên cứu sinh học , thăm dò không gian và dịch chuyển . Do vị trí của cơ sở trên sao Hỏa, UAC có thể thực hiện hoạt động bên ngoài ranh giới pháp lý và đạo đức. Tuy nhiên, các thí nghiệm dịch chuyển vô tình mở một cửa ngõ vào địa ngục. Thế rồi nhiều chuyện lạ đã xảy ra: những âm thanh huyền bí ghê rợn, những bóng ma lởn vởn nối tiếp nhau xuất hiện, xen kẽ vào đó là các trường hợp mất tích khó hiểu. Tất cả những điều kỳ lạ ấy không ai kiểm chứng được, cho tới khi bạn - một trong số những người lính được điều đến sao Hỏa để củng cố lại tình hình an ninh ở trung tâm thí nghiệm này và tìm hiểu cái quái gì đang xảy ra tại đây.<br>                       ', 'doom3main.jpg', '/doom1.jpg/doom2.jpg/doom3.jpg/doom3main.jpg', '  OS: Microsoft® Windows® 2000/XP (Does not support Windows Vista/7)<br> \r\nProcessor: Pentium®IV 1.5 GHz or Athlon® XP 1500+ processor or higher<br> \r\nMemory: 384 MB RAM<br> \r\nGraphics: 100% DirectX® 9.0b compatible 64MB Hardware <br>                    ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/j8NaZZa54cs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 10:42:17', '2021-08-07 10:42:17'),
(13, 'Hitman 5: Absolution', ' Trong Hitman Absolution, Âm thầm tiếp cận mục tiêu rồi hạ gục hoặc gây nên cảnh hỗn loạn để thừa cơ xâm nhập, game thủ có nhiều lựa chọn để làm cho từng màn chơi thêm thú vị. Sát thủ 47 đã trở lại trong phần thứ 5 của series Hitman. Trong phần này, 47 phải tìm hiểu một âm mưu đen tối trong khi bị chính tổ chức cũ và cảnh sát săn đuổi.<br>                       ', 'hitmanmain.jpg', '/hitman1.jpg/hitman2.png/hitman3.jpg/hitmanmain.jpg', 'RECOMMENDED:<br><br>\r\nOS: Windows 7 64-bit<br>\r\nProcessor: Intel Core i7 or AMD Athlon II X4<br>\r\nHard Drive Space: 24GB<br>\r\nMemory: 4 GB RAM        <br>                ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/Wu1Aii7scBo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 10:46:24', '2021-08-07 10:46:24'),
(14, 'ULTRAKILL', 'ULTRAKILL is a fast-paced ultraviolent old school FPS that fuses together classic shooters like Quake, modern shooters like Doom (2016) and character action games like Devil May Cry.<br><br>\r\n\r\nMankind has gone extinct and the only beings left on earth are machines fueled by blood.<br>\r\nBut now that blood is starting to run out on the surface...<br>\r\nMachines are racing to the depths of Hell in search of more.<br><br>\r\n\r\nULTRAKILL<br>\r\n\r\nUse your many movement abilities to stay mobile and avoid the relentless attacks of the dead, demons and other machines.<br>\r\nDestroy them with an arsenal of incredibly powerful weapons, each with multiple available variations.<br>\r\nSoak yourself in their blood to regain health and keep fighting.                        ', 'ultramain.jpg', '/ultra1.jpg/ultra2.jpg/ultra3.jpg/ultramain.jpg', 'RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system\r\nOS: Windows 10 64-bit<br>\r\nProcessor: 2.4 GHZ Quad Core Processor Or Higher<br>\r\nMemory: 4 GB RAM<br>\r\nGraphics: Geforce GTX 460 Or Equivalent     <br>                   ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/Pw63IVgYLDc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 15:52:15', '2021-08-07 15:52:15'),
(15, 'MAFIA III', ' <b>Mafia III</b>: Definitive Edition includes the main game, all Story DLC (Faster, Baby!, Stones Unturned, Sign of the Times) and Bonus Packs (Family Kick-Back Pack and Judge, Jury & Executioner Weapons Pack) bundled in one place for the first time.<br><br>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nPart three of the Mafia crime saga - 1968, New Bordeaux, LA.\r\nAfter years of combat in Vietnam, Lincoln Clay knows this truth: family isn’t who you’re born with, it’s who you die for. When his surrogate family is wiped out by the Italian Mafia, Lincoln builds a new family and blazes a path of revenge through the Mafioso responsible. <br>                      ', 'mafiamain.jpg', '/mafia1.jpg/mafia2.jpg/mafia3.jpg/mafiamain.jpg', 'RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system\r\nOS: Windows 7 64-bit<br>\r\nProcessor: Intel I7-3770, AMD FX 8350 4.0 Ghz<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: 4GB of Video Memory & NVIDIA Geforce GTX 780 or GeForce GTX 1060, AMD Radeon R9 290X    <br>                    ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/j6dgC5RMXRs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2021-08-07 15:13:20', '2021-08-07 15:13:20'),
(16, 'Days Gone', 'Days Gone is an open-world action-adventure game set in a harsh wilderness two years after a devastating global pandemic.<br><br>\r\n\r\n\r\n\r\n\r\n\r\nStep into the dirt flecked shoes of former outlaw biker Deacon St. John, a bounty hunter trying to find a reason to live in a land surrounded by death. Scavenge through abandoned settlements for equipment to craft valuable items and weapons, or take your chances with other survivors trying to eke out a living through fair trade… or more violent means.<br><br>\r\n\r\nKEY FEATURES<br>\r\n• A striking setting: From forests and meadows, to snowy plains and desert lava fields, the Pacific Northwest is both beautiful and lethal. Explore a variety of mountains, caves, mines and small rural towns, scarred by millions of years of volcanic activity.<br>\r\n• Brutal encounters: With vicious gangs and hordes of Freakers roaming the land, you’ll need to make full use of a variety of customizable traps, weapons, and upgradable skills to stay alive. Don’t forget your Drifter bike, an invaluable tool in a vast land.<br>\r\n• An ever-changing environment: Jump on the saddle of Deacon’s trusty motorbike and explore a dynamic world dramatically affected by the weather, a dramatic day/night cycle and the evolving Freakers, who adjust to their surroundings – and the people in it.<br>\r\n• A compelling story: Lose yourself in a powerful tale of desperation, betrayal and regret, as Deacon St. John searches for hope after suffering a deep, personal loss. What makes us human when faced with the daily struggle for survival?      <br>                  ', 'daygonemain.png', '/daygon2.jpg/daygon3.jpg/daygone1.jpg/daygonemain.png', '  RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system\r\nOS: Windows 10 64-bits<br>\r\nProcessor: Intel Core i7-4770K@3.5GHz or Ryzen 5 1500X@3.5GHz<br>\r\nMemory: 16 GB RAM<br>\r\nGraphics: Nvidia GeForce GTX 1060 (6 GB) or AMD Radeon RX 580 (8 GB)          <br>            ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/FKtaOY9lMvM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2021-08-07 15:24:25', '2021-08-07 15:24:25'),
(17, 'Risk of Rain 2', ' Thuộc thể loại hành động platform với các yếu tố nhập vai roguelike điển hình (thể loại game nhập vai đi cảnh nhưng mỗi lần bạn chết, bạn sẽ phải chơi lại từ đầu chứ không thể tiếp tục), Risk of Rain sẽ đưa bạn hóa thân vào một nhà du hành không gian lạc lối trên một hành tinh xa lạ. Bị bao quanh bởi những sinh vật kỳ quái, trong khi con tàu vũ trụ đưa bạn đến đây đã bị hư hỏng, bạn sẽ phải lựa chọn chiến đấu hay bỏ xác tại nơi hoang vắng này.<br><br>\r\n\r\n\r\n\r\nTrong Risk of Rain, bạn sẽ luôn phải để ý những cạm bẫy, cách chiến đấu hay thậm chí là từng bước nhảy của mình, bởi ngay khi nhân vật chết, game sẽ lập tức kết thúc. Risk of Rain có tất cả 10 màn chơi và 10 nhân vật cho bạn mở khóa lựa chọn.<br>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nSố quái vật đa dạng trong game cùng các tên trùm được xuất hiện ngẫu nhiên sẽ giúp bạn có những giờ chơi không nhàm chán. Và đương nhiên, chúng đều có điểm yếu và cách đối phó riêng.<br>\r\n\r\n\r\n\r\nCàng chơi lâu, Risk of Rain sẽ càng trở nên khó hơn. Với hơn 100 vật dụng khác nhau để khám phá, người chơi cần tìm ra những dụng cụ cần thiết giúp ích cho việc truy tìm cỗ máy dịch chuyển tức thời để trở về nhà. Muốn làm được điều đó, các game thủ sẽ phải băng qua những màn chơi với địa hình khác biệt đầy khắc nghiệt, như rừng rậm ghê rợn hay núi băng giá lạnh lẽo.<br>\r\n\r\n\r\n\r\nRisk of Rain được nhà sản xuất thông báo hỗ trợ tính năng chơi mạng nhanh, chỉ cần một nút bấm, người chơi sẽ xuất hiện trong màn chơi với ba game thủ khác từ địa điểm ngẫu nhiên trên thế giới. Thêm vào đó, người chơi cũng có thể lựa chọn cách chơi nội mạng với bạn bè trong khi chờ đợi phần chơi trực tuyến. Cùng với lối chơi hấp dẫn và nội dung thú vị, Risk of Rain chắc chắn sẽ là một tựa game khó có thể bỏ qua với các game thủ.       <br>                ', 'riksrainmain.jpg', '/riks1.jpg/riksrainmain.jpg/risk2.jpg/risk3.jpg', 'RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system\r\nOS: Windows 7 or newer, 64-bit<br>\r\nProcessor: Intel Core i5-4670K / AMD Ryzen 5 1500X<br>\r\nMemory: 4 GB RAM<br>\r\nGraphics: GTX 680 / AMD HD 7970     <br>                   ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/pJ-aR--gScM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2021-08-07 15:04:34', '2021-08-07 15:04:34'),
(18, 'Potentia', '  Ongoing cold war was about to end. Both sides declared that they would no longer continue pursuing the war effort. That night, everyone was on the streets. People were celebrating the end of the war. The entire city was like a party zone. One of our friends was throwing a party at his home. My wife Anna and I were going to meet at the metro station to join our friends later that night. Eh, what can I say. We were all happy. As it turns out, our happiness wouldn’t last long. And our hopes for peace would vanish with the majority of the people around us.<br><br>\r\n\r\nEverything was lost in less than a second. An unknown energy weapon hit the city. No one knows the true extent of the damage caused by it, if it was contained to just one city, country, or the entire planet. Buildings and Infrastructure are left intact. Animals and plants are unharmed. However, people… Many of them just disappeared. Now, no one answers our radio transmissions. No one comes to our aid. Everyone just seems to be vanished. No one is around other than some hostile savages. After the attack so few of us survived and what little amount of people who were still alive and sane wasn’t enough to keep government and law enforcement agencies functioning. Now it is the survival of the fittest. People became little more than savages. Every new day brings new hardships but in the end we will endure, we will survive, whatever the cost.                      <br>', 'pomain.jpg', '/po1.jpg/po2.jpg/po3.png/pomain.jpg', '    RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system\r\nOS: Windows 7 64-bit, Windows 8 64-bit, Windows 10 64-bit<br>\r\nProcessor: AMD FX 8350, AMD Ryzen 5 1400, Intel Core i7 3770 or better<br>\r\nMemory: 16 GB RAM     <br>              ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/SKnrQ-PGPgQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2021-08-07 15:54:39', '2021-08-07 15:54:39'),
(19, 'Serious Sam 4', '   Cuộc chiến giữa anh “Sam Nghiêm Túc” cùng bè lũ quái vật vẫn chưa đi đến hồi kết khi người chơi sẽ có thể tiếp tục ngay cuộc hành trình qua phần hậu bản mới nhất của dòng game.<br><br>\r\n\r\n\r\n\r\nSerious Sam 4 quay trở lại và hứa hẹn đem đến những cuộc chiến hỗn loạn, máu lửa hơn qua mục chơi tổ đội lên đến tối đa bốn người chơi.<br><br>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNgoài ra, bạn sẽ chẳng phải bở ngỡ vì game sẽ đen đến dàn quái quen thuộc như Headless Kamikaze, Werebull… và không thể thiếu những khuôn mặt mới là frantic Processed, repulsive Belcher… <br><br>                    ', 'Serious-Sam-4main.jpg', '/serious1.jpg/serious2.jpg/serious3.jpg/Serious-Sam-4main.jpg', '   RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 10 64-bit (1909)<br>\r\nProcessor: 8-core CPU @ 3.3 GHz<br>\r\nMemory: 16 GB RAM<br>\r\nGraphics: nVidia GeForce 1080/2060 or AMD     <br>                ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/jFYv5cRDvOg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2021-08-08 14:48:22', '2021-08-08 14:48:22'),
(20, 'Resident Evil 3 ', ' Resident Evil 3 Remake ­– Trở lại năm 1999, Resident Evil 3 Nemesis được “nhào nặn” bởi đội ngủ của Shinji Mikami (người đã tham gia sản xuất phần một và hai trước đó) và đã đạt được nhiều thành công và bán ra hơn ba triệu bản trên toàn thế giới.<br><br>\r\n\r\n\r\n\r\nNgười chơi sẽ vào vai HUNK và đi thu thập mẫu vi rút loại G trên một con tàu hạng sang.<br><br>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNghe có vẻ khá sai nhưng thật vậy, câu truyện trên đã có thể là diễn biến trong phần thứ ba của dòng game này khi cận kề ngày Sony ra mắt cổ máy PlayStation 2, game đã bị hủy, cuối cùng ta có Resident Evil 3 hiện tại với Jill Valentine là nhân vật chính được xem như một dự án dự phòng trong khi họ đang tập trung phát triển Resident Evil 4, được ra mắt chỉ sau hơn một năm ngày phát hành Resident Evil 2.\r\n<br><br>\r\n\r\n\r\nVà cho đến hiện tại, cũng chỉ sau một năm ra mắt bản làm lại của phần game thứ hai, người chơi sẽ được đón nhận Resident Evil 3 Remake với nhiều thay đổi mới.<br><br>\r\n\r\n\r\n\r\nNhưng... liệu với những nỗ lực “cách tân” một tựa game hơn 20 năm tuổi của Capcom có thực sự thành công, đặc biệt là với cái bóng quá lớn của Resident Evil 2 Remake vừa qua có khiến cho phần game này bị phai nhạt?         <br>              ', 'rs3main.jpg', '/resi1.jpg/resi2.jpg/resi3.jpg/rs3main.jpg', '   RECOMMENDED:<br>    <br>    \r\nRequires a 64-bit processor and operating system<br>    \r\nOS: WINDOWS® 10 (64-BIT Required)<br>    \r\nProcessor: Intel® Core™ i7-3770 or AMD FX™-9590 or better<br>    \r\nMemory: 8 GB RAM<br>    \r\nGraphics: NVIDIA® GeForce® GTX 1060 or AMD Radeon™ RX 480 with 3GB VRAM         <br>                ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/9LrLM4Hvr9U\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, '2021-08-08 14:54:25', '2021-08-08 14:54:25'),
(21, 'Lunch Lady', 'In \'Lunch Lady\' you will roam around the dark hallways of your school in the hopes of finding the answers for your upcoming finals. You will get chased through the whole school by an evil and possessed Lunch Lady. You have to collect all 10 pages and get the hell out of there as fast as possible.                             ', 'lunchmain.png', '/luch2.jpg/lucn3.jpg/lunch1.jpg/lunchmain.png', 'OS: Windows 7 - 64bit<br>\r\nProcessor: Intel i5 or new-gen i3 / AMD equivalent<br>\r\nMemory: 4 GB RAM<br>\r\nGraphics: ATI HD7900 series or NVIDIA         <br>            ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/uceawUKMSf4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, '2021-08-08 14:29:36', '2021-08-08 14:29:36'),
(22, 'DEVOUR', ' CAN YOU STOP THE DEMONIC CULT LEADER?<br><br>\r\nAnna Puerta, leader of demonic cult The Watchers of Azazel, has just performed a forbidden ritual, believing she can summon and control the goat demon himself. But something has gone wrong, and Azazel has possessed her.  <br>                                                                         ', 'devourmain.jpg', '/devou1.jpg/devou2.jpg/devou3.jpg/devourmain.jpg', '   RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 10 - 64 bit<br>\r\nProcessor: Intel i7 or AMD equivalent (AMD FX 9500+ Series)<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: 4GB Video RAM      <br>                                                              ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/mIridrRzU3w\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, '2021-08-08 14:42:42', '2021-08-08 14:42:42'),
(23, 'Beyond Senses', ' Thousands of writings and books tell of encounters with witches, ghosts, demons and the devil himself. Our world is complex and unexplored. We mostly don\'t notice anything of all this thanks to secret organizations whose objective is the elimination of paranormal phenomena.<br><br>\r\n\r\nIn Beyond Senses, you\'ll slip into the role of either a good hunter or an evil demon. Discover the world Beyond our Senses! Countless features guarantee a varied and unforgettable gaming experience. Beyond Senses can be played by up to 5 players!    <br>                                                                       ', 'beyondmain.jpg', '/beyondmain.jpg/beyoud2.jpg/beyoun3.jpg/beyound1.jpg', ' RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 7 64 Bit / Windows 8 64 Bit / Windows 10 64 Bit<br>\r\nProcessor: Quad Core or better<br>\r\nMemory: 8 GB RAM        <br>                                                               ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/eQ8yQikQW_A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, '2021-08-08 14:23:47', '2021-08-08 14:23:47'),
(24, 'Blood: Fresh Supply', ' Battle an army of sycophantic cultists, zombies, gargoyles, hellhounds, and an insatiable host of horrors in your quest to defeat the evil Tchernobog. Squirm through 42 loathsome levels filled with more atmosphere than a Lovecraftian mausoleum. Begin your journey armed with a simple pitchfork and earn more effective implements of destruction like aerosol cans, flare guns, voodoo dolls and more!                                                                          ', 'bloodmain.jpg', '/blood1.jpg/blood2.jpg/blood3.jpg/bloodmain.jpg', ' RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 10 64-bit (32-bit not supported)<br>\r\nProcessor: Intel Core i5-2300 2.8 GHz/AMD Phenom II X4 945 3.0 GHz or equivalent<br>\r\nMemory: 2 GB RAM          <br>                                                             ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/YUEW5U43E0k\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, '2021-08-08 14:50:50', '2021-08-08 14:50:50'),
(25, 'Mini Motorways', '   Have you ever been stuck in traffic and wished you could do something to fix it?\r\nIn Mini Motorways, the city’s traffic problems are in your hands.<br><br>\r\n\r\nFrom the makers of Mini Metro, Mini Motorways is a game about drawing the roads that drive a growing city. Build a road network, one road at a time, to create a bustling metropolis. Redesign your city to keep the traffic flowing, and carefully manage upgrades to meet the changing demands. How long can you keep the cities of the world moving?   <br>                                                                     ', 'minimain.jpg', '/mini1.jpg/mini2.jpg/mini3.jpg/minimain.jpg', '  OS: Windows 7 SP1+<br>   \r\nProcessor: 2 GHz or faster processor<br>   \r\nGraphics: Shader Model 4.0<br>   \r\nDirectX: Version 10<br>   \r\nStorage: 350 MB available space     <br>                                                                    ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/RHX0CfcgOas\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 8, '2021-08-08 14:02:56', '2021-08-08 14:02:56'),
(26, 'Hokko Life ', '  Step off the train into the town of Hokko and get settled into your new home!<br><br>\r\n\r\nThis quiet village needs your help to turn it into the charming rural town everyone loves. With hammer and paints in hand it\'s up to you to design, build and decorate homes for all of your new friends!  <br>                                                                        ', 'hookmain.jpg', '/hook1.jpg/hook2.jpg/hook3.jpg/hookmain.jpg', 'RECOMMENDED:<br><br>\r\nOS: Windows 10<br>\r\nProcessor: Intel Core i5-2400 or AMD FX-4350<br>\r\nMemory: 4 GB RAM<br>\r\nGraphics: NVIDIA GeForce GTX 660, 2 GB or AMD Radeon R9 270X <br>                                                                       ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/56S6ffcQSiI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 8, '2021-08-08 14:49:58', '2021-08-08 14:49:58'),
(27, 'eFootball PES 2021', '   *Due to the ongoing impact of COVID-19, certain real-world football leagues and/or tournaments may undergo sudden regulation changes. As a result, there is a chance that in-game regulations may not perfectly match their real life counterparts. Other changes that impact leagues and tournaments may also be implemented in future updates without prior notice.\r\n                                                                         ', 'pesmain.jpg', '/pes1.jpg/pes2.jpg/pes3.jpg/pesmain.jpg', '      RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 10 - 64bit<br>\r\nProcessor: Intel Core i7-3770 / AMD FX 8350<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: NVIDIA GTX 760 / AMD Radeon R9 270X     <br>                                                            ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/GSXViWOyEO4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 6, '2021-08-08 15:54:03', '2021-08-08 15:54:03'),
(28, 'Need for Speed Heat', '<b>Need for Speed Heat</b> là tựa game đua xe tốc độ mới nhất của EA. Bối cảnh của Need for Speed Heat được xây dựng tại Palm Beach, một thị trấn phía Nam Florida, nơi đây không chỉ là thiên đường của những tay đua xe đường phố mà còn là một khu đô thị bừng bừng sức sống, đồng thời nó còn ẩn chứa rất nhiều khu vực độc đáo chờ người chơi khám phá. Vào ban ngày, Palm Beach sẽ tổ chức cuộc thi săn tốc độ, trong trận cá cược hợp pháp khổng lồ này, người chơi có thể khiêu chiến cực hạn của mình, đồng thời kiếm được một món tiền lớn. Khi mặt trời dần buông xuống, thị trấn này liền biến thành một tụ điểm tổ chức đua xe đường phố phi pháp, không những tăng thêm phần kích thích mà còn chứa đựng những nguy hiểm nhất định.                                                                          ', 'nedmain.jpg', '/nedmain.jpg/need1.jpg/need2.jpg/need3.jpg', '   RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 10<br>\r\nProcessor: Ryzen 3 1300X or Equivalent; Core i7-4790 or Equivalent<br>\r\nMemory: 16 GB RAM       <br>                                                              ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/9ewiJJe_nYI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 7, '2021-08-08 15:34:06', '2021-08-08 15:34:06'),
(29, 'MotoGP 19', ' OFFICIAL 2019 CONTENT<br><br>\r\nAll the adrenaline of the 2019 season right in your hands!Race with all the official riders of the MotoGP™, Moto2™, Moto3™, Red Bull MotoGP™ Rookies Cup classes and the new MotoE™ on 19 different tracks.                 <br>                                                          ', 'motomain.jpg', '/moto1.jpg/moto2.jpg/moto3.jpg/motomain.jpg', '   RECOMMENDED: <br>  <br> \r\nRequires a 64-bit processor and operating system <br> \r\nOS: Windows 7 64-Bit or later <br> \r\nProcessor: Intel Core i7-6700K, AMD Ryzen 7 1700X or equivalent <br> \r\nMemory: 16 GB RAM        <br>                                                               ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/slV3X25S4Qc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 7, '2021-08-08 15:46:09', '2021-08-08 15:46:09'),
(30, 'Grand Theft Auto 5 ', '   Grand Theft Auto V hay GTA V, GTA 5 là một game phiêu lưu hành động thế giới mở phát triển và xuất bản bởi Rockstar Games . GTA V sẽ được thiết lập trong thành phố hư cấu Los Santos ở bang San Andreas và các khu vực xung quanh của nó, dựa trên Los Angeles và Nam California.                     ', 'gtamain.jpg', '/gta1.jpg/gta2.jpg/gta3.jpg/gtamain.jpg', ' RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: Windows 10 64 Bit, Windows 8.1 64 Bit, Windows 8 64 Bit, Windows 7 64 Bit Service Pack 1<br>\r\nProcessor: Intel Core i5 3470 @ 3.2GHz (4 CPUs) / AMD X8 FX-8350 @ 4GHz (8 CPUs)<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: NVIDIA GTX 660 2GB / AMD HD 7870 2GB      <br>                 ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/QkkoHAzjnUs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, '2021-08-09 13:39:32', '2021-08-09 13:39:32'),
(32, 'FINAL FANTASY', ' A remodeled 2D take on the first game in the world-renowned FINAL FANTASY series! Enjoy the timeless story told through charming retro graphics. All the magic of the original, with improved ease of play.<br><br>\r\n\r\nEarth, fire, water, wind... The light that once shone within the four Crystals was lost. Darkness covered the land, until the only hope for humanity rested in legends past. Become the Warriors of Light and embark on your own journey to restore power to the Crystals and save the world.                   <br>    ', 'finalmain.png', '/fina3.jpg/final1.jpg/final2.jpg/finalmain.png', ' RECOMMENDED: <br>   <br>  \r\nOS: Windows 8.1 64-bit / Windows 10 64-bit (ver.1909 and above) <br>  \r\nProcessor: AMD A8-7600 / Intel® Core™ i3-3225 <br>  \r\nMemory: 4 GB RAM <br>  \r\nGraphics: AMD Radeon™ R7 Graphics / Intel® HD Graphics 4000    <br>                      ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/PrGBg6VGnIk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, '2021-08-09 13:53:36', '2021-08-09 13:53:36'),
(33, 'Yakuza 6: The Song of Life', '   In Yakuza 6, Kazuma Kiryu will find out exactly how much people are willing to sacrifice for family - be those ties through blood or bond - when he investigates a series of shadowy events that involve the ones he holds closest to his heart. Fresh out of a three-year prison sentence, an older and weathered Kiryu comes to find out that his surrogate daughter, Haruka, has gone missing from the orphanage he looks after. The trail leads him to his old stomping grounds in Kamurocho, where he discovers that she has been struck by a car and now lies in a coma. To make matters worse, Kiryu learns that Haruka now has a son that he must look after. With baby in hand, Kiryu journeys to the seaside town of Onomichi, Hiroshima to unravel the truth about Haruka, her son, and a sinister secret that the Hiroshima yakuza are harboring.                    ', 'yakuramain.jpg', '/ya1.jpg/ya2.jpg/ya3.jpg/yakuramain.jpg', ' RECOMMENDED:<br><br>\r\nOS: Windows 10<br>\r\nProcessor: Intel Core i7-6700 | AMD Ryzen 5 2600<br>\r\nMemory: 6 GB RAM<br>\r\nGraphics: Nvidia GeForce GTX 1070, 8 GB | AMD Radeon RX Vega 56, 8 GB    <br>                  ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/dNmM9pivqQ0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, '2021-08-09 13:51:39', '2021-08-09 13:51:39'),
(34, 'EVERSPACE 2 ', ' EVERSPACE™ 2 is a fast-paced single-player spaceship shooter with deep exploration in space and on planets, tons of loot, RPG elements, mining, and crafting. Experience a thoughtful story, set in a vivid, handcrafted open world full of secrets, puzzles, and perils.<br><br>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nIn the campaign, you will make some friends with their own story to tell. They will join you on side missions and provide certain benefits in the endgame, where vicious encounters and brutal challenges will stand between you and that next epic loot drop.    <br>                   ', 'evemain.jpg', '/eva2.jpg/eva3.jpg/eve1.jpg/evemain.jpg', '  RECOMMENDED:   <br>      <br>   \r\nRequires a 64-bit processor and operating system   <br>   \r\nOS: Windows 10 64-bit   <br>   \r\nProcessor: Intel Core i7-4770K@3.5GHz or Ryzen 5 1500X@3.5GHz   <br>   \r\nMemory: 16 GB RAM   <br>   \r\nGraphics: Nvidia GeForce GTX 1060 (6 GB) or AMD Radeon RX 580 (8GB)          <br>                  ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/fuygGFteHpY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, '2021-08-09 13:15:42', '2021-08-09 13:15:42'),
(35, 'MADE : Interactive Movie', '                        ', 'mademain.jpg', '/ade1.jpg/made2.jpg/made3.jpg/mademain.jpg', '   RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: windows 10(64-bit)<br>\r\nProcessor: Intel® Core™ i7 3770 3.4GHz<br>\r\nMemory: 16 GB RAM<br>\r\nGraphics: NVIDIA® GeForce® GTX 1070            <br>        ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/XA2o3hJzuJU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, '2021-08-09 13:19:45', '2021-08-09 13:19:45'),
(36, 'Subnautica: Below Zero', '  Return to planet 4546B<br><br>\r\nSubmerge yourself in an all-new, sub-zero expedition in an arctic region of Planet 4546B. Arriving with little more than your wits and some survival equipment, you set out to investigate what happened to your sister...<br><br>\r\nUncover the truth\r\n\r\n\r\n\r\nAlterra left in a hurry after a mysterious incident. Abandoned research stations dot the region. What happened to the scientists who lived and worked here? Logs, items, and databanks scattered among the debris paint a new picture of the incident. With limited resources, you must improvise to survive on your own.     <br>                 ', 'submain.jpg', '/sub1.jpg/sub2.jpg/sub3.jpg/submain.jpg', '   RECOMMENDED: <br> <br>\r\nRequires a 64-bit processor and operating system <br>\r\nOS: Windows 10 64-bit <br>\r\nProcessor: Intel Core i5 / AMD Ryzen 5 @ 3Ghz + <br>\r\nMemory: 8 GB RAM <br>\r\nGraphics: Nvidia 1050 Ti / AMD Radeon 570, 4GB VRAM  <br>                    ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/BtP8r8nRfko\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 5, '2021-08-09 13:16:48', '2021-08-09 13:16:48'),
(37, 'Hobo: Tough Life', ' Hobo: Tough Life là game thuộc thể loại sinh tồn-RPG. Bạn sẽ vào vai một kẻ vô gia cư và mục tiêu chính của bạn là sống sót. Để làm được điều này, bạn sẽ phải đối mặt với đói nghèo, môi trường thù địch, con người không vô tâm và với mùa đông giá lạnh. Bạn có thể chơi với bạn bè hoặc với người chơi onine khác và làm bất cứ điều gì cần để tồn tại.\r\n\r\nChiến đấu cho cuộc sống của bạn trên đường phố tàn nhẫn. Tìm thùng đựng thức ăn và rượu. Bạn có thể móc túi, làm bất cứ điều gì cần thiết để sống qua ngày. Hãy đốt thứ gì đó để giữ cho mình ấm, vì thời tiết ngày càng trở nên tồi tệ hơn. Đêm đông lạnh lẽo có thể là kẻ thù lớn nhất của bạn, nhưng không phải là người duy nhất, vì vậy hãy nhận thức những bất ngờ khó chịu ẩn trong những góc tối của thành phố.                       ', 'hobomain.jpg', '/hobo1.jpg/hobo2.jpg/hobo3.jpg/hobomain.jpg', '   RECOMMENDED:<br><br>\r\nRequires a 64-bit processor and operating system<br>\r\nOS: 64-bit Windows 7, Windows 8.1, Windows 10<br>\r\nProcessor: Intel Core i5-2500K / AMD FX-8370<br>\r\nMemory: 8 GB RAM<br>\r\nGraphics: Nvidia GTX 970 / AMD R9 380X     <br>                ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/Eaf9wlAB6To\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 5, '2021-08-09 13:11:50', '2021-08-09 13:11:50'),
(38, 'Ghostrunner', ' Ghostrunner là một game hành động góc nhìn thứ nhất mang đến trải nghiệm chơi đơn tốc độ cao, các pha cận chiến quyết liệt và một bối cảnh giả tưởng hậu tận thế mang chất “cyberpunk”.<br><br>                       ', 'ghostmain.jpg', '/ghostmain.jpg/gohos1.jpg/goosh2.png/gosoh3.jpg', '    RECOMMENDED:<br><br> \r\nOS: Windows 7, 8.1, 10 x64<br> \r\nProcessor: Intel Core i7-6700K (4 * 4000) or AMD Ryzen 5 1500X (4 * 3500) or equivalent<br> \r\nMemory: 8 GB RAM<br> \r\nGraphics: GeForce GTX 970 (4096 MB) or Radeon RX 5700 (8192 MB)                   <br>  ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/KI4_4NRHYlI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 5, '2021-08-09 13:58:53', '2021-08-09 13:58:53'),
(39, 'Microsoft Office 2019', '     Office 2019 có một số tính năng nổi bật so với phiên bản Office 2016, như bộ công cụ bút chì màu đa dạng có thể tùy biến cho tất cả các phần mềm của Office. Bên cạnh đó, Microsoft cũng mang đến chế độ focus mode vào Word, bộ dịch thuật mới và cải thiện khả năng truy cập. Power Point đã có thể hỗ trợ mô hình SVG và 3D, xuất video 4K.                   ', 'officemain.jpg', '/off1.jpg/off2.jpg/off3.png/officemain.jpg', '  Mọi máy tính                    ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/untLDcPPdsw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 9, '2021-08-09 13:28:58', '2021-08-09 13:28:58');
INSERT INTO `item` (`id`, `name`, `description`, `img_main`, `img_extra`, `config`, `link`, `trailer`, `id_child`, `created_at`, `updated_at`) VALUES
(40, 'Autodesk AutoCAD Plant 3D', 'Autodesk AutoCAD Plant 3D 2021 là bộ công cụ dành riêng cho ngành thiết kế và kỹ thuật nhà máy để tạo P & ID và tích hợp chúng vào mô hình thiết kế nhà máy 3D.<br><br>\r\n\r\n\r\n\r\nAutoCAD Plant 3D, vì tất cả các ứng dụng AutoCAD đều có trình quản lý dự án cho phép bạn dễ dàng truy cập và duyệt qua các bản thiết kế và chi tiết tạo nên dự án của bạn. Bạn có thể xem cả thiết kế 3D và 2D, cũng như các tệp liên quan khác mà bạn đã nhúng vào dự án của mình.<br><br>\r\n\r\nVì bạn đang sử dụng ứng dụng để xây dựng các nhà máy 3D, nó cung cấp cho bạn khả năng thêm các hình nón, hình trụ, hình cầu, hình nêm và hình xuyến tùy chỉnh làm giảm đáng kể thời gian mà bạn thường sẽ xây dựng chúng từ mặt đất. Bạn cũng có thể để đùn, gác xép, quay vòng và quét các yếu tố.          <br><br>              ', 'automain.jpg', '/auto1.jpg/auto2.png/auto3.jpg/automain.jpg', ' ấu hình yêu cầu tối thiểu cài đặt phần mềm AutoCAD 2018\r\nBộ vi xử lý Pentium 4 hoặc Athlon lõi kép, 1.6 GHz trở lên với công nghệ SSE2 dành cho Windows XP. RAM: 2 GB (khuyên dùng 4 GB). Ổ đĩa cứng trống: 6 GB để cài đặt phần mềm. Độ phân giải màn hình 1024 x 768 với màu sắc thực (khuyên dùng 1600 x 1050).                      ', 'https://docs.google.com/document/d/1WlWOY2Qx1qMrOKDO8sCQPQ7P5b0d18hMfBxNTFgDT-0/edit?fbclid=IwAR1LUeouxEAkDbLzW5zvz2l5u8eAk4E6lSHiH2vXjThdp4ReTd9nYhI2Udo', '<iframe width=\"900\" height=\"500\" src=\"https://www.youtube.com/embed/CnUEzua_Eww\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 10, '2021-08-09 14:04:01', '2021-08-09 14:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `listlike`
--

CREATE TABLE `listlike` (
  `id_item` int(11) NOT NULL,
  `username` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listlike`
--

INSERT INTO `listlike` (`id_item`, `username`) VALUES
(7, 'admin'),
(7, 'quocbao1010'),
(8, 'admin'),
(8, 'quocbao1010'),
(9, 'admin'),
(10, 'admin'),
(13, 'admin'),
(14, 'admin'),
(15, 'admin'),
(16, 'admin'),
(20, 'admin'),
(21, 'admin'),
(30, 'quocbao1010'),
(32, 'quocbao1010'),
(37, 'quocbao1010'),
(39, 'admin'),
(40, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `name_menu` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `name_menu`) VALUES
(1, 'Games'),
(2, 'Phần mềm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `categorychild`
--
ALTER TABLE `categorychild`
  ADD PRIMARY KEY (`id_child`),
  ADD KEY `fk_2` (`id_parent`);

--
-- Indexes for table `categoryparent`
--
ALTER TABLE `categoryparent`
  ADD PRIMARY KEY (`id_parent`),
  ADD KEY `fk_1` (`id_menu`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_3` (`id_child`);

--
-- Indexes for table `listlike`
--
ALTER TABLE `listlike`
  ADD PRIMARY KEY (`id_item`,`username`),
  ADD KEY `fk_7` (`username`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorychild`
--
ALTER TABLE `categorychild`
  MODIFY `id_child` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categoryparent`
--
ALTER TABLE `categoryparent`
  MODIFY `id_parent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorychild`
--
ALTER TABLE `categorychild`
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`id_parent`) REFERENCES `categoryparent` (`id_parent`);

--
-- Constraints for table `categoryparent`
--
ALTER TABLE `categoryparent`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_3` FOREIGN KEY (`id_child`) REFERENCES `categorychild` (`id_child`);

--
-- Constraints for table `listlike`
--
ALTER TABLE `listlike`
  ADD CONSTRAINT `fk_6` FOREIGN KEY (`id_item`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `fk_7` FOREIGN KEY (`username`) REFERENCES `account` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

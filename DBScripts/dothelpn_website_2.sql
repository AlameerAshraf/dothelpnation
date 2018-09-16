-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 01:00 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dothelpn_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_config`
--

INSERT INTO `admin_config` (`key`, `value`) VALUES
('cms_lang', 'ar'),
('dvmode', 'yes'),
('mainlang', 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `admin_lang`
--

CREATE TABLE `admin_lang` (
  `id` int(11) NOT NULL,
  `code` varchar(155) COLLATE utf8_bin NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `dir` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `photo` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `is_main` varchar(155) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_lang`
--

INSERT INTO `admin_lang` (`id`, `code`, `name`, `dir`, `stuts`, `photo`, `is_main`) VALUES
(1, 'en', 'English', 'ltr', 1, 'adminlang-1503571971599eb00381ef2.png', NULL),
(8, 'ar', 'العربيه', 'rtl', 1, 'adminlang-1503577551599ec5cf3a357.png', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `admin_translation`
--

CREATE TABLE `admin_translation` (
  `id` int(11) NOT NULL,
  `lang_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `langkey` varchar(200) COLLATE utf8_bin NOT NULL,
  `text` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_translation`
--

INSERT INTO `admin_translation` (`id`, `lang_code`, `langkey`, `text`) VALUES
(1, 'en', 'addnew', 'add new item'),
(3, 'en', 'edit', 'edit'),
(5, 'en', 'sliders', 'sliders'),
(6, 'en', 'newslider', 'add new slider'),
(7, 'en', 'allsliders', 'All Sliders'),
(8, 'en', 'photo', 'photo'),
(9, 'en', 'active_stuts', 'active stuts'),
(11, 'en', 'delete', 'delete'),
(12, 'en', 'url', 'url'),
(13, 'en', 'is_active', 'yes'),
(14, 'en', 'is_notactive', 'no'),
(15, 'en', 'slider_title_1', 'slider title 1'),
(16, 'en', 'slider_title_2', 'slider title 2'),
(17, 'en', 'cancel', 'cancel'),
(18, 'en', 'submit', 'submit'),
(19, 'en', 'active', 'active'),
(20, 'en', 'yes', 'yes'),
(21, 'en', 'no', 'no'),
(22, 'en', 'change', 'change'),
(23, 'en', 'remove', 'remove'),
(24, 'en', 'select_image', 'select image'),
(25, 'ar', 'addnew', 'اضف جديد'),
(26, 'ar', 'edit', 'تعديل'),
(27, 'ar', 'sliders', 'الاسلايدر'),
(28, 'ar', 'newslider', 'اضافه سلايدر جديده'),
(29, 'ar', 'allsliders', 'عرض الاسلايدر'),
(30, 'ar', 'photo', 'صوره'),
(31, 'ar', 'active_stuts', 'تفعيل'),
(33, 'ar', 'delete', 'حذف'),
(34, 'ar', 'url', 'الرابط'),
(35, 'ar', 'is_active', 'نعم'),
(36, 'ar', 'is_notactive', 'لا'),
(37, 'ar', 'slider_title_1', 'عنوان الاسلايدر الأول'),
(38, 'ar', 'slider_title_2', 'عنوان الاسلايدر الثاني'),
(39, 'ar', 'cancel', 'الغاء'),
(40, 'ar', 'submit', 'حفظ البيانات'),
(41, 'ar', 'active', 'تفعيل'),
(42, 'ar', 'yes', 'نعم'),
(43, 'ar', 'no', 'لا'),
(44, 'ar', 'change', 'تغير'),
(45, 'ar', 'remove', 'مسح'),
(46, 'ar', 'select_image', 'اختر الصوره'),
(68, 'en', 'editdata', 'edit data'),
(69, 'ar', 'editdata', 'تعديل البيانات'),
(70, 'en', 'section_name', 'section Name'),
(73, 'en', 'language', 'language'),
(74, 'en', 'blogsections', 'Blog Sections'),
(75, 'ar', 'blogsections', 'اقسام الموقع'),
(76, 'en', 'newblogsections', 'New Section'),
(77, 'ar', 'newblogsections', 'أضف قسم جدبد'),
(78, 'en', 'viewblogsections', 'All Sections'),
(79, 'ar', 'viewblogsections', 'كل الأقسام'),
(80, 'en', 'sectionname', 'Section Name'),
(81, 'ar', 'sectionname', 'إسم القسم'),
(82, 'en', 'title', 'title'),
(83, 'ar', 'title', 'العنوان'),
(84, 'en', 'confirmdelete', 'Are you sure'),
(85, 'ar', 'confirmdelete', 'هل انت متاكد أنك تريد حذف هذا البيانات'),
(86, 'en', 'seo_url', 'SEO Frindly URl'),
(87, 'ar', 'seo_url', 'اضف رابط صديق لمحركات البحث'),
(88, 'en', 'short_info', 'add short description here'),
(89, 'ar', 'short_info', 'اضف وصف قصير هنا'),
(90, 'en', 'seo_keywords', 'SEO Meat Keywords'),
(91, 'ar', 'seo_keywords', 'الكلمات الداله لمحركات البحث'),
(92, 'en', 'seo_desc', 'enter your meta description for SEO here'),
(93, 'ar', 'seo_desc', 'اضف وصف محركات  البحث هنا'),
(94, 'en', 'blogposts', 'Blog Posts'),
(95, 'ar', 'blogposts', 'المدونه'),
(96, 'en', 'newpost', 'New Post'),
(97, 'ar', 'newpost', 'أضف تدوينه جديده'),
(98, 'en', 'allposts', 'All Posts'),
(99, 'ar', 'allposts', 'كل التدوينات'),
(100, 'en', 'writter', 'Aother'),
(101, 'ar', 'writter', 'الكاتب'),
(102, 'en', 'select_ection', 'Select Section'),
(103, 'ar', 'select_ection', 'إختر القسم'),
(104, 'en', 'adminlanguages', 'Admin Languages'),
(105, 'ar', 'adminlanguages', 'لغات لوحه التحكم'),
(106, 'en', 'addlnewang', 'New Lang'),
(107, 'ar', 'addlnewang', 'أضف لغه جديده'),
(108, 'en', 'alllanguages', 'All Languages'),
(109, 'ar', 'alllanguages', 'كل اللغات'),
(110, 'en', 'select_viewlang', 'select web display language'),
(111, 'ar', 'select_viewlang', 'إختر لغه الظهور المخصصه'),
(112, 'ar', 'language', 'اللغه'),
(113, 'en', 'addcontent', 'add content'),
(114, 'ar', 'addcontent', 'اضف المحتوى'),
(115, 'en', 'pages', 'pages'),
(116, 'ar', 'pages', 'الصفحات'),
(117, 'en', 'addpage', 'add page'),
(118, 'ar', 'addpage', 'أضف صفحه'),
(119, 'en', 'allpages', 'all pages'),
(120, 'ar', 'allpages', 'كل الصفحات'),
(121, 'en', 'addnewpage', 'add new page'),
(122, 'ar', 'addnewpage', 'اضف صفحه جديده'),
(123, 'en', 'is_indb', 'The tour name  has already exists in database'),
(124, 'ar', 'is_indb', 'لقد تم إدخال هذه البيانات من قبل'),
(125, 'en', 'editpage', 'Edit Page'),
(126, 'ar', 'editpage', 'تعديل الصفحه'),
(127, 'ar', 'section', 'القسم'),
(128, 'en', 'section', 'section'),
(129, 'ar', 'date', 'التاريخ'),
(130, 'en', 'date', 'date'),
(131, 'ar', 'gallery_type', 'نوع قسم الجاليرى'),
(132, 'en', 'gallery_type', 'gallery section type'),
(133, 'ar', 'newgallerysection', 'New gallery section'),
(134, 'en', 'newgallerysection', 'اضف قسم جاليرى جديد'),
(135, 'ar', 'gallery_sections', 'اقسام الجاليرى'),
(136, 'en', 'gallery_sections', 'gallery sections'),
(137, 'en', 'newgallerysection', 'اضف قسم جاليرى جديد'),
(138, 'ar', 'newgallerysection', 'New gallery section'),
(139, 'en', 'allgallerysection', 'All gallery sections'),
(140, 'ar', 'allgallerysection', 'كل اقسام الجاليرى'),
(141, 'en', 'photogallery', 'photo gallery'),
(142, 'ar', 'photogallery', 'معرض الصور'),
(143, 'en', 'addphotogallery', 'add new photos'),
(144, 'ar', 'addphotogallery', 'اضف صور جديده'),
(145, 'en', 'viewphotogallery', 'view all photos'),
(146, 'ar', 'viewphotogallery', 'عرض الصور المضافه'),
(147, 'en', 'videogallery', 'video gallery'),
(148, 'ar', 'videogallery', 'معرض الفيديو'),
(149, 'en', 'addvideogallery', 'New video gallery'),
(150, 'ar', 'addvideogallery', 'اضافه فيديو جديد'),
(151, 'en', 'viewvideogallery', 'All video gallery'),
(152, 'ar', 'viewvideogallery', 'كل مقاطع الفيديو'),
(153, 'en', 'videourl', 'video url'),
(154, 'ar', 'videourl', 'رابط الفيديو'),
(219, 'en', 'addvideo', 'add video'),
(220, 'ar', 'addvideo', 'اضف فيديو'),
(221, 'en', 'section', 'section'),
(222, 'ar', 'section', 'القسم'),
(223, 'en', 'soicalmediaa', 'soical mediaa'),
(224, 'ar', 'soicalmediaa', 'سوشيال ميديا'),
(225, 'en', 'global_settings', 'global settings'),
(226, 'ar', 'global_settings', 'الاعدادات العامه'),
(227, 'en', 'siteinfo', 'site information'),
(228, 'ar', 'siteinfo', 'بيانات الموقع'),
(229, 'en', 'sitename', 'site name'),
(230, 'ar', 'sitename', 'اسم الموقع'),
(231, 'en', 'sitetageline', 'secondary name'),
(232, 'ar', 'sitetageline', 'اسم اخر للموقع'),
(233, 'en', 'siteaddress', 'address'),
(234, 'ar', 'siteaddress', 'العنوان'),
(235, 'en', 'siteemail_1', 'company mail'),
(236, 'ar', 'siteemail_1', 'البريد الالكتروني'),
(237, 'en', 'siteemail_2', 'company mail 2'),
(238, 'ar', 'siteemail_2', 'بريد الكتروني أخر'),
(239, 'en', 'sitefaxnumber', 'fax number'),
(240, 'ar', 'sitefaxnumber', 'رقم الفاكس'),
(241, 'en', 'sitetelphone', 'tel phone number'),
(242, 'ar', 'sitetelphone', 'رقم الهاتف'),
(243, 'en', 'sitephone', 'mobile number'),
(244, 'ar', 'sitephone', 'رقم الجوال'),
(245, 'en', 'sitephone_2', 'mobile number 2'),
(246, 'ar', 'sitephone_2', 'رقم جوال أخر'),
(247, 'en', 'siteaddress_2', 'company address 2'),
(248, 'ar', 'siteaddress_2', 'العنوان بالأنجليزيه'),
(249, 'en', 'sitemapcode', 'google map code'),
(250, 'ar', 'sitemapcode', 'كود خريطه موقع الشركه'),
(251, 'en', 'sitewelcomemsg', 'ٍwelcome message in home page'),
(252, 'ar', 'sitewelcomemsg', 'رساله ترحيب الصفحه الرئيسيه'),
(253, 'en', 'sitelogos', 'site logos'),
(254, 'ar', 'sitelogos', 'لوجوهات الموقع'),
(255, 'en', 'sitefaiveicone', 'site faive icone'),
(256, 'ar', 'sitefaiveicone', 'ايكون مميزه للموقع'),
(257, 'en', 'sitemobilelogo', 'site mobile logo'),
(258, 'ar', 'sitemobilelogo', 'لوجو الموقع للجوال'),
(259, 'en', 'sitelogo', 'site logo'),
(260, 'ar', 'sitelogo', 'لوجو الموقع'),
(261, 'en', 'uploadphotos', 'select images to uploads'),
(262, 'ar', 'uploadphotos', 'اختر الصور التي تريد رفعها'),
(263, 'en', 'services', 'Services'),
(264, 'ar', 'services', 'الخدمات'),
(265, 'en', 'addservice', 'add new service'),
(266, 'ar', 'addservice', 'اضف خدمه جديده'),
(267, 'en', 'allservice', 'all service'),
(268, 'ar', 'allservice', 'كل الخدمات'),
(269, 'en', 'editservice', 'edit service'),
(270, 'ar', 'editservice', 'تعديل الخدمه'),
(271, 'en', 'sitemenu', 'site menu'),
(272, 'ar', 'sitemenu', 'قائمه الموقع'),
(273, 'en', 'addmenulocation', 'add menu location'),
(274, 'ar', 'addmenulocation', 'اضف قسم القائمه'),
(275, 'en', 'allmenulocations', 'all menu locations'),
(276, 'ar', 'allmenulocations', 'عرض اقسام القائمه'),
(277, 'en', 'menulocationname', 'menu location name'),
(278, 'ar', 'menulocationname', 'اسم مخصص لمكان القائمه'),
(279, 'en', 'menulocationcode', 'add menu url'),
(280, 'ar', 'menulocationcode', 'اضف رابط القائمه'),
(281, 'en', 'menulocations', 'menu locations'),
(282, 'ar', 'menulocations', 'اقسام قوائم الموقع'),
(283, 'en', 'addmenu', 'add new menu'),
(284, 'ar', 'addmenu', 'اضف قائمه جديده'),
(285, 'en', 'allmenus', 'all menus'),
(286, 'ar', 'allmenus', 'كل القوائم'),
(287, 'en', 'select_sitelinks', 'select menu link'),
(288, 'ar', 'select_sitelinks', 'اختر رابط القائمه من المحتوي'),
(289, 'en', 'chooslang', 'choose lang'),
(290, 'ar', 'chooslang', 'إختر لغتك المفضله'),
(291, 'en', 'contactus', 'contact us'),
(292, 'ar', 'contactus', 'اتصل بنا'),
(293, 'en', 'viewmessages', 'view messages'),
(294, 'ar', 'viewmessages', 'عرض الرسائل'),
(295, 'en', 'mail_server_settings', 'Message Server Settings'),
(296, 'ar', 'mail_server_settings', 'إعدادات سيرفر الرسائل'),
(297, 'en', 'email_settings', 'email settings'),
(298, 'ar', 'email_settings', 'إعدادات البريد الإلكتروني'),
(299, 'en', 'mail_send_to', 'send to'),
(300, 'ar', 'mail_send_to', 'ارسال الي'),
(301, 'en', 'mail_send_to_cc', 'CC'),
(302, 'ar', 'mail_send_to_cc', 'ارسال الي بريد اخر CC'),
(303, 'en', 'mail_simple_settings', 'Simple settings'),
(304, 'ar', 'mail_simple_settings', 'إعدادات بسيطة'),
(305, 'en', 'mail_advanced_settings', 'Advanced settings (preferred)'),
(306, 'ar', 'mail_advanced_settings', 'إعدادات متقدمة ( يفضل  )'),
(307, 'en', 'mai_options_title', 'These settings are related to the way you send the email, you can use the method that suits you'),
(308, 'ar', 'mai_options_title', 'هذه الاعدادات متعلقه بطريق ارسال البر يد الإلكتروني يمكنك استخدام الطريقه التي تناسبك'),
(309, 'en', 'mail_sender', 'sender'),
(310, 'ar', 'mail_sender', 'الراسل'),
(311, 'en', 'mail_name', 'name'),
(312, 'ar', 'mail_name', 'الإسم'),
(313, 'en', 'mail_phone', 'phone'),
(314, 'ar', 'mail_phone', 'الهاتف'),
(315, 'en', 'mail_stuts', 'message stuts'),
(316, 'ar', 'mail_stuts', 'حاله الرساله'),
(317, 'en', 'mail_subject', 'subject'),
(318, 'ar', 'mail_subject', 'الموضوع'),
(319, 'en', 'mail_message', 'message'),
(320, 'ar', 'mail_message', 'الرساله'),
(321, 'en', 'mail_attach', 'message attach'),
(322, 'ar', 'mail_attach', 'ملف مرفق'),
(323, 'en', 'mail_date', 'message date'),
(324, 'ar', 'mail_date', 'تاريخ الرساله'),
(325, 'en', 'mail_time', 'message time'),
(326, 'ar', 'mail_time', 'وقت الا ستلام'),
(327, 'en', 'mail_notreaded', 'not read'),
(328, 'ar', 'mail_notreaded', 'غير مقروؤه'),
(329, 'en', 'mail_readed', 'readed'),
(330, 'ar', 'mail_readed', 'مقروؤه'),
(331, 'en', 'mail_readingstuts', 'reading stuts'),
(332, 'ar', 'mail_readingstuts', 'حاله القراءه'),
(333, 'en', 'mail_replay', 'Reply to message'),
(334, 'ar', 'mail_replay', 'رد علي الرساله'),
(335, 'en', 'mail_arachive', 'Transfer to archive'),
(336, 'ar', 'mail_arachive', 'نقل للأرشيف'),
(337, 'en', 'mail_temp', 'Temporary deletion'),
(338, 'ar', 'mail_temp', 'حذف مؤقت'),
(339, 'en', 'mail_important', 'Important messages'),
(340, 'ar', 'mail_important', 'الرسائل الهامه'),
(341, 'en', 'usermanagement', 'User Management'),
(342, 'ar', 'usermanagement', 'اداره المستخدمين'),
(343, 'en', 'adduser', 'add user'),
(344, 'ar', 'adduser', 'اضافه مستخدم'),
(345, 'en', 'allusers', 'all users'),
(346, 'ar', 'allusers', 'كل المستخدمين'),
(347, 'en', 'username', 'user name'),
(348, 'ar', 'username', 'اسم المستخدم'),
(349, 'en', 'user_mail', 'user email'),
(350, 'ar', 'user_mail', 'البريد الالكتروني'),
(351, 'en', 'user_password', 'user password'),
(352, 'ar', 'user_password', 'كلمه مرور المستخدم'),
(353, 'en', 'user_rolls', 'User Rolls'),
(354, 'ar', 'user_rolls', 'صلاحيات المستخدم'),
(355, 'en', 'user_choose_rolls', 'choose user rolls'),
(356, 'ar', 'user_choose_rolls', 'اختر صلاحيات المستخدم'),
(357, 'en', 'instagram', 'instagram'),
(358, 'ar', 'instagram', 'انستجرام');

-- --------------------------------------------------------

--
-- Table structure for table `ads_messages`
--

CREATE TABLE `ads_messages` (
  `id` int(11) NOT NULL,
  `type` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `info` text COLLATE utf8_bin,
  `stuts` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `time` varchar(155) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ads_messages`
--

INSERT INTO `ads_messages` (`id`, `type`, `parent_id`, `ad_id`, `from_user_id`, `to_user_id`, `title`, `info`, `stuts`, `date`, `time`) VALUES
(3, 'message', 2, 6, 14, 2, 'ربما هناك امر ما', 'ابلايب ب  ي با يباياي اابلايب ب  ي با يباياي اابلايب ب  ي با يباياي اابلايب ب  ي با يباياي ا', 1, '2017-11-03', '11-58-32-AM');

-- --------------------------------------------------------

--
-- Table structure for table `ad_photos`
--

CREATE TABLE `ad_photos` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `photo` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ad_photos`
--

INSERT INTO `ad_photos` (`id`, `ad_id`, `photo`) VALUES
(1, 11, 'postsphots-150934593159f6ca8bd120f.png'),
(2, 11, 'postsphots-150934593159f6ca8bd9538.png'),
(3, 11, 'postsphots-150934593159f6ca8be18f6.png'),
(4, 11, 'postsphots-150934593159f6ca8bf1ef0.png'),
(5, 11, 'postsphots-150934593259f6ca8c227ee.png'),
(6, 11, 'postsphots-150934593259f6ca8c45201.png'),
(7, 11, 'postsphots-150934593259f6ca8c4d57c.png'),
(8, 11, 'postsphots-150934593259f6ca8c558c3.png'),
(9, 11, 'postsphots-150934593259f6ca8c5dc74.png'),
(10, 11, 'postsphots-150934593259f6ca8c65fcb.png'),
(11, 11, 'postsphots-150934593259f6ca8c6e380.png'),
(12, 11, 'postsphots-150934593259f6ca8c766dd.png'),
(13, 11, 'postsphots-150934593259f6ca8c7ea9a.png'),
(21, 13, 'postsphots-150964165659fb4db823ee2.png'),
(22, 13, 'postsphots-150964165659fb4db84ba25.png'),
(23, 13, 'postsphots-150964165659fb4db861afa.png'),
(29, 8, 'postsphots-150964369159fb55ab4adb6.png'),
(30, 8, 'postsphots-150964369159fb55ab55e54.png'),
(31, 8, 'postsphots-150964369159fb55ab7cdef.png'),
(32, 8, 'postsphots-150964369159fb55ab9a2f5.png'),
(33, 8, 'postsphots-150964369159fb55aba7eee.png'),
(34, 6, 'postsphots-150964583259fb5e08b5859.png'),
(35, 6, 'postsphots-150964583259fb5e08c5fc8.png'),
(36, 6, 'postsphots-150964583259fb5e08d6717.png'),
(37, 6, 'postsphots-150964583259fb5e08e9a28.png'),
(39, 6, 'postsphots-150964583359fb5e09358d7.png'),
(40, 14, 'postsphots-150969059759fc0ce501076.png'),
(41, 14, 'postsphots-150969059759fc0ce521be0.png'),
(42, 14, 'postsphots-150969059759fc0ce5375ac.png'),
(43, 14, 'postsphots-150969059759fc0ce565600.png'),
(47, 15, 'postsphots-15115610275a1897431f811.jpg'),
(49, 15, 'postsphots-15115610275a1897432b1f9.jpg'),
(50, 25, 'postsphots-15228656775ac5160daa255.png'),
(51, 26, 'postsphots-15228657975ac5168559eb5.jpg'),
(52, 27, 'postsphots-15228658715ac516cfb05cd.jpg'),
(53, 29, 'postsphots-15238853415ad4a51d7597d.jpg'),
(54, 29, 'postsphots-15238853415ad4a51d79bc6.jpg'),
(55, 29, 'postsphots-15238853415ad4a51d7a760.jpg'),
(56, 31, 'postsphots-15280370135b13fe9521e64.png'),
(57, 32, 'postsphots-15280390885b1406b054c59.jpg'),
(58, 35, 'postsphots-15313447035b46773f96dfe.jpg'),
(59, 37, 'postsphots-15318622565b4e5cf04d007.jpg'),
(60, 38, 'postsphots-15318625585b4e5e1e7d3c9.jpg'),
(61, 41, 'postsphots-15318635475b4e61fb66438.jpg'),
(63, 46, 'postsphots-15318658985b4e6b2a43df7.png'),
(64, 47, 'postsphots-15318662805b4e6ca898762.png'),
(65, 48, 'postsphots-15318663995b4e6d1f41fde.png'),
(66, 49, 'postsphots-15318665025b4e6d8614de4.png'),
(67, 50, 'postsphots-15318666255b4e6e014a58a.png'),
(68, 51, 'postsphots-15318667375b4e6e712fba8.png'),
(69, 56, 'postsphots-15327127785b5b574a11d5d.png'),
(70, 57, 'postsphots-15327134275b5b59d31b461.png'),
(71, 58, 'postsphots-15328987545b5e2dc231f7e.png'),
(72, 60, 'postsphots-15335990515b68dd4be68c6.jpg'),
(74, 86, 'postsphots-15354027145b8462da3e3e5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `langkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `title` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `address` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `place_id` int(6) DEFAULT NULL,
  `city_id` int(5) DEFAULT NULL,
  `map_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `map_radius` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `map_latitude` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `map_longitude` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bloodtype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `short_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `type` enum('missing','found','helprequest','viewhelp','donateblood','helppet','blacklist','tellme','khodbalck') COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin,
  `publish_date` date DEFAULT NULL,
  `time` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `vists` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `langkey`, `section_id`, `title`, `url`, `address`, `place_id`, `city_id`, `map_address`, `map_radius`, `map_latitude`, `map_longitude`, `photo`, `bloodtype`, `content`, `short_desc`, `type`, `user_id`, `stuts`, `meat_description`, `meat_keywords`, `publish_date`, `time`, `vists`) VALUES
(34, 'ar', 1, 'العثور على طفلتين', '%D8%A7%D9%84%D8%B9%D8%AB%D9%88%D8%B1-%D8%B9%D9%84%D9%89-%D8%B7%D9%81%D9%84%D8%AA%D9%8A%D9%86', 'مدينة طنطا', 96, 540, 'Darb Al Saqqa, Tanta Qism 2, Tanta, Gharbia Governorate, مصر', '300', '30.782170380285844', '31.00089202031245', 'post-15312546875b45179f90159.jpg', NULL, 'الطفلتين دول معثور عليهم بمدينة طنطا منذ حوالي أسبوعين.....أي أحد يعرف أهليهم يتصل بي ٠١٢٢٥٨٧٥٦٠٧', NULL, NULL, 26, 1, NULL, NULL, '2018-07-10', '02:15:31 AM', 825),
(93, NULL, 1, 'طفل كبير مفقود', 'http://www.dothelpnation.com/', NULL, 86, 184, NULL, NULL, '31.2114916', '29.9243751', 'http://c87b8985.ngrok.io/BlogPhotos/4d201052-4c65-450b-b7e2-883b020d4011.png', NULL, 'عيل اهبل تايه واسمه ابراهيم يا ولاد الحلاح', NULL, NULL, 67, NULL, NULL, NULL, '2018-09-02', '02:15:31 AM', NULL),
(94, NULL, 11, 'العثور على طفلتين', 'http://www.dothelpnation.com/', NULL, 135, 87, NULL, NULL, '31.2114916', '29.9243751', 'http://c87b8985.ngrok.io/BlogPhotos/3b643afa-f6b0-40f1-9a9e-75b5ce56dacc.jpg', NULL, 'الطفلتين دول معثور عليهم بمدينة طنطا منذ حوالي أسبوعين.....أي أحد يعرف أهليهم يتصل بي ٠١٢٢٥٨٧٥٦٠٧', NULL, NULL, 70, NULL, NULL, NULL, '2018-09-02', '02:19:46 AM', NULL),
(95, NULL, 11, 'العثور على طفلتين', 'http://www.dothelpnation.com/', NULL, 135, 87, NULL, NULL, '31.2114916', '29.9243751', 'http://c87b8985.ngrok.io/BlogPhotos/89fba660-fcb2-4a2b-ad78-b4f0ea9aa32e.jpg', NULL, 'الطفلتين دول معثور عليهم بمدينة طنطا منذ حوالي أسبوعين.....أي أحد يعرف أهليهم يتصل بي ٠١٢٢٥٨٧٥٦٠٧', NULL, NULL, 70, NULL, NULL, NULL, '2018-09-04', '11:39:45 PM', NULL),
(96, NULL, 11, 'tst', 'http://www.dothelpnation.com/', 'tst', 116, 87, NULL, NULL, '31.2114916', '29.9243751', 'http://c87b8985.ngrok.io/BlogPhotos/081dc1b4-0b6d-4c02-9586-bc93d0bd347f.jpg', NULL, 'bdhdbdbdjdjddjndsjsnjdbdbdnxbnjjdk', NULL, NULL, 62, NULL, NULL, NULL, '2018-09-07', '01:20:44 AM', NULL),
(97, NULL, 11, 'شاب غريب الاطوار ضاءع ف المنصورة', 'http://www.dothelpnation.com/', 'المنصورة شارع الطيران', 246, 89, NULL, NULL, '31.2114916', '29.9243751', 'http://c87b8985.ngrok.io/BlogPhotos/eed62322-bd64-4fda-a664-83e307d4827a.jpg', NULL, 'العثور ع الشاب ده ببتعانل بشكل غريب مع الناس واسلوله مريب والناس طلبتله الشرطة ', NULL, NULL, 62, NULL, NULL, NULL, '2018-09-07', '06:12:16 PM', NULL),
(98, NULL, 15, 'العثور ع شاب وسيم', 'http://www.dothelpnation.com/', 'نور الاسلام', 116, 87, NULL, NULL, '31.2114916', '29.9243751', 'http://www.saydala.online/BlogPhotos/d330e325-bde1-4179-bdf6-de4d13b207eb.jpg', NULL, 'لاقينا شاب وسيم جدا هنا الحقونااا', NULL, NULL, 62, NULL, NULL, NULL, '2018-09-07', '07:12:50 PM', NULL),
(99, NULL, 14, 'مسطرة ضاءعه في الاسكندرية', NULL, 'الابرهيمه', 115, 87, NULL, NULL, NULL, NULL, 'http://c87b8985.ngrok.io/BlogPhotos/0d68a383-7e5a-4760-be2d-205e312fb7d0.jpg', NULL, 'مسطرة لونها احمر ضاعت مني اللي يشوفها بتصل ع الرقم ده ضروري ٠١٠٩٥٧٠٨٤٨٤', NULL, NULL, 65, NULL, NULL, NULL, '2018-09-08', '08:41:04 AM', 0),
(100, NULL, 11, 'علبة مناديل سوفت روز ضايعه ', NULL, 'حدايق المعادي', 190, 86, NULL, NULL, NULL, NULL, 'http://www.saydala.online/BlogPhotos/e91822f2-8049-4d63-911e-1fcd7a5ef7bc.jpg', NULL, 'ضاعت مني علبة مناديل سوفت روز الله يخليكم دلوني عليها ', NULL, NULL, 65, NULL, NULL, NULL, '2018-09-10', '03:55:19 AM', 0),
(101, NULL, 13, 'كرسي ضايع جدا', NULL, 'حدايق المعادي', 168, 86, NULL, NULL, '29.9737325', '31.2491471', 'http://www.saydala.online/BlogPhotos/c1ec7835-6d22-45af-99df-8e0a958e85f4.jpg', NULL, 'فيه كرسي ضاع مننا جامد ', NULL, NULL, 65, NULL, NULL, NULL, '2018-09-10', '04:25:14 AM', 0),
(102, NULL, 11, 'الموضع', NULL, 'العنوان ', 219, 9, NULL, NULL, '29.968685126646545', '31.24945012187152', 'http://b86d33e0.ngrok.io/BlogPhotos/bff0f8af-c8d5-4695-8d1b-0f09bcf6cbfa.jpg', NULL, 'الشرح ', NULL, NULL, 65, NULL, NULL, NULL, '2018-09-11', '07:13:24 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_sections`
--

CREATE TABLE `blog_sections` (
  `id` int(11) NOT NULL,
  `langkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `stuts` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `blog_sections`
--

INSERT INTO `blog_sections` (`id`, `langkey`, `title`, `url`, `stuts`, `photo`, `content`, `meat_description`, `meat_keywords`) VALUES
(1, 'ar', 'مفقودين', '%D9%85%D9%81%D9%82%D9%88%D8%AF%D9%8A%D9%86', '1', NULL, NULL, NULL, NULL),
(2, 'ar', 'تبرع بالدم', '%D8%AA%D8%A8%D8%B1%D8%B9-%D8%A8%D8%A7%D9%84%D8%AF%D9%85', '1', NULL, NULL, NULL, NULL),
(3, 'ar', 'ايواء الحيوانات', '%D8%A7%D9%8A%D9%88%D8%A7%D8%A1-%D8%A7%D9%84%D8%AD%D9%8A%D9%88%D8%A7%D9%86%D8%A7%D8%AA', '1', NULL, NULL, NULL, NULL),
(4, 'ar', 'فقد', '%D9%81%D9%82%D8%AF', '1', NULL, NULL, NULL, NULL),
(5, 'ar', 'عثر علي', '%D8%B9%D8%AB%D8%B1-%D8%B9%D9%84%D9%8A', '1', NULL, NULL, NULL, NULL),
(11, 'en', 'Missing', 'Missing', '1', NULL, NULL, NULL, 'some text'),
(12, 'en', 'Donate Blood', 'Donate-Blood', '1', NULL, NULL, NULL, 'some text'),
(13, 'en', 'Help Pet', 'Help-Pet', '1', NULL, NULL, NULL, 'some text'),
(14, 'en', 'miss', 'miss', '1', NULL, NULL, NULL, 'some text'),
(15, 'en', 'Found', 'Found', '1', NULL, NULL, NULL, 'some text');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `type` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `comment` text COLLATE utf8_bin,
  `date` date DEFAULT NULL,
  `time` varchar(155) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `type`, `user_id`, `ad_id`, `name`, `email`, `phone`, `comment`, `date`, `time`) VALUES
(2, 'user', 2, 6, NULL, NULL, NULL, 'تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي تعليق تجريبي', '2017-11-05', '01-28-28-AM'),
(3, 'vistor', NULL, 6, 'محمد سيد', 'demo@demo.com', '01203221530', 'تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي  تعليق تجريبي', '2017-11-05', '01-54-51-PM'),
(4, 'user', 2, 6, NULL, NULL, NULL, 'جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل  جزاك الله خيرا يااخي علي هذا العمل الجميل', '2017-11-05', '02-17-41-PM'),
(5, 'user', 18, 16, NULL, NULL, NULL, 'احنا اهله', '2017-12-08', '02-27-29-AM'),
(6, 'user', 17, 17, NULL, NULL, NULL, 'انا معايا شيك دم', '2017-12-08', '02-39-10-PM'),
(7, 'user', 2, 24, NULL, NULL, NULL, 'ىتقثى فقستىفسقبتىفقسفىقي', '2018-02-05', '08-56-05-PM'),
(8, 'user', 2, 24, NULL, NULL, NULL, 'صبصثبثصبضثصبضصبضبص', '2018-02-05', '08-57-43-PM'),
(9, 'user', 18, 24, NULL, NULL, NULL, 'CsdsvsavsvsV', '2018-02-05', '08-58-11-PM'),
(10, 'user', 2, 17, NULL, NULL, NULL, 'لابءلارئبءلاءراىلاؤلراىلا', '2018-02-05', '09-03-57-PM'),
(11, 'vistor', NULL, 22, 'jjjjj', 'uuuuuuuuuuuuuuuuuuuuuuu', 'jjjjjjjjjjjjjjjjjjjjjjj', 'uuuuuuuu', '2018-04-14', '05-32-36-PM');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `title` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `short_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `email_contact`
--

CREATE TABLE `email_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `message` text COLLATE utf8_bin,
  `attach` text COLLATE utf8_bin,
  `date` date DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `readed` int(11) NOT NULL DEFAULT '0',
  `stuts` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `email_contact`
--

INSERT INTO `email_contact` (`id`, `name`, `email`, `phone`, `subject`, `message`, `attach`, `date`, `time`, `readed`, `stuts`) VALUES
(2, 'dv bahaa2', 'dvbahaa2@gmail.com', '01011484991', ' demo mail222 ', 'this demo from dv bahaa this demo from dv bahaa this demo from dv bahaa this demo from dv bahaa this demo from dv bahaa this demo from dv bahaa vvv', NULL, NULL, NULL, 1, '0'),
(3, 'sedsdhb', 'gb@fvhdf.fhfgbjdfjgj', '2144635454', 'dhfghhkm,dfgf', 'gjkhgjfdhg', NULL, NULL, NULL, 1, '1'),
(4, 'sedsdhb', 'gb@fvhdf.fhfgbjdfjgj', '2144635454', 'dhfghhkm,dfgf', 'gjkhgjfdhg', NULL, NULL, NULL, 0, '1'),
(5, 'بهاء الدين', 'admin@gmail.com', NULL, 'تجريبي', 'سيابيليسل ي ل  لب يسل', NULL, '2018-04-15', '05-58-14-PM', 0, '0'),
(6, 'sddgsdsdg', 'admin@demo.com', NULL, 'قلسبيل', 'بيلسيبلسيليسليليل\r\nل\r\nيس\r\nل\r\nسييل', NULL, '2018-04-15', '06-02-03-PM', 0, '0'),
(7, 'jhkjh', 'fufgf@tet.com', NULL, 'hkjhkjhkjh', 'kjhkjhkjh', NULL, '2018-04-16', '01-44-38-PM', 0, '0'),
(8, 'Nick', 'nick.arora@scrollnext.com', NULL, 'make some correction on html & css and mobile version-', 'Hi Ahmed,\r\n\r\nMy name is Nick, a passionate Web Designer and Developer with 13 years of experience in Website design/redesign. I have gone through your project description and website -  www.dothelpnation.com  in detail and I feel that I fits bit for this job.\r\n\r\nI can redesign and its landing pages as per your requirements. I can also customize the theme, plug-ins and  handle any kind of maintenance work. I will ensure the pages will grab attention of visitors, engage them and helps in converting them in leads/sales. Apart from page\'s look and feel, I will focus more on\r\n\r\n- User experience\r\n\r\n- its colors\r\n\r\n- Call to actions\r\n\r\n- Pitches and their placement\r\n\r\n- Data tracking on various elements/events and based on the numbers taking an action\r\n\r\n- Industry specific graphics/pictures\r\n\r\n \r\n\r\nApart from this, we can also discuss the following things-\r\n\r\n\r\n -  Header pitches which will give an idea about our services\r\n-  Header menu improvements\r\n-  Enhanced user experience\r\n-  Responsiveness/ Mobile friendly design & layout\r\n-  Less page load time & fully optimized for Google\r\n\r\n \r\n\r\nMy core skills include:\r\n\r\n-  Photoshop\r\n\r\n-  Illustrator\r\n\r\n-  HTML5, CSS, JS\r\n\r\n- WordPress, Shopify, Joomla, PHP\r\n\r\n-  Wireframing (Axure, Balsamiq, MS Visio)\r\n\r\n- Interaction Design\r\n\r\n-  Mobile Design (Responsive Design)\r\n\r\n-  MySQL\r\n\r\nYou can check my portfolio here:\r\n\r\nhttp://www.wiziq.com/\r\n\r\nhttps://cityspeakeasy.com/\r\n\r\nhttp://easygrocery.me/\r\n\r\nhttp://www.linwilder.com/\r\n\r\nhttp://lextralearning.com/\r\n\r\nDymec.com\r\n\r\nLegacyalpha.com\r\n\r\nhttp://foreverdancing.com/\r\n\r\nhttp://www.jetlagfestival.com\r\n\r\nhttp://www.nasahpetals.com/\r\n\r\nhttp://www.quickclass.net/\r\n\r\nhttp://plentyfull.com/\r\n\r\nhttp://theumashow.com/\r\n\r\nhttp://codequotient.com/\r\n\r\nhttps://www.richardklopp.com/\r\n\r\n \r\n\r\nI can share the updates with you on regular basis about the tasks finished and my next steps to update your website. I will be available on Skype/Google Hangout/Emails for more than 16 hours a day.\r\n\r\n \r\n\r\nMy Skype/Hangout:  nicksanman@gmail.com\r\n\r\n \r\n\r\nPlease let me know if you have any queries, so that we can schedule a call or communicate via emails.\r\n\r\n \r\n\r\nLooking forward to hear from you soon.\r\n\r\n \r\n\r\nGreetings,\r\n\r\nNick', NULL, '2018-05-10', '11-44-54-AM', 0, '0'),
(9, 'Mike Goldman', 'aimlessfeet99@gmail.com', NULL, 'website development services', 'Hi, \r\n\r\nMy name is Mike, I just read your ad online about needing a Front End Developer. I believe I\'m the right resource you\'re looking for.\r\n\r\nMy bread and butter is creating quality and fully responsive HTML for small business sites, my reputation is based on the high quality of the work i deliver. Whether you need me to start with PSD’s and slice them up or create a fully responsive front-end using industry standard Bootstrap. I can do for you what I’ve done for literally hundreds of others - create beautiful, well performing HTML and CSS that delivers for you and your customers.\r\n\r\nPrevious Front End work;\r\nhttp://tinsdills.co.uk\r\nhttp://egoptimize.com\r\nhttp://jonesclayton.com\r\nhttp://www.wattagept.com\r\nhttp://frenchkande.com/\r\nhttp://www.takemyonlineclass.com\r\n\r\nThanks for your consideration and I look forward to speaking with you soon. \r\nBest of luck,\r\nMike\r\n(847) 868-3654', NULL, '2018-05-10', '02-01-20-PM', 0, '0'),
(10, 'HFRHFDFYHRDYF', 'HEEweE@GAMIL', NULL, 'HRDYFH', 'eqwRRFADGSFYHDTGH', NULL, '2018-05-13', '08-27-53-PM', 0, '0'),
(11, 'Mike Goldman', 'aimlessfeet99@gmail.com', NULL, 'website development services', 'Hi, \r\n\r\nMy name is Mike, I just read your ad online about needing a Front End Developer. I believe I\'m the right resource you\'re looking for.\r\n\r\nMy bread and butter is creating quality and fully responsive HTML for small business sites, my reputation is based on the high quality of the work i deliver. Whether you need me to start with PSD’s and slice them up or create a fully responsive front-end using industry standard Bootstrap. I can do for you what I’ve done for literally hundreds of others - create beautiful, well performing HTML and CSS that delivers for you and your customers.\r\n\r\nPrevious Front End work;\r\nhttp://tinsdills.co.uk\r\nhttp://egoptimize.com\r\nhttp://jonesclayton.com\r\nhttp://www.wattagept.com\r\nhttp://frenchkande.com/\r\nhttp://www.takemyonlineclass.com\r\n\r\nThanks for your consideration and I look forward to speaking with you soon. \r\nBest of luck,\r\nMike\r\n(847) 868-3654', NULL, '2018-05-14', '05-30-48-PM', 0, '0'),
(12, 'Mike Goldman', 'aimlessfeet99@gmail.com', NULL, 'website development services', 'Hi,\r\n\r\nMy name is Mike, I just read your ad online about needing a web developer. I believe I\'m the right resource you\'re looking for.\r\n\r\nMy bread and butter is creating quality code and beautifully functioning applications for small business - mostly start-ups, my reputation is based on the high quality of the sites I deliver. Whether you need me to create a unique experience and application from scratch or I need to research your needs and work on an existing solution. I can do for you what I’ve done for literally hundreds of others - create beautiful, well executing applications that deliver for you and your customers.\r\n\r\n\r\nPrevious application development work;\r\nhttp://onlineprnews.com\r\nhttps://eventcart.fi\r\nhttp://laughfactory.com\r\n\r\nThanks for your consideration and I look forward to speaking with you soon.\r\nBest of luck,\r\nMike\r\n(847) 868-3654', NULL, '2018-05-15', '05-56-02-PM', 0, '0'),
(13, 'gewaegaeeg', 'ahmedmanchester1992@gmail.com', NULL, 'DBVVASED', 'Egwesd', NULL, '2018-06-20', '10-23-39-PM', 0, '0'),
(14, 'A.elsayed', 'dot.help.nation@gmail.com', NULL, '3333333333333333333333', '12r13ibtf\'i4bgf\'qwegasedgar', NULL, '2018-07-01', '09-59-31-PM', 0, '0'),
(15, 'giugi', 'dot.help.nation@gmail.com', NULL, 'opvhq\'', 'OIEABV \r\n[J\r\nGVwesmb\r\nowpsje\r\nbd', NULL, '2018-07-01', '10-00-30-PM', 0, '0'),
(16, 'repair', 'goldenboyrb@gmail.com', NULL, 'Behold is  offer', 'Hello! That is an amazing offers for you. http://bit.ly/2t9ahPW', NULL, '2018-07-12', '04-02-06-PM', 0, '0'),
(17, 'Randy', 'Randy@TalkWithLead.com', NULL, 'Concerning dothelpnation.com', 'Hi,\r\n\r\nMy name is Randy and I was looking at a few different sites online and came across your site dothelpnation.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithLead is a widget which captures a website visitor’s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website — while they\'re hot!\r\n  \r\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We do offer a 14 days free trial.  \r\n\r\nThanks and Best Regards,\r\nRandy', NULL, '2018-07-16', '04-25-05-PM', 0, '0'),
(18, 'Adrianna Harrington', 'designs@albiondesigncentre.com', NULL, 'I Have Some Amazing News!', 'Hey\r\n\r\nBuy Oakley Sunglasses $19.95 only today @ https://costadelmar.online\r\n\r\nTo your success,\r\n\r\ndothelpnation.com\r\nDot help nation | Contact us', NULL, '2018-07-31', '08-57-56-AM', 0, '0'),
(19, 'Randy', 'Randy@TalkWithLead.com', NULL, 'Concerning dothelpnation.com', 'Hi,\r\n\r\nMy name is Randy and I was looking at a few different sites online and came across your site dothelpnation.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithLead is a widget which captures a website visitor’s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website — while they\'re hot!\r\n  \r\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We do offer a 14 days free trial.  \r\n\r\nThanks and Best Regards,\r\nRandy', NULL, '2018-08-03', '04-51-42-AM', 0, '0'),
(20, 'ختىبحخثشضب', 'ahmedmanchester1992@gmail.com', NULL, 'n;pn\'ibn\'oo', 'فى مشكلة', NULL, '2018-08-03', '09-07-22-PM', 1, '0'),
(21, 'AKamyemarmhica', 'setheithei@bestmailonline.com', NULL, 'What you necessary to recognize close to ear-splitting blood oppression', 'Compression  est comment  calleux votre sang pousse contre les parois de vos arteres lorsque votre coeur  essence pompe le sang. Arteres sont les tubes qui transportent  perseverent b gerer offre sang loin de votre coeur. Chaque  age votre  moelle  bat, il pompe le sang par  vos arteres a la reste  de votre corps. \r\nhttps://www.cialispascherfr24.com/ou-acheter-cialis-avis/', NULL, '2018-08-17', '12-24-15-AM', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `fqa`
--

CREATE TABLE `fqa` (
  `id` int(11) NOT NULL,
  `type` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `langkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(355) COLLATE utf8_bin DEFAULT NULL,
  `info` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `fqa`
--

INSERT INTO `fqa` (`id`, `type`, `langkey`, `name`, `info`) VALUES
(1, 'fqa', 'ar', 'Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedi', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(2, 'fqa', 'ar', 'Are possimus, omnis voluptas assumenda est, omnis', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(3, 'fqa', 'ar', 'Aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(4, 'fqa', 'ar', 'Aut aut reiciendis voluptatibus maiores alias consequatur', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(5, 'fqa', 'ar', 'Itaque earum rerum hic tenetur a sapiente delectus', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(6, 'fqa', 'ar', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(7, 'fqa', 'ar', 'Aut aut reiciendis voluptatibus maiores alias consequatur', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(9, 'fqa', 'en', 'sgshjgbv', 'dghdfjfg'),
(10, 'policy', 'ar', 'تجريبي', 'تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي'),
(11, 'policy', 'ar', 'تجريبي 2', 'تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2'),
(12, 'policy', 'en', 'demo', 'demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo'),
(13, 'policy', 'en', 'demo 2', 'demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2demo 2'),
(14, 'terms', 'ar', 'تجريبي', 'تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي تجريبي'),
(15, 'terms', 'ar', 'تجريبي 2', 'تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2تجريبي 2'),
(16, 'terms', 'en', 'demo 2', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
(17, 'terms', 'en', 'demo', 'demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo demo');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `langkey` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(11) NOT NULL,
  `langkey` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `langkey`, `code`, `title`, `stuts`) VALUES
(1, 'ar', 'SiteMainMemu_AR', 'القائمه الرئيسيه للموقع', 1),
(2, 'en', 'SiteMainMemu_EN', 'Site Main Menu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newslatter`
--

CREATE TABLE `newslatter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `langkey` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `title` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `stuts` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `langkey`, `url`, `title`, `content`, `stuts`, `photo`, `meat_description`, `meat_keywords`) VALUES
(1, 'ar', 'AAAAAAAAAAAAAAAAAAAaa', 'AAAAAAAAAAAAAAAAAAAaa', '<p>غنتفغنتق</p>\r\n\r\n<p>قفق</p>\r\n\r\n<p>تق</p>\r\n\r\n<p>غت</p>\r\n\r\n<p>غف</p>', 0, 'page-150477478359b10a7f4a383.png', 'ققعاتفةالىwshrfdn', 'some text,ثاىﻻ ر,fwegw,g,wre'),
(3, 'en', 'demo-page', 'demo page', '<p>tikggh,</p>\r\n\r\n<p>fgu</p>\r\n\r\n<p>ghj</p>\r\n\r\n<p>lhgj</p>\r\n\r\n<p>k</p>\r\n\r\n<p>ghjlk</p>\r\n\r\n<p>hj</p>\r\n\r\n<p>l</p>\r\n\r\n<p>hk</p>\r\n\r\n<p>gbjg</p>\r\n\r\n<p>kl</p>\r\n\r\n<p>hjjkl</p>\r\n\r\n<p>hgj</p>\r\n\r\n<p>&nbsp;</p>', 1, 'page-150460663059ae79a6ad00f.png', 'srrjf xc\r\nj\r\ngg\r\ndf\r\n\r\nghj', 'some text,edfg,s,hgjj,k,llrty,i,/,fg,iy,zd,h');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('harvindersingh25000@gmail.com', '$2y$10$a9wMDU1GtNPR42UNzH7qGOWg9zjD8ctc3sbnJbzdMlUVfgpugG79e', '2018-05-15 22:44:41'),
('harvindersingh@goteso.com', '$2y$10$Oij3Ta6ZlPMewDl92dcT2ueFEmdTQ3SO.w3WMU2pKJdMBt0slWAl2', '2018-05-16 20:15:42'),
('ahmedmanchester1992@gmail.com', '$2y$10$HTipjD9Aq.nEv.on7TShFelXczAivky30Gn.ZxYjIRkWzyV/FOUpG', '2018-05-17 01:08:57'),
('info.gurpreetsaini@gmail.com', '$2y$10$S4mHrQW5R7ilO2gDISJxcuv2MWsRsiUA7ohIOSqqHcg.8n12Vlq9K', '2018-06-03 21:09:09'),
('mohamed@orchado.com', '$2y$10$Uai6yAzfjFZ358bepwzIFunbAPzXJP4Cah2/PMEQpQu8SB0ZeTbqK', '2018-06-03 21:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `langkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `photo` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `section_id`, `langkey`, `photo`) VALUES
(19, 1, 'ar', 'Screenshot from 2017-08-21 11-24-14.png'),
(20, 1, 'ar', 'Screenshot from 2017-08-21 11-19-19.png'),
(27, 2, 'en', 'Screenshot from 2017-08-15 17-33-08.png'),
(28, 2, 'en', 'Screenshot from 2017-08-15 15-46-27.png'),
(29, 2, 'en', 'Screenshot from 2017-08-06 16-27-42.png');

-- --------------------------------------------------------

--
-- Table structure for table `photos_videos_sections`
--

CREATE TABLE `photos_videos_sections` (
  `id` int(11) NOT NULL,
  `langkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(355) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `photos_videos_sections`
--

INSERT INTO `photos_videos_sections` (`id`, `langkey`, `title`, `stuts`, `type`) VALUES
(1, 'ar', 'تصميم', 0, 'photos'),
(2, 'en', 'web', 1, 'photos'),
(3, 'ar', 'اعلانات فيديو', 1, 'videos'),
(5, 'en', 'aaaaaaaaaaaaaaa', 1, 'videos');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(155) COLLATE utf8_bin DEFAULT NULL,
  `mohafza_id` int(11) DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `num_view` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `type`, `mohafza_id`, `url`, `num_view`) VALUES
(9, 'مطروح', 'mohafza', NULL, '%D9%85%D8%B7%D8%B1%D9%88%D8%AD', NULL),
(11, 'مدينه نصر', 'city', 1, '%D9%85%D8%AF%D9%8A%D9%86%D9%87-%D9%86%D8%B5%D8%B1', NULL),
(12, 'المعادي', 'city', 1, '%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%AF%D9%8A', NULL),
(14, 'حدائق القبة', 'city', 1, '%D8%AD%D8%AF%D8%A7%D8%A6%D9%82-%D8%A7%D9%84%D9%82%D8%A8%D8%A9', NULL),
(15, 'مدينة العبور', 'city', 1, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A7%D9%84%D8%B9%D8%A8%D9%88%D8%B1', NULL),
(16, 'المنيل', 'city', 1, '%D8%A7%D9%84%D9%85%D9%86%D9%8A%D9%84', NULL),
(17, 'شبرا', 'city', 1, '%D8%B4%D8%A8%D8%B1%D8%A7', NULL),
(18, 'وسط البلد', 'city', 1, '%D9%88%D8%B3%D8%B7-%D8%A7%D9%84%D8%A8%D9%84%D8%AF', NULL),
(19, 'كل المناطق', 'city', 1, '%D9%83%D9%84-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B7%D9%82', NULL),
(20, 'الرحاب', 'city', 1, '%D8%A7%D9%84%D8%B1%D8%AD%D8%A7%D8%A8', NULL),
(21, 'الزمالك', 'city', 1, '%D8%A7%D9%84%D8%B2%D9%85%D8%A7%D9%84%D9%83', NULL),
(24, 'الشروق', 'city', 1, '%D8%A7%D9%84%D8%B4%D8%B1%D9%88%D9%82', NULL),
(26, 'العاشر من رمضان', 'city', 1, '%D8%A7%D9%84%D8%B9%D8%A7%D8%B4%D8%B1-%D9%85%D9%86-%D8%B1%D9%85%D8%B6%D8%A7%D9%86', NULL),
(27, 'العباسية', 'city', 1, '%D8%A7%D9%84%D8%B9%D8%A8%D8%A7%D8%B3%D9%8A%D8%A9', NULL),
(29, 'حلوان', 'city', 1, '%D8%AD%D9%84%D9%88%D8%A7%D9%86', NULL),
(30, 'عين شمس', 'city', 1, '%D8%B9%D9%8A%D9%86-%D8%B4%D9%85%D8%B3', NULL),
(31, 'مدينتي', 'city', 1, '%D9%85%D8%AF%D9%8A%D9%86%D8%AA%D9%8A', NULL),
(32, 'مصر القديمة', 'city', 1, '%D9%85%D8%B5%D8%B1-%D8%A7%D9%84%D9%82%D8%AF%D9%8A%D9%85%D8%A9', NULL),
(34, '6 اكتوبر', 'city', 2, '6-%D8%A7%D9%83%D8%AA%D9%88%D8%A8%D8%B1', NULL),
(35, 'الهرم', 'city', 2, '%D8%A7%D9%84%D9%87%D8%B1%D9%85', NULL),
(36, 'فيصل ', 'city', 2, '%D9%81%D9%8A%D8%B5%D9%84-', NULL),
(37, 'الشيخ زايد', 'city', 2, '%D8%A7%D9%84%D8%B4%D9%8A%D8%AE-%D8%B2%D8%A7%D9%8A%D8%AF', NULL),
(38, 'حدائق الأهرام', 'city', 2, '%D8%AD%D8%AF%D8%A7%D8%A6%D9%82-%D8%A7%D9%84%D8%A3%D9%87%D8%B1%D8%A7%D9%85', NULL),
(39, 'العجوزة', 'city', 2, '%D8%A7%D9%84%D8%B9%D8%AC%D9%88%D8%B2%D8%A9', NULL),
(40, 'ميدان الجيزة', 'city', 2, '%D9%85%D9%8A%D8%AF%D8%A7%D9%86-%D8%A7%D9%84%D8%AC%D9%8A%D8%B2%D8%A9', NULL),
(41, 'محطة الرمل', 'city', 3, '%D9%85%D8%AD%D8%B7%D8%A9-%D8%A7%D9%84%D8%B1%D9%85%D9%84', NULL),
(42, 'رشدي', 'city', 3, '%D8%B1%D8%B4%D8%AF%D9%8A', NULL),
(43, 'سموحة', 'city', 3, '%D8%B3%D9%85%D9%88%D8%AD%D8%A9', NULL),
(45, 'سيدي جابر', 'city', 3, '%D8%B3%D9%8A%D8%AF%D9%8A-%D8%AC%D8%A7%D8%A8%D8%B1', NULL),
(46, 'لوران', 'city', 3, '%D9%84%D9%88%D8%B1%D8%A7%D9%86', NULL),
(47, 'كامب شيزار', 'city', 3, '%D9%83%D8%A7%D9%85%D8%A8-%D8%B4%D9%8A%D8%B2%D8%A7%D8%B1', NULL),
(49, 'جانكليس', 'city', 3, '%D8%AC%D8%A7%D9%86%D9%83%D9%84%D9%8A%D8%B3', NULL),
(50, 'كل المناطق', 'city', 3, '%D9%83%D9%84-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B7%D9%82', NULL),
(55, 'الشاطبي', 'city', 3, '%D8%A7%D9%84%D8%B4%D8%A7%D8%B7%D8%A8%D9%8A', NULL),
(56, 'العامرية', 'city', 3, '%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%B1%D9%8A%D8%A9', NULL),
(57, 'العجمي', 'city', 3, '%D8%A7%D9%84%D8%B9%D8%AC%D9%85%D9%8A', NULL),
(58, 'العصافرة', 'city', 3, '%D8%A7%D9%84%D8%B9%D8%B5%D8%A7%D9%81%D8%B1%D8%A9', NULL),
(60, 'المنشية', 'city', 3, '%D8%A7%D9%84%D9%85%D9%86%D8%B4%D9%8A%D8%A9', NULL),
(61, 'الورديان', 'city', 3, '%D8%A7%D9%84%D9%88%D8%B1%D8%AF%D9%8A%D8%A7%D9%86', NULL),
(62, 'باكوس', 'city', 3, '%D8%A8%D8%A7%D9%83%D9%88%D8%B3', NULL),
(63, 'بحري', 'city', 3, '%D8%A8%D8%AD%D8%B1%D9%8A', NULL),
(65, 'جليم', 'city', 3, '%D8%AC%D9%84%D9%8A%D9%85', NULL),
(66, 'زيزينيا', 'city', 3, '%D8%B2%D9%8A%D8%B2%D9%8A%D9%86%D9%8A%D8%A7', NULL),
(67, 'سابا باشا', 'city', 3, '%D8%B3%D8%A7%D8%A8%D8%A7-%D8%A8%D8%A7%D8%B4%D8%A7', NULL),
(68, 'سان ستيفانو', 'city', 3, '%D8%B3%D8%A7%D9%86-%D8%B3%D8%AA%D9%8A%D9%81%D8%A7%D9%86%D9%88', NULL),
(69, 'ستانلي', 'city', 3, '%D8%B3%D8%AA%D8%A7%D9%86%D9%84%D9%8A', NULL),
(70, 'سيدي بشر', 'city', 3, '%D8%B3%D9%8A%D8%AF%D9%8A-%D8%A8%D8%B4%D8%B1', NULL),
(71, 'شارع فؤاد', 'city', 3, '%D8%B4%D8%A7%D8%B1%D8%B9-%D9%81%D8%A4%D8%A7%D8%AF', NULL),
(72, 'فيكتوريا', 'city', 3, '%D9%81%D9%8A%D9%83%D8%AA%D9%88%D8%B1%D9%8A%D8%A7', NULL),
(73, 'كفر عبده', 'city', 3, '%D9%83%D9%81%D8%B1-%D8%B9%D8%A8%D8%AF%D9%87', NULL),
(74, 'كليوباترا', 'city', 3, '%D9%83%D9%84%D9%8A%D9%88%D8%A8%D8%A7%D8%AA%D8%B1%D8%A7', NULL),
(75, 'كينج ماريوط', 'city', 3, '%D9%83%D9%8A%D9%86%D8%AC-%D9%85%D8%A7%D8%B1%D9%8A%D9%88%D8%B7', NULL),
(76, 'محرم بيك', 'city', 3, '%D9%85%D8%AD%D8%B1%D9%85-%D8%A8%D9%8A%D9%83', NULL),
(77, 'مصطفى كامل', 'city', 3, '%D9%85%D8%B5%D8%B7%D9%81%D9%89-%D9%83%D8%A7%D9%85%D9%84', NULL),
(78, 'ميامي', 'city', 3, '%D9%85%D9%8A%D8%A7%D9%85%D9%8A', NULL),
(79, 'شبرا الخيمة', 'city', 4, '%D8%B4%D8%A8%D8%B1%D8%A7-%D8%A7%D9%84%D8%AE%D9%8A%D9%85%D8%A9', NULL),
(80, 'المنصورة', 'city', 5, '%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9', NULL),
(81, 'مدينة دمياط', 'city', 8, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%AF%D9%85%D9%8A%D8%A7%D8%B7', NULL),
(83, 'دمنهور', 'city', 7, '%D8%AF%D9%85%D9%86%D9%87%D9%88%D8%B1', NULL),
(86, 'القاهرة', 'mohafza', NULL, '%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9', NULL),
(87, 'الاسكندرية', 'mohafza', NULL, '%D8%A7%D9%84%D8%A7%D8%B3%D9%83%D9%86%D8%AF%D8%B1%D9%8A%D8%A9', NULL),
(88, 'الشرقية', 'mohafza', NULL, '%D8%A7%D9%84%D8%B4%D8%B1%D9%82%D9%8A%D8%A9', NULL),
(89, 'الدقهلية', 'mohafza', NULL, '%D8%A7%D9%84%D8%AF%D9%82%D9%87%D9%84%D9%8A%D8%A9', NULL),
(91, 'البحيرة', 'mohafza', NULL, '%D8%A7%D9%84%D8%A8%D8%AD%D9%8A%D8%B1%D8%A9', NULL),
(92, 'الجيزة', 'mohafza', NULL, '%D8%A7%D9%84%D8%AC%D9%8A%D8%B2%D8%A9', NULL),
(93, 'المنيا', 'mohafza', NULL, '%D8%A7%D9%84%D9%85%D9%86%D9%8A%D8%A7', NULL),
(94, 'اسيوط', 'mohafza', NULL, '%D8%A7%D8%B3%D9%8A%D9%88%D8%B7', NULL),
(95, 'القليوبية', 'mohafza', NULL, '%D8%A7%D9%84%D9%82%D9%84%D9%8A%D9%88%D8%A8%D9%8A%D8%A9', NULL),
(96, 'الغربية', 'mohafza', NULL, '%D8%A7%D9%84%D8%BA%D8%B1%D8%A8%D9%8A%D8%A9', NULL),
(97, 'سوهاج', 'mohafza', NULL, '%D8%B3%D9%88%D9%87%D8%A7%D8%AC', NULL),
(98, 'المنوفية', 'mohafza', NULL, '%D8%A7%D9%84%D9%85%D9%86%D9%88%D9%81%D9%8A%D8%A9', NULL),
(100, 'كفر الشيخ', 'mohafza', NULL, '%D9%83%D9%81%D8%B1-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE', NULL),
(101, 'الفيوم', 'mohafza', NULL, '%D8%A7%D9%84%D9%81%D9%8A%D9%88%D9%85', NULL),
(102, 'قنا', 'mohafza', NULL, '%D9%82%D9%86%D8%A7', NULL),
(103, 'بنى سويف', 'mohafza', NULL, '%D8%A8%D9%86%D9%89-%D8%B3%D9%88%D9%8A%D9%81', NULL),
(104, 'دمياط', 'mohafza', NULL, '%D8%AF%D9%85%D9%8A%D8%A7%D8%B7', NULL),
(105, 'الاسماعيلية', 'mohafza', NULL, '%D8%A7%D9%84%D8%A7%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9', NULL),
(106, 'شمال سينا', 'mohafza', NULL, '%D8%B4%D9%85%D8%A7%D9%84-%D8%B3%D9%8A%D9%86%D8%A7', NULL),
(107, 'أسوان', 'mohafza', NULL, '%D8%A3%D8%B3%D9%88%D8%A7%D9%86', NULL),
(108, 'الوادى الجديد', 'mohafza', NULL, '%D8%A7%D9%84%D9%88%D8%A7%D8%AF%D9%89-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF', NULL),
(109, 'البحر الاحمر', 'mohafza', NULL, '%D8%A7%D9%84%D8%A8%D8%AD%D8%B1-%D8%A7%D9%84%D8%A7%D8%AD%D9%85%D8%B1', NULL),
(110, 'الأقصر', 'mohafza', NULL, '%D8%A7%D9%84%D8%A3%D9%82%D8%B5%D8%B1', NULL),
(111, 'بورسعيد', 'mohafza', NULL, '%D8%A8%D9%88%D8%B1%D8%B3%D8%B9%D9%8A%D8%AF', NULL),
(112, 'السويس', 'mohafza', NULL, '%D8%A7%D9%84%D8%B3%D9%88%D9%8A%D8%B3', NULL),
(113, 'جنوب سيناء', 'mohafza', NULL, '%D8%AC%D9%86%D9%88%D8%A8-%D8%B3%D9%8A%D9%86%D8%A7%D8%A1', NULL),
(114, 'محرم بك', 'city', 87, '%D9%85%D8%AD%D8%B1%D9%85-%D8%A8%D9%83', NULL),
(115, 'ابوقير', 'city', 87, '%D8%A7%D8%A8%D9%88%D9%82%D9%8A%D8%B1', NULL),
(116, 'الابراهيمية', 'city', 87, '%D8%A7%D9%84%D8%A7%D8%A8%D8%B1%D8%A7%D9%87%D9%8A%D9%85%D9%8A%D8%A9', NULL),
(117, 'الازاريطه', 'city', 87, '%D8%A7%D9%84%D8%A7%D8%B2%D8%A7%D8%B1%D9%8A%D8%B7%D9%87', NULL),
(118, 'الانفوشى', 'city', 87, '%D8%A7%D9%84%D8%A7%D9%86%D9%81%D9%88%D8%B4%D9%89', NULL),
(119, 'الحضره', 'city', 87, '%D8%A7%D9%84%D8%AD%D8%B6%D8%B1%D9%87', NULL),
(120, 'الدخيله', 'city', 87, '%D8%A7%D9%84%D8%AF%D8%AE%D9%8A%D9%84%D9%87', NULL),
(121, 'السرايا', 'city', 87, '%D8%A7%D9%84%D8%B3%D8%B1%D8%A7%D9%8A%D8%A7', NULL),
(122, 'السيوف', 'city', 87, '%D8%A7%D9%84%D8%B3%D9%8A%D9%88%D9%81', NULL),
(123, 'الشاطبى', 'city', 87, '%D8%A7%D9%84%D8%B4%D8%A7%D8%B7%D8%A8%D9%89', NULL),
(124, 'العجمى', 'city', 87, '%D8%A7%D9%84%D8%B9%D8%AC%D9%85%D9%89', NULL),
(125, 'العصافرة', 'city', 87, '%D8%A7%D9%84%D8%B9%D8%B5%D8%A7%D9%81%D8%B1%D8%A9', NULL),
(126, 'العطارين', 'city', 87, '%D8%A7%D9%84%D8%B9%D8%B7%D8%A7%D8%B1%D9%8A%D9%86', NULL),
(127, 'القبارى', 'city', 87, '%D8%A7%D9%84%D9%82%D8%A8%D8%A7%D8%B1%D9%89', NULL),
(128, 'اللبان', 'city', 87, '%D8%A7%D9%84%D9%84%D8%A8%D8%A7%D9%86', NULL),
(129, 'المعمورة', 'city', 87, '%D8%A7%D9%84%D9%85%D8%B9%D9%85%D9%88%D8%B1%D8%A9', NULL),
(130, 'المكس', 'city', 87, '%D8%A7%D9%84%D9%85%D9%83%D8%B3', NULL),
(131, 'المنتزة', 'city', 87, '%D8%A7%D9%84%D9%85%D9%86%D8%AA%D8%B2%D8%A9', NULL),
(132, 'المندرة', 'city', 87, '%D8%A7%D9%84%D9%85%D9%86%D8%AF%D8%B1%D8%A9', NULL),
(133, 'المنشية', 'city', 87, '%D8%A7%D9%84%D9%85%D9%86%D8%B4%D9%8A%D8%A9', NULL),
(134, 'الورديان', 'city', 87, '%D8%A7%D9%84%D9%88%D8%B1%D8%AF%D9%8A%D8%A7%D9%86', NULL),
(135, 'باكوس', 'city', 87, '%D8%A8%D8%A7%D9%83%D9%88%D8%B3', NULL),
(136, 'بحرى', 'city', 87, '%D8%A8%D8%AD%D8%B1%D9%89', NULL),
(137, 'بولكلى', 'city', 87, '%D8%A8%D9%88%D9%84%D9%83%D9%84%D9%89', NULL),
(138, 'ثروت', 'city', 87, '%D8%AB%D8%B1%D9%88%D8%AA', NULL),
(139, 'جليم', 'city', 87, '%D8%AC%D9%84%D9%8A%D9%85', NULL),
(140, 'جناكليس', 'city', 87, '%D8%AC%D9%86%D8%A7%D9%83%D9%84%D9%8A%D8%B3', NULL),
(141, 'حى الجمرك', 'city', 87, '%D8%AD%D9%89-%D8%A7%D9%84%D8%AC%D9%85%D8%B1%D9%83', NULL),
(142, 'حى العامرية', 'city', 87, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%B1%D9%8A%D8%A9', NULL),
(143, 'حى كليوباترا', 'city', 87, '%D8%AD%D9%89-%D9%83%D9%84%D9%8A%D9%88%D8%A8%D8%A7%D8%AA%D8%B1%D8%A7', NULL),
(144, 'حى ميامى', 'city', 87, '%D8%AD%D9%89-%D9%85%D9%8A%D8%A7%D9%85%D9%89', NULL),
(145, 'راس التين', 'city', 87, '%D8%B1%D8%A7%D8%B3-%D8%A7%D9%84%D8%AA%D9%8A%D9%86', NULL),
(146, 'رشدى', 'city', 87, '%D8%B1%D8%B4%D8%AF%D9%89', NULL),
(147, 'زيزينيا', 'city', 87, '%D8%B2%D9%8A%D8%B2%D9%8A%D9%86%D9%8A%D8%A7', NULL),
(148, 'سابا باشا', 'city', 87, '%D8%B3%D8%A7%D8%A8%D8%A7-%D8%A8%D8%A7%D8%B4%D8%A7', NULL),
(149, 'سان ستيفانو', 'city', 87, '%D8%B3%D8%A7%D9%86-%D8%B3%D8%AA%D9%8A%D9%81%D8%A7%D9%86%D9%88', NULL),
(150, 'سبورتنج', 'city', 87, '%D8%B3%D8%A8%D9%88%D8%B1%D8%AA%D9%86%D8%AC', NULL),
(151, 'ستانلى', 'city', 87, '%D8%B3%D8%AA%D8%A7%D9%86%D9%84%D9%89', NULL),
(152, 'سموحة', 'city', 87, '%D8%B3%D9%85%D9%88%D8%AD%D8%A9', NULL),
(153, 'سيدى بشر', 'city', 87, '%D8%B3%D9%8A%D8%AF%D9%89-%D8%A8%D8%B4%D8%B1', NULL),
(154, 'سيدى جابر', 'city', 87, '%D8%B3%D9%8A%D8%AF%D9%89-%D8%AC%D8%A7%D8%A8%D8%B1', NULL),
(155, 'شدس', 'city', 87, '%D8%B4%D8%AF%D8%B3', NULL),
(156, 'صفر', 'city', 87, '%D8%B5%D9%81%D8%B1', NULL),
(157, 'فكتوريا', 'city', 87, '%D9%81%D9%83%D8%AA%D9%88%D8%B1%D9%8A%D8%A7', NULL),
(158, 'فلمنج', 'city', 87, '%D9%81%D9%84%D9%85%D9%86%D8%AC', NULL),
(159, 'كامب شيزار', 'city', 87, '%D9%83%D8%A7%D9%85%D8%A8-%D8%B4%D9%8A%D8%B2%D8%A7%D8%B1', NULL),
(160, 'كرموز', 'city', 87, '%D9%83%D8%B1%D9%85%D9%88%D8%B2', NULL),
(161, 'كفر عبده', 'city', 87, '%D9%83%D9%81%D8%B1-%D8%B9%D8%A8%D8%AF%D9%87', NULL),
(162, 'كوم الدكة', 'city', 87, '%D9%83%D9%88%D9%85-%D8%A7%D9%84%D8%AF%D9%83%D8%A9', NULL),
(163, 'لوران', 'city', 87, '%D9%84%D9%88%D8%B1%D8%A7%D9%86', NULL),
(164, 'محطة الرمل', 'city', 87, '%D9%85%D8%AD%D8%B7%D8%A9-%D8%A7%D9%84%D8%B1%D9%85%D9%84', NULL),
(165, 'محطة مصر', 'city', 87, '%D9%85%D8%AD%D8%B7%D8%A9-%D9%85%D8%B5%D8%B1', NULL),
(166, 'المطرية', 'city', 86, '%D8%A7%D9%84%D9%85%D8%B7%D8%B1%D9%8A%D8%A9', NULL),
(167, 'المرج', 'city', 86, '%D8%A7%D9%84%D9%85%D8%B1%D8%AC', NULL),
(168, 'السلام اول', 'city', 86, '%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85-%D8%A7%D9%88%D9%84', NULL),
(169, 'مصر الجديدة', 'city', 86, '%D9%85%D8%B5%D8%B1-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9', NULL),
(170, 'عين شمس', 'city', 86, '%D8%B9%D9%8A%D9%86-%D8%B4%D9%85%D8%B3', NULL),
(171, 'مدينة نصر', 'city', 86, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D9%86%D8%B5%D8%B1', NULL),
(172, 'السلام ثان', 'city', 86, '%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85-%D8%AB%D8%A7%D9%86', NULL),
(173, 'النزهة', 'city', 86, '%D8%A7%D9%84%D9%86%D8%B2%D9%87%D8%A9', NULL),
(175, 'منشأ ناصر', 'city', 86, '%D9%85%D9%86%D8%B4%D8%A3-%D9%86%D8%A7%D8%B5%D8%B1', NULL),
(177, 'عابدين', 'city', 86, '%D8%B9%D8%A7%D8%A8%D8%AF%D9%8A%D9%86', NULL),
(178, 'الموسكى', 'city', 86, '%D8%A7%D9%84%D9%85%D9%88%D8%B3%D9%83%D9%89', NULL),
(179, 'باب الشعرية', 'city', 86, '%D8%A8%D8%A7%D8%A8-%D8%A7%D9%84%D8%B4%D8%B9%D8%B1%D9%8A%D8%A9', NULL),
(181, 'الازبكية', 'city', 86, '%D8%A7%D9%84%D8%A7%D8%B2%D8%A8%D9%83%D9%8A%D8%A9', NULL),
(182, 'البساتين', 'city', 86, '%D8%A7%D9%84%D8%A8%D8%B3%D8%A7%D8%AA%D9%8A%D9%86', NULL),
(183, 'السيدة زينب', 'city', 86, '%D8%A7%D9%84%D8%B3%D9%8A%D8%AF%D8%A9-%D8%B2%D9%8A%D9%86%D8%A8', NULL),
(184, 'مصر القديمة', 'city', 86, '%D9%85%D8%B5%D8%B1-%D8%A7%D9%84%D9%82%D8%AF%D9%8A%D9%85%D8%A9', NULL),
(185, 'الخليفة', 'city', 86, '%D8%A7%D9%84%D8%AE%D9%84%D9%8A%D9%81%D8%A9', NULL),
(186, 'المقطم', 'city', 86, '%D8%A7%D9%84%D9%85%D9%82%D8%B7%D9%85', NULL),
(187, 'دار السلام', 'city', 86, '%D8%AF%D8%A7%D8%B1-%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85', NULL),
(188, 'حى التبين', 'city', 86, '%D8%AD%D9%89-%D8%A7%D9%84%D8%AA%D8%A8%D9%8A%D9%86', NULL),
(189, 'حلوان', 'city', 86, '%D8%AD%D9%84%D9%88%D8%A7%D9%86', NULL),
(190, 'حى المعادى', 'city', 86, '%D8%AD%D9%89-%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%AF%D9%89', NULL),
(191, '15 مايو', 'city', 86, '15-%D9%85%D8%A7%D9%8A%D9%88', NULL),
(192, 'طرة', 'city', 86, '%D8%B7%D8%B1%D8%A9', NULL),
(193, 'المعصرة', 'city', 86, '%D8%A7%D9%84%D9%85%D8%B9%D8%B5%D8%B1%D8%A9', NULL),
(194, 'روض الفرج', 'city', 86, '%D8%B1%D9%88%D8%B6-%D8%A7%D9%84%D9%81%D8%B1%D8%AC', NULL),
(195, 'شبرا', 'city', 86, '%D8%B4%D8%A8%D8%B1%D8%A7', NULL),
(197, 'الزيتون', 'city', 86, '%D8%A7%D9%84%D8%B2%D9%8A%D8%AA%D9%88%D9%86', NULL),
(198, 'الشرابية', 'city', 86, '%D8%A7%D9%84%D8%B4%D8%B1%D8%A7%D8%A8%D9%8A%D8%A9', NULL),
(199, 'حدائق القبة', 'city', 86, '%D8%AD%D8%AF%D8%A7%D8%A6%D9%82-%D8%A7%D9%84%D9%82%D8%A8%D8%A9', NULL),
(200, 'حى الساحل', 'city', 86, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B3%D8%A7%D8%AD%D9%84', NULL),
(201, 'الأميرية', 'city', 86, '%D8%A7%D9%84%D8%A3%D9%85%D9%8A%D8%B1%D9%8A%D8%A9', NULL),
(202, 'إمبابة', 'city', 92, '%D8%A5%D9%85%D8%A8%D8%A7%D8%A8%D8%A9', NULL),
(203, 'الكيت كات', 'city', 92, '%D8%A7%D9%84%D9%83%D9%8A%D8%AA-%D9%83%D8%A7%D8%AA', NULL),
(204, 'المنيب', 'city', 92, '%D8%A7%D9%84%D9%85%D9%86%D9%8A%D8%A8', NULL),
(205, 'المهندسين', 'city', 92, '%D8%A7%D9%84%D9%85%D9%87%D9%86%D8%AF%D8%B3%D9%8A%D9%86', NULL),
(206, 'بين السرايات', 'city', 92, '%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D8%B3%D8%B1%D8%A7%D9%8A%D8%A7%D8%AA', NULL),
(207, 'الدقى', 'city', 92, '%D8%A7%D9%84%D8%AF%D9%82%D9%89', NULL),
(208, 'العجوزة', 'city', 92, '%D8%A7%D9%84%D8%B9%D8%AC%D9%88%D8%B2%D8%A9', NULL),
(209, 'العمرانية', 'city', 92, '%D8%A7%D9%84%D8%B9%D9%85%D8%B1%D8%A7%D9%86%D9%8A%D8%A9', NULL),
(210, 'الهرم', 'city', 92, '%D8%A7%D9%84%D9%87%D8%B1%D9%85', NULL),
(211, 'الوراق', 'city', 92, '%D8%A7%D9%84%D9%88%D8%B1%D8%A7%D9%82', NULL),
(213, 'بولاق الدكرور', 'city', 92, '%D8%A8%D9%88%D9%84%D8%A7%D9%82-%D8%A7%D9%84%D8%AF%D9%83%D8%B1%D9%88%D8%B1', NULL),
(214, 'ساقية مكى', 'city', 92, '%D8%B3%D8%A7%D9%82%D9%8A%D8%A9-%D9%85%D9%83%D9%89', NULL),
(215, 'المنيب', 'city', 92, '%D8%A7%D9%84%D9%85%D9%86%D9%8A%D8%A8', NULL),
(216, 'الويلى', 'city', 86, '%D8%A7%D9%84%D9%88%D9%8A%D9%84%D9%89', NULL),
(217, 'هليوبوليس', 'city', 86, '%D9%87%D9%84%D9%8A%D9%88%D8%A8%D9%88%D9%84%D9%8A%D8%B3', NULL),
(218, 'الحمام', 'city', 9, '%D8%A7%D9%84%D8%AD%D9%85%D8%A7%D9%85', NULL),
(219, 'العلمين', 'city', 9, '%D8%A7%D9%84%D8%B9%D9%84%D9%85%D9%8A%D9%86', NULL),
(220, 'الضبعة', 'city', 9, '%D8%A7%D9%84%D8%B6%D8%A8%D8%B9%D8%A9', NULL),
(221, 'مرسى مطروح', 'city', 9, '%D9%85%D8%B1%D8%B3%D9%89-%D9%85%D8%B7%D8%B1%D9%88%D8%AD', NULL),
(222, 'النجيلة', 'city', 9, '%D8%A7%D9%84%D9%86%D8%AC%D9%8A%D9%84%D8%A9', NULL),
(223, 'برانى', 'city', 9, '%D8%A8%D8%B1%D8%A7%D9%86%D9%89', NULL),
(224, 'السلوم', 'city', 9, '%D8%A7%D9%84%D8%B3%D9%84%D9%88%D9%85', NULL),
(225, 'سيوة', 'city', 9, '%D8%B3%D9%8A%D9%88%D8%A9', NULL),
(226, 'الساحل الشمالى', 'city', 9, '%D8%A7%D9%84%D8%B3%D8%A7%D8%AD%D9%84-%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84%D9%89', NULL),
(227, 'برج العرب', 'city', 87, '%D8%A8%D8%B1%D8%AC-%D8%A7%D9%84%D8%B9%D8%B1%D8%A8', NULL),
(228, 'الحسينية', 'city', 88, '%D8%A7%D9%84%D8%AD%D8%B3%D9%8A%D9%86%D9%8A%D8%A9', NULL),
(229, 'فاقوس', 'city', 88, '%D9%81%D8%A7%D9%82%D9%88%D8%B3', NULL),
(230, 'بلبيس', 'city', 88, '%D8%A8%D9%84%D8%A8%D9%8A%D8%B3', NULL),
(231, 'منيا القمح', 'city', 88, '%D9%85%D9%86%D9%8A%D8%A7-%D8%A7%D9%84%D9%82%D9%85%D8%AD', NULL),
(232, 'ابو حماد', 'city', 88, '%D8%A7%D8%A8%D9%88-%D8%AD%D9%85%D8%A7%D8%AF', NULL),
(233, 'اولاد صقر', 'city', 88, '%D8%A7%D9%88%D9%84%D8%A7%D8%AF-%D8%B5%D9%82%D8%B1', NULL),
(234, 'العاشر من رمضان', 'city', 88, '%D8%A7%D9%84%D8%B9%D8%A7%D8%B4%D8%B1-%D9%85%D9%86-%D8%B1%D9%85%D8%B6%D8%A7%D9%86', NULL),
(235, 'الصالحية الجديدة', 'city', 88, '%D8%A7%D9%84%D8%B5%D8%A7%D9%84%D8%AD%D9%8A%D8%A9-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9', NULL),
(236, 'كفر صقر', 'city', 88, '%D9%83%D9%81%D8%B1-%D8%B5%D9%82%D8%B1', NULL),
(237, 'ابو كبير', 'city', 88, '%D8%A7%D8%A8%D9%88-%D9%83%D8%A8%D9%8A%D8%B1', NULL),
(238, 'القنايات', 'city', 88, '%D8%A7%D9%84%D9%82%D9%86%D8%A7%D9%8A%D8%A7%D8%AA', NULL),
(239, 'مشتول السوق', 'city', 88, '%D9%85%D8%B4%D8%AA%D9%88%D9%84-%D8%A7%D9%84%D8%B3%D9%88%D9%82', NULL),
(240, 'الزقازيق', 'city', 88, '%D8%A7%D9%84%D8%B2%D9%82%D8%A7%D8%B2%D9%8A%D9%82', NULL),
(241, 'ديرب نجم', 'city', 88, '%D8%AF%D9%8A%D8%B1%D8%A8-%D9%86%D8%AC%D9%85', NULL),
(242, 'الابراهيمية', 'city', 88, '%D8%A7%D9%84%D8%A7%D8%A8%D8%B1%D8%A7%D9%87%D9%8A%D9%85%D9%8A%D8%A9', NULL),
(243, 'ههيا', 'city', 88, '%D9%87%D9%87%D9%8A%D8%A7', NULL),
(244, 'القرين', 'city', 88, '%D8%A7%D9%84%D9%82%D8%B1%D9%8A%D9%86', NULL),
(245, 'صان الحجر', 'city', 88, '%D8%B5%D8%A7%D9%86-%D8%A7%D9%84%D8%AD%D8%AC%D8%B1', NULL),
(246, 'المنصورة', 'city', 89, '%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9', NULL),
(247, 'أجا', 'city', 89, '%D8%A3%D8%AC%D8%A7', NULL),
(248, 'السنبلاوين', 'city', 89, '%D8%A7%D9%84%D8%B3%D9%86%D8%A8%D9%84%D8%A7%D9%88%D9%8A%D9%86', NULL),
(249, 'المطرية', 'city', 89, '%D8%A7%D9%84%D9%85%D8%B7%D8%B1%D9%8A%D8%A9', NULL),
(250, 'المنزلة', 'city', 89, '%D8%A7%D9%84%D9%85%D9%86%D8%B2%D9%84%D8%A9', NULL),
(251, 'بلقاس', 'city', 89, '%D8%A8%D9%84%D9%82%D8%A7%D8%B3', NULL),
(252, 'دكرنس', 'city', 89, '%D8%AF%D9%83%D8%B1%D9%86%D8%B3', NULL),
(253, 'شربين', 'city', 89, '%D8%B4%D8%B1%D8%A8%D9%8A%D9%86', NULL),
(254, 'طلخا', 'city', 89, '%D8%B7%D9%84%D8%AE%D8%A7', NULL),
(255, 'ميت غمر', 'city', 89, '%D9%85%D9%8A%D8%AA-%D8%BA%D9%85%D8%B1', NULL),
(256, 'منية النصر', 'city', 89, '%D9%85%D9%86%D9%8A%D8%A9-%D8%A7%D9%84%D9%86%D8%B5%D8%B1', NULL),
(257, 'الجمالية', 'city', 89, '%D8%A7%D9%84%D8%AC%D9%85%D8%A7%D9%84%D9%8A%D8%A9', NULL),
(258, 'تمى الامديد', 'city', 89, '%D8%AA%D9%85%D9%89-%D8%A7%D9%84%D8%A7%D9%85%D8%AF%D9%8A%D8%AF', NULL),
(259, 'ميت سلسيل', 'city', 89, '%D9%85%D9%8A%D8%AA-%D8%B3%D9%84%D8%B3%D9%8A%D9%84', NULL),
(260, 'بنى عبيد', 'city', 89, '%D8%A8%D9%86%D9%89-%D8%B9%D8%A8%D9%8A%D8%AF', NULL),
(261, 'محلة دمنة', 'city', 89, '%D9%85%D8%AD%D9%84%D8%A9-%D8%AF%D9%85%D9%86%D8%A9', NULL),
(262, 'نبروه', 'city', 89, '%D9%86%D8%A8%D8%B1%D9%88%D9%87', NULL),
(263, 'أبو حمص', 'city', 91, '%D8%A3%D8%A8%D9%88-%D8%AD%D9%85%D8%B5', NULL),
(264, 'أبو المطامير', 'city', 91, '%D8%A3%D8%A8%D9%88-%D8%A7%D9%84%D9%85%D8%B7%D8%A7%D9%85%D9%8A%D8%B1', NULL),
(265, 'إدكو', 'city', 91, '%D8%A5%D8%AF%D9%83%D9%88', NULL),
(266, 'إيتاى البارود', 'city', 91, '%D8%A5%D9%8A%D8%AA%D8%A7%D9%89-%D8%A7%D9%84%D8%A8%D8%A7%D8%B1%D9%88%D8%AF', NULL),
(267, 'حوش عيسى', 'city', 91, '%D8%AD%D9%88%D8%B4-%D8%B9%D9%8A%D8%B3%D9%89', NULL),
(268, 'الدلنجات', 'city', 91, '%D8%A7%D9%84%D8%AF%D9%84%D9%86%D8%AC%D8%A7%D8%AA', NULL),
(269, 'دمنهور', 'city', 91, '%D8%AF%D9%85%D9%86%D9%87%D9%88%D8%B1', NULL),
(270, 'الرحمانية', 'city', 91, '%D8%A7%D9%84%D8%B1%D8%AD%D9%85%D8%A7%D9%86%D9%8A%D8%A9', NULL),
(271, 'رشيد', 'city', 91, '%D8%B1%D8%B4%D9%8A%D8%AF', NULL),
(272, 'شبراخيت', 'city', 91, '%D8%B4%D8%A8%D8%B1%D8%A7%D8%AE%D9%8A%D8%AA', NULL),
(273, 'كفر الدوار', 'city', 91, '%D9%83%D9%81%D8%B1-%D8%A7%D9%84%D8%AF%D9%88%D8%A7%D8%B1', NULL),
(274, 'المحمودية', 'city', 91, '%D8%A7%D9%84%D9%85%D8%AD%D9%85%D9%88%D8%AF%D9%8A%D8%A9', NULL),
(275, 'وادى النطرون', 'city', 91, '%D9%88%D8%A7%D8%AF%D9%89-%D8%A7%D9%84%D9%86%D8%B7%D8%B1%D9%88%D9%86', NULL),
(276, 'بنى مزار', 'city', 93, '%D8%A8%D9%86%D9%89-%D9%85%D8%B2%D8%A7%D8%B1', NULL),
(277, 'دير مواس', 'city', 93, '%D8%AF%D9%8A%D8%B1-%D9%85%D9%88%D8%A7%D8%B3', NULL),
(278, 'سمالوط', 'city', 93, '%D8%B3%D9%85%D8%A7%D9%84%D9%88%D8%B7', NULL),
(279, 'العدوة', 'city', 93, '%D8%A7%D9%84%D8%B9%D8%AF%D9%88%D8%A9', NULL),
(280, 'مطاى', 'city', 93, '%D9%85%D8%B7%D8%A7%D9%89', NULL),
(281, 'مغاغة', 'city', 93, '%D9%85%D8%BA%D8%A7%D8%BA%D8%A9', NULL),
(282, 'ملوى', 'city', 93, '%D9%85%D9%84%D9%88%D9%89', NULL),
(283, 'المنيا', 'city', 93, '%D8%A7%D9%84%D9%85%D9%86%D9%8A%D8%A7', NULL),
(284, 'البورة', 'city', 94, '%D8%A7%D9%84%D8%A8%D9%88%D8%B1%D8%A9', NULL),
(285, 'الحسانى', 'city', 94, '%D8%A7%D9%84%D8%AD%D8%B3%D8%A7%D9%86%D9%89', NULL),
(286, 'الزاوية', 'city', 94, '%D8%A7%D9%84%D8%B2%D8%A7%D9%88%D9%8A%D8%A9', NULL),
(287, 'الشغبة', 'city', 94, '%D8%A7%D9%84%D8%B4%D8%BA%D8%A8%D8%A9', NULL),
(288, 'العدر', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%AF%D8%B1', NULL),
(289, 'المطيعة', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B7%D9%8A%D8%B9%D8%A9', NULL),
(290, 'النمايسة', 'city', 94, '%D8%A7%D9%84%D9%86%D9%85%D8%A7%D9%8A%D8%B3%D8%A9', NULL),
(291, 'الهدايا', 'city', 94, '%D8%A7%D9%84%D9%87%D8%AF%D8%A7%D9%8A%D8%A7', NULL),
(292, 'أولد إبراهيم', 'city', 94, '%D8%A3%D9%88%D9%84%D8%AF-%D8%A5%D8%A8%D8%B1%D8%A7%D9%87%D9%8A%D9%85', NULL),
(294, 'أولاد رايق', 'city', 94, '%D8%A3%D9%88%D9%84%D8%A7%D8%AF-%D8%B1%D8%A7%D9%8A%D9%82', NULL),
(295, 'بنى حسين', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%AD%D8%B3%D9%8A%D9%86', NULL),
(296, 'بنى غالب', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%BA%D8%A7%D9%84%D8%A8', NULL),
(297, 'بهيج', 'city', 94, '%D8%A8%D9%87%D9%8A%D8%AC', NULL),
(298, 'درنكة', 'city', 94, '%D8%AF%D8%B1%D9%86%D9%83%D8%A9', NULL),
(299, 'دير درنكة', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%AF%D8%B1%D9%86%D9%83%D8%A9', NULL),
(300, 'ريفا', 'city', 94, '%D8%B1%D9%8A%D9%81%D8%A7', NULL),
(301, 'سلم', 'city', 94, '%D8%B3%D9%84%D9%85', NULL),
(302, 'شطب', 'city', 94, '%D8%B4%D8%B7%D8%A8', NULL),
(303, 'علوان', 'city', 94, '%D8%B9%D9%84%D9%88%D8%A7%D9%86', NULL),
(304, 'قرقارص', 'city', 94, '%D9%82%D8%B1%D9%82%D8%A7%D8%B1%D8%B5', NULL),
(305, 'مسرع', 'city', 94, '%D9%85%D8%B3%D8%B1%D8%B9', NULL),
(306, 'منقباد', 'city', 94, '%D9%85%D9%86%D9%82%D8%A8%D8%A7%D8%AF', NULL),
(307, 'موشا', 'city', 94, '%D9%85%D9%88%D8%B4%D8%A7', NULL),
(308, 'نجع العيساوية', 'city', 94, '%D9%86%D8%AC%D8%B9-%D8%A7%D9%84%D8%B9%D9%8A%D8%B3%D8%A7%D9%88%D9%8A%D8%A9', NULL),
(309, 'نجع سبع', 'city', 94, '%D9%86%D8%AC%D8%B9-%D8%B3%D8%A8%D8%B9', NULL),
(310, 'نجع عبد الرسول ابو حسوبة', 'city', 94, '%D9%86%D8%AC%D8%B9-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D8%B1%D8%B3%D9%88%D9%84-%D8%A7%D8%A8%D9%88-%D8%AD%D8%B3%D9%88%D8%A8%D8%A9', NULL),
(311, 'نجوع بنى حسين', 'city', 94, '%D9%86%D8%AC%D9%88%D8%B9-%D8%A8%D9%86%D9%89-%D8%AD%D8%B3%D9%8A%D9%86', NULL),
(312, 'نزلة عبد الله', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D9%84%D9%87', NULL),
(313, 'اولاد على', 'city', 94, '%D8%A7%D9%88%D9%84%D8%A7%D8%AF-%D8%B9%D9%84%D9%89', NULL),
(314, 'الحمام', 'city', 94, '%D8%A7%D9%84%D8%AD%D9%85%D8%A7%D9%85', NULL),
(315, 'السوالم البحرية', 'city', 94, '%D8%A7%D9%84%D8%B3%D9%88%D8%A7%D9%84%D9%85-%D8%A7%D9%84%D8%A8%D8%AD%D8%B1%D9%8A%D8%A9', NULL),
(316, 'العوامر', 'city', 94, '%D8%A7%D9%84%D8%B9%D9%88%D8%A7%D9%85%D8%B1', NULL),
(317, 'المعابد الشرقية', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%A8%D8%AF-%D8%A7%D9%84%D8%B4%D8%B1%D9%82%D9%8A%D8%A9', NULL),
(318, 'المعابد الغربية', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%A8%D8%AF-%D8%A7%D9%84%D8%BA%D8%B1%D8%A8%D9%8A%D8%A9', NULL),
(319, 'بنى إبراهيم', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%A5%D8%A8%D8%B1%D8%A7%D9%87%D9%8A%D9%85', NULL),
(320, 'بنى محمديات', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%85%D8%AD%D9%85%D8%AF%D9%8A%D8%A7%D8%AA', NULL),
(321, 'جزيرة بهيج', 'city', 94, '%D8%AC%D8%B2%D9%8A%D8%B1%D8%A9-%D8%A8%D9%87%D9%8A%D8%AC', NULL),
(322, 'دير الجبراوى', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%A7%D9%84%D8%AC%D8%A8%D8%B1%D8%A7%D9%88%D9%89', NULL),
(323, 'دير شو', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%B4%D9%88', NULL),
(324, 'سوالم أبنوب', 'city', 94, '%D8%B3%D9%88%D8%A7%D9%84%D9%85-%D8%A3%D8%A8%D9%86%D9%88%D8%A8', NULL),
(325, 'شقلقيل', 'city', 94, '%D8%B4%D9%82%D9%84%D9%82%D9%8A%D9%84', NULL),
(326, 'عرب الشنابلة', 'city', 94, '%D8%B9%D8%B1%D8%A8-%D8%A7%D9%84%D8%B4%D9%86%D8%A7%D8%A8%D9%84%D8%A9', NULL),
(327, 'عرب العطيات البحرية', 'city', 94, '%D8%B9%D8%B1%D8%A8-%D8%A7%D9%84%D8%B9%D8%B7%D9%8A%D8%A7%D8%AA-%D8%A7%D9%84%D8%A8%D8%AD%D8%B1%D9%8A%D8%A9', NULL),
(328, 'كوم ابو شيل', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A7%D8%A8%D9%88-%D8%B4%D9%8A%D9%84', NULL),
(329, 'كوم المنصورة', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9', NULL),
(330, 'نزلة القداديح', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D9%82%D8%AF%D8%A7%D8%AF%D9%8A%D8%AD', NULL),
(331, 'ابو خرص', 'city', 94, '%D8%A7%D8%A8%D9%88-%D8%AE%D8%B1%D8%B5', NULL),
(332, 'القادمة', 'city', 94, '%D8%A7%D9%84%D9%82%D8%A7%D8%AF%D9%85%D8%A9', NULL),
(333, 'البلايزة', 'city', 94, '%D8%A7%D9%84%D8%A8%D9%84%D8%A7%D9%8A%D8%B2%D8%A9', NULL),
(334, 'الزرابى', 'city', 94, '%D8%A7%D9%84%D8%B2%D8%B1%D8%A7%D8%A8%D9%89', NULL),
(335, 'الزيرة', 'city', 94, '%D8%A7%D9%84%D8%B2%D9%8A%D8%B1%D8%A9', NULL),
(336, 'المسعودى', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B3%D8%B9%D9%88%D8%AF%D9%89', NULL),
(337, 'النخيلة', 'city', 94, '%D8%A7%D9%84%D9%86%D8%AE%D9%8A%D9%84%D8%A9', NULL),
(338, 'باقور', 'city', 94, '%D8%A8%D8%A7%D9%82%D9%88%D8%B1', NULL),
(339, 'بنى سميع', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B3%D9%85%D9%8A%D8%B9', NULL),
(340, 'دكران', 'city', 94, '%D8%AF%D9%83%D8%B1%D8%A7%D9%86', NULL),
(341, 'دوينة', 'city', 94, '%D8%AF%D9%88%D9%8A%D9%86%D8%A9', NULL),
(342, 'نزلة باقور', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A8%D8%A7%D9%82%D9%88%D8%B1', NULL),
(343, 'البياضية', 'city', 94, '%D8%A7%D9%84%D8%A8%D9%8A%D8%A7%D8%B6%D9%8A%D8%A9', NULL),
(344, 'الشيخ عتمان', 'city', 94, '%D8%A7%D9%84%D8%B4%D9%8A%D8%AE-%D8%B9%D8%AA%D9%85%D8%A7%D9%86', NULL),
(345, 'العتمانية', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%AA%D9%85%D8%A7%D9%86%D9%8A%D8%A9', NULL),
(346, 'العقال بحرى', 'city', 94, '%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D9%84-%D8%A8%D8%AD%D8%B1%D9%89', NULL),
(347, 'العقال قبلى', 'city', 94, '%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D9%84-%D9%82%D8%A8%D9%84%D9%89', NULL),
(348, 'الكوم الحمر', 'city', 94, '%D8%A7%D9%84%D9%83%D9%88%D9%85-%D8%A7%D9%84%D8%AD%D9%85%D8%B1', NULL),
(349, 'المراونة', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B1%D8%A7%D9%88%D9%86%D8%A9', NULL),
(350, 'النواميس', 'city', 94, '%D8%A7%D9%84%D9%86%D9%88%D8%A7%D9%85%D9%8A%D8%B3', NULL),
(351, 'النواورة', 'city', 94, '%D8%A7%D9%84%D9%86%D9%88%D8%A7%D9%88%D8%B1%D8%A9', NULL),
(352, 'الهمامية', 'city', 94, '%D8%A7%D9%84%D9%87%D9%85%D8%A7%D9%85%D9%8A%D8%A9', NULL),
(353, 'طعمة', 'city', 94, '%D8%B7%D8%B9%D9%85%D8%A9', NULL),
(354, 'عزبة القباط', 'city', 94, '%D8%B9%D8%B2%D8%A8%D8%A9-%D8%A7%D9%84%D9%82%D8%A8%D8%A7%D8%B7', NULL),
(355, 'كوم سعدة', 'city', 94, '%D9%83%D9%88%D9%85-%D8%B3%D8%B9%D8%AF%D8%A9', NULL),
(356, 'منشأة البدارى', 'city', 94, '%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D8%A7%D9%84%D8%A8%D8%AF%D8%A7%D8%B1%D9%89', NULL),
(357, 'منشأة العقال', 'city', 94, '%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D9%84', NULL),
(358, 'منشأة همام', 'city', 94, '%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D9%87%D9%85%D8%A7%D9%85', NULL),
(359, 'نجع جزيرة فاو', 'city', 94, '%D9%86%D8%AC%D8%B9-%D8%AC%D8%B2%D9%8A%D8%B1%D8%A9-%D9%81%D8%A7%D9%88', NULL),
(360, 'نجع زريق', 'city', 94, '%D9%86%D8%AC%D8%B9-%D8%B2%D8%B1%D9%8A%D9%82', NULL),
(361, 'نجوع المعادى', 'city', 94, '%D9%86%D8%AC%D9%88%D8%B9-%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%AF%D9%89', NULL),
(362, 'التناغة', 'city', 94, '%D8%A7%D9%84%D8%AA%D9%86%D8%A7%D8%BA%D8%A9', NULL),
(363, 'الخوالد', 'city', 94, '%D8%A7%D9%84%D8%AE%D9%88%D8%A7%D9%84%D8%AF', NULL),
(364, 'الرويجات', 'city', 94, '%D8%A7%D9%84%D8%B1%D9%88%D9%8A%D8%AC%D8%A7%D8%AA', NULL),
(365, 'الشامية', 'city', 94, '%D8%A7%D9%84%D8%B4%D8%A7%D9%85%D9%8A%D8%A9', NULL),
(367, 'العفادرة', 'city', 94, '%D8%A7%D9%84%D8%B9%D9%81%D8%A7%D8%AF%D8%B1%D8%A9', NULL),
(368, 'العونة', 'city', 94, '%D8%A7%D9%84%D8%B9%D9%88%D9%86%D8%A9', NULL),
(369, 'الغريب', 'city', 94, '%D8%A7%D9%84%D8%BA%D8%B1%D9%8A%D8%A8', NULL),
(370, 'اللوقا', 'city', 94, '%D8%A7%D9%84%D9%84%D9%88%D9%82%D8%A7', NULL),
(371, 'المطمر', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B7%D9%85%D8%B1', NULL),
(372, 'النزلة المستجدة', 'city', 94, '%D8%A7%D9%84%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D9%85%D8%B3%D8%AA%D8%AC%D8%AF%D8%A9', NULL),
(373, 'بويط', 'city', 94, '%D8%A8%D9%88%D9%8A%D8%B7', NULL),
(374, 'تاسا', 'city', 94, '%D8%AA%D8%A7%D8%B3%D8%A7', NULL),
(375, 'دير تاسا', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%AA%D8%A7%D8%B3%D8%A7', NULL),
(376, 'نزلة الشيخ شحاتة', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE-%D8%B4%D8%AD%D8%A7%D8%AA%D8%A9', NULL),
(377, 'نزلة الملك', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D9%85%D9%84%D9%83', NULL),
(378, 'نزلة باخوم', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A8%D8%A7%D8%AE%D9%88%D9%85', NULL),
(379, 'العامرى', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%B1%D9%89', NULL),
(380, 'العزايزة', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%B2%D8%A7%D9%8A%D8%B2%D8%A9', NULL),
(381, 'المشايعة', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B4%D8%A7%D9%8A%D8%B9%D8%A9', NULL),
(382, 'المشايعة قبلى', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B4%D8%A7%D9%8A%D8%B9%D8%A9-%D9%82%D8%A8%D9%84%D9%89', NULL),
(383, 'دير الجنادلة', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%A7%D9%84%D8%AC%D9%86%D8%A7%D8%AF%D9%84%D8%A9', NULL),
(384, 'نزلة القديم', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D9%82%D8%AF%D9%8A%D9%85', NULL),
(385, 'نزلة أولد محمد', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A3%D9%88%D9%84%D8%AF-%D9%85%D8%AD%D9%85%D8%AF', NULL),
(386, 'نزلة ابو خليل', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D8%A8%D9%88-%D8%AE%D9%84%D9%8A%D9%84', NULL),
(387, 'النصار', 'city', 94, '%D8%A7%D9%84%D9%86%D8%B5%D8%A7%D8%B1', NULL),
(388, 'التتالية', 'city', 94, '%D8%A7%D9%84%D8%AA%D8%AA%D8%A7%D9%84%D9%8A%D8%A9', NULL),
(389, 'التمساحية', 'city', 94, '%D8%A7%D9%84%D8%AA%D9%85%D8%B3%D8%A7%D8%AD%D9%8A%D8%A9', NULL),
(390, 'الحبالصة', 'city', 94, '%D8%A7%D9%84%D8%AD%D8%A8%D8%A7%D9%84%D8%B5%D8%A9', NULL),
(391, 'الحردانة', 'city', 94, '%D8%A7%D9%84%D8%AD%D8%B1%D8%AF%D8%A7%D9%86%D8%A9', NULL),
(392, 'السراقنا', 'city', 94, '%D8%A7%D9%84%D8%B3%D8%B1%D8%A7%D9%82%D9%86%D8%A7', NULL),
(393, 'الشيخ داود', 'city', 94, '%D8%A7%D9%84%D8%B4%D9%8A%D8%AE-%D8%AF%D8%A7%D9%88%D8%AF', NULL),
(394, 'الشيخ عون الله', 'city', 94, '%D8%A7%D9%84%D8%B4%D9%8A%D8%AE-%D8%B9%D9%88%D9%86-%D8%A7%D9%84%D9%84%D9%87', NULL),
(395, 'الصبحة', 'city', 94, '%D8%A7%D9%84%D8%B5%D8%A8%D8%AD%D8%A9', NULL),
(396, 'المنشأة الصغرى', 'city', 94, '%D8%A7%D9%84%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D8%A7%D9%84%D8%B5%D8%BA%D8%B1%D9%89', NULL),
(397, 'المنشأة الكبرى', 'city', 94, '%D8%A7%D9%84%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D8%A7%D9%84%D9%83%D8%A8%D8%B1%D9%89', NULL),
(398, 'بلوط', 'city', 94, '%D8%A8%D9%84%D9%88%D8%B7', NULL),
(399, 'بنى ادريس', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%A7%D8%AF%D8%B1%D9%8A%D8%B3', NULL),
(400, 'بنى زيد بوق', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B2%D9%8A%D8%AF-%D8%A8%D9%88%D9%82', NULL),
(401, 'بنى صالح', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B5%D8%A7%D9%84%D8%AD', NULL),
(402, 'بنى قرة', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%82%D8%B1%D8%A9', NULL),
(403, 'بنى هلل', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%87%D9%84%D9%84', NULL),
(404, 'بنى يحى قبلى', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%8A%D8%AD%D9%89-%D9%82%D8%A8%D9%84%D9%89', NULL),
(405, 'بوق', 'city', 94, '%D8%A8%D9%88%D9%82', NULL),
(406, 'تناغة', 'city', 94, '%D8%AA%D9%86%D8%A7%D8%BA%D8%A9', NULL),
(407, 'دير القصير', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%A7%D9%84%D9%82%D8%B5%D9%8A%D8%B1', NULL),
(408, 'رزقة الدير المحرق', 'city', 94, '%D8%B1%D8%B2%D9%82%D8%A9-%D8%A7%D9%84%D8%AF%D9%8A%D8%B1-%D8%A7%D9%84%D9%85%D8%AD%D8%B1%D9%82', NULL),
(409, 'عرامية الديوان', 'city', 94, '%D8%B9%D8%B1%D8%A7%D9%85%D9%8A%D8%A9-%D8%A7%D9%84%D8%AF%D9%8A%D9%88%D8%A7%D9%86', NULL),
(410, 'عرب الجهمة', 'city', 94, '%D8%B9%D8%B1%D8%A8-%D8%A7%D9%84%D8%AC%D9%87%D9%85%D8%A9', NULL),
(411, 'عنك', 'city', 94, '%D8%B9%D9%86%D9%83', NULL),
(412, 'فزارة', 'city', 94, '%D9%81%D8%B2%D8%A7%D8%B1%D8%A9', NULL),
(413, 'قصير العمارنة', 'city', 94, '%D9%82%D8%B5%D9%8A%D8%B1-%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D8%B1%D9%86%D8%A9', NULL),
(414, 'منشأة خشبة', 'city', 94, '%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D8%AE%D8%B4%D8%A8%D8%A9', NULL),
(415, 'مير', 'city', 94, '%D9%85%D9%8A%D8%B1', NULL),
(416, 'نزالى جانوب', 'city', 93, '%D9%86%D8%B2%D8%A7%D9%84%D9%89-%D8%AC%D8%A7%D9%86%D9%88%D8%A8', NULL),
(417, 'ابو الهدر', 'city', 94, '%D8%A7%D8%A8%D9%88-%D8%A7%D9%84%D9%87%D8%AF%D8%B1', NULL),
(418, 'ابو كريم', 'city', 94, '%D8%A7%D8%A8%D9%88-%D9%83%D8%B1%D9%8A%D9%85', NULL),
(419, 'الحوطا الشرقية', 'city', 94, '%D8%A7%D9%84%D8%AD%D9%88%D8%B7%D8%A7-%D8%A7%D9%84%D8%B4%D8%B1%D9%82%D9%8A%D8%A9', NULL),
(420, 'الحوطا الغربية', 'city', 94, '%D8%A7%D9%84%D8%AD%D9%88%D8%B7%D8%A7-%D8%A7%D9%84%D8%BA%D8%B1%D8%A8%D9%8A%D8%A9', NULL),
(421, 'الرياض', 'city', 94, '%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6', NULL),
(422, 'المحمودية', 'city', 94, '%D8%A7%D9%84%D9%85%D8%AD%D9%85%D9%88%D8%AF%D9%8A%D8%A9', NULL),
(423, 'المطاوعة', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B7%D8%A7%D9%88%D8%B9%D8%A9', NULL),
(424, 'المناشى', 'city', 94, '%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B4%D9%89', NULL),
(425, 'المندرة بحرى', 'city', 94, '%D8%A7%D9%84%D9%85%D9%86%D8%AF%D8%B1%D8%A9-%D8%A8%D8%AD%D8%B1%D9%89', NULL),
(426, 'النهاية', 'city', 94, '%D8%A7%D9%84%D9%86%D9%87%D8%A7%D9%8A%D8%A9', NULL),
(427, 'أمشول', 'city', 94, '%D8%A3%D9%85%D8%B4%D9%88%D9%84', NULL),
(428, 'بانوب ظهر الجمل', 'city', 94, '%D8%A8%D8%A7%D9%86%D9%88%D8%A8-%D8%B8%D9%87%D8%B1-%D8%A7%D9%84%D8%AC%D9%85%D9%84', NULL),
(429, 'باويط', 'city', 94, '%D8%A8%D8%A7%D9%88%D9%8A%D8%B7', NULL),
(430, 'ببلو', 'city', 94, '%D8%A8%D8%A8%D9%84%D9%88', NULL),
(431, 'بنى يحى بحرى', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%8A%D8%AD%D9%89-%D8%A8%D8%AD%D8%B1%D9%89', NULL),
(432, 'جرف سرحان', 'city', 94, '%D8%AC%D8%B1%D9%81-%D8%B3%D8%B1%D8%AD%D8%A7%D9%86', NULL),
(433, 'خارفة', 'city', 94, '%D8%AE%D8%A7%D8%B1%D9%81%D8%A9', NULL),
(434, 'دشلوط', 'city', 94, '%D8%AF%D8%B4%D9%84%D9%88%D8%B7', NULL),
(435, 'ديروط الشريف', 'city', 94, '%D8%AF%D9%8A%D8%B1%D9%88%D8%B7-%D8%A7%D9%84%D8%B4%D8%B1%D9%8A%D9%81', NULL),
(436, 'زاوية هارون', 'city', 94, '%D8%B2%D8%A7%D9%88%D9%8A%D8%A9-%D9%87%D8%A7%D8%B1%D9%88%D9%86', NULL),
(437, 'ساو', 'city', 94, '%D8%B3%D8%A7%D9%88', NULL),
(438, 'سرقنا', 'city', 94, '%D8%B3%D8%B1%D9%82%D9%86%D8%A7', NULL),
(439, 'شلش', 'city', 94, '%D8%B4%D9%84%D8%B4', NULL),
(440, 'صنبو', 'city', 94, '%D8%B5%D9%86%D8%A8%D9%88', NULL),
(441, 'عرامية الخضيرى', 'city', 94, '%D8%B9%D8%B1%D8%A7%D9%85%D9%8A%D8%A9-%D8%A7%D9%84%D8%AE%D8%B6%D9%8A%D8%B1%D9%89', NULL),
(442, 'عواجة', 'city', 94, '%D8%B9%D9%88%D8%A7%D8%AC%D8%A9', NULL),
(443, 'قصر حيدر', 'city', 94, '%D9%82%D8%B5%D8%B1-%D8%AD%D9%8A%D8%AF%D8%B1', NULL),
(444, 'كودية مبارك', 'city', 94, '%D9%83%D9%88%D8%AF%D9%8A%D8%A9-%D9%85%D8%A8%D8%A7%D8%B1%D9%83', NULL),
(445, 'كوم انجاشة', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A7%D9%86%D8%AC%D8%A7%D8%B4%D8%A9', NULL),
(446, 'كوم بوها بحرى', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A8%D9%88%D9%87%D8%A7-%D8%A8%D8%AD%D8%B1%D9%89', NULL),
(447, 'مرينة', 'city', 94, '%D9%85%D8%B1%D9%8A%D9%86%D8%A9', NULL),
(448, 'مسارة', 'city', 94, '%D9%85%D8%B3%D8%A7%D8%B1%D8%A9', NULL),
(449, 'نجع خضر', 'city', 94, '%D9%86%D8%AC%D8%B9-%D8%AE%D8%B6%D8%B1', NULL),
(450, 'نزلة العوامر', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D8%B9%D9%88%D8%A7%D9%85%D8%B1', NULL),
(451, 'نزلة بدوى', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A8%D8%AF%D9%88%D9%89', NULL),
(452, 'نزلة ساو', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%B3%D8%A7%D9%88', NULL),
(453, 'نزلة سرقنا', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%B3%D8%B1%D9%82%D9%86%D8%A7', NULL),
(454, 'نزلة ظاهر', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%B8%D8%A7%D9%87%D8%B1', NULL),
(455, 'نزلة فرج محمود', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D9%81%D8%B1%D8%AC-%D9%85%D8%AD%D9%85%D9%88%D8%AF', NULL),
(456, 'نزلة مصطفى عبد الحليم', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D9%85%D8%B5%D8%B7%D9%81%D9%89-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D8%AD%D9%84%D9%8A%D9%85', NULL),
(457, 'البلق', 'city', 94, '%D8%A7%D9%84%D8%A8%D9%84%D9%82', NULL),
(458, 'البارود شرق', 'city', 94, '%D8%A7%D9%84%D8%A8%D8%A7%D8%B1%D9%88%D8%AF-%D8%B4%D8%B1%D9%82', NULL),
(459, 'البربا', 'city', 94, '%D8%A7%D9%84%D8%A8%D8%B1%D8%A8%D8%A7', NULL),
(460, 'الدوير', 'city', 94, '%D8%A7%D9%84%D8%AF%D9%88%D9%8A%D8%B1', NULL),
(461, 'الشناينة', 'city', 94, '%D8%A7%D9%84%D8%B4%D9%86%D8%A7%D9%8A%D9%86%D8%A9', NULL),
(462, 'الكوردى', 'city', 94, '%D8%A7%D9%84%D9%83%D9%88%D8%B1%D8%AF%D9%89', NULL),
(463, 'الوعاضلة', 'city', 94, '%D8%A7%D9%84%D9%88%D8%B9%D8%A7%D8%B6%D9%84%D8%A9', NULL),
(464, 'أولد الياس', 'city', 94, '%D8%A3%D9%88%D9%84%D8%AF-%D8%A7%D9%84%D9%8A%D8%A7%D8%B3', NULL),
(465, 'بنى فيز', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%81%D9%8A%D8%B2', NULL),
(466, 'كردوس', 'city', 94, '%D9%83%D8%B1%D8%AF%D9%88%D8%B3', NULL),
(467, 'كوم ابو حجر', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A7%D8%A8%D9%88-%D8%AD%D8%AC%D8%B1', NULL),
(468, 'كوم إسفحت', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A5%D8%B3%D9%81%D8%AD%D8%AA', NULL),
(469, 'كوم سعيد الغربى', 'city', 94, '%D9%83%D9%88%D9%85-%D8%B3%D8%B9%D9%8A%D8%AF-%D8%A7%D9%84%D8%BA%D8%B1%D8%A8%D9%89', NULL),
(470, 'كوم سعيد الشرقى', 'city', 94, '%D9%83%D9%88%D9%85-%D8%B3%D8%B9%D9%8A%D8%AF-%D8%A7%D9%84%D8%B4%D8%B1%D9%82%D9%89', NULL),
(471, 'مجريس', 'city', 94, '%D9%85%D8%AC%D8%B1%D9%8A%D8%B3', NULL),
(472, 'نجوع السدادرة', 'city', 94, '%D9%86%D8%AC%D9%88%D8%B9-%D8%A7%D9%84%D8%B3%D8%AF%D8%A7%D8%AF%D8%B1%D8%A9', NULL),
(473, 'البارود غرب', 'city', 94, '%D8%A7%D9%84%D8%A8%D8%A7%D8%B1%D9%88%D8%AF-%D8%BA%D8%B1%D8%A8', NULL),
(474, 'الجاولى', 'city', 94, '%D8%A7%D9%84%D8%AC%D8%A7%D9%88%D9%84%D9%89', NULL),
(475, 'الحواتكة', 'city', 94, '%D8%A7%D9%84%D8%AD%D9%88%D8%A7%D8%AA%D9%83%D8%A9', NULL),
(476, 'السهريج', 'city', 94, '%D8%A7%D9%84%D8%B3%D9%87%D8%B1%D9%8A%D8%AC', NULL),
(477, 'العتامنة', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%AA%D8%A7%D9%85%D9%86%D8%A9', NULL),
(478, 'العزبة', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%B2%D8%A8%D8%A9', NULL),
(479, 'المدور', 'city', 94, '%D8%A7%D9%84%D9%85%D8%AF%D9%88%D8%B1', NULL),
(480, 'المندرة قبلى', 'city', 94, '%D8%A7%D9%84%D9%85%D9%86%D8%AF%D8%B1%D8%A9-%D9%82%D8%A8%D9%84%D9%89', NULL),
(481, 'ام القصور', 'city', 94, '%D8%A7%D9%85-%D8%A7%D9%84%D9%82%D8%B5%D9%88%D8%B1', NULL),
(482, 'بنى رافع', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B1%D8%A7%D9%81%D8%B9', NULL),
(483, 'بنى سند', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B3%D9%86%D8%AF', NULL),
(484, 'بنى شعران', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B4%D8%B9%D8%B1%D8%A7%D9%86', NULL),
(485, 'بنى شقير', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B4%D9%82%D9%8A%D8%B1', NULL),
(486, 'بنى عديات', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B9%D8%AF%D9%8A%D8%A7%D8%AA', NULL),
(487, 'بنى مجد', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%85%D8%AC%D8%AF', NULL),
(488, 'جحدم', 'city', 94, '%D8%AC%D8%AD%D8%AF%D9%85', NULL),
(489, 'جزيرة المعابد البحرية', 'city', 94, '%D8%AC%D8%B2%D9%8A%D8%B1%D8%A9-%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%A8%D8%AF-%D8%A7%D9%84%D8%A8%D8%AD%D8%B1%D9%8A%D8%A9', NULL),
(490, 'دمنهور', 'city', 94, '%D8%AF%D9%85%D9%86%D9%87%D9%88%D8%B1', NULL),
(491, 'سراوة', 'city', 94, '%D8%B3%D8%B1%D8%A7%D9%88%D8%A9', NULL),
(492, 'سكرة', 'city', 94, '%D8%B3%D9%83%D8%B1%D8%A9', NULL),
(493, 'عرب العمايم', 'city', 94, '%D8%B9%D8%B1%D8%A8-%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D9%8A%D9%85', NULL),
(494, 'كوم الشهيد', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A7%D9%84%D8%B4%D9%87%D9%8A%D8%AF', NULL),
(495, 'كوم بوها قبلى', 'city', 94, '%D9%83%D9%88%D9%85-%D8%A8%D9%88%D9%87%D8%A7-%D9%82%D8%A8%D9%84%D9%89', NULL),
(496, 'نزلة رميح', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%B1%D9%85%D9%8A%D8%AD', NULL),
(497, 'نزلة قرار', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D9%82%D8%B1%D8%A7%D8%B1', NULL),
(498, 'الناصرية', 'city', 94, '%D8%A7%D9%84%D9%86%D8%A7%D8%B5%D8%B1%D9%8A%D8%A9', NULL),
(499, 'الكراد', 'city', 94, '%D8%A7%D9%84%D9%83%D8%B1%D8%A7%D8%AF', NULL),
(500, 'الطوابية', 'city', 94, '%D8%A7%D9%84%D8%B7%D9%88%D8%A7%D8%A8%D9%8A%D8%A9', NULL),
(501, 'الفيما', 'city', 94, '%D8%A7%D9%84%D9%81%D9%8A%D9%85%D8%A7', NULL),
(502, 'القصر', 'city', 94, '%D8%A7%D9%84%D9%82%D8%B5%D8%B1', NULL),
(503, 'القوطا', 'city', 94, '%D8%A7%D9%84%D9%82%D9%88%D8%B7%D8%A7', NULL),
(504, 'المعصرة', 'city', 94, '%D8%A7%D9%84%D9%85%D8%B9%D8%B5%D8%B1%D8%A9', NULL),
(505, 'الكلبات', 'city', 94, '%D8%A7%D9%84%D9%83%D9%84%D8%A8%D8%A7%D8%AA', NULL),
(506, 'العطيات القبلية', 'city', 94, '%D8%A7%D9%84%D8%B9%D8%B7%D9%8A%D8%A7%D8%AA-%D8%A7%D9%84%D9%82%D8%A8%D9%84%D9%8A%D8%A9', NULL),
(507, 'الواسطى', 'city', 94, '%D8%A7%D9%84%D9%88%D8%A7%D8%B3%D8%B7%D9%89', NULL),
(508, 'أولد بدر', 'city', 94, '%D8%A3%D9%88%D9%84%D8%AF-%D8%A8%D8%AF%D8%B1', NULL),
(509, 'أولد سراج', 'city', 94, '%D8%A3%D9%88%D9%84%D8%AF-%D8%B3%D8%B1%D8%A7%D8%AC', NULL),
(510, 'بصرة', 'city', 94, '%D8%A8%D8%B5%D8%B1%D8%A9', NULL),
(511, 'بنى زيد', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B2%D9%8A%D8%AF', NULL),
(512, 'بنى طالب', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B7%D8%A7%D9%84%D8%A8', NULL),
(513, 'بنى عليج', 'city', 94, '%D8%A8%D9%86%D9%89-%D8%B9%D9%84%D9%8A%D8%AC', NULL),
(514, 'بنى مر', 'city', 94, '%D8%A8%D9%86%D9%89-%D9%85%D8%B1', NULL),
(515, 'تل أولد سراج', 'city', 94, '%D8%AA%D9%84-%D8%A3%D9%88%D9%84%D8%AF-%D8%B3%D8%B1%D8%A7%D8%AC', NULL),
(516, 'جزيرة الكراد', 'city', 94, '%D8%AC%D8%B2%D9%8A%D8%B1%D8%A9-%D8%A7%D9%84%D9%83%D8%B1%D8%A7%D8%AF', NULL),
(517, 'دير بصرة', 'city', 94, '%D8%AF%D9%8A%D8%B1-%D8%A8%D8%B5%D8%B1%D8%A9', NULL),
(518, 'عرب الطاولة', 'city', 94, '%D8%B9%D8%B1%D8%A8-%D8%A7%D9%84%D8%B7%D8%A7%D9%88%D9%84%D8%A9', NULL),
(519, 'عرب مطير', 'city', 94, '%D8%B9%D8%B1%D8%A8-%D9%85%D8%B7%D9%8A%D8%B1', NULL),
(520, 'منشأة المعصرة', 'city', 94, '%D9%85%D9%86%D8%B4%D8%A3%D8%A9-%D8%A7%D9%84%D9%85%D8%B9%D8%B5%D8%B1%D8%A9', NULL),
(521, 'نزلة العصارة', 'city', 94, '%D9%86%D8%B2%D9%84%D8%A9-%D8%A7%D9%84%D8%B9%D8%B5%D8%A7%D8%B1%D8%A9', NULL),
(522, 'القناطر الخيرية', 'city', 95, '%D8%A7%D9%84%D9%82%D9%86%D8%A7%D8%B7%D8%B1-%D8%A7%D9%84%D8%AE%D9%8A%D8%B1%D9%8A%D8%A9', NULL),
(523, 'بنها', 'city', 95, '%D8%A8%D9%86%D9%87%D8%A7', NULL),
(524, 'بهتيم', 'city', 95, '%D8%A8%D9%87%D8%AA%D9%8A%D9%85', NULL),
(525, 'الخصوص', 'city', 95, '%D8%A7%D9%84%D8%AE%D8%B5%D9%88%D8%B5', NULL),
(526, 'شبرا الخيمة', 'city', 95, '%D8%B4%D8%A8%D8%B1%D8%A7-%D8%A7%D9%84%D8%AE%D9%8A%D9%85%D8%A9', NULL),
(527, 'شبين القناطر', 'city', 95, '%D8%B4%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D9%82%D9%86%D8%A7%D8%B7%D8%B1', NULL),
(528, 'طوخ', 'city', 95, '%D8%B7%D9%88%D8%AE', NULL),
(529, 'العبور', 'city', 95, '%D8%A7%D9%84%D8%B9%D8%A8%D9%88%D8%B1', NULL),
(530, 'قليوب', 'city', 95, '%D9%82%D9%84%D9%8A%D9%88%D8%A8', NULL),
(531, 'قها', 'city', 95, '%D9%82%D9%87%D8%A7', NULL),
(532, 'كفر شكر', 'city', 95, '%D9%83%D9%81%D8%B1-%D8%B4%D9%83%D8%B1', NULL),
(533, 'كفر الزيات', 'city', 96, '%D9%83%D9%81%D8%B1-%D8%A7%D9%84%D8%B2%D9%8A%D8%A7%D8%AA', NULL),
(534, 'السنطة', 'city', 96, '%D8%A7%D9%84%D8%B3%D9%86%D8%B7%D8%A9', NULL),
(535, 'المحلة الكبرى ( حى أول )', 'city', 96, '%D8%A7%D9%84%D9%85%D8%AD%D9%84%D8%A9-%D8%A7%D9%84%D9%83%D8%A8%D8%B1%D9%89-%28-%D8%AD%D9%89-%D8%A3%D9%88%D9%84-%29', NULL),
(536, 'المحلة الكبرى ( حى ثانى )', 'city', 96, '%D8%A7%D9%84%D9%85%D8%AD%D9%84%D8%A9-%D8%A7%D9%84%D9%83%D8%A8%D8%B1%D9%89-%28-%D8%AD%D9%89-%D8%AB%D8%A7%D9%86%D9%89-%29', NULL),
(537, 'بسيون', 'city', 96, '%D8%A8%D8%B3%D9%8A%D9%88%D9%86', NULL),
(538, 'زفتى', 'city', 96, '%D8%B2%D9%81%D8%AA%D9%89', NULL),
(539, 'سمود', 'city', 96, '%D8%B3%D9%85%D9%88%D8%AF', NULL),
(540, 'طنطا ( حى أول )', 'city', 96, '%D8%B7%D9%86%D8%B7%D8%A7-%28-%D8%AD%D9%89-%D8%A3%D9%88%D9%84-%29', NULL),
(541, 'طنطا ( حى ثانى )', 'city', 96, '%D8%B7%D9%86%D8%B7%D8%A7-%28-%D8%AD%D9%89-%D8%AB%D8%A7%D9%86%D9%89-%29', NULL),
(542, 'قطور', 'city', 96, '%D9%82%D8%B7%D9%88%D8%B1', NULL),
(543, 'قرى أخميم', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%A3%D8%AE%D9%85%D9%8A%D9%85', NULL),
(544, 'قرى البلينا', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D8%A8%D9%84%D9%8A%D9%86%D8%A7', NULL),
(545, 'قرى جرجا', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%AC%D8%B1%D8%AC%D8%A7', NULL),
(546, 'قرى جهينة', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%AC%D9%87%D9%8A%D9%86%D8%A9', NULL),
(547, 'قرى دار السلام', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%AF%D8%A7%D8%B1-%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85', NULL),
(548, 'قرى ساقلتة', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%B3%D8%A7%D9%82%D9%84%D8%AA%D8%A9', NULL),
(549, 'قرى سوهاج', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%B3%D9%88%D9%87%D8%A7%D8%AC', NULL),
(550, 'قرى طما', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%B7%D9%85%D8%A7', NULL),
(551, 'قرى طهطا', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%B7%D9%87%D8%B7%D8%A7', NULL),
(552, 'قرى العسيرات', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D8%B9%D8%B3%D9%8A%D8%B1%D8%A7%D8%AA', NULL),
(553, 'قرى المراغة', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%85%D8%B1%D8%A7%D8%BA%D8%A9', NULL),
(554, 'قرى المنشأة', 'city', 97, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%85%D9%86%D8%B4%D8%A3%D8%A9', NULL),
(555, 'الباجور', 'city', 98, '%D8%A7%D9%84%D8%A8%D8%A7%D8%AC%D9%88%D8%B1', NULL),
(556, 'بركة السبع', 'city', 98, '%D8%A8%D8%B1%D9%83%D8%A9-%D8%A7%D9%84%D8%B3%D8%A8%D8%B9', NULL),
(557, 'تلا', 'city', 98, '%D8%AA%D9%84%D8%A7', NULL),
(558, 'مدينة السادات', 'city', 98, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A7%D9%84%D8%B3%D8%A7%D8%AF%D8%A7%D8%AA', NULL),
(559, 'شبين الكوم', 'city', 98, '%D8%B4%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D9%83%D9%88%D9%85', NULL),
(560, 'الشهداء', 'city', 98, '%D8%A7%D9%84%D8%B4%D9%87%D8%AF%D8%A7%D8%A1', NULL),
(561, 'منوف', 'city', 98, '%D9%85%D9%86%D9%88%D9%81', NULL),
(562, 'أشمون', 'city', 98, '%D8%A3%D8%B4%D9%85%D9%88%D9%86', NULL),
(563, 'سرس الليان', 'city', 98, '%D8%B3%D8%B1%D8%B3-%D8%A7%D9%84%D9%84%D9%8A%D8%A7%D9%86', NULL),
(564, 'قويسنا', 'city', 98, '%D9%82%D9%88%D9%8A%D8%B3%D9%86%D8%A7', NULL),
(565, 'مركز  كفر الشيخ', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2--%D9%83%D9%81%D8%B1-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE', NULL),
(566, 'مركز دسوق', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D8%AF%D8%B3%D9%88%D9%82', NULL),
(567, 'مركز فوه', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D9%81%D9%88%D9%87', NULL),
(568, 'مركز البرلس', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D8%A7%D9%84%D8%A8%D8%B1%D9%84%D8%B3', NULL),
(569, 'مركز بيلا', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D8%A8%D9%8A%D9%84%D8%A7', NULL),
(570, 'مركز سيدى سالم', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D8%B3%D9%8A%D8%AF%D9%89-%D8%B3%D8%A7%D9%84%D9%85', NULL),
(571, 'مركز الحامول', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D8%A7%D9%84%D8%AD%D8%A7%D9%85%D9%88%D9%84', NULL),
(572, 'مركز قلين', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D9%82%D9%84%D9%8A%D9%86', NULL),
(573, 'مركز مطوبس', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D9%85%D8%B7%D9%88%D8%A8%D8%B3', NULL),
(574, 'مركز الرياض', 'city', 100, '%D9%85%D8%B1%D9%83%D8%B2-%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6', NULL),
(575, 'قرى إبشواي', 'city', 101, '%D9%82%D8%B1%D9%89-%D8%A5%D8%A8%D8%B4%D9%88%D8%A7%D9%8A', NULL),
(576, 'قرى أطسا', 'city', 101, '%D9%82%D8%B1%D9%89-%D8%A3%D8%B7%D8%B3%D8%A7', NULL),
(577, 'قرى سنورس', 'city', 101, '%D9%82%D8%B1%D9%89-%D8%B3%D9%86%D9%88%D8%B1%D8%B3', NULL),
(578, 'قرى طامية', 'city', 101, '%D9%82%D8%B1%D9%89-%D8%B7%D8%A7%D9%85%D9%8A%D8%A9', NULL),
(579, 'قرى الفيوم', 'city', 101, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%81%D9%8A%D9%88%D9%85', NULL),
(580, 'قرى يوسف الصديق', 'city', 101, '%D9%82%D8%B1%D9%89-%D9%8A%D9%88%D8%B3%D9%81-%D8%A7%D9%84%D8%B5%D8%AF%D9%8A%D9%82', NULL),
(581, 'قرى أبو تشت', 'city', 102, '%D9%82%D8%B1%D9%89-%D8%A3%D8%A8%D9%88-%D8%AA%D8%B4%D8%AA', NULL),
(582, 'قرى دشنا', 'city', 102, '%D9%82%D8%B1%D9%89-%D8%AF%D8%B4%D9%86%D8%A7', NULL),
(583, 'قرى فرشوط', 'city', 102, '%D9%82%D8%B1%D9%89-%D9%81%D8%B1%D8%B4%D9%88%D8%B7', NULL),
(584, 'قرى قفط', 'city', 102, '%D9%82%D8%B1%D9%89-%D9%82%D9%81%D8%B7', NULL),
(585, 'قرى قنا', 'city', 102, '%D9%82%D8%B1%D9%89-%D9%82%D9%86%D8%A7', NULL),
(586, 'قرى قوص', 'city', 102, '%D9%82%D8%B1%D9%89-%D9%82%D9%88%D8%B5', NULL),
(587, 'قرى نجع حمادى', 'city', 102, '%D9%82%D8%B1%D9%89-%D9%86%D8%AC%D8%B9-%D8%AD%D9%85%D8%A7%D8%AF%D9%89', NULL),
(588, 'قرى نقادة', 'city', 102, '%D9%82%D8%B1%D9%89-%D9%86%D9%82%D8%A7%D8%AF%D8%A9', NULL),
(589, 'قرى الوقف', 'city', 102, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%88%D9%82%D9%81', NULL),
(590, 'قرى أهناسيا', 'city', 103, '%D9%82%D8%B1%D9%89-%D8%A3%D9%87%D9%86%D8%A7%D8%B3%D9%8A%D8%A7', NULL),
(591, 'قرى ببا', 'city', 103, '%D9%82%D8%B1%D9%89-%D8%A8%D8%A8%D8%A7', NULL),
(592, 'قرى بنى سويف', 'city', 103, '%D9%82%D8%B1%D9%89-%D8%A8%D9%86%D9%89-%D8%B3%D9%88%D9%8A%D9%81', NULL),
(593, 'قرى سمسطا', 'city', 103, '%D9%82%D8%B1%D9%89-%D8%B3%D9%85%D8%B3%D8%B7%D8%A7', NULL),
(594, 'قرى الفشن', 'city', 103, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%81%D8%B4%D9%86', NULL),
(595, 'قرى ناصر', 'city', 103, '%D9%82%D8%B1%D9%89-%D9%86%D8%A7%D8%B5%D8%B1', NULL),
(596, 'قرى الواسطى', 'city', 103, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%88%D8%A7%D8%B3%D8%B7%D9%89', NULL),
(597, 'دمياط', 'city', 104, '%D8%AF%D9%85%D9%8A%D8%A7%D8%B7', NULL),
(598, 'رأس البر', 'city', 104, '%D8%B1%D8%A3%D8%B3-%D8%A7%D9%84%D8%A8%D8%B1', NULL),
(599, 'الزرقا', 'city', 104, '%D8%A7%D9%84%D8%B2%D8%B1%D9%82%D8%A7', NULL),
(600, 'عزبة البرج', 'city', 104, '%D8%B9%D8%B2%D8%A8%D8%A9-%D8%A7%D9%84%D8%A8%D8%B1%D8%AC', NULL),
(601, 'كفر سعد', 'city', 104, '%D9%83%D9%81%D8%B1-%D8%B3%D8%B9%D8%AF', NULL),
(602, 'فارسكور', 'city', 104, '%D9%81%D8%A7%D8%B1%D8%B3%D9%83%D9%88%D8%B1', NULL),
(603, 'ميت ابو غالب', 'city', 104, '%D9%85%D9%8A%D8%AA-%D8%A7%D8%A8%D9%88-%D8%BA%D8%A7%D9%84%D8%A8', NULL),
(604, 'أبو صوير المحطة', 'city', 105, '%D8%A3%D8%A8%D9%88-%D8%B5%D9%88%D9%8A%D8%B1-%D8%A7%D9%84%D9%85%D8%AD%D8%B7%D8%A9', NULL),
(605, 'الإسماعيلية الجديدة', 'city', 105, '%D8%A7%D9%84%D8%A5%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9', NULL),
(606, 'التل الكبير', 'city', 105, '%D8%A7%D9%84%D8%AA%D9%84-%D8%A7%D9%84%D9%83%D8%A8%D9%8A%D8%B1', NULL),
(607, 'فايد', 'city', 105, '%D9%81%D8%A7%D9%8A%D8%AF', NULL),
(608, 'القصاصين الجديدة', 'city', 105, '%D8%A7%D9%84%D9%82%D8%B5%D8%A7%D8%B5%D9%8A%D9%86-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9', NULL),
(609, 'القنطرة شرق', 'city', 105, '%D8%A7%D9%84%D9%82%D9%86%D8%B7%D8%B1%D8%A9-%D8%B4%D8%B1%D9%82', NULL),
(610, 'القنطرة غرب', 'city', 105, '%D8%A7%D9%84%D9%82%D9%86%D8%B7%D8%B1%D8%A9-%D8%BA%D8%B1%D8%A8', NULL);
INSERT INTO `places` (`id`, `name`, `type`, `mohafza_id`, `url`, `num_view`) VALUES
(611, 'بئر العبد', 'city', 106, '%D8%A8%D8%A6%D8%B1-%D8%A7%D9%84%D8%B9%D8%A8%D8%AF', NULL),
(612, 'الحسنة', 'city', 106, '%D8%A7%D9%84%D8%AD%D8%B3%D9%86%D8%A9', NULL),
(613, 'رفح', 'city', 106, '%D8%B1%D9%81%D8%AD', NULL),
(614, 'الشيخ زويد', 'city', 106, '%D8%A7%D9%84%D8%B4%D9%8A%D8%AE-%D8%B2%D9%88%D9%8A%D8%AF', NULL),
(615, 'العريش', 'city', 106, '%D8%A7%D9%84%D8%B9%D8%B1%D9%8A%D8%B4', NULL),
(616, 'نخل', 'city', 106, '%D9%86%D8%AE%D9%84', NULL),
(617, 'أم سدرة', 'city', 107, '%D8%A3%D9%85-%D8%B3%D8%AF%D8%B1%D8%A9', NULL),
(618, 'دابود', 'city', 107, '%D8%AF%D8%A7%D8%A8%D9%88%D8%AF', NULL),
(619, 'دندور', 'city', 107, '%D8%AF%D9%86%D8%AF%D9%88%D8%B1', NULL),
(620, 'شروانة بحرى', 'city', 107, '%D8%B4%D8%B1%D9%88%D8%A7%D9%86%D8%A9-%D8%A8%D8%AD%D8%B1%D9%89', NULL),
(621, 'غرب اسوان', 'city', 107, '%D8%BA%D8%B1%D8%A8-%D8%A7%D8%B3%D9%88%D8%A7%D9%86', NULL),
(622, 'قرية الشيمة', 'city', 107, '%D9%82%D8%B1%D9%8A%D8%A9-%D8%A7%D9%84%D8%B4%D9%8A%D9%85%D8%A9', NULL),
(623, 'قرية الوسية', 'city', 107, '%D9%82%D8%B1%D9%8A%D8%A9-%D8%A7%D9%84%D9%88%D8%B3%D9%8A%D8%A9', NULL),
(624, 'بلانة', 'city', 107, '%D8%A8%D9%84%D8%A7%D9%86%D8%A9', NULL),
(625, 'مدينة الخارجة', 'city', 108, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A7%D9%84%D8%AE%D8%A7%D8%B1%D8%AC%D8%A9', NULL),
(626, 'الداخلة', 'city', 108, '%D8%A7%D9%84%D8%AF%D8%A7%D8%AE%D9%84%D8%A9', NULL),
(627, 'باريس', 'city', 108, '%D8%A8%D8%A7%D8%B1%D9%8A%D8%B3', NULL),
(628, 'مدينة موط', 'city', 108, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D9%85%D9%88%D8%B7', NULL),
(629, 'مدينة بلاط', 'city', 108, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A8%D9%84%D8%A7%D8%B7', NULL),
(630, 'الشلاتين', 'city', 109, '%D8%A7%D9%84%D8%B4%D9%84%D8%A7%D8%AA%D9%8A%D9%86', NULL),
(631, 'حلايب', 'city', 109, '%D8%AD%D9%84%D8%A7%D9%8A%D8%A8', NULL),
(632, 'رأس غارب', 'city', 109, '%D8%B1%D8%A3%D8%B3-%D8%BA%D8%A7%D8%B1%D8%A8', NULL),
(633, 'سفاجا', 'city', 109, '%D8%B3%D9%81%D8%A7%D8%AC%D8%A7', NULL),
(634, 'الغردقة', 'city', 109, '%D8%A7%D9%84%D8%BA%D8%B1%D8%AF%D9%82%D8%A9', NULL),
(635, 'القصير', 'city', 109, '%D8%A7%D9%84%D9%82%D8%B5%D9%8A%D8%B1', NULL),
(636, 'مرسى علم', 'city', 109, '%D9%85%D8%B1%D8%B3%D9%89-%D8%B9%D9%84%D9%85', NULL),
(637, 'قرى أرمنت', 'city', 110, '%D9%82%D8%B1%D9%89-%D8%A3%D8%B1%D9%85%D9%86%D8%AA', NULL),
(638, 'قرى إسنا', 'city', 110, '%D9%82%D8%B1%D9%89-%D8%A5%D8%B3%D9%86%D8%A7', NULL),
(639, 'قرى البياضية', 'city', 110, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D8%A8%D9%8A%D8%A7%D8%B6%D9%8A%D8%A9', NULL),
(640, 'قرى الزينية', 'city', 110, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D8%B2%D9%8A%D9%86%D9%8A%D8%A9', NULL),
(641, 'قرى الطود', 'city', 110, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D8%B7%D9%88%D8%AF', NULL),
(642, 'قرى القرنة', 'city', 110, '%D9%82%D8%B1%D9%89-%D8%A7%D9%84%D9%82%D8%B1%D9%86%D8%A9', NULL),
(643, 'حى الشروق', 'city', 111, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B4%D8%B1%D9%88%D9%82', NULL),
(644, 'حى العرب', 'city', 111, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B9%D8%B1%D8%A8', NULL),
(645, 'حى المناخ', 'city', 111, '%D8%AD%D9%89-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%AE', NULL),
(646, 'حى الضواحى', 'city', 111, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B6%D9%88%D8%A7%D8%AD%D9%89', NULL),
(647, 'حى الجنوب', 'city', 111, '%D8%AD%D9%89-%D8%A7%D9%84%D8%AC%D9%86%D9%88%D8%A8', NULL),
(648, 'حى الزهور', 'city', 111, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B2%D9%87%D9%88%D8%B1', NULL),
(649, 'حى غرب', 'city', 111, '%D8%AD%D9%89-%D8%BA%D8%B1%D8%A8', NULL),
(650, 'مدينة بورفؤاد', 'city', 111, '%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A8%D9%88%D8%B1%D9%81%D8%A4%D8%A7%D8%AF', NULL),
(651, 'حى السويس', 'city', 112, '%D8%AD%D9%89-%D8%A7%D9%84%D8%B3%D9%88%D9%8A%D8%B3', NULL),
(652, 'حى الاربعين', 'city', 112, '%D8%AD%D9%89-%D8%A7%D9%84%D8%A7%D8%B1%D8%A8%D8%B9%D9%8A%D9%86', NULL),
(653, 'حى عتاقة', 'city', 112, '%D8%AD%D9%89-%D8%B9%D8%AA%D8%A7%D9%82%D8%A9', NULL),
(654, 'حى الجناين', 'city', 112, '%D8%AD%D9%89-%D8%A7%D9%84%D8%AC%D9%86%D8%A7%D9%8A%D9%86', NULL),
(655, 'حى فيصل', 'city', 112, '%D8%AD%D9%89-%D9%81%D9%8A%D8%B5%D9%84', NULL),
(656, 'أبو رديس', 'city', 113, '%D8%A3%D8%A8%D9%88-%D8%B1%D8%AF%D9%8A%D8%B3', NULL),
(657, 'أبو زنيمة', 'city', 113, '%D8%A3%D8%A8%D9%88-%D8%B2%D9%86%D9%8A%D9%85%D8%A9', NULL),
(658, 'دهب', 'city', 113, '%D8%AF%D9%87%D8%A8', NULL),
(659, 'رأس سدر', 'city', 113, '%D8%B1%D8%A3%D8%B3-%D8%B3%D8%AF%D8%B1', NULL),
(660, 'سانت كاترين', 'city', 113, '%D8%B3%D8%A7%D9%86%D8%AA-%D9%83%D8%A7%D8%AA%D8%B1%D9%8A%D9%86', NULL),
(661, 'شرم الشيخ', 'city', 113, '%D8%B4%D8%B1%D9%85-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE', NULL),
(662, 'طابا', 'city', 113, '%D8%B7%D8%A7%D8%A8%D8%A7', NULL),
(663, 'الطور', 'city', 113, '%D8%A7%D9%84%D8%B7%D9%88%D8%B1', NULL),
(664, 'نوبيع', 'city', 113, '%D9%86%D9%88%D8%A8%D9%8A%D8%B9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `post_id`, `user_id`, `stars`, `date`, `time`) VALUES
(28, 99, 65, 1, '2018-09-11', '05:13:10 PM'),
(29, 101, 72, 5, '2018-09-12', '11:14:21 PM');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `langkey` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `title` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `stuts` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `langkey`, `url`, `title`, `content`, `stuts`, `photo`, `meat_description`, `meat_keywords`) VALUES
(1, 'ar', 'AAAAAAAAAaaa', 'AAAAAAAAAaaa', '<p>غنتفغنتق</p>\r\n\r\n<p>قفق</p>\r\n\r\n<p>تق</p>\r\n\r\n<p>غت</p>\r\n\r\n<p>غف</p>', 0, 'service-150477483259b10ab0b7907.png', 'ققعاتفةالىwshrfdn', 'some text,ثاىﻻ ر,fwegw,g,wre'),
(3, 'en', 'demo-page', 'demo page', '<p>tikggh,</p>\r\n\r\n<p>fgu</p>\r\n\r\n<p>ghj</p>\r\n\r\n<p>lhgj</p>\r\n\r\n<p>k</p>\r\n\r\n<p>ghjlk</p>\r\n\r\n<p>hj</p>\r\n\r\n<p>l</p>\r\n\r\n<p>hk</p>\r\n\r\n<p>gbjg</p>\r\n\r\n<p>kl</p>\r\n\r\n<p>hjjkl</p>\r\n\r\n<p>hgj</p>\r\n\r\n<p>&nbsp;</p>', 0, 'page-150460663059ae79a6ad00f.png', 'srrjf xc\r\nj\r\ngg\r\ndf\r\n\r\nghj', 'some text,edfg,s,hgjj,k,llrty,i,/,fg,iy,zd,h'),
(4, 'ar', 'fdjuhfytujrtyuuryuuyruy', 'fdjuhfytujrtyuuryuuyruy', '<p>fduytugktyfdtujrtu</p>\r\n\r\n<p>ttu</p>\r\n\r\n<p>fy</p>\r\n\r\n<p>k</p>\r\n\r\n<p>hguj</p>\r\n\r\n<p>kluyt</p>\r\n\r\n<p>k</p>\r\n\r\n<p>ytu</p>\r\n\r\n<p>k</p>\r\n\r\n<p>gyuk</p>\r\n\r\n<p>ytu</p>\r\n\r\n<p>&nbsp;</p>', 0, 'service-150477458859b109bc29ff5.png', 'fhfhhljdfdjjkliy', 'some text');

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`key`, `value`) VALUES
('FB_ID', '224254061593694'),
('FB_SECRET', 'c79a72ed7453ac89db90e7fdd373307e'),
('GL_ID', '٣٤٦٥٤٦٦٤'),
('GL_SECRET', '٤٣٦٥٤٧٥٦٧٥٦٧٥'),
('about_us', '<div style=\"text-align: right;\">&nbsp;Dot help nation&nbsp;مجتمع غير مغلق تقدر من خلاله طلب المساعدة او عرض خدماتك بدون مقابل وتقليل المسافة بين طالبين المساعدة والقادرين على المساعدة</div>\r\n\r\n<div style=\"text-align: right;\">&nbsp;بداية&nbsp; العمل على الفكرة منذ اغسطس 2016</div>\r\n\r\n<div style=\"text-align: right;\">&nbsp;تم تنفيذ الفكرة يونيو 2017</div>\r\n\r\n<div style=\"text-align: right;\">&nbsp;تجمع افراد حاملين الفكرة وقادرين على تطويرها&nbsp;</div>\r\n\r\n<div style=\"text-align: right;\">&nbsp; &nbsp; &nbsp;لا يوجد مقر للعمل ...مقر العمل غير ثابت</div>\r\n\r\n<div style=\"text-align: right;\">يتم تمويل الفكرة ذاتيا من جميع افراد القائمين على العمل&nbsp;</div>\r\n\r\n<div style=\"text-align: right;\">&nbsp;لا يوجد نشاط على المنصة بمقابل مادى جميع الاعمال تطوعية&nbsp;</div>\r\n\r\n<div style=\"text-align: right;\">&nbsp;ليس موجه لفئة معينة او خاص عمر معين</div>'),
('about_us_en', '<p>dot help nation is an open society through which you can ask for or offer help for free by connecting those who can help with the one in need to it</p>\r\n\r\n<p>started working on the idea since August 2016</p>\r\n\r\n<p>idea realised on june 2017</p>\r\n\r\n<p>assemble people supporting the idea and able to develop it</p>\r\n\r\n<p>no stationary premises</p>\r\n\r\n<p>a self denying group was established, supporting the idea and able to develop it</p>\r\n\r\n<p>none of the activities on this platform is charged ... all of the activities are voluntary</p>\r\n\r\n<p>neither aimed to a specific category nor age</p>'),
('info_sitefaxnumber', '999999999'),
('mail_send_to', 'info@raitotec.com'),
('mail_send_to_cc', 'sales@raitotec.com'),
('mail_smtpfrom', 'contact@raitotec.com'),
('mail_smtphost', 'mail.raitotec.com'),
('mail_smtppassword', '12022'),
('mail_smtpport', '330'),
('mail_smtpuser', 'info@raitotec.com'),
('mailstmpoptions', 'advanced_settings'),
('site_address', 'الاسكندرية'),
('site_address_2', 'alex'),
('site_email_1', 'dot.help.nation@gmail.com'),
('site_email_2', 'dot.help.nation@gmail.com'),
('site_faiveicone', 'download.jpg'),
('site_lang', 'ar'),
('site_logo', 'dot help nation logo .jpg'),
('site_mapcode', '..'),
('site_mobilelogo', 'download.jpg'),
('site_name', 'Dot help nation'),
('site_phone', '01011484991'),
('site_phone_2', '..'),
('site_tageline', 'ask help enjoy'),
('site_telphone', '9999999'),
('social_facebook', 'https://www.facebook.com/dothelpnation/'),
('social_flickr', '#flickr'),
('social_google-plus', 'https://plus.google.com/116640334560605672405'),
('social_instagram', 'vqwqegsbvaesd'),
('social_linkedin', '#linkedin'),
('social_pinterest', '#pinterest'),
('social_twitter', 'https://twitter.com/dothelpnation'),
('social_vimeo', 'vimeo#'),
('social_whatsapp', '#whatsapp'),
('social_youtube', '#youtube');

-- --------------------------------------------------------

--
-- Table structure for table `site_lang`
--

CREATE TABLE `site_lang` (
  `id` int(11) NOT NULL,
  `code` varchar(155) COLLATE utf8_bin NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `dir` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `photo` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `is_main` varchar(155) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `site_lang`
--

INSERT INTO `site_lang` (`id`, `code`, `name`, `dir`, `stuts`, `photo`, `is_main`) VALUES
(1, 'en', 'English', 'ltr', NULL, 'adminlang-1503571971599eb00381ef2.png', NULL),
(2, 'ar', 'العربيه', 'rtl', 1, 'adminlang-1503577551599ec5cf3a357.png', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `site_translation`
--

CREATE TABLE `site_translation` (
  `id` int(11) NOT NULL,
  `lang_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `langkey` varchar(200) COLLATE utf8_bin NOT NULL,
  `text` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `site_translation`
--

INSERT INTO `site_translation` (`id`, `lang_code`, `langkey`, `text`) VALUES
(9, 'en', 'create_account', 'Create Account'),
(10, 'ar', 'create_account', 'انشاء حساب'),
(11, 'en', 'age', 'age'),
(12, 'ar', 'age', 'السن'),
(13, 'en', 'name', 'Name'),
(14, 'ar', 'name', 'الاسم'),
(15, 'en', 'mobile', 'Mobile Number'),
(16, 'ar', 'mobile', 'رقم الهاتف'),
(17, 'en', 'email', 'email'),
(18, 'ar', 'email', 'البريد الالكتروني'),
(19, 'en', 'registration', 'Registration'),
(20, 'ar', 'registration', 'انشاء الحساب'),
(21, 'en', 'sinup_terms_conditions', 'By signing up for an account you agree to our Terms and Conditions'),
(22, 'ar', 'sinup_terms_conditions', 'عند قيامك بتسجيل الحساب الخاص بك فانت توافق علي شروط استخدام الموقع'),
(23, 'en', 'languages', 'languages'),
(24, 'ar', 'languages', 'لغات الموقع'),
(25, 'en', 'signin', 'Sign In'),
(26, 'ar', 'signin', 'دخول'),
(27, 'en', 'signup', 'Register'),
(28, 'ar', 'signup', 'تسجيل'),
(29, 'en', 'add_your_ads', 'Post Your Ad'),
(30, 'ar', 'add_your_ads', 'اضافة منشور'),
(31, 'en', 'Password', 'Password'),
(32, 'ar', 'Password', 'كلمه المرور'),
(33, 'en', 'confirmpassword', 'Confirm Password'),
(34, 'ar', 'confirmpassword', 'تاكيد كلمه المرور'),
(35, 'en', 'signout', 'Logout'),
(36, 'ar', 'signout', 'تسجيل خروج'),
(37, 'en', 'createnewaccount', 'Create a New Account'),
(38, 'ar', 'createnewaccount', 'انشئ حساب جديد'),
(39, 'en', 'userlogin', 'User Login'),
(40, 'ar', 'userlogin', 'دخول المستخدمين والأعضاء'),
(41, 'en', 'Login', 'Login'),
(42, 'ar', 'Login', 'دخول الحساب'),
(43, 'en', 'Forgotpassword', 'Forgot password'),
(44, 'ar', 'Forgotpassword', 'نسيت كلمه المرور'),
(45, 'en', 'keepmelogged', 'Keep me logged in'),
(46, 'ar', 'keepmelogged', 'تذكرني دائما'),
(47, 'en', 'MyProfile', 'My Profile'),
(48, 'ar', 'MyProfile', 'الملف الشخصي'),
(49, 'en', 'Home', 'Home'),
(50, 'ar', 'Home', 'الرئيسيه'),
(51, 'en', 'Hello', 'Hello'),
(52, 'ar', 'Hello', 'مرحبا'),
(53, 'en', 'myads', 'My Ads'),
(54, 'ar', 'myads', 'منشوراتي'),
(55, 'en', 'ProfileDetails', 'Profile Details'),
(56, 'ar', 'ProfileDetails', 'بيانات الحساب'),
(57, 'en', 'updateinfo', 'update my data'),
(58, 'ar', 'updateinfo', 'تحديث بياناتي'),
(59, 'en', 'profilephoto', 'profile photo'),
(60, 'ar', 'profilephoto', 'صوره الملف الشخصي'),
(61, 'en', 'changepassword', 'change password'),
(62, 'ar', 'changepassword', 'تغير كلمه المرور'),
(63, 'en', 'newpassword', 'New password'),
(64, 'ar', 'newpassword', 'كلمه السر الجديده'),
(65, 'en', 'oledpassword', 'Oled password'),
(66, 'ar', 'oledpassword', 'كلمه السر القديمه'),
(67, 'en', 'updatesuss', 'Data has been successfully updated'),
(68, 'ar', 'updatesuss', 'تم تحديث البيانات بنجاح'),
(69, 'en', 'updatedie', 'Cant Update Data Please tray agin'),
(70, 'ar', 'updatedie', 'غير قادر علي تحديث البيانات برجاء المحاوله مره اخري'),
(71, 'en', 'Myads', 'My ads'),
(72, 'ar', 'Myads', 'منشوراتى'),
(73, 'en', 'allads', 'All Ads'),
(74, 'ar', 'allads', 'كل المنشورات'),
(75, 'en', 'missing', 'Missing'),
(76, 'ar', 'missing', 'مفقودين'),
(77, 'en', 'found', 'Found'),
(78, 'ar', 'found', 'عثر علي'),
(79, 'en', 'helprequest', 'Help Request'),
(80, 'ar', 'helprequest', 'ممكن تساعدني'),
(81, 'en', 'viewhelp', 'View Help'),
(82, 'ar', 'viewhelp', 'ممكن اساعدك'),
(83, 'en', 'donateblood', 'Donate Blood'),
(84, 'ar', 'donateblood', 'تبرع بالدم'),
(85, 'en', 'helppet', 'Help Pet'),
(86, 'ar', 'helppet', 'ايواء الحيوانات'),
(87, 'en', 'Sorry', 'Sorry'),
(88, 'ar', 'Sorry', 'عفوا !'),
(89, 'en', 'Sorrynoads', 'There are no posts or topics on your account'),
(90, 'ar', 'Sorrynoads', 'لا يوجد اي مشاركات او موضوعات علي حسابك'),
(91, 'en', 'submitfirstads', 'Click here to publish your first post'),
(92, 'ar', 'submitfirstads', 'اضغط هنا لنشر مشاركتك الأولي'),
(93, 'en', 'viewall', 'View All'),
(94, 'ar', 'viewall', 'عرض كل ال'),
(95, 'en', 'Deletethisad', 'Delete this ad'),
(96, 'ar', 'Deletethisad', 'حذف هذا المنشور'),
(97, 'en', 'Editthisad', 'Edit this ad'),
(98, 'ar', 'Editthisad', 'تعديل المنشور'),
(99, 'en', 'PostedOn', 'Posted On'),
(100, 'ar', 'PostedOn', 'نشر بتاريخ'),
(101, 'en', 'PostedOnTime', 'Publish Time'),
(102, 'ar', 'PostedOnTime', 'الساعه'),
(103, 'en', 'numvisits', 'Visits'),
(104, 'ar', 'numvisits', 'عدد الزيارات'),
(105, 'en', 'stuts', 'stuts'),
(106, 'ar', 'stuts', 'الحاله'),
(107, 'en', 'Pending', 'Pending'),
(108, 'ar', 'Pending', 'قيد الأنتظار'),
(109, 'en', 'Postyouradnow', 'Post your ad now'),
(110, 'ar', 'Postyouradnow', 'انشر منشورك  الأن'),
(111, 'en', 'Typeofad', 'Type of ad'),
(112, 'ar', 'Typeofad', 'نوع  المنشور'),
(113, 'en', 'requiredfildes', 'required fildes'),
(114, 'ar', 'requiredfildes', 'حقول مطلوبه'),
(115, 'en', 'TitleforyourAd', 'Title for your Ad'),
(116, 'ar', 'TitleforyourAd', 'عنوان المنشور'),
(117, 'en', 'TitleAdplaceholder', 'Enter your ads title here'),
(118, 'ar', 'TitleAdplaceholder', 'ادخل عنوان المنشور  الخاص بك هنا'),
(119, 'en', 'Description', 'Description'),
(120, 'ar', 'Description', 'الوصف'),
(121, 'en', 'Descriptionplaceholder', 'Write few lines about your ads here'),
(122, 'ar', 'Descriptionplaceholder', 'اكتب وصف عن منشورك هنا'),
(123, 'en', 'fetureimg', 'Feture Img'),
(124, 'ar', 'fetureimg', 'صورة مميزة'),
(125, 'en', 'fetureimginfo', 'It will be the main image of your ads'),
(126, 'ar', 'fetureimginfo', 'وهي ستكون الصوره الرئيسيه للإعلان الخاص بك'),
(127, 'en', 'Photosforyourad', 'Photos for your ad'),
(128, 'ar', 'Photosforyourad', 'صوره متعدده لإعلانك'),
(129, 'en', 'Photosforyouradinfo', 'View more pictures of your ad details'),
(130, 'ar', 'Photosforyouradinfo', 'تعرض علي شكل  اكثر من صوره صفحه تفاصيل المنشور  الخاص بك'),
(131, 'en', 'addmultipleimages', 'You can add multiple images'),
(132, 'ar', 'addmultipleimages', 'يمكنك اضافه اكثر من صوره مره واحده'),
(133, 'en', 'fetureimgsubinfo', 'make your ad more special by add feature image'),
(134, 'ar', 'fetureimgsubinfo', 'اضف صورته المميزه لكي تميز اعلانك عن غيره'),
(135, 'en', 'PostmyAdnow', 'Post Your Ad'),
(136, 'ar', 'PostmyAdnow', 'انشر اعلانى الأن'),
(137, 'en', 'PrivacyPolicy', 'Privacy Policy'),
(138, 'ar', 'PrivacyPolicy', 'سياسه الخصوصيه'),
(139, 'en', 'TermsofUse', 'Terms of Use'),
(140, 'ar', 'TermsofUse', 'شروط الإستخدام'),
(141, 'en', 'and', 'and'),
(142, 'ar', 'and', 'و'),
(143, 'en', 'ad_agreement_part2', 'You acknowledge that you are responsible for this advertisement in all its details and that the site has no responsibility for advertising'),
(144, 'ar', 'ad_agreement_part2', 'الخاصه بالموقع  وتقر أنك انت المسئول عن هذا الإعلان بكل تفاصيله وان الموقع ليس لديه مسئوليه عن الإعلان'),
(145, 'en', 'ad_agreement_part1', 'Send me an email in case someone continues to communicate with me regarding the advertisement in case of publication'),
(146, 'ar', 'ad_agreement_part1', 'ارسل لي بريد الكتروني في حاله تواصل احد الأشخاص مع بخصوص الإعلان فى  حاله النشر فانت توافق علي'),
(147, 'en', 'bloodtype', 'blood type'),
(148, 'ar', 'bloodtype', 'فصيله الدم'),
(149, 'en', 'bloodtypelaceholder', 'add blood type here'),
(150, 'ar', 'bloodtypelaceholder', 'ادخل فصيله الدم هنا'),
(151, 'en', 'Editads', 'edit ads'),
(152, 'ar', 'Editads', 'تعديل المنشور'),
(153, 'en', 'deleteadphoto', 'delete this photo'),
(154, 'ar', 'deleteadphoto', 'حذف هذه الصوره'),
(155, 'en', 'updatemyAdnow', 'Update My Ad now'),
(156, 'ar', 'updatemyAdnow', 'تحديث بيانات المنشور'),
(157, 'en', 'AdID', 'Ad ID'),
(158, 'ar', 'AdID', 'رقم المنشور'),
(159, 'en', 'Offeredby', 'Offered by'),
(160, 'ar', 'Offeredby', 'بواسطه'),
(161, 'en', 'ContactwithDealer', 'Contact with Dealer'),
(162, 'ar', 'ContactwithDealer', 'اتصل بالمعلن'),
(163, 'en', 'Clicktoshowphone', 'Contact the advertiser'),
(164, 'ar', 'Clicktoshowphone', 'اتصل بالمعلن'),
(165, 'en', 'Replybyemail', 'Reply by email'),
(166, 'ar', 'Replybyemail', 'ارسل بريد إلكتروني'),
(167, 'en', 'Sharethisad', 'Share this ad'),
(168, 'ar', 'Sharethisad', 'شارك المنشور  مع اصحابك'),
(169, 'en', 'RecommendedAdsforYou', 'Recommended Ads for You'),
(170, 'ar', 'RecommendedAdsforYou', 'منشورات مقترحه لك'),
(171, 'en', 'numads', 'Num Ads'),
(172, 'ar', 'numads', 'عدد المنشورات'),
(173, 'en', 'userprofil', 'show member profile'),
(174, 'ar', 'userprofil', 'عرض حساب العضو'),
(175, 'en', 'adby', 'ad by'),
(176, 'ar', 'adby', 'نشر بواسطه'),
(177, 'en', 'adsbydate', 'all ads published on date'),
(178, 'ar', 'adsbydate', 'جميع الاعلانات المنشوره فى تاريخ'),
(179, 'en', 'Reportthisad', 'Report this ad'),
(180, 'ar', 'Reportthisad', 'تبليغ عن المشاركه'),
(181, 'en', 'memberinfo', 'Member info'),
(182, 'ar', 'memberinfo', 'بيانات العضو'),
(183, 'en', 'numadsbyuser', 'Num Ads'),
(184, 'ar', 'numadsbyuser', 'عدد المشاركات'),
(185, 'en', 'Moreadsby', 'More ads by'),
(186, 'ar', 'Moreadsby', 'كل المنشورات'),
(187, 'en', 'themember', 'member'),
(188, 'ar', 'themember', 'العضو'),
(189, 'ar', 'memberadshair', 'منشورات  العضو'),
(190, 'en', 'memberadshair', 'member ads'),
(191, 'en', 'ShortInfo', 'Short Info'),
(192, 'ar', 'ShortInfo', 'تقاصيل الإعلان'),
(193, 'en', 'SendMessage', 'Send Message'),
(194, 'ar', 'SendMessage', 'ارسل رساله'),
(195, 'en', 'SMS', 'SMS'),
(196, 'ar', 'SMS', 'رساله هاتفيه'),
(197, 'en', 'myinbox', 'My Inbox'),
(198, 'ar', 'myinbox', 'الرسائل المستلمه'),
(199, 'en', 'myoutbox', 'My Out Box'),
(200, 'ar', 'myoutbox', 'الرسائل المرسله'),
(201, 'en', 'messagetitle', 'Message Title'),
(202, 'ar', 'messagetitle', 'عنوان الرساله'),
(203, 'en', 'messagetitlepelaceholder', 'Write Message Title Here'),
(204, 'ar', 'messagetitlepelaceholder', 'اكتب عنوان الرساله هنا'),
(205, 'en', 'messageinfo', 'Message info'),
(206, 'ar', 'messageinfo', 'تفاصيل الرساله'),
(207, 'en', 'Messageinfoplaceholder', 'Write Message Content'),
(208, 'ar', 'Messageinfoplaceholder', 'اكتب محتوي الرساله هنا'),
(209, 'en', 'SendMessagenow', 'Send now'),
(210, 'ar', 'SendMessagenow', 'ارسل رسالتك'),
(211, 'en', 'messagewasend', 'Your Message Was Sent success'),
(212, 'ar', 'messagewasend', 'لقد تم ارسال رسالتك بنجاح'),
(213, 'en', 'messageinfo', 'Message info'),
(214, 'ar', 'messageinfo', 'تفاصيل الرساله'),
(215, 'en', 'senderinfo', 'SenderInfo'),
(216, 'ar', 'senderinfo', 'بيانات الراسل'),
(217, 'en', 'msstuts', 'Stuts'),
(218, 'ar', 'msstuts', 'الحاله'),
(219, 'en', 'wasread', 'Readed'),
(220, 'ar', 'wasread', 'مقرؤه'),
(221, 'en', 'SentBy', 'Sent By'),
(222, 'ar', 'SentBy', 'المرسل'),
(223, 'en', 'senddate', 'Send date'),
(224, 'ar', 'senddate', 'تاريخ الإرسال'),
(225, 'en', 'sendtime', 'Send time'),
(226, 'ar', 'sendtime', 'وقت الإرسال'),
(227, 'en', 'adstitle', 'Ad Title'),
(228, 'ar', 'adstitle', 'عنوان المنشور'),
(229, 'en', 'sendreport', 'Send Report'),
(230, 'ar', 'sendreport', 'بلاغات المشاركه'),
(231, 'en', 'reportewasend', 'Your Report Was Send success'),
(232, 'ar', 'reportewasend', 'لقد تم ارسال إبلاغ مشاركتك بنجاح شكرا لك'),
(233, 'en', 'unread', 'unread'),
(234, 'ar', 'unread', 'غير مقرؤه'),
(235, 'en', 'recivedinfo', 'recived info'),
(236, 'ar', 'recivedinfo', 'بيانات المستلم'),
(237, 'en', 'leavelommenit', 'Leave Commenit'),
(238, 'ar', 'leavelommenit', 'اترك تعليقك'),
(239, 'en', 'cName', 'Name'),
(240, 'ar', 'cName', 'الإسم'),
(241, 'en', 'cphone', 'phone'),
(242, 'ar', 'cphone', 'موبايل'),
(243, 'en', 'cEmail', 'Email'),
(244, 'ar', 'cEmail', 'البريد الالكتروني'),
(245, 'en', 'commient', 'add your commien there'),
(246, 'ar', 'commient', 'اضف تعليقك هنا'),
(247, 'en', 'SaveCommint', 'Save Commint'),
(248, 'ar', 'SaveCommint', 'حفظ التعليق'),
(249, 'ar', 'vistor', 'زائر'),
(250, 'en', 'vistor', 'vistor'),
(251, 'en', 'searchallcats', 'all sections of the website'),
(252, 'ar', 'searchallcats', 'بحث في جميع اقسام الموقع'),
(253, 'en', 'keywordplaceholder', 'Enter your search terms here'),
(254, 'ar', 'keywordplaceholder', 'ادخل الكلمات البحثيه هنا'),
(255, 'en', 'Search', 'Search'),
(256, 'ar', 'Search', 'بحث'),
(257, 'en', 'Followuson', 'Follow us on'),
(258, 'ar', 'Followuson', 'تابعنا علي'),
(259, 'en', 'Facebook', 'Facebook'),
(260, 'ar', 'Facebook', 'فيس بوك'),
(261, 'en', 'Twitter', 'Twitter'),
(262, 'ar', 'Twitter', 'تويتر'),
(263, 'en', 'Google', 'Google'),
(264, 'ar', 'Google', 'جوجل بلص'),
(265, 'en', 'youtube', 'youtube'),
(266, 'ar', 'youtube', 'يوتيوب'),
(267, 'en', 'Newsletter', 'Newsletter'),
(268, 'ar', 'Newsletter', 'النشره الإخباريه'),
(269, 'en', 'Newsletter_info', 'Subscribe to our newsletter to get all new'),
(270, 'ar', 'Newsletter_info', 'اشترك فى نشرتنا الاخباريه كي تحصل علي كل جديد'),
(271, 'en', 'subcribenow', 'Subscribe now'),
(272, 'ar', 'subcribenow', 'اشترك اﻷن'),
(273, 'en', 'Youremail', 'Your email address'),
(274, 'ar', 'Youremail', 'بريدك الالكتروني'),
(275, 'en', 'QuikLinks', 'Quik Links'),
(276, 'ar', 'QuikLinks', 'روابط سريعه'),
(277, 'en', 'site_categories', 'Site Categories'),
(278, 'ar', 'site_categories', 'اقسام الموقع'),
(279, 'en', 'categories', 'Categories'),
(280, 'ar', 'categories', 'الأقسام'),
(281, 'en', 'Aboutus', 'About us'),
(282, 'ar', 'Aboutus', 'من نحن'),
(283, 'en', 'FQA', 'FQA'),
(284, 'ar', 'FQA', 'الأسئله الشائعه'),
(285, 'en', 'contactus', 'Contact us'),
(286, 'ar', 'contactus', 'اتصل بنا'),
(287, 'en', 'Sendemailtitle', 'Send Us Your Feedback'),
(288, 'ar', 'Sendemailtitle', 'نتشرف دائما نسعد بتواصلكم معنا'),
(289, 'en', 'mailname', 'Name'),
(290, 'ar', 'mailname', 'الاسم'),
(291, 'en', 'mailemail', 'Your Email'),
(292, 'ar', 'mailemail', 'البريد الإلكتروني'),
(293, 'en', 'mailSubject', 'Subject'),
(294, 'ar', 'mailSubject', 'موضوع الرساله'),
(295, 'en', 'mailMessage', 'Your Message'),
(296, 'ar', 'mailMessage', 'اكتب رسالتك هنا'),
(297, 'en', 'mailSubmitYourMessage', 'Submit Your Message'),
(298, 'ar', 'mailSubmitYourMessage', 'ارسل رسالتك الأن'),
(299, 'en', 'contactInfo', 'Contact Info'),
(300, 'ar', 'contactInfo', 'بيانات الاتصال'),
(301, 'en', 'cInfoadress', 'Adress'),
(302, 'ar', 'cInfoadress', 'العنوان'),
(303, 'en', 'cInfoPhone', 'Phone'),
(304, 'ar', 'cInfoPhone', 'رقم الهاتف'),
(305, 'en', 'cInfoEmail', 'Email'),
(306, 'ar', 'cInfoEmail', 'البريد الإلكتروني'),
(307, 'en', 'together', 'for the best future'),
(308, 'ar', 'together', 'معنا دائما لمستقبل افضل'),
(309, 'en', 'ReadMore', 'Read More'),
(310, 'ar', 'ReadMore', 'اقراء المزيد'),
(311, 'en', 'searchhomenotes', 'You can search in all sections of the site or section of your choice only in your search words'),
(312, 'ar', 'searchhomenotes', 'يمكنك البحث في جميع اقسام الموقع او القسم الذي تختاره فقط بكلماتك البحثيه'),
(313, 'en', 'Latestads', 'Latest ads'),
(314, 'ar', 'Latestads', 'احدث المنشورات'),
(315, 'en', 'Recentads', 'Recent ads'),
(316, 'ar', 'Recentads', 'المضاف حديثا'),
(317, 'en', 'Copyright', 'Copyright'),
(318, 'ar', 'Copyright', 'جميع الحقوق محفوظه'),
(319, 'en', 'Developedby', 'Developed by'),
(320, 'ar', 'Developedby', 'تصميم وبرمجه'),
(321, 'en', 'your_address', 'Your address'),
(322, 'ar', 'your_address', 'عنوانك'),
(323, 'en', 'addressad', 'Address'),
(324, 'ar', 'addressad', 'العنوان'),
(325, 'en', 'blacklist', 'blackl ist'),
(326, 'ar', 'blacklist', 'القائمه السوداء'),
(327, 'en', 'tellme', 'tell me'),
(328, 'ar', 'tellme', 'احكيلي'),
(329, 'en', 'khodbalck', 'khodbalck'),
(330, 'ar', 'khodbalck', 'خلي بالك'),
(331, 'en', 'ratingms', 'Thanks for rating us'),
(332, 'ar', 'ratingms', 'شكرا لتقيمك لنا'),
(333, 'en', 'search_resullt', 'search resullt'),
(334, 'ar', 'search_resullt', 'نتائج البحث'),
(335, 'en', 'relay_message', 'Relay message'),
(336, 'ar', 'relay_message', 'رد علي الرساله'),
(337, 'en', 'miss', 'miss'),
(338, 'ar', 'miss', 'فقد'),
(339, 'en', 'instagram', 'instagram'),
(340, 'ar', 'instagram', 'انستجرام'),
(341, 'en', 'Plcae', 'Plcae'),
(342, 'ar', 'Plcae', 'المحافظه'),
(343, 'en', 'Ariea', 'Ariea'),
(344, 'ar', 'Ariea', 'المنطقه'),
(345, 'en', 'choose', 'choose'),
(346, 'ar', 'choose', 'اختر'),
(347, 'en', 'GPS', 'Ad title on the map'),
(348, 'ar', 'GPS', 'عنوان الإعلان علي الخريطه GPS'),
(349, 'en', 'add_your_stuts', 'Guest your situation'),
(350, 'ar', 'add_your_stuts', 'ضيف الحاله الخاصه بك'),
(351, 'en', 'add_your_stuts_info', 'If you can help, your participation in publishing the case on the social networking sites will be positive'),
(352, 'ar', 'add_your_stuts_info', 'لو مقدرتش تقدم المساعده مشاركتك بنشر الحاله علي مواقع التواصل الاجتماعي حتكون ايجابيه'),
(353, 'en', 'step_2', 'Provide help'),
(354, 'ar', 'step_2', 'قدم المساعده'),
(355, 'en', 'step_2_info', 'If you can help, your participation in publishing the case on the social networking sites will be positive'),
(356, 'ar', 'step_2_info', 'لو مقدرتش تقدم المساعده مشاركتك بنشر الحاله علي مواقع التواصل الاجتماعي حتكون ايجابيه'),
(357, 'en', 'step_3_info', 'If you can help, your participation in publishing the case on the social networking sites will be positive'),
(358, 'ar', 'step_3_info', 'لو مقدرتش تقدم المساعده مشاركتك بنشر الحاله علي مواقع التواصل الاجتماعي حتكون ايجابيه'),
(359, 'en', 'step_3', 'Share the cases'),
(360, 'ar', 'step_3', 'شارك الحالات'),
(361, 'en', 'joinusnow', 'join us now'),
(362, 'ar', 'joinusnow', 'انضم الان');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `langkey` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `text_1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `text_2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `text_3` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin,
  `sort` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stuts` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `langkey`, `text_1`, `text_2`, `text_3`, `url`, `sort`, `photo`, `stuts`) VALUES
(12, 'ar', 'التبرع بالدم', 'ساعد غيرك بالتبرع بالدم', 'انشر الحالات التي تحتاج التبرع بالدم', 'http://www.dothelpnation.com/ads/%D8%AA%D8%A8%D8%B1%D8%B9-%D8%A8%D8%A7%D9%84%D8%AF%D9%85', NULL, 'slider-15314037695b475df9b5e43.jpeg', '1'),
(13, 'ar', 'إيواء الحيوانات', 'قدم المساعدة', 'قدم المساعدة الان', 'http://www.dothelpnation.com/ads/%D8%A7%D9%8A%D9%88%D8%A7%D8%A1-%D8%A7%D9%84%D8%AD%D9%8A%D9%88%D8%A7%D9%86%D8%A7%D8%AA', NULL, 'slider-15314038695b475e5d5377e.jpeg', '1'),
(14, 'ar', 'مفقودين', 'اطفال مفقودين', 'ساعد الاباء في ايجاد اطفالهم المفقودة', 'http://www.dothelpnation.com/ads/%D9%85%D9%81%D9%82%D9%88%D8%AF%D9%8A%D9%86', NULL, 'slider-15314041005b475f44689fd.jpeg', '1'),
(15, 'ar', 'عثر علي', 'ساعد من فقد اغراضه باضافتها هنا', NULL, 'http://www.dothelpnation.com/ads/%D8%B9%D8%AB%D8%B1-%D8%B9%D9%84%D9%8A', NULL, 'slider-15324402465b572eb61db19.jpg', '1'),
(16, 'ar', 'فقد', 'اذا فقدت شيء من متعلقاتك لا تردد في اضافتها هنا', 'حتي يستطيع الجميع مساعدتك في ايجاديها', 'http://www.dothelpnation.com/ads/%D9%81%D9%82%D8%AF', NULL, 'slider-15326110015b59c9b98399e.jpg', '1'),
(17, 'en', 'Help Pets', 'Help Animals Now', NULL, 'http://www.dothelpnation.com/ads/Help-Pet', NULL, 'slider-15332152675b630223f09b4.jpeg', '1'),
(18, 'en', 'Blood Donation', 'Donate Blood Saves Life', NULL, '#', NULL, 'slider-15332154495b6302d966547.jpeg', '1'),
(19, 'en', 'Missing', 'Help others to find childs', NULL, '#', NULL, 'slider-15332153835b63029728a3a.jpeg', '1'),
(20, 'en', 'Founded', 'Help others who lost things', 'if you found somthing post it here', '#', NULL, 'slider-15332156045b63037422e64.jpg', '1'),
(21, 'en', 'Miss', 'If you miss somthing', 'others can helps you to find it', '#', NULL, 'slider-15332156375b6303953904f.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `stuts`) VALUES
(1, 'tg1', 1),
(2, 'tg2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `dest_id` int(11) DEFAULT NULL,
  `title` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `main_price` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `duration` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `stuts` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `short_info` varchar(600) COLLATE utf8_bin DEFAULT NULL,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `dest_id`, `title`, `main_price`, `price`, `duration`, `url`, `stuts`, `photo`, `type`, `content`, `short_info`, `meat_description`, `meat_keywords`) VALUES
(1, 5, 'سياحات خارجيه مميزه', '1200', '1000', '11', '%D8%B3%D9%8A%D8%A7%D8%AD%D8%A7%D8%AA-%D8%AE%D8%A7%D8%B1%D8%AC%D9%8A%D9%87-%D9%85%D9%85%D9%8A%D8%B2%D9%87', 1, 'tour-1502271012598ad624cb143.png', NULL, '<p>etery</p>\r\n\r\n<p>re</p>\r\n\r\n<p>y</p>\r\n\r\n<p>re</p>\r\n\r\n<p>y</p>', 'wsatgrewg\r\new \r\nr\r\nt\r\nrew', 't reyty y e y r tty  rt', 'some text,ewrtrem yrttrr,urt,u,r'),
(3, 4, 'rtjgrmghfaq', '1200', '800', '122', 'rtjgrmghfaq', 1, 'tour-1502273356598adf4c40c0f.png', NULL, '<p>ujfgfdhrrh</p>\r\n\r\n<p>h</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>h</p>\r\n\r\n<p>er</p>\r\n\r\n<p>&nbsp;</p>', 'triyk,nm df', 'sdrehyn', 'some text,ewytehtgmn');

-- --------------------------------------------------------

--
-- Table structure for table `tour_category`
--

CREATE TABLE `tour_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `stuts` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `meat_description` text COLLATE utf8_bin,
  `meat_keywords` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tour_category`
--

INSERT INTO `tour_category` (`id`, `title`, `url`, `stuts`, `photo`, `content`, `meat_description`, `meat_keywords`) VALUES
(2, 'demo blog sections', 'demo-blog-sections', '1', 'section-150210019959883ae7f2de4.png', 'some  info about demo blog section', 'SEO Description here', 'some text,wrwrghreger,er,r,yh,rtuy,frt,ae,fgd,tuji,5i,ast,y,sdh,dfr,uy,r5h,dfn,jfg,i,tyu,jhurt,jje,tuj,ryi,5,56'),
(3, 'agbdemo blog sections', 'agbdemo-blog-sections', '1', 'section-1502102532598844042df23.png', 'asghndas', 'ydfm', 'some text,sghyretj,h,erju,tgh,j,seyu,gyuul,fgu,tyuuuo,ytug,ujr,fi9,6'),
(4, 'سياحات خارجيه مميزهsareqatg', 'syahat-kharjyh-mmyzh', '1', 'section-150210426259884ac63ab98.png', 'وصف قسم وصف قسم وصف قسم وصف قسم وصف قسم وصف قسم وصف قسم وصف قسم وصف قسم', 'شست', 'some text,قاغقفت,ثق,لاثيق,قغ,ف,ع,قفغاصس,ثصسثغ'),
(5, 'سياحات خارجيه مميزه  درجه أولي عالميا', '%D8%B3%D9%8A%D8%A7%D8%AD%D8%A7%D8%AA-%D8%AE%D8%A7%D8%B1%D8%AC%D9%8A%D9%87-%D9%85%D9%85%D9%8A%D8%B2%D9%87--%D8%AF%D8%B1%D8%AC%D9%87-%D8%A3%D9%88%D9%84%D9%8A-%D8%B9%D8%A7%D9%84%D9%85%D9%8A%D8%A7', '1', 'section-150210504259884dd2e571f.jpg', 'ghسقة ثببا ثق فثمةبنسى ثقغىخهىثقخغتثقتخغ', 'ehسقغقف\r\n\r\nغقف\r\nغ', 'some text,edghng,قغ,عفق,ع,ثقغ,قفغ,ي,شسل,قثي,غ,قث'),
(6, 'ewyjkmhn gfkjtghdyk', 'ewyjkmhn-gfkjtghdyk', '1', 'tourcategory-1502273267598adef30becd.png', 'dfjfm', 'fdhdjnmfjdgjfgjfgj', 'some text,hfdgj,fgjhgd,fgjfgjk');

-- --------------------------------------------------------

--
-- Table structure for table `tour_dayes`
--

CREATE TABLE `tour_dayes` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `sort_day` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `title` varchar(355) COLLATE utf8_bin DEFAULT NULL,
  `price_1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price_2` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `age`, `email`, `level`, `photo`, `provider`, `provider_id`, `access_token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'بهاء الدين', '01011484991', '253', 'dvbahaa@gmail.com', 'fulladmin', 'user-150968643959fbfca750bf5.jpg', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'yHEDeVf5aqvVzLTNIiST9tsVMgDT61yuNxAxUJtp6hkrmTypAhbhmj7guskZ', '2017-09-10 09:24:30', '2018-05-15 22:28:19'),
(7, 'demo test user', '01203221530', '25', 'harvindersingh@goteso.com', 'user', 'user-150921995859f4de76809a9.png', NULL, NULL, NULL, '$2y$10$Qc.83Trj3FfZFyUxRrhageQAnDOAjUwwo84Thj7BQdYXXbjxL2/Yi', 'rt3aUXQVgiZHm55PGtocLB7fqiMzKpMsJ32sqYlEVHXm8fn52P7a71ohYm8O', '2017-09-17 11:54:28', '2017-10-28 19:45:58'),
(11, 'bahaa', NULL, NULL, 'bahaa@raito.com', 'user', NULL, NULL, NULL, NULL, '$2y$10$kX4MAm4BFM/5OFPi9zGnYeC6lHFYDSfiMZeP1dxnsnnBRZsL0rqGG', 'uTIl6CjyVynE6oyQeN5qyWInzAGMauMOG1jBxLdEXMRzZIZD3XjLCHYT4TSn', '2017-09-17 13:06:11', '2017-09-17 13:06:11'),
(12, 'bahaa elden', '01011484991', '23', 'dvbahaa3@gmail.com', 'user', NULL, NULL, NULL, NULL, '$2y$10$1yxMs6mm3dBbVdBx18alXej0lvi3nZp2QMbvoMNqPqEDOi2AjTfEm', '9mXA1maNXMRuJjRlMfCM7gRi2YOPY13jjqrMmTRIIYfKS1R2dF0wQTG7v45S', '2017-10-28 17:41:03', '2017-10-28 17:41:03'),
(14, 'محمد احمد', '01011484991', '23', 'developer.eye1@gmail.com', 'user', 'user-150971985059fc7f2aba366.jpg', NULL, NULL, NULL, '$2y$10$1yxMs6mm3dBbVdBx18alXej0lvi3nZp2QMbvoMNqPqEDOi2AjTfEm', 'XyLNkWQ8c2pkMu6yBnWBW3L5cHu9kx0YmSdiLrG1bJiVZzgXdeqUccWNb9IT', '2017-10-28 17:44:06', '2017-11-03 14:37:30'),
(16, 'Bahaa Eldin', NULL, NULL, 'dvbahaascd@gmail.com', NULL, NULL, NULL, NULL, NULL, '', 'MDldSJvueDa3Abfx16IXDo4YodU0zda7V95XzsaxYuquykhyynBcQnYhI9nL', '2017-11-30 06:54:17', '2017-11-30 06:54:17'),
(17, 'dot help', '‭+20 109 1273599‬', '25', 'ahmedmanchester1992@gmail.com', 'fulladmin', 'user-15319442665b4f9d4a8cbe4.jpg', NULL, NULL, NULL, '$2y$10$Q7sTs./y0tUNOZRg6ip9bO.MWKu/txzUvf9ih2HFpvNIRmhIJnUEC', 'xSUit6rl0G21SjnfrGiW9wv4lJyUejO793OCVYJHlJ0f8rAv8NIyrMYPi1kV', '2017-12-08 08:16:21', '2018-07-19 01:04:26'),
(18, 'كريم', NULL, '٢٥', 'ahmedelsayed.1992@yahoo.com', 'user', NULL, NULL, NULL, NULL, '$2y$10$tTQozJ1VAPNSxvMYudbjNOHYlq1kt1ZD3JmEJJ32W6w/N9gwqS.a.', '7CutN4ihnZwBVIU21o9ZvU3ER2T2ZnJl3WADMPWj6WvlJzJPmnjHx9X4qwzd', '2017-12-08 08:26:02', '2017-12-08 08:26:02'),
(19, 'mohamed', '01066912272', '31', 'mohamed@orchado.com', 'user', 'user-15238858885ad4a740df4bf.jpg', NULL, NULL, NULL, '$2y$10$.m.YDzo.SL5EtRRhyFGFV.WxEytfeDK3U51UHpswnh96EN/EEMS6a', 'GFz6XXERjYSNZ78ouzdKWtEjNGZE0svhb3gZJzsK7BrUaacPx8dzvW9FV7bH', '2018-04-16 18:25:41', '2018-04-16 18:38:08'),
(22, 'HARVINDER SINGH', NULL, NULL, 'harvindersingh25000@gmail.com', NULL, NULL, NULL, NULL, NULL, '', 'FzRu7jLlGSYp6RrdXSj75FBcPnwqaZkQaUrjiDaLbChONrxV7YloV9rqAipo', '2018-05-16 20:17:56', '2018-05-16 20:17:56'),
(23, 'Mohamed Gaber', NULL, NULL, 'mhmd.designs@yahoo.com', NULL, NULL, NULL, NULL, NULL, '', 'XzDH4rFAfyZ7Z4NqPIeav2yvoY1QlhaO9snQIghniEMbNmCBxKgOwkXbT99k', '2018-05-16 21:07:39', '2018-05-16 21:07:39'),
(24, 'Gurpreet Saini', NULL, NULL, 'info.gurpreetsaini@gmail.com', 'fulladmin', NULL, NULL, NULL, NULL, '', 'uD5efQmFHCr5iX6VbfENLVq9wN2R81QULZsI1ve5z6OuUC6ZT0nyhefXK7Qv', '2018-06-03 19:38:43', '2018-06-03 19:38:43'),
(25, 'Gurpreet Singh', '9888559037', '22', 'info.gurpreetsaini@gmail.com', 'fulladmin', NULL, NULL, NULL, NULL, '$2y$10$.hDcIYfNh3ooZQgKAOoOuO3oCZ8a1/vtS42MPHvFZf98xgeusOvzi', '3ff6QkzgWKfSDFDsk3GNoMqaCuu0NNqNDpR5Rnl5', '2018-06-03 20:37:36', '2018-06-03 20:37:36'),
(26, 'Dot Help Nation', NULL, NULL, 'dot.help.nation@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '6Gau37kHqazthA3xxXMqKGdV5DuVPQK5uS72eE4kqFMaUZDQrHHN0TFkqu6g', '2018-07-02 01:47:40', '2018-07-02 01:47:40'),
(28, 'Orchado Company', NULL, NULL, 'orchado.tcs@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '1TAHj5icEojAPtBhJy8vDmP5lXp0mUXE8V4SSYN7x9izJONJiPZ3Y8bDg4bt', '2018-08-06 19:35:31', '2018-08-06 19:35:31'),
(46, 'asas', '01060931989', '12', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 01:28:59', NULL),
(47, 'gfsv', '01060931989', '34', 'as@sd.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 01:30:57', NULL),
(48, 'sd', '01060931989', '22', 'as@sd.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 01:33:30', NULL),
(49, 'alameer', '01095708484', '22', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 01:41:02', NULL),
(50, 'Ghah', '01060931989', '66', 'hash@hsh.con', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 01:43:47', NULL),
(51, 'as', '01060931989', '12', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 16:28:35', NULL),
(52, 'as', '01052369555', '12', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 16:32:04', NULL),
(53, 'aasas', '01060931989', '12', '12@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 16:40:32', NULL),
(54, 'as', '01060931989', '12', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 16:59:15', NULL),
(55, 'as', '01060931989', '23', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 17:20:44', NULL),
(56, '2ee', '01060931989', '23', 'as@as.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 17:21:38', NULL),
(57, 'as', '01060931989', '2', 'AS@AS.COM', NULL, NULL, NULL, NULL, NULL, '01060931989aA', NULL, '2018-08-29 17:24:48', NULL),
(62, 'ALameer Ashraf', '', '', 'alameerelnagar@yahoo.com', NULL, 'https://graph.facebook.com/1073739886118004/picture?type=large', NULL, NULL, NULL, '***', NULL, '2018-08-29 19:42:14', NULL),
(63, 'Ramzy hassan', '01069262360', '34', 'ramzyhassan@gmail.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-29 20:01:50', NULL),
(64, 'Ramzy Hassan', '', '', 'ramzyhassan77@gmail.com', NULL, 'https://graph.facebook.com/1122356664585364/picture?type=large', NULL, NULL, NULL, '***', NULL, '2018-08-29 20:08:18', NULL),
(65, 'alameer elnagar', '', '', 'alameerelnagar94@gmail.com', NULL, 'https://lh6.googleusercontent.com/-SmaaQpa-kw0/AAAAAAAAAAI/AAAAAAAAAUQ/g0HTHowcWL8/s96-c/photo.jpg', NULL, NULL, NULL, '***', NULL, '2018-08-29 21:59:59', NULL),
(66, 'Alameer Ashraf', '', '', 'alamiir.ashraf@gmail.com', NULL, 'https://lh5.googleusercontent.com/-DT2h9ENyHLo/AAAAAAAAAAI/AAAAAAAAADc/6oadHvMRJyI/s96-c/photo.jpg', NULL, NULL, NULL, '***', NULL, '2018-08-30 19:06:19', NULL),
(67, 'Alaa Ashraf', '', '', 'alaa_ashraf_1999@yahoo.com', NULL, 'https://graph.facebook.com/1079234475559169/picture?type=large', NULL, NULL, NULL, '***', NULL, '2018-08-31 11:43:35', NULL),
(68, 'lulu', '01060931989', '14', 'lilu@gg.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-31 11:45:19', NULL),
(69, 'as', '01060931989', '22', 'alameer@sd.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-08-31 11:52:05', NULL),
(70, 'Saydala Elmasry', '', '', 'alex_pharma_2007@yahoo.com', NULL, 'https://graph.facebook.com/10216474303630645/picture?type=large', NULL, NULL, NULL, '***', NULL, '2018-09-01 14:32:43', NULL),
(71, 'saydala', '01006688839', '28', 'a.elmasry@appgenesis.net', NULL, NULL, NULL, NULL, NULL, 'Aa123456', NULL, '2018-09-01 14:41:05', NULL),
(72, 'Arsany Nagy', '', '', 'arsanynagylion@gmail.com', NULL, 'https://lh3.googleusercontent.com/-ddy7cl2RsmA/AAAAAAAAAAI/AAAAAAAAADw/zpSqqySu0HQ/photo.jpg', NULL, NULL, NULL, '***', NULL, '2018-09-12 19:13:12', NULL),
(73, 'EmanMohamed', '01095708484', '26', 'eman@gmail.com', NULL, NULL, NULL, NULL, NULL, '01060931989Aa', NULL, '2018-09-12 23:26:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_rolls`
--

CREATE TABLE `user_access_rolls` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `roll_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_access_rolls`
--

INSERT INTO `user_access_rolls` (`id`, `user_id`, `roll_id`) VALUES
(12, 11, 3),
(13, 11, 4),
(14, 11, 5),
(15, 7, 2),
(16, 7, 3),
(17, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_rolls`
--

CREATE TABLE `user_rolls` (
  `id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_rolls`
--

INSERT INTO `user_rolls` (`id`, `name`, `key`) VALUES
(1, 'sliders', 'sliders'),
(2, 'blogsections', 'blog_sections'),
(3, 'blogposts', 'blog_posts'),
(4, 'pages', 'pages'),
(5, 'services', 'services'),
(6, 'gallery_sections', 'gallery_sections'),
(7, 'photogallery', 'photogallery'),
(8, 'videogallery', 'videogallery'),
(9, 'sitemenu', 'sitemenu'),
(10, 'contactus', 'contactus'),
(11, 'siteinfo', 'siteinfo'),
(12, 'sitelogos', 'sitelogos'),
(13, 'soicalmediaa', 'soicalmediaa'),
(14, 'usermanagement', 'usermanagement');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `langkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` text COLLATE utf8_bin,
  `stuts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `section_id`, `langkey`, `title`, `url`, `stuts`) VALUES
(1, 5, 'en', 'demo cms vedio', 'http://localhost/raiotcms/admincp/addvideogallery', 1),
(3, 3, 'ar', 'فيديو تجريبى', 'http://localhost/raiotcms/admincp/addvideogallery', 1),
(4, 3, 'en', 'سيبتلﻻىنؤاﻻىى بلابلنلانبلت', 'اتوباسيىلب ىيبة نيباةبلةلى نبللاتا', 1),
(5, 3, 'ar', 'gdfgjefdytdegm', 'syhfgjfg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `admin_lang`
--
ALTER TABLE `admin_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_translation`
--
ALTER TABLE `admin_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_messages`
--
ALTER TABLE `ads_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_photos`
--
ALTER TABLE `ad_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`(255));

--
-- Indexes for table `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`(255));

--
-- Indexes for table `email_contact`
--
ALTER TABLE `email_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fqa`
--
ALTER TABLE `fqa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslatter`
--
ALTER TABLE `newslatter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_videos_sections`
--
ALTER TABLE `photos_videos_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `site_lang`
--
ALTER TABLE `site_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_translation`
--
ALTER TABLE `site_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`(255));

--
-- Indexes for table `tour_category`
--
ALTER TABLE `tour_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `tour_dayes`
--
ALTER TABLE `tour_dayes`
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
-- AUTO_INCREMENT for table `admin_translation`
--
ALTER TABLE `admin_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `ads_messages`
--
ALTER TABLE `ads_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ad_photos`
--
ALTER TABLE `ad_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `blog_sections`
--
ALTER TABLE `blog_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_contact`
--
ALTER TABLE `email_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `fqa`
--
ALTER TABLE `fqa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `site_lang`
--
ALTER TABLE `site_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_translation`
--
ALTER TABLE `site_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

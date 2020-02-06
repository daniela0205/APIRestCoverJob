-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 06-02-2020 a las 17:01:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` enum('accept','standby','wait','approved','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranking` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `applicants`
--

INSERT INTO `applicants` (`id`, `status`, `ranking`, `feedback`, `created_at`, `updated_at`, `job_id`, `employee_id`) VALUES
(1, 'wait', '5', 'sorry the job is not available', '2020-01-20 11:01:43', '2020-02-02 22:44:28', 40, 35),
(2, 'reject', '2', 'Praesentium illum officia dolore rerum. Ratione est excepturi vitae error dicta doloribus. Et ut porro in praesentium officia ullam qui. Quos accusamus perferendis molestias at est.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 71, 46),
(3, 'approved', '5', 'Sit fuga voluptatem neque non repellendus earum. Est unde nam aut harum. Placeat porro quis hic consequatur.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 81, 8),
(4, 'approved', '5', 'Et nam ut ut ad nihil est nulla. Iure quia aut nulla soluta deserunt voluptas et. Minus fuga rerum provident adipisci. Rem et provident soluta rerum.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 99, 27),
(5, 'approved', '5', 'Pariatur sapiente est quaerat sit aut velit non velit. Atque dicta autem et ea quod aperiam. Qui voluptas nisi atque quis eum. Voluptatum dolor aut officia commodi.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 81, 48),
(6, 'accept', '3', 'Neque ad aut quia iure. Facere qui eos magnam quia omnis harum. Non perspiciatis et deserunt sunt consectetur.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 64, 14),
(7, 'approved', '5', 'Rerum debitis omnis consequatur animi veritatis illum mollitia qui. Voluptatem consequatur quia quam voluptatibus recusandae nihil. Minus atque dolores aliquid tenetur.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 7, 29),
(8, 'approved', '5', 'Et nesciunt voluptate consequatur minima debitis et dolore. Est nemo vel minima. Maiores atque et facilis quia aut assumenda optio.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 44, 50),
(9, 'standby', '1', 'Excepturi aliquam quis sed qui quia velit. Quo tempora non quia qui odit necessitatibus est est. Aut maxime sit nisi et nesciunt occaecati. At illo quis itaque.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 13, 4),
(10, 'reject', '5', 'Molestiae error velit voluptas iure doloremque. Odio ut voluptas magnam ut omnis qui. Quos nulla totam est quia repudiandae.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 12, 43),
(11, 'wait', '2', 'Voluptatibus ipsum voluptatem aut est recusandae illo. Saepe sed molestiae quisquam non. Placeat quaerat quo sed neque sed reiciendis recusandae.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 18, 47),
(12, 'accept', '4', 'Ut facilis temporibus officiis nam consequatur sapiente architecto. Quos non nulla repellat. Autem animi rerum omnis optio dolores.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 10, 4),
(13, 'wait', '1', 'Ut a doloribus doloribus quo quam. Quo facere dolores eaque quo ut. Repellat ipsam ut inventore error modi et dignissimos. Voluptas voluptates illo voluptatibus illum.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 76, 21),
(14, 'accept', '4', 'Ex alias iure ex tempora consequatur ut quis. Nam iure fuga beatae officia totam eos. Quia sapiente blanditiis a. Illo enim dolor ea deleniti tempore et.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 46, 34),
(15, 'reject', '1', 'Voluptatem possimus repellat repellendus qui. Facilis similique dolorum quaerat tempora est temporibus. Id eius vel nemo enim. Est accusamus nemo quia sapiente.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 57, 29),
(16, 'wait', '2', 'Quos amet unde est provident. Aspernatur accusantium laudantium sequi veritatis sed odit minus. Quis ut nemo sapiente est ut earum id.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 87, 22),
(17, 'wait', '1', 'Alias eveniet nihil autem et. Quod esse doloremque harum iste voluptatibus similique natus. Explicabo tempora eaque vel quae nulla quia qui nesciunt.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 33, 17),
(18, 'reject', '2', 'Sequi sed vero quia. Accusantium sed recusandae quis incidunt a aliquam dignissimos. Aliquam autem velit odio id minima. Aut sit quod nostrum quidem et.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 13, 5),
(19, 'standby', '1', 'Fugiat dicta minima corporis. Vel dolor necessitatibus ducimus quia. Nesciunt cumque enim laborum natus earum earum autem.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 72, 25),
(20, 'accept', '4', 'Amet voluptate eius sint laboriosam natus. Quia deserunt doloribus et ut ut.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 15, 44),
(21, 'reject', '4', 'Autem mollitia quis similique voluptatem eligendi veniam ea. Rerum voluptatibus saepe voluptatem voluptatem quia fuga. Sapiente explicabo molestiae sit in.', '2020-01-20 11:01:43', '2020-01-24 12:05:28', 83, 1),
(22, 'wait', '3', 'Qui et et impedit in est. Illum omnis corporis cupiditate non necessitatibus voluptatem alias maxime. Commodi et qui provident.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 77, 39),
(23, 'wait', '3', 'Officiis aspernatur maxime commodi ratione ab veritatis. Tempore sequi vitae ut ducimus quos. Ipsum qui dicta nobis.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 38, 47),
(24, 'approved', '5', 'Quasi id eius reiciendis quo ipsum cupiditate aliquid. Qui vitae dolor eligendi totam voluptatem. Amet vitae perferendis nihil maxime non.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 100, 29),
(25, 'standby', '4', 'Dolor veniam dolorum quis magni. Sapiente omnis dolores nihil.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 20, 16),
(26, 'wait', '2', 'Voluptatem nam ullam nulla quia consequatur. Est possimus reiciendis dolorem vitae tenetur dolor odio ut. Quasi voluptatem aut aut nihil saepe dolores accusantium.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 23, 41),
(27, 'standby', '2', 'Adipisci quod minus optio impedit rem. Amet omnis dignissimos culpa laudantium officia minima quia voluptatem. Inventore quasi est doloribus possimus omnis.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 34, 19),
(28, 'approved', '5', 'Et ratione eos mollitia architecto tempore. Eos deserunt et voluptatem beatae enim vitae est. In non architecto sed sint qui voluptas.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 75, 9),
(29, 'approved', '1', 'Praesentium exercitationem sint vel. Quisquam error ex quo maiores quo. Sapiente laudantium optio mollitia. Commodi sapiente eligendi aut ut aperiam omnis.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 17, 29),
(30, 'wait', '3', 'Molestias culpa expedita voluptatibus iste. Magnam quisquam consectetur mollitia deserunt. Similique rerum rerum odio non consequatur itaque qui molestiae. Exercitationem quasi voluptatem veniam.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 11, 38),
(31, 'standby', '4', 'Unde in labore rerum. Repellat et voluptatem voluptatem voluptas. Quidem voluptas odit aspernatur non.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 89, 21),
(32, 'approved', '1', 'Quidem aliquid consequatur iste quae fugit voluptatem sint. Fuga delectus consequatur qui et amet consequatur et. Numquam omnis quibusdam esse nihil. Et et et harum omnis nesciunt saepe sed.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 29, 10),
(33, 'wait', '4', 'Inventore inventore dolores accusamus doloremque unde facere. Inventore omnis cum illum cupiditate. Sed dolor vel at. Fugit quia consequatur laboriosam officiis voluptate nulla.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 21, 31),
(34, 'accept', '5', 'Sunt aspernatur facilis fugiat asperiores asperiores ad ut. Molestiae ipsam vitae fugiat molestiae enim. Et perspiciatis placeat iste voluptatum voluptatem maiores non.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 4, 16),
(35, 'standby', '5', 'Quas eum modi minima earum. Molestiae nihil ipsa numquam optio. Facilis tempore libero consequuntur rerum non repudiandae. Ex a et ut quae voluptate hic.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 83, 26),
(36, 'standby', '4', 'Autem minima in et. Ut ipsa dolores incidunt quam odit aut. Necessitatibus alias repudiandae recusandae laudantium molestiae. Iure aut aliquam sit qui omnis.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 23, 3),
(37, 'reject', '4', 'Suscipit adipisci illo aut a magni. In et nisi enim et ea aut. Animi repellat id animi saepe voluptatem quia et.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 39, 14),
(38, 'accept', '2', 'Fuga error quaerat animi autem a. Sed eius eum dicta quidem velit alias. Voluptatem eos totam sunt voluptates enim.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 63, 5),
(39, 'reject', '3', 'Ab laudantium vel suscipit ut doloremque et nesciunt. Quae labore voluptatibus quia id nemo rerum est. Vero optio et inventore. Ut omnis minus amet.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 78, 25),
(40, 'reject', '4', 'Quae aut quas placeat minus et sapiente. Voluptas totam temporibus aut. Omnis esse qui numquam. Eum officiis adipisci voluptatem optio.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 53, 44),
(41, 'accept', '1', 'Est sit omnis aut minima totam quaerat. Nesciunt qui ut rerum quos et.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 36, 38),
(42, 'wait', '3', 'Vel et in repellat aut sit asperiores dolorum enim. Earum quis voluptas ratione aliquam delectus. Laboriosam labore assumenda corrupti nesciunt asperiores est.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 60, 16),
(43, 'accept', '1', 'Voluptate nihil sed debitis animi eligendi doloribus. Laudantium minus qui similique nihil natus perspiciatis. Nihil aut distinctio rem totam dolor velit. Est dolor illo fuga adipisci nihil.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 12, 14),
(44, 'reject', '1', 'Sint non sed aut repellendus minima possimus deleniti laborum. Debitis aut illum aliquam quis id dolore voluptas voluptatem. Est quia nam voluptates repellat adipisci tempore fuga.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 20, 20),
(45, 'wait', '5', 'Consequatur iste molestiae consequatur pariatur. Ipsum maxime eaque laudantium qui. Doloribus nihil quia sequi libero natus explicabo sunt omnis. Non id nisi dicta ratione.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 79, 7),
(46, 'wait', '3', 'Nostrum eos earum dolores laboriosam. Cumque a dolorem libero nostrum. Est quisquam quo quidem iste.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 49, 40),
(47, 'approved', '2', 'Aut velit natus ea iure nihil molestiae. Nobis enim beatae sed hic quisquam sit. Nesciunt voluptas sed incidunt maiores temporibus. Quis cupiditate quis ea.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 8, 30),
(48, 'wait', '3', 'Quia cum totam rerum vel aspernatur. Placeat commodi consequatur ad veniam exercitationem. Labore aut tempora aut.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 34, 16),
(49, 'reject', '2', 'Omnis aperiam cum et in ullam perspiciatis nobis laudantium. Voluptates totam et consequatur asperiores.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 80, 2),
(50, 'accept', '3', 'Rerum quisquam ea aspernatur inventore repellendus. Eum ut et quia fugit modi dolor. Ut sequi et commodi nesciunt molestiae doloremque.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 58, 20),
(51, 'wait', '3', 'Consequatur exercitationem cum itaque soluta. Voluptas possimus pariatur modi vero. Nostrum dolores aut et. Earum saepe maxime accusamus id consectetur explicabo.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 31, 26),
(52, 'accept', '2', 'Alias possimus cupiditate vero rem. Laboriosam reprehenderit molestias non consequuntur dolorem et qui. Cum harum sit eaque maiores occaecati natus sunt sequi.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 28, 43),
(53, 'wait', '4', 'Voluptates praesentium quis impedit voluptatem nam perspiciatis id. Reprehenderit sunt recusandae laudantium blanditiis maiores aut ut aut.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 87, 1),
(54, 'approved', '1', 'Ipsam voluptate tempora neque. Neque omnis et labore. Maxime quam pariatur voluptatem veniam. Corrupti incidunt eum unde eos esse consequuntur.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 48, 50),
(55, 'standby', '2', 'Quo quaerat rerum sit reprehenderit repellendus similique aut maxime. Et nihil ab porro ea rerum praesentium.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 69, 48),
(56, 'reject', '4', 'Quo necessitatibus facere harum tempore. Reiciendis et facilis nemo sapiente. Veniam consequatur alias omnis repellendus. Laudantium a dolorem amet qui facere tenetur.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 54, 39),
(57, 'wait', '1', 'Vitae ut saepe iste voluptatem. Voluptas saepe eligendi qui commodi quia non voluptatem. Eaque iure officia odit nesciunt facilis earum asperiores. Ea sed aliquam vel enim aut deserunt ut.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 85, 11),
(58, 'reject', '5', 'Corporis molestias illum voluptatem aut quisquam ad quia nesciunt. Et eveniet dolore culpa et. Sequi maxime autem ratione ut quia non. Expedita tenetur aspernatur voluptatibus sed quod amet.', '2020-01-20 11:01:43', '2020-01-20 11:01:43', 13, 4),
(59, 'standby', '5', 'Alias enim unde quia quis. Maiores ipsum reprehenderit adipisci aut aperiam accusantium in aut. Sunt repudiandae ratione accusamus veniam. Placeat autem nihil eos nisi.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 90, 17),
(60, 'accept', '2', 'Unde alias quibusdam non. Vero quisquam omnis facere est. Eveniet illum iusto eius pariatur.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 7, 39),
(61, 'standby', '3', 'Et quo est velit quis et non. Sed sapiente corporis quia unde voluptates adipisci alias. Magnam quis molestias dolorem deleniti. Quos amet fugiat maxime error numquam magni.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 88, 15),
(62, 'accept', '1', 'Veniam culpa rem nemo sit enim. Et molestias officia vitae. Labore nobis nam explicabo. Ut veritatis error ut est.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 80, 17),
(63, 'wait', '1', 'Adipisci non consectetur nisi deleniti ea ipsa. Tempore quidem consequuntur est atque quo ut. Exercitationem fugiat ut pariatur ea.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 70, 24),
(64, 'reject', '2', 'Est ut tenetur amet quaerat. Sint qui molestiae sunt sapiente aut. Sit accusamus incidunt delectus velit facere quia.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 62, 3),
(65, 'reject', '2', 'Ut quaerat quibusdam earum expedita sunt. Doloribus accusamus est totam doloribus et rem illo. Quo facilis nisi ratione unde ipsum et perspiciatis et.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 93, 36),
(66, 'wait', '1', 'Eligendi aperiam est tempora laborum hic. Aut magnam impedit assumenda quisquam expedita ipsam. Iste consequuntur id id beatae numquam itaque quae atque.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 66, 5),
(67, 'wait', '5', 'Et veniam velit in architecto molestias atque perferendis. Repudiandae explicabo non laborum corrupti aut error sint. Ut eos aut dolor ea odio sit enim. Ea qui quia doloremque atque.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 90, 23),
(68, 'approved', '2', 'Libero illum quas voluptatum at ut. Omnis omnis sed eum et rem quas voluptatem voluptas. Et est omnis et ut aut culpa qui. Reprehenderit itaque pariatur ducimus nesciunt officia molestiae molestias.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 40, 44),
(69, 'approved', '2', 'Rerum distinctio neque dolores ut. Mollitia nulla et minima unde. Occaecati ut qui veniam laborum cupiditate quos. Illo quam distinctio laboriosam voluptates.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 94, 38),
(70, 'standby', '5', 'Quibusdam qui dignissimos itaque voluptatibus non. Nesciunt omnis cupiditate aut porro illo rerum. Ex et voluptatem officiis. Temporibus ipsa ducimus temporibus aut.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 72, 23),
(71, 'wait', '5', 'Iusto ut eveniet qui autem fugiat possimus dolorem. Voluptas voluptates voluptatem sed velit sit quia veritatis atque. Quam eum omnis fuga odio architecto praesentium reiciendis.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 44, 37),
(72, 'standby', '5', 'Dolores iusto in et illum. Ipsam aut quas fuga velit et quis molestiae quia. Sed ex voluptas molestiae. Qui ipsa aut sunt ea.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 88, 19),
(73, 'reject', '2', 'Eos reiciendis nemo ut voluptas velit impedit eum et. Qui rem modi molestias libero ut modi commodi.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 84, 19),
(74, 'wait', '4', 'Deserunt sequi vitae possimus odit molestiae vel voluptatibus. Tempore molestiae et consequatur dolor. Aspernatur corporis in a ad excepturi.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 83, 48),
(75, 'reject', '3', 'Aut ut recusandae in sapiente est voluptatibus corrupti aut. Placeat nihil omnis reiciendis qui quos rem. Dicta quidem fuga at exercitationem. Aliquam deserunt aut dolor est odit qui vitae.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 89, 3),
(76, 'standby', '5', 'Inventore ducimus non aliquam ipsa necessitatibus qui asperiores. Consectetur et fugiat et. Sed suscipit quos quis aut.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 100, 11),
(77, 'wait', '3', 'Qui tempore veniam quos nesciunt. Quidem quaerat ut quis et architecto. Nobis voluptas autem vero odit.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 69, 9),
(78, 'wait', '2', 'Quaerat quia consequatur minus ratione. Error eos commodi nam dolorem nobis. Impedit nostrum numquam ut commodi repellendus.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 17, 28),
(79, 'standby', '4', 'Distinctio harum quis qui. Corporis ad rerum est. Minima unde assumenda incidunt unde similique.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 1, 5),
(80, 'standby', '3', 'Sit sed quos numquam officia reprehenderit ducimus. Veritatis repellendus repellendus enim commodi aut. Nemo ipsum velit voluptas id repudiandae quas laboriosam.', '2020-01-20 11:01:44', '2020-01-20 11:01:44', 66, 32),
(81, 'accept', NULL, NULL, '2020-01-23 18:32:13', '2020-01-23 18:32:13', 2, 1),
(82, 'accept', NULL, NULL, '2020-01-24 12:27:30', '2020-01-24 12:27:30', 34, 1),
(83, 'accept', NULL, NULL, '2020-01-24 12:28:12', '2020-01-24 12:28:12', 76, 1),
(84, 'accept', NULL, NULL, '2020-01-25 15:26:24', '2020-01-25 15:26:24', 1, 3),
(85, 'accept', NULL, NULL, '2020-01-25 15:30:01', '2020-01-25 15:30:01', 10, 4),
(86, 'accept', NULL, NULL, '2020-01-25 21:28:27', '2020-01-25 21:28:27', 34, 5),
(87, 'accept', NULL, NULL, '2020-01-26 15:00:30', '2020-01-26 15:00:30', 1, 6),
(88, 'accept', NULL, NULL, '2020-01-26 15:00:37', '2020-01-26 15:00:37', 1, 6),
(89, 'accept', NULL, NULL, '2020-01-26 15:00:42', '2020-01-26 15:00:42', 1, 6),
(90, 'accept', NULL, NULL, '2020-01-26 15:03:51', '2020-01-26 15:03:51', 1, 3),
(91, 'accept', NULL, NULL, '2020-01-26 15:08:41', '2020-01-26 15:08:41', 1, 8),
(92, 'accept', NULL, NULL, '2020-01-26 15:08:45', '2020-01-26 15:08:45', 1, 8),
(93, 'accept', NULL, NULL, '2020-01-26 15:08:47', '2020-01-26 15:08:47', 1, 8),
(94, 'accept', NULL, NULL, '2020-01-26 15:22:33', '2020-01-26 15:22:33', 1, 3),
(95, 'accept', NULL, NULL, '2020-01-26 15:22:47', '2020-01-26 15:22:47', 1, 3),
(96, 'accept', NULL, NULL, '2020-01-26 15:25:33', '2020-01-26 15:25:33', 1, 3),
(97, 'accept', NULL, NULL, '2020-01-26 15:25:36', '2020-01-26 15:25:36', 1, 3),
(98, 'accept', NULL, NULL, '2020-01-26 15:26:32', '2020-01-26 15:26:32', 1, 3),
(99, 'accept', NULL, NULL, '2020-01-26 15:26:35', '2020-01-26 15:26:35', 1, 3),
(100, 'accept', NULL, NULL, '2020-01-26 15:31:07', '2020-01-26 15:31:07', 1, 3),
(101, 'accept', NULL, NULL, '2020-01-26 15:33:01', '2020-01-26 15:33:01', 1, 3),
(102, 'accept', NULL, NULL, '2020-01-26 15:35:48', '2020-01-26 15:35:48', 1, 3),
(103, 'accept', NULL, NULL, '2020-01-26 15:38:54', '2020-01-26 15:38:54', 1, 10),
(104, 'accept', NULL, NULL, '2020-01-26 15:40:40', '2020-01-26 15:40:40', 1, 11),
(105, 'accept', NULL, NULL, '2020-02-01 15:34:59', '2020-02-01 15:34:59', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'waitress', '2020-01-20 11:01:41', '2020-01-22 16:03:43'),
(2, 'expedita', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(3, 'quos', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(4, 'facilis', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(5, 'porro', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(6, 'quia', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(7, 'nihil', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(8, 'soluta', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(9, 'voluptates', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(10, 'aut', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(11, 'alias', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(12, 'ut', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(13, 'eligendi', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(14, 'inventore', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(15, 'voluptatibus', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(16, 'nihil', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(17, 'vel', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(18, 'ad', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(19, 'a', '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(20, 'recusandae', '2020-01-20 11:01:41', '2020-01-20 11:01:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eircode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `levelEdu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `phone`, `eircode`, `levelEdu`, `certification`, `cv`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '23492728933', '124945 d1', 'minus', 'provident', 'https://www.hackett.net/rem-soluta-adipisci-ipsa-voluptatem-adipisci', 15, '2020-01-20 11:01:40', '2020-01-22 12:46:53'),
(2, '1-995-960-8601 x762', '87166 Erdman Grove', 'sapiente', 'corporis', 'http://www.witting.net/sed-velit-sunt-rerum-sunt-sapiente-reprehenderit-dicta', 46, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(3, '981.616.1356 x68890', '931 Marilie Road Suite 838', 'vel', 'aut', 'https://morissette.info/expedita-corporis-autem-consequuntur-ea-ipsa-sint.html', 90, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(4, '(832) 670-3227 x481', '52008 Emard Mall', 'dolorum', 'non', 'http://herzog.org/et-eligendi-voluptatem-ea-adipisci-dolor', 54, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(5, '460-480-7825 x39696', '532 Libby Camp', 'ipsa', 'nihil', 'https://nitzsche.org/reiciendis-et-sit-impedit-molestiae-expedita-numquam-hic.html', 36, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(6, '583-717-4998', '68365 Marge Land', 'dolor', 'voluptatibus', 'http://robel.com/adipisci-maiores-optio-veniam-soluta-quia', 90, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(7, '1-594-892-8074', '7821 Ruecker Shoals Suite 750', 'assumenda', 'voluptates', 'https://parker.com/ea-consequuntur-ut-illo-repudiandae-maiores-facilis.html', 48, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(8, '(440) 452-4745 x68782', '6325 Eulah Orchard Apt. 841', 'labore', 'rerum', 'https://waelchi.biz/sunt-aut-voluptas-veniam-officia-qui-qui-dignissimos-ut.html', 50, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(9, '+1-720-331-0333', '932 Reynolds Meadows Suite 968', 'voluptate', 'id', 'http://www.crooks.biz/repellendus-repudiandae-vel-iure', 20, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(10, '625.710.3275 x924', '59652 Lesly Circles Suite 047', 'corporis', 'dolores', 'http://www.howe.com/accusantium-eos-ut-incidunt', 69, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(11, '1-775-553-2069 x55880', '279 Kirlin Walk', 'est', 'vel', 'http://www.koepp.org/', 88, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(12, '663.391.8151', '505 Leannon Ports', 'at', 'ut', 'http://www.reynolds.com/aspernatur-placeat-magnam-ut', 3, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(13, '(420) 481-1995', '9649 Devan Lake', 'ut', 'quod', 'http://www.bailey.net/dolore-illum-aut-repellat-fuga-error-quasi', 26, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(14, '550.605.2780', '772 Emmerich Hollow', 'dolor', 'dolore', 'http://moore.org/praesentium-qui-nemo-unde-distinctio', 74, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(15, '+1 (772) 513-5492', '83530 Mertz Mill Apt. 652', 'cupiditate', 'a', 'http://www.cremin.com/assumenda-perferendis-quia-sed-et-laboriosam.html', 11, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(16, '+1 (753) 392-0929', '79974 Christiansen Courts', 'et', 'quos', 'http://www.hill.com/et-sit-soluta-et-aut-accusantium-sunt-quo-labore', 61, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(17, '(450) 576-1896', '70395 Murazik Courts', 'omnis', 'est', 'http://www.roberts.com/', 91, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(18, '1-263-204-2981', '810 Wilkinson Key', 'odio', 'iste', 'https://www.howell.com/eveniet-distinctio-velit-eaque-molestiae-eum-ut-tempora', 42, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(19, '1-540-726-9654 x8982', '8948 Shanahan Creek', 'officiis', 'ut', 'http://www.friesen.org/quasi-eveniet-voluptatem-quidem-exercitationem-libero', 25, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(20, '526-571-7243', '757 Sadie Trace', 'libero', 'consectetur', 'http://www.haley.info/esse-sed-ea-pariatur-optio-ut-laudantium-sunt', 40, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(21, '(750) 687-0557 x92745', '37187 Becker Courts Apt. 233', 'ad', 'nostrum', 'http://hand.info/hic-accusamus-qui-aut-ut-fugiat-nisi', 15, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(22, '1-394-570-6470', '833 Samara Unions Suite 428', 'rerum', 'necessitatibus', 'http://miller.info/', 40, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(23, '727-638-8309', '53208 Armand Flats', 'minima', 'nihil', 'http://bruen.com/fuga-voluptatibus-vero-tenetur-laudantium', 39, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(24, '813-851-8531 x3633', '7993 Tillman Lock', 'ullam', 'ut', 'https://www.jast.biz/qui-unde-tempora-reiciendis-ut-voluptas-et-omnis', 45, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(25, '(212) 286-5670', '81707 Carter Branch', 'ad', 'aut', 'https://www.rice.com/et-et-expedita-expedita-fugiat-in-facere-blanditiis', 38, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(26, '1-317-484-5011 x935', '5804 Ferry Meadows Suite 928', 'in', 'deleniti', 'http://www.conn.net/voluptatem-velit-atque-vel-quas-est-eaque', 15, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(27, '(972) 360-0610 x767', '8824 Makayla Mountain', 'magni', 'excepturi', 'http://www.nikolaus.com/', 5, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(28, '738.405.2868 x33587', '373 Chris Locks Suite 799', 'velit', 'ipsam', 'http://www.block.com/', 51, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(29, '603-692-4332 x7251', '8899 Marcelina Corner', 'ut', 'vero', 'http://runolfsson.biz/error-modi-et-iure-cum-et-rerum', 68, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(30, '373.715.3615', '49505 Tyrique Shoal', 'quis', 'blanditiis', 'https://heathcote.com/voluptatem-officiis-quae-harum-exercitationem-illo-necessitatibus.html', 35, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(31, '527.282.5091 x7070', '2100 Wisoky Orchard Apt. 981', 'qui', 'saepe', 'http://www.gulgowski.com/molestiae-tempore-voluptatem-vitae-velit-voluptas-perferendis-architecto', 49, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(32, '629-486-0980 x2549', '9449 Mellie Ports', 'est', 'itaque', 'http://effertz.com/numquam-et-vel-molestiae-maxime-qui-optio-quia', 76, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(33, '1-775-224-8231 x4633', '205 Johnnie Drive Suite 627', 'unde', 'in', 'http://www.zieme.biz/nulla-architecto-dolor-dolor-id-quo-suscipit', 40, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(34, '+18084842938', '6342 Hyatt Freeway', 'dolor', 'iure', 'http://www.rohan.org/provident-sunt-qui-possimus-debitis-eius', 72, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(35, '232-273-0444', '30170 Zboncak Gateway', 'ipsum', 'quasi', 'http://www.herman.com/fugit-reiciendis-accusamus-expedita-excepturi-est-optio-inventore', 9, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(36, '261-648-7291 x367', '88191 Mraz Shores', 'tempore', 'iure', 'http://www.carter.biz/vitae-aut-quos-repellendus-magni-est.html', 69, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(37, '+1-373-807-9286', '27271 Braun Trace', 'consectetur', 'et', 'http://www.reichert.info/', 41, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(38, '1-587-540-4770 x129', '31057 Lilliana Radial', 'est', 'aliquid', 'http://klein.org/', 10, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(39, '993-704-0015 x316', '594 Gorczany Springs', 'optio', 'sapiente', 'http://collins.com/', 7, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(40, '771-389-6928 x55268', '2098 Langosh Ferry', 'quasi', 'nesciunt', 'http://www.quitzon.com/sapiente-itaque-quo-rerum-perferendis-odio', 43, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(41, '404.581.5890', '1277 Erdman Spring Apt. 184', 'velit', 'occaecati', 'http://smitham.com/', 72, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(42, '+1.412.276.2913', '64244 Mann Field', 'earum', 'itaque', 'http://www.quitzon.com/mollitia-rerum-iusto-et-eos.html', 66, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(43, '+1-670-580-5761', '593 Cheyanne Roads', 'eum', 'odio', 'https://www.haag.com/dignissimos-sequi-id-magni-impedit-rem', 91, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(44, '+1.462.225.8849', '863 Grimes Squares', 'dolores', 'est', 'http://smith.com/', 4, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(45, '+1.623.309.3453', '819 Barton Branch Apt. 635', 'repellat', 'quas', 'http://www.kreiger.com/dolor-dolorem-perferendis-facere-repudiandae.html', 14, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(46, '(998) 447-8992', '4294 Marquise Bypass', 'rerum', 'ipsa', 'http://kirlin.net/necessitatibus-tempore-aliquid-fugit-consequatur-error-voluptatibus.html', 56, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(47, '729.609.1709', '85298 Leuschke Fork', 'repellendus', 'aut', 'https://emmerich.biz/similique-aperiam-quis-beatae-et-aut-mollitia-quibusdam.html', 57, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(48, '1-320-496-3814 x1646', '17514 Shakira Crossroad', 'minima', 'nobis', 'http://www.towne.com/facilis-minima-ut-quos-consequatur-quia-totam.html', 51, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(49, '260-463-6517 x43801', '10039 Jerde Mission Suite 169', 'quis', 'incidunt', 'https://brakus.org/quo-numquam-corporis-earum-rerum-vero.html', 56, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(50, '+15457869296', '47248 Quinten Station Apt. 923', 'est', 'hic', 'http://quitzon.com/quisquam-provident-exercitationem-dolorum-quis-voluptate-nemo', 11, '2020-01-20 11:01:40', '2020-01-20 11:01:40'),
(51, '35389878374', 'oconell street', 'degree', 'corporis', NULL, 1, '2020-01-21 19:18:26', '2020-01-21 19:18:26'),
(55, NULL, NULL, NULL, NULL, NULL, 103, '2020-01-31 10:53:06', '2020-01-31 10:53:06'),
(56, NULL, NULL, NULL, NULL, NULL, 103, '2020-01-31 10:53:06', '2020-01-31 10:53:06'),
(57, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 16:17:07', '2020-02-04 16:17:07'),
(58, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 16:17:08', '2020-02-04 16:17:08'),
(59, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 16:19:37', '2020-02-04 16:19:37'),
(60, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 16:19:37', '2020-02-04 16:19:37'),
(61, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 17:06:13', '2020-02-04 17:06:13'),
(62, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 17:06:13', '2020-02-04 17:06:13'),
(63, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 17:24:51', '2020-02-04 17:24:51'),
(64, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 17:24:51', '2020-02-04 17:24:51'),
(65, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 21:54:52', '2020-02-04 21:54:52'),
(66, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 21:54:52', '2020-02-04 21:54:52'),
(67, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:06:36', '2020-02-04 22:06:36'),
(68, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:06:37', '2020-02-04 22:06:37'),
(69, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:29:51', '2020-02-04 22:29:51'),
(70, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:46:52', '2020-02-04 22:46:52'),
(71, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:50:57', '2020-02-04 22:50:57'),
(72, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:56:33', '2020-02-04 22:56:33'),
(73, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 22:58:24', '2020-02-04 22:58:24'),
(74, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-04 23:00:50', '2020-02-04 23:00:50'),
(75, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-05 09:39:49', '2020-02-05 09:39:49'),
(76, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-05 10:04:17', '2020-02-05 10:04:17'),
(77, NULL, NULL, NULL, NULL, NULL, 103, '2020-02-06 11:06:42', '2020-02-06 11:06:42'),
(78, NULL, NULL, NULL, NULL, NULL, 107, '2020-02-06 11:10:57', '2020-02-06 11:10:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employers`
--

CREATE TABLE `employers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employers`
--

INSERT INTO `employers` (`id`, `company`, `contact_name`, `contact_phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bogisich, Nitzsche and Dare', 'Andre Hyatt', '(367) 377-5369', 85, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(2, 'Herzog LLC', 'Santa Schmidt', '(275) 998-8772 x564', 67, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(3, 'Nitzsche-Ryan', 'Prof. Lea Dach III', '425.506.4236', 64, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(4, 'Corwin Ltd', 'Dr. Elian Towne', '869.482.6635', 32, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(5, 'Padberg Ltd', 'Miss Elody Gerlach III', '+1-649-378-3295', 35, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(6, 'Terry, Wilderman and Johnston', 'Dr. Melvin Fay Jr.', '+1-334-498-6110', 98, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(7, 'Bosco Inc', 'Jena Jenkins', '(792) 833-8471', 42, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(8, 'Johns, Simonis and Rice', 'Mrs. Wilma Jacobson MD', '+1-714-889-1198', 6, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(9, 'Beer Ltd', 'Earnest Langworth', '+1-736-808-6251', 55, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(10, 'Hackett, Hintz and Homenick', 'Merle Pollich', '572-719-0977 x77683', 70, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(11, 'Lynch-Ward', 'Fae Stoltenberg', '+1-705-567-9372', 57, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(12, 'Mohr, Casper and Feil', 'Rocky Gerhold', '+1-942-413-9268', 39, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(13, 'Vandervort PLC', 'Justina Collier IV', '941.228.8684', 71, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(14, 'West-Johnston', 'Corrine Braun', '1-667-470-7378', 28, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(15, 'Pollich Ltd', 'Bryon Terry PhD', '+1-871-456-3051', 94, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(16, 'Aufderhar-Paucek', 'Ms. Tess Schultz', '(423) 429-2410 x8021', 70, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(17, 'Dicki, Bergnaum and Stanton', 'Alexandrine Ledner', '628.512.4069 x5146', 49, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(18, 'Crooks, Trantow and Bergnaum', 'Dr. Pierre Hoppe PhD', '1-732-766-1619', 85, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(19, 'Mueller LLC', 'Federico Cole', '735.614.2571 x223', 69, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(20, 'Sawayn LLC', 'Nels Mante', '(812) 472-8779 x9204', 86, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(21, 'Bauch-Mertz', 'Vicky Streich', '(880) 601-8381 x7023', 9, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(22, 'Franecki Inc', 'Arch Becker', '587-934-7308 x78907', 9, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(23, 'Legros-Ziemann', 'Miss Alana Quitzon MD', '1-759-738-6713', 88, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(24, 'Waelchi-Treutel', 'Deondre Turcotte', '(504) 475-7224 x710', 71, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(25, 'Robel, Boyer and Zulauf', 'Dr. Toney Schneider', '253.983.3792 x037', 26, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(26, 'Dare, Vandervort and Goyette', 'Thalia Jacobs', '894.765.4289 x989', 64, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(27, 'Armstrong-Bosco', 'Chester Pfeffer', '(821) 431-4159 x0182', 30, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(28, 'Corkery and Sons', 'Leann Friesen', '+1 (969) 276-3423', 46, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(29, 'Hoppe PLC', 'Meggie Feest', '956.261.6681 x3169', 59, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(30, 'Rempel and Sons', 'Imelda Adams', '1-692-490-4764', 93, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(31, 'Schiller and Sons', 'Prof. Kaylie Upton Jr.', '1-321-897-5257', 44, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(32, 'Toy-Kassulke', 'Geoffrey Mayert', '+1 (856) 280-0976', 64, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(33, 'Harber PLC', 'Dr. Jessyca Crooks PhD', '(659) 664-8624', 3, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(34, 'Shanahan-Gottlieb', 'Louisa Schulist', '+1-816-296-4562', 11, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(35, 'Harber, Kohler and Wilderman', 'Erich Dietrich', '+1-697-991-6997', 13, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(36, 'Heidenreich-Abernathy', 'Elvis Kiehn', '775.215.0976 x842', 43, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(37, 'Hintz, Lebsack and Carroll', 'Aurore Dietrich', '1-608-200-7346 x256', 61, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(38, 'Jakubowski-Botsford', 'Clemens Bayer V', '+19314401569', 5, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(39, 'Hegmann Inc', 'Miss Aubrey Murazik', '971-760-9158', 64, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(40, 'Klein, Sauer and Ankunding', 'Gaston Stehr', '+1.417.307.8463', 59, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(41, 'Simonis-Auer', 'Imelda Barton', '949.906.1763 x547', 93, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(42, 'Rowe Inc', 'Kattie Ruecker', '494-994-5079 x096', 11, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(43, 'Hill Ltd', 'Dr. Hudson Pagac III', '735-602-3141', 27, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(44, 'Kovacek-Bahringer', 'Edwardo Steuber', '(761) 997-1613 x583', 54, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(45, 'Moen-O\'Hara', 'Alan Bahringer', '1-346-238-3902', 86, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(46, 'Aufderhar and Sons', 'Dr. Alexa Schumm', '+1-963-225-7324', 28, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(47, 'Kozey Inc', 'Ari Lesch', '(473) 626-7693 x7352', 59, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(48, 'Bosco, Kertzmann and Blick', 'Kailee Kirlin', '+19946625598', 30, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(49, 'Moore, Larson and Kozey', 'Cloyd Kohler', '+1 (865) 892-6849', 25, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(50, 'Volkman, Hamill and Gottlieb', 'Heloise Bauch', '(696) 458-3966 x07689', 68, '2020-01-20 11:01:41', '2020-01-20 11:01:41'),
(51, 'xalok cia', 'Juan Jose Rodriguez', '+34563599', 2, '2020-01-22 15:46:55', '2020-01-22 15:48:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eircode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_date` date NOT NULL,
  `end_time` time DEFAULT NULL,
  `payment` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `employer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `details`, `eircode`, `city`, `start_date`, `start_time`, `end_date`, `end_time`, `payment`, `status`, `created_at`, `updated_at`, `category_id`, `employer_id`) VALUES
(1, 'Mechanical Engineering Technician', 'natus', '8192 Lora Junctions Suite 255\nLake Marjory, KS 50256-8337', 'Hahnport', '2003-10-20', '23:14:00', '2000-05-14', '23:49:00', '14.21', 0, '2020-01-20 11:01:41', '2020-01-20 11:01:41', 19, 23),
(2, 'Keyboard Instrument Repairer and Tuner', 'omnis', '95531 Esmeralda Groves\nEast Delbert, NY 40671', 'New Adityamouth', '1981-11-21', '11:40:00', '1993-06-26', '11:14:00', '13.99', 0, '2020-01-20 11:01:41', '2020-01-20 11:01:41', 3, 20),
(3, 'Insurance Underwriter', 'consequatur', '9975 Colleen Corner Apt. 903\nNorth Scot, AZ 27994', 'Port Kiana', '1978-05-19', '18:17:00', '2014-10-09', '22:17:00', '13.58', 0, '2020-01-20 11:01:41', '2020-01-20 11:01:41', 12, 29),
(4, 'Shear Machine Set-Up Operator', 'et', '2456 Rasheed Park\nLake Georgianna, NE 28485', 'Lake Courtney', '2016-12-03', '18:02:00', '2003-03-08', '06:11:00', '14.80', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 17, 10),
(5, 'Fashion Designer', 'porro', '94218 Cheyanne Camp\nNorth Aidan, MT 62890', 'Ardellachester', '1974-01-22', '10:03:00', '2007-09-21', '05:09:00', '18.57', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 5, 46),
(6, 'Real Estate Sales Agent', 'perferendis', '4313 Skiles Springs Suite 345\nNorth Vallieburgh, MN 77173-8311', 'Lake Stewart', '2005-03-17', '08:55:00', '2001-06-10', '06:22:00', '17.44', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 7, 45),
(7, 'Outdoor Power Equipment Mechanic', 'itaque', '3158 Beatty Ferry\nMerlside, CA 67355', 'Lake Viviannetown', '2019-06-24', '23:32:00', '1995-10-03', '10:01:00', '14.48', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 8, 17),
(8, 'Telecommunications Facility Examiner', 'omnis', '565 Frami Crossing\nStantonborough, DE 45636', 'Port Krystina', '1986-02-08', '18:23:00', '2001-04-30', '09:02:00', '17.56', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 3, 30),
(9, 'Production Helper', 'nihil', '605 Doyle Ford Apt. 168\nEast Evanstown, AR 81097', 'Lake Jess', '2016-09-01', '20:57:00', '2017-11-09', '13:13:00', '14.95', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 4, 41),
(10, 'Broadcast News Analyst', 'aliquid', '5267 Kris Square Apt. 112\nLake Osborne, OH 60620', 'Aufderharburgh', '1994-09-15', '19:04:00', '1988-11-12', '19:23:00', '14.91', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 9, 6),
(11, 'Director Of Business Development', 'et', '84040 Bernier Garden Suite 880\nSouth Carliland, TN 79997-6167', 'South Hassie', '1999-06-09', '09:57:00', '1976-10-07', '21:37:00', '18.17', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 16, 6),
(12, 'Computer Programmer', 'ut', '236 Dicki Route\nNew Anastacio, MS 73193', 'Hudsonberg', '1973-01-12', '13:54:00', '2003-12-08', '13:52:00', '14.10', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 18, 13),
(13, 'Communications Teacher', 'perspiciatis', '1006 Harber Square\nMylesview, NY 36431-7737', 'New Jasper', '1998-03-09', '10:20:00', '1971-05-08', '22:35:00', '16.79', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 20, 13),
(14, 'Stonemason', 'molestiae', '7292 Osinski Club Apt. 035\nClaraview, IN 54492-2115', 'Lake Wilmerville', '2010-01-02', '12:13:00', '2014-06-23', '03:36:00', '15.00', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 6, 38),
(15, 'Architect', 'earum', '5086 Tyrell Village\nHarveyfort, OH 77951', 'New Donaldchester', '1988-07-29', '10:09:00', '1972-07-01', '19:26:00', '16.69', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 3, 22),
(16, 'Food Tobacco Roasting', 'quidem', '54582 Green Port Suite 869\nEast Braxtonton, WA 75819', 'Quitzonchester', '1972-08-04', '09:55:00', '2019-07-20', '20:55:00', '15.54', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 19, 29),
(17, 'Police Identification OR Records Officer', 'ut', '32850 Kertzmann Unions\nRachelleside, SD 84019', 'East Jeff', '1982-04-03', '20:03:00', '1979-01-17', '14:40:00', '13.04', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 18, 38),
(18, 'Environmental Engineer', 'voluptas', '8267 Bode Mountain Suite 657\nWest Loycemouth, CT 48938', 'Port Evie', '1980-12-19', '03:41:00', '1997-10-09', '00:30:00', '11.73', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 8, 3),
(19, 'Space Sciences Teacher', 'quos', '57779 Johanna Forge Suite 378\nTimmyside, ID 35974-3028', 'Verlatown', '1998-01-20', '02:01:00', '1989-04-01', '19:02:00', '12.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 20, 17),
(20, 'Watch Repairer', 'unde', '908 Lehner Plain Suite 387\nGissellefurt, RI 14289-3284', 'New Alyshatown', '1979-04-21', '13:00:00', '2012-10-25', '22:53:00', '13.17', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 41),
(21, 'Real Estate Broker', 'delectus', '810 Nikolas Squares Apt. 720\nNorth Jerroldfort, NJ 67372', 'New Lacey', '1990-09-23', '23:07:00', '2000-10-03', '17:00:00', '17.69', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 4, 47),
(22, 'Educational Psychologist', 'fugiat', '973 Shanny Manors Suite 311\nLake Manuela, WI 32084', 'East Taylor', '2013-09-13', '05:52:00', '1973-08-26', '01:47:00', '16.98', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 14, 8),
(23, 'Senior Cares', 'care people', 'd01 jjhgkl', 'dublin', '2020-07-02', '10:00:00', '2020-07-10', '12:00:00', '10.00', 1, '2020-01-20 11:01:42', '2020-01-23 16:46:44', 3, 5),
(24, 'Grinding Machine Operator', 'cum', '755 Runte Shores\nManuelshire, LA 41248', 'North Demariofurt', '1993-10-06', '07:06:00', '2018-10-08', '19:11:00', '19.86', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 16, 47),
(25, 'Database Administrator', 'sed', '724 Alena Pass\nDuBuqueport, UT 67523', 'Port Stewart', '1988-03-05', '00:37:00', '2004-11-14', '10:04:00', '12.50', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 19, 19),
(26, 'Equal Opportunity Representative', 'tempore', '884 Hallie Freeway\nRoyfort, WY 54356-5953', 'Rhiannaside', '2016-08-24', '15:04:00', '2011-11-21', '07:54:00', '11.73', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 9, 12),
(27, 'Agricultural Sciences Teacher', 'aut', '7813 Henriette Forest\nEast Ravenmouth, AL 14617', 'New Jennyfer', '2008-02-11', '20:47:00', '2010-01-29', '07:15:00', '14.54', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 5),
(28, 'Database Manager', 'molestiae', '826 Gottlieb Run\nYosthaven, OH 34639', 'Lake Sallymouth', '2015-02-16', '02:14:00', '1991-11-05', '10:24:00', '18.77', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 9),
(29, 'Securities Sales Agent', 'sed', '80851 Carissa Grove Suite 324\nEast Alvahchester, NM 69830', 'East Minervaview', '1994-12-28', '07:48:00', '2016-08-06', '07:57:00', '10.86', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 15, 34),
(30, 'Painting Machine Operator', 'sequi', '260 Harber Crossing Suite 657\nSchadenton, KY 51916', 'Gregoriobury', '1999-03-02', '16:19:00', '1972-11-18', '18:55:00', '13.20', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 26),
(31, 'Medical Equipment Repairer', 'possimus', '7349 Annalise Rapids Apt. 860\nEast Shaylee, NV 04793', 'Gretaton', '2005-09-08', '05:13:00', '2012-02-24', '22:41:00', '12.95', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 9, 34),
(32, 'Library Technician', 'in', '91973 Wilderman Skyway Apt. 170\nSouth Vickiehaven, CT 20205-2726', 'Maudefurt', '1992-03-20', '16:14:00', '2009-11-12', '01:19:00', '15.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 9, 50),
(33, 'Extraction Worker', 'nam', '9590 Russel Trace Suite 165\nItzelville, MO 47360', 'New Madisonland', '1974-12-17', '11:33:00', '1971-02-09', '05:01:00', '15.18', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 17, 3),
(34, 'Municipal Clerk', 'non', '67266 Coleman Curve\nLake Dessie, TX 25795', 'Valliefort', '1974-09-01', '18:37:00', '1992-03-13', '14:18:00', '10.12', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 15, 4),
(35, 'Central Office', 'similique', '25034 Kimberly Plain Suite 934\nPabloview, AR 95454-3137', 'Mikeborough', '1996-10-06', '12:19:00', '2010-09-04', '20:49:00', '16.49', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 13, 46),
(36, 'Forming Machine Operator', 'molestiae', '83686 Dickens Avenue\nSallieland, ND 52576-5514', 'Kileybury', '2006-11-19', '21:27:00', '1981-03-15', '19:05:00', '18.53', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 20, 21),
(37, 'Public Relations Specialist', 'nobis', '8765 Derek Crest Suite 883\nSouth Destanytown, ID 71692-2783', 'Bernhardberg', '1981-05-31', '16:21:00', '2002-03-29', '00:32:00', '11.37', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 17),
(38, 'Medical Appliance Technician', 'quo', '1271 Bayer Crescent\nNew Gradyfort, VA 42933-3594', 'Evelinebury', '2004-12-02', '17:13:00', '1980-11-14', '18:56:00', '18.39', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 19, 32),
(39, 'Food Preparation Worker', 'aut', '88330 Doyle Common\nLake Jarrett, MN 05112', 'Sanfordchester', '2016-08-21', '16:36:00', '1975-03-20', '18:32:00', '11.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 4, 25),
(40, 'Head Nurse', 'dolorum', '113 Senger Shores Suite 885\nWuckertmouth, NY 16760-4538', 'Reillybury', '2013-03-15', '15:15:00', '1971-03-26', '21:40:00', '13.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 7, 23),
(41, 'Manager Tactical Operations', 'quia', '6121 Koss Gateway\nElmoreland, SC 24708-0262', 'Kassandrashire', '1991-12-19', '16:35:00', '1995-02-19', '08:24:00', '10.20', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 9, 1),
(42, 'Refinery Operator', 'amet', '144 McCullough Orchard\nNorth Howell, RI 37330-1647', 'New Orrinstad', '1984-11-19', '23:17:00', '2001-10-01', '11:14:00', '13.48', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 2),
(43, 'Coaches and Scout', 'perspiciatis', '508 Kevin Heights\nEast Wilhelmine, PA 64670-8846', 'North Millie', '1996-10-17', '19:34:00', '1994-09-01', '07:09:00', '19.00', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 36),
(44, 'Surveying and Mapping Technician', 'voluptatem', '8656 Shawn Lock Suite 152\nWest Kurt, WV 80845', 'Lake Parkerborough', '2018-03-20', '23:47:00', '1995-02-13', '09:14:00', '13.55', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 50),
(45, 'Career Counselor', 'quod', '781 Jeramy Estate\nBeckerton, MO 09004', 'Cruzport', '1982-02-04', '12:22:00', '1999-01-18', '17:05:00', '10.90', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 7, 17),
(46, 'Tree Trimmer', 'voluptatem', '323 Prudence Islands\nSouth Cordelia, HI 44196', 'Dakotahaven', '2013-10-31', '21:44:00', '1987-09-07', '06:24:00', '19.25', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 3, 43),
(47, 'Environmental Science Technician', 'id', '1651 Euna Run\nRebekahview, SD 11428-4868', 'Bartolettifort', '1978-04-30', '12:38:00', '1994-06-22', '04:26:00', '14.45', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 3),
(48, 'Marketing Manager', 'natus', '98446 Gardner Ranch\nKerlukemouth, OK 69853', 'New Rosario', '2010-12-07', '12:50:00', '1976-10-19', '01:38:00', '19.73', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 10),
(49, 'Computer-Controlled Machine Tool Operator', 'aliquid', '3063 Sarina Field\nZboncakmouth, NV 70989', 'Lake Enrico', '1981-03-05', '09:06:00', '2011-12-15', '16:22:00', '17.78', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 16, 17),
(50, 'Food Tobacco Roasting', 'animi', '171 Zemlak Loaf Suite 364\nSouth Tracefurt, AL 64525-6500', 'Langoshchester', '1988-08-12', '10:34:00', '1973-09-17', '10:29:00', '12.95', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 15, 3),
(51, 'Fitness Trainer', 'sit', '53232 Serena Mews\nNew Elizabeth, MT 59161-1244', 'Erickachester', '2009-02-19', '10:43:00', '1981-01-07', '05:39:00', '11.27', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 6, 45),
(52, 'Bridge Tender OR Lock Tender', 'exercitationem', '478 Retha Track\nSouth Chanellestad, LA 27904-1231', 'South Rudolph', '1984-12-04', '03:39:00', '1979-05-06', '22:21:00', '10.11', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 2, 12),
(53, 'Telemarketer', 'illo', '921 Streich Cliffs Apt. 294\nCristmouth, AK 09539-0124', 'Corwinview', '1976-01-13', '04:54:00', '1970-07-16', '23:54:00', '16.03', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 18, 22),
(54, 'Animal Control Worker', 'veritatis', '87648 Guadalupe Estate\nFayland, NY 06583', 'Lake Shaniya', '1993-12-03', '06:26:00', '1991-02-28', '19:38:00', '13.78', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 11, 11),
(55, 'Oral Surgeon', 'quas', '25107 Hipolito Center Apt. 936\nGretaport, NM 24835-3074', 'Parkermouth', '1976-01-15', '16:02:00', '1982-09-21', '13:53:00', '17.59', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 5, 18),
(56, 'Gaming Dealer', 'id', '352 Adelle Village\nNew Kolbyport, IA 85125-0323', 'Croninview', '1972-06-30', '04:50:00', '1988-11-25', '20:31:00', '14.13', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 9, 44),
(57, 'Self-Enrichment Education Teacher', 'fuga', '2610 Fabiola Mission Apt. 432\nBartellville, ME 67255-6834', 'South Wavatown', '2014-01-16', '11:38:00', '2007-12-09', '01:55:00', '15.86', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 5, 49),
(58, 'Industrial Engineering Technician', 'impedit', '404 Gottlieb Viaduct Apt. 957\nKingbury, IN 68223', 'East Tarynburgh', '1980-08-21', '11:30:00', '2011-06-07', '18:47:00', '17.15', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 4, 43),
(59, 'Bookbinder', 'commodi', '72368 Liam Turnpike\nNew Nelson, VT 85863-2192', 'West Kailynbury', '1970-03-30', '12:53:00', '1986-09-07', '15:44:00', '11.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 20, 1),
(60, 'Healthcare', 'dolorem', '61371 Herzog Mission\nMcDermottborough, LA 46343', 'Zechariahchester', '1975-03-02', '06:13:00', '1977-04-05', '13:02:00', '13.32', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 19, 22),
(61, 'Floor Finisher', 'nulla', '40690 Anderson Extension\nSchimmelland, RI 90834-7869', 'Port Edwina', '1976-04-28', '08:05:00', '1981-03-17', '23:24:00', '12.74', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 4, 8),
(62, 'Purchasing Agent', 'ut', '53432 Crist Roads Suite 878\nStantonfurt, NM 42770-0281', 'East Ayana', '1980-06-30', '02:15:00', '2008-01-27', '04:46:00', '16.94', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 15, 8),
(63, 'Natural Sciences Manager', 'omnis', '679 Bergstrom Lock Suite 227\nKleinmouth, WA 22841-5352', 'New Bertrandberg', '1986-11-16', '06:08:00', '2014-04-15', '12:00:00', '12.60', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 11, 5),
(64, 'Engineering', 'et', '1411 Lupe Mountains\nAugustustown, WA 89676-8096', 'Breannaburgh', '2003-11-15', '00:48:00', '1993-02-26', '08:55:00', '18.34', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 3, 44),
(65, 'Numerical Tool Programmer OR Process Control Programmer', 'et', '24654 Silas Mall\nMurrayberg, MI 72905-9916', 'New Geraldine', '1984-04-06', '18:18:00', '2008-04-17', '18:21:00', '18.65', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 6, 47),
(66, 'Industrial Engineering Technician', 'qui', '453 Walton Cove\nAlenaland, AR 69422', 'Laneyburgh', '1971-11-07', '22:01:00', '2000-02-13', '02:17:00', '14.85', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 1, 8),
(67, 'Tree Trimmer', 'voluptatum', '50130 Landen Rapid Suite 439\nSpencertown, TN 52494-2845', 'Lake Antwon', '1972-08-14', '08:47:00', '1992-03-28', '12:19:00', '15.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 15, 44),
(68, 'Technical Writer', 'ratione', '717 Casper Place\nWalkerfort, PA 86217-1294', 'Larrymouth', '2000-04-26', '03:57:00', '2018-11-07', '16:10:00', '18.47', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 11, 4),
(69, 'Environmental Science Technician', 'molestiae', '8628 Devante Stravenue Suite 237\nPort Eveshire, KY 21251', 'West Nadiaville', '1997-01-30', '13:00:00', '1986-08-03', '02:06:00', '15.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 6, 12),
(70, 'Zoologists OR Wildlife Biologist', 'assumenda', '5482 Hyatt Pike\nNorth Jermainbury, MS 22553', 'East Constantinstad', '1979-05-02', '21:58:00', '2019-08-19', '08:44:00', '10.34', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 11, 7),
(71, 'Fishing OR Forestry Supervisor', 'enim', '1125 Adams Squares Apt. 223\nStreichport, AK 19915-9502', 'Darrickshire', '1983-04-09', '04:26:00', '1977-09-27', '14:11:00', '17.60', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 14, 14),
(72, 'Forest and Conservation Technician', 'consequatur', '98198 Anderson Curve\nGulgowskifort, AK 61543-3355', 'Carrollburgh', '2013-10-11', '16:32:00', '1970-07-16', '01:04:00', '11.56', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 8, 1),
(73, 'Computer', 'veniam', '3369 Jailyn Gateway Apt. 701\nJudsonfort, NJ 65314-9571', 'Skylarborough', '2004-10-21', '22:29:00', '1983-06-18', '03:57:00', '13.45', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 18, 2),
(74, 'Transportation Inspector', 'iure', '377 O\'Keefe Run Apt. 677\nIdellamouth, WA 57007-0253', 'Skileston', '1995-07-21', '04:50:00', '1970-09-02', '13:44:00', '18.34', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 6, 16),
(75, 'Proofreaders and Copy Marker', 'qui', '4135 Hermann Glens Suite 053\nEast Thaliamouth, PA 38797-2510', 'Julesmouth', '1998-02-15', '16:42:00', '1978-04-09', '02:32:00', '19.30', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 17, 8),
(76, 'Heavy Equipment Mechanic', 'consectetur', '4379 Lockman Flats\nMyrtieshire, NE 80242-2034', 'Autumnside', '1971-11-20', '22:28:00', '2006-01-05', '12:34:00', '14.42', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 47),
(77, 'Percussion Instrument Repairer', 'sit', '11553 Schiller Inlet\nPort Angelicafort, SD 30816', 'Cormierview', '1978-11-13', '02:48:00', '2003-01-23', '00:30:00', '19.00', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 19, 7),
(78, 'Dredge Operator', 'sit', '387 Murphy Crossroad Suite 658\nAnkundinghaven, IN 65272', 'Harrischester', '1973-01-22', '17:25:00', '1987-08-01', '04:34:00', '13.20', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 19, 1),
(79, 'Product Promoter', 'repellat', '6717 Cole Unions\nCristfort, CO 36613', 'Port Daltonmouth', '2002-03-01', '04:56:00', '2014-02-17', '11:29:00', '13.85', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 9),
(80, 'Environmental Engineering Technician', 'explicabo', '2496 Jameson Alley\nEast Destineehaven, OR 00175-1536', 'Kubfurt', '1991-07-06', '00:08:00', '1991-03-14', '03:31:00', '14.82', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 12, 45),
(81, 'Crane and Tower Operator', 'explicabo', '527 Lolita Park\nEast Alaynatown, VT 34878-7678', 'Demarcohaven', '1991-05-23', '11:00:00', '2000-03-10', '16:10:00', '20.00', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 1, 14),
(82, 'Private Detective and Investigator', 'velit', '9797 Kunde Coves Apt. 058\nPort Claudiaberg, GA 90944', 'Dariantown', '1998-04-01', '15:55:00', '2010-04-28', '05:15:00', '12.84', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 11, 40),
(83, 'Power Plant Operator', 'adipisci', '8934 Ledner Estates Apt. 417\nAlenemouth, RI 96704-1780', 'Lake Percytown', '2001-03-01', '07:21:00', '2011-08-22', '04:17:00', '15.58', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 20, 9),
(84, 'Hotel Desk Clerk', 'libero', '703 Krajcik Highway\nWest Magnoliafort, IA 44641-7229', 'West Roxannestad', '2001-12-03', '14:37:00', '1977-02-22', '01:44:00', '17.54', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 16, 18),
(85, 'Trainer', 'animi', '96841 Jace Junctions Suite 838\nEast Miracleburgh, NM 63456', 'Lake Stanton', '1998-04-14', '04:16:00', '1978-05-30', '00:18:00', '18.46', 1, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 10, 10),
(86, 'Musician OR Singer', 'earum', '17009 Schuppe Crest\nTillmanland, KS 39506', 'Leannonland', '1992-06-08', '17:32:00', '1971-11-02', '23:28:00', '19.20', 0, '2020-01-20 11:01:42', '2020-01-20 11:01:42', 18, 21),
(87, 'Occupational Health Safety Technician', 'nostrum', '6104 Dooley Mission\nNew Izabellahaven, AZ 32905-1558', 'Gulgowskiland', '1971-03-27', '07:16:00', '1986-06-23', '10:48:00', '15.93', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 4, 8),
(88, 'Agricultural Product Grader Sorter', 'dolorem', '222 Bennett View Suite 342\nCalistatown, MA 64445', 'North Johanburgh', '1979-11-25', '15:31:00', '1990-03-25', '17:51:00', '16.80', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 20, 43),
(89, 'Drywall Ceiling Tile Installer', 'autem', '5313 Caesar Knoll Apt. 432\nJulienborough, DE 81089-8419', 'Lisettemouth', '1987-04-01', '16:16:00', '1984-11-27', '04:56:00', '17.71', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 6, 24),
(90, 'Mail Machine Operator', 'et', '9941 Ivy Rest\nAbernathyside, WY 91320-9985', 'Hyattfurt', '1991-06-03', '01:29:00', '1995-03-21', '23:06:00', '18.10', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 11, 19),
(91, 'Legal Secretary', 'ut', '351 Wiza Road\nNew Anjali, WV 18807-6312', 'North Juliusburgh', '1970-07-12', '01:13:00', '1991-04-26', '08:35:00', '14.00', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 10, 26),
(92, 'Respiratory Therapy Technician', 'est', '46677 Hoeger Roads\nPort Velmahaven, FL 53110', 'Julianneside', '1980-01-26', '14:39:00', '1987-06-23', '05:28:00', '17.24', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 15, 27),
(93, 'Bartender', 'nihil', '55807 Candido Canyon\nGrimesberg, IN 70046-4191', 'Darrylland', '2010-04-09', '21:21:00', '1987-10-28', '04:32:00', '19.60', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 5, 20),
(94, 'Sales Manager', 'consequatur', '6269 Aufderhar Village Apt. 318\nDevonteberg, UT 72405-5903', 'West Georgianatown', '1998-10-27', '16:29:00', '1979-09-20', '22:04:00', '10.70', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 3, 41),
(95, 'Furnace Operator', 'enim', '813 Huel Knolls\nFlatleyhaven, DC 14711-3448', 'Angelborough', '2005-07-05', '06:59:00', '1992-08-05', '20:45:00', '19.11', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 18, 44),
(96, 'Editor', 'deleniti', '296 Stehr Grove Suite 629\nKohlerside, KY 63131-9729', 'Lelahview', '2016-04-04', '13:49:00', '1987-02-27', '16:44:00', '19.74', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 14, 1),
(97, 'Patternmaker', 'est', '55546 Mills Courts\nWest Michaelabury, NH 12246', 'Stoltenbergberg', '1995-11-21', '04:16:00', '2015-06-16', '12:24:00', '13.13', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 13, 50),
(98, 'Grounds Maintenance Worker', 'a', '8923 Jamel Point Suite 230\nRatkefort, FL 45570-1257', 'Blakeside', '1970-04-10', '10:43:00', '2019-07-12', '05:31:00', '18.60', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 3, 2),
(99, 'Electric Motor Repairer', 'qui', '58444 Edwardo Shore\nSouth Mabellechester, DC 89885-8210', 'Jonesbury', '1979-11-05', '00:49:00', '1988-04-04', '05:36:00', '11.29', 1, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 8, 16),
(100, 'Landscape Artist', 'iure', '63247 Robbie Cliffs Suite 632\nSouth Mandymouth, RI 19251', 'Geraldineville', '1977-01-29', '22:33:00', '2008-08-24', '06:41:00', '19.46', 0, '2020-01-20 11:01:43', '2020-01-20 11:01:43', 13, 10),
(101, 'Senior Cares', 'care people', 'd01', 'dublin', '2020-07-02', '10:00:00', '2020-07-10', '12:00:00', '10.00', 1, '2020-01-23 16:19:35', '2020-01-23 16:19:35', 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_17_231108_create_employers_table', 1),
(4, '2020_01_17_231153_create_employees_table', 1),
(5, '2020_01_18_001105_create_categories_table', 1),
(6, '2020_01_18_003730_create_jobs_table', 1),
(7, '2020_01_18_145011_create_applicants_table', 1),
(8, '2020_01_27_152923_adds_api_token_to_users_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'Virgie Luettgen', 'apollich@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0dlFgvieXJ', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(2, 'Rocky O\'Connell', 'kharvey@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'va08kC1w8t', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(3, 'Prof. Gianni Ernser', 'verona79@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mDE7nLWNKJ', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(4, 'Lila Bergnaum', 'marcelle.weber@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KgvZ8w8LYR', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(5, 'Ford Nienow', 'amely88@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wuwzioQbvo', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(6, 'Shad Feil', 'marjorie14@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fboWHUc25T', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(7, 'Maude Wisozk IV', 'tina.homenick@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IaWGYcJOkD', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(8, 'Rosella Brekke', 'glover.lola@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ChO7chcWCh', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(9, 'Prof. Dante Flatley Jr.', 'ellsworth91@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8dqGtSFPMF', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(10, 'Koby Hegmann', 'lpagac@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kkiTdyvh31', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(11, 'Bobby Steuber', 'gunnar99@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sYjUYh1ViC', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(12, 'Shawna Schinner', 'geraldine.watsica@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UlQlfCoSTU', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(13, 'Maurice Gislason', 'kallie.watsica@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UBrm9sgEWT', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(14, 'Ryan Sawayn', 'towne.jaleel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ay3k8gSOlG', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(15, 'Brittany Ryan Jr.', 'ebreitenberg@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MZeEhlGImJ', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(16, 'Florida Satterfield', 'ernser.yazmin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TINPJs2cyP', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(17, 'Stevie Mills', 'edison23@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'h5y35lmeqm', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(18, 'Shayne Eichmann Jr.', 'johnston.brandon@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bfL4RY0nCQ', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(19, 'Dr. Lamont Okuneva DDS', 'lakin.nia@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'saVOhzHOpp', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(20, 'Henderson Gusikowski', 'flatley.laurence@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DLtc18tx8r', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(21, 'Lilly O\'Keefe III', 'abdiel68@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cXQv6pT0eQ', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(22, 'Elliot Wisoky IV', 'nnader@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vWKZl3MyLo', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(23, 'Roger Lang PhD', 'alarkin@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'C6abyG9Gt9', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(24, 'Estefania Turner', 'klein.jonathon@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F6ZSOlxFvh', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(25, 'Deon Lowe', 'wilbert.mueller@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '585ChB0hYN', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(26, 'Percy Walter', 'mathew88@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'c1GGjbW7Ke', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(27, 'Taya Hansen', 'levi95@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YoAL9OWqv2', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(28, 'Dannie Mills', 'rickey30@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ljO9z3nrUw', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(29, 'Mrs. Wava Streich', 'heaney.amari@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Pdmxg83zRc', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(30, 'Ms. Vicenta Jakubowski II', 'felipa39@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9W4481Qfji', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(31, 'Prof. Danny Dickinson III', 'ygaylord@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ec9BviMFc2', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(32, 'Jackeline Hegmann', 'oorn@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F2ZxYbn9JD', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(33, 'Mr. Braxton Farrell', 'kaylin.ruecker@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6L9EIkQnR9', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(34, 'Dr. Salma Hudson', 'kozey.aaron@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QoYXKQ7o7A', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(35, 'Mathilde Rowe', 'bobby62@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PyK4q98jSc', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(36, 'Jeff Hoppe DDS', 'mayer.van@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6zJDOdh2LZ', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(37, 'Bill Nolan', 'christiansen.petra@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rApkd6OBnm', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(38, 'Liliana Doyle DVM', 'awintheiser@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e8siZflgVx', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(39, 'Cierra Jacobson', 'bartell.trevion@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'V5S0ojEoNp', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(40, 'Hermina Reichel II', 'lillian56@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'za3Rx04GyF', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(41, 'Creola Deckow', 'idell.jakubowski@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rglXcNuv5n', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(42, 'Norval Treutel', 'erik09@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BtCoMZGx26', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(43, 'Mrs. Alvina Lowe', 'johns.carol@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Cx2nhv8VcE', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(44, 'Miss Adella Ondricka MD', 'lrunte@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0CZjVhFsNs', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(45, 'Jada Ledner', 'jones.clark@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MqSetEnZsu', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(46, 'Theresia Rath', 'krista.breitenberg@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0b5asIAGva', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(47, 'Oma Wuckert', 'thiel.eldred@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gBI5xOZWcf', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(48, 'Prof. Gunnar Stiedemann', 'cedrick24@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZZ8XOVzTct', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(49, 'Prof. Arvilla Smitham', 'sfranecki@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MMbVAP4JPl', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(50, 'Ezekiel Mante', 'goldner.estevan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NWsmcYxjT3', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(51, 'Trevion Stracke', 'deangelo.dooley@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kghLBYgdEO', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(52, 'Conner Rohan I', 'elizabeth.mills@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XdHeQZLU5j', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(53, 'Kamille Kiehn', 'khermann@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9is5GUTjHp', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(54, 'Clay Gutmann', 'josefina.beier@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gFzZdnLzHo', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(55, 'Freda Crooks', 'habbott@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rcGEirogGv', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(56, 'Prof. Roma Thompson Sr.', 'hortense97@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '50aWNZqKsj', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(57, 'Mr. Deshawn VonRueden II', 'koelpin.regan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3K0prloUnu', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(58, 'General Mayer', 'bert12@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bAGXuCB8W6', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(59, 'Luna Bashirian Sr.', 'courtney.kutch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'r38r1xyATC', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(60, 'Bailee Crooks', 'sberge@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pE7UoaNVlD', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(61, 'Riley Kuvalis', 'brown76@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pXqbpxvzPh', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(62, 'Prof. Ida VonRueden PhD', 'aprohaska@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LQkaOgf1uM', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(63, 'Mr. Abraham Bartoletti', 'wbalistreri@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'T44qoOq9SL', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(64, 'Dr. Madeline Wisozk Jr.', 'melisa.champlin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JXIMIWbGlT', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(65, 'Creola Mohr', 'jessie.dickens@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rnRvz94UcU', '2020-01-20 11:01:39', '2020-01-20 11:01:39', NULL),
(66, 'Aylin Morar', 'lweber@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hGA4Xd5sC6', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(67, 'Bradford Hagenes', 'wyman.santino@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yuENaMck6P', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(68, 'Dr. Randal Hahn', 'agoodwin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oJSRirXewL', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(69, 'Dr. Candido DuBuque Jr.', 'cary.schimmel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ONexyYcmNv', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(70, 'Hilma Dicki', 'weimann.jayce@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aMbVm1OwD1', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(71, 'Mrs. Noemy Schmitt', 'ggottlieb@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SIqZ1bByvd', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(72, 'Prof. Elenor Pfeffer', 'zmarvin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mVtOGEXeJ1', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(73, 'Prof. Humberto Block', 'alexys.bartell@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M19DkHXwIN', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(74, 'Dr. Jacey Wolff DVM', 'mante.armando@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'o15XxhDnH0', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(75, 'Heidi Leffler IV', 'tillman.minerva@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'arCrdEFpgw', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(76, 'Katelin Schulist', 'brice.corkery@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wOHd2IQnHe', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(77, 'Dorthy Treutel', 'jadyn85@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5dul36hSkb', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(78, 'Prof. Johann Walter DDS', 'dhirthe@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'M6th54MGXV', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(79, 'Alec Hamill III', 'alford85@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tK2lpbY0VU', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(80, 'Rebekah Bartell', 'nicola.kreiger@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YqBzu9R1t3', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(81, 'Dr. Brain King Jr.', 'anabel.mann@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BZRhl1wLZk', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(82, 'Ernestina Hill', 'rmante@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9YaRK2oLM8', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(83, 'Trystan Keebler', 'august.bashirian@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'J0jZl0rXU7', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(84, 'Virgie Bednar', 'igreenfelder@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9tIMR0VTXx', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(85, 'Dr. Nya Mertz DVM', 'lyric18@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Rwxs7arVcp', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(86, 'Magali Moen II', 'aufderhar.vernon@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dZiyfo5mfe', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(87, 'Miss Peggie Schroeder', 'collins.felicita@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7tsmxNIy5d', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(88, 'Kelton Legros', 'rhoeger@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'emW5yfFWvh', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(89, 'Gayle Morar', 'sconnelly@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AkGnxUcy8i', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(90, 'Kaitlin Funk', 'rodrigo70@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qOnVk5huhI', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(91, 'Destinee Walker', 'lemke.harrison@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9XMsRaBPk6', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(92, 'Syble Sporer', 'hintz.bianka@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sQAplF7HPp', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(93, 'Donnell Grant', 'gerhard18@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YOczwpFFqs', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(94, 'Marian Schiller IV', 'dedrick.von@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'x3noW8EQBm', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(95, 'Murphy Schimmel', 'delphine45@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'N6WnoPTTuB', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(96, 'Vladimir Collier', 'delores.walsh@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yNuGSdHtIM', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(97, 'Dr. Mae Bailey', 'bkoelpin@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2t0SMXNBjN', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(98, 'Abby Brekke', 'santiago71@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nqNXDoY1aX', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(99, 'Kali Brakus', 'bridie.damore@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sdztpr8Huw', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(100, 'Dr. Mose Schumm III', 'abarton@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UJlKLE0bil', '2020-01-20 11:01:40', '2020-01-20 11:01:40', NULL),
(101, 'daniela', 'daniela@gmail.com', '$2y$10$u3qvoCp6qzHO5Z4tXgldOOycaCU5rgZH1.EDVwtHNivSmtdiyThGm', NULL, '2020-01-21 18:29:52', '2020-01-21 18:29:52', NULL),
(102, 'daniela', 'daniela2@gmail.com', '$2y$10$kDBcZfqF.32ndKJJCHvXDuO/uGSmbLOsj9.PJ0EGu9qNe.HnaXnAm', NULL, '2020-01-21 18:30:35', '2020-01-21 18:30:35', NULL),
(103, 'jimena', 'jimena@gmail.com', '$2y$10$128oqWzMMHq2leBP7DBiHOjeGG/EQY3CvwtjY6zXdfQHzGyEEZBTu', NULL, '2020-01-27 15:41:09', '2020-02-06 11:06:40', 'm8K7lcWM8agqWnLxuKbMAVGKPIXt4hWO7fh4CMdn68sWrsF0KreaA6VartWU'),
(104, 'andrea', 'andrea@gmail.com', '$2y$10$uIWiIk.Rd07Yl7FuKuOcz..zK2gSb4EnQxv9VuYv0DWOhZW.spO5q', NULL, '2020-01-30 15:16:59', '2020-01-30 15:16:59', 'pFipcrUOFUZO3uxoabCt5peY2LNjzIPrweu6e6D2wOK6iMSQxg0hG4cVDgxL'),
(105, 'pedro jose', 'pedrojose@gmail.com', '$2y$10$7/iuUCrCuWErv/uDRFoRcO3H1sbP2foCJ2/z/lnlirYSB.Bt/mCta', NULL, '2020-01-30 15:32:42', '2020-01-30 15:32:42', 'jA95MNRWEX06iB6kRkUmtC15ozNXeGPKUQlfIr1LWB91q3DWaBS3XHBkLmjx'),
(106, 'carolina', 'carolina@gmail.com', '$2y$10$RI0LK9C7zXBqNt2qMLtAZO4iyN9Qr92d3TbfymOnzC6QU6t0LsiZS', NULL, '2020-01-30 15:33:52', '2020-01-30 15:33:52', 'xxy1mE34AFOt428cS6WmbhdhDyqgLNAR0a8vG8FKooMTlfgKXcpwFsWAnOTo'),
(107, 'paulina', 'paulina@gmail.com', '$2y$10$YfIvsSrhFhQjV9R7PFmFt.pmIWtSXIoiOF9qAm/F5FsGGPtsTgBB2', NULL, '2020-02-06 11:10:43', '2020-02-06 11:10:56', 'rpKBFRRgEuHdYEhssa5Tk4h8c08W0vPweJBbkY3tUxqHMBGO6STCRTNG2W6n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_job_id_foreign` (`job_id`),
  ADD KEY `applicants_employee_id_foreign` (`employee_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_employer_id_foreign` (`employer_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `applicants_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `employers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `jobs_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

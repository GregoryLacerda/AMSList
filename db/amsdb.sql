-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jul-2021 às 22:37
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `amsdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animes`
--

CREATE TABLE `animes` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `temporada` int(255) NOT NULL,
  `episodio` decimal(10,1) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `nlink` varchar(255) COLLATE utf8_bin NOT NULL,
  `stats` varchar(255) COLLATE utf8_bin NOT NULL,
  `linkImg` varchar(255) COLLATE utf8_bin NOT NULL,
  `data_atualizacao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `animes`
--

INSERT INTO `animes` (`id`, `nome`, `temporada`, `episodio`, `link`, `nlink`, `stats`, `linkImg`, `data_atualizacao`) VALUES
(7, 'Tsuredure Children ', 1, '12.0', 'https://www.crunchyroll.com/pt-br/tsuredure-children', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/f9f6337b02f4cd45d88036aeeda724781532553378_full.jpg', '0000-00-00 00:00:00'),
(8, 'That Time I Got Reincarnated as a Slime', 2, '39.0', 'https://www.crunchyroll.com/pt-br/that-time-i-got-reincarnated-as-a-slime', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire4/a6470bd841a667e7d5f09999a1e1a29b1625651770_full.jpg', '0000-00-00 00:00:00'),
(17, 'Mushoku Tensei: Jobless Reincarnation', 1, '12.0', 'https://www.funimation.com/pt-br/shows/mushoku-tensei-jobless-reincarnation/?qid=', 'Funimation', 'Completed', 'https://cdn.myanimelist.net/images/anime/1068/111129.jpg', '0000-00-00 00:00:00'),
(21, 'Log Horizon', 3, '7.0', 'https://www.funimation.com/pt-br/shows/log-horizon/?qid=', 'Funimation', 'Watching', 'https://derf9v1xhwwx1.cloudfront.net/image/upload/w_350,q_60,c_fill/oth/FunimationStoreFront/2315857/Japanese/2315857_Japanese_ShowKeyart_89b8db5b-20b3-42fa-a238-54a408831642.jpg', '0000-00-00 00:00:00'),
(22, 'The King\'s Avatar', 1, '0.0', 'na', 'Sem ', 'Plan to Watch', 'https://media.fstatic.com/WPF9WsUuPGov04Cl4Eq2CWp9KC4=/290x478/smart/media/movies/covers/2020/01/W020190821578467370481.jpg', '0000-00-00 00:00:00'),
(23, 'Genjitsu Shugi Yuusha', 1, '0.0', 'https://animesonline.cc/anime/genjitsu-shugi-yuusha-no-oukoku-saikenki/', 'AnimesOnline', 'Plan to Watch', 'https://animefire.net/img/animes/genjitsu-shugi-yuusha-no-oukoku-saikenki-large.webp?v=1', '0000-00-00 00:00:00'),
(24, 'I\'ve Been Killing Slimes For 300 Years And Maxed Out My Level', 1, '4.0', 'https://www.crunchyroll.com/pt-br/ive-been-killing-slimes-for-300-years-and-maxed-out-my-level', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire3/1f4453ef45efd68336de1e008366600b1618987477_full.jpg', '0000-00-00 00:00:00'),
(25, 'The aquatope on white sand', 1, '0.0', 'https://www.crunchyroll.com/pt-br/the-aquatope-on-white-sand', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire1/bd913e750dfc4f63bfc1b63d0452a3b21626143975_full.jpg', '0000-00-00 00:00:00'),
(26, 'Peach Boy Riverside', 1, '0.0', 'https://www.crunchyroll.com/pt-br/peach-boy-riverside', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire2/8456e119645ec10ff16ddf835b60c8691625134871_full.jpg', '0000-00-00 00:00:00'),
(27, 'Magimoji Rurumo', 1, '0.0', 'https://www.crunchyroll.com/pt-br/magimoji-rurumo', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire4/002993d33e4885a21359e4bffdef6ebe1405117867_full.jpg', '0000-00-00 00:00:00'),
(28, 'Code Geass', 1, '0.0', 'https://www.crunchyroll.com/pt-br/code-geass', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire1/64d502610c066e0424c248f8d1064a4f1617401090_full.jpg', '0000-00-00 00:00:00'),
(29, 'Girlfriend, Girlfriend', 1, '0.0', 'https://www.crunchyroll.com/pt-br/girlfriend-girlfriend', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire1/a297d6494c44210c56e67c15d075a9ea1625209510_full.jpg', '0000-00-00 00:00:00'),
(30, 'Seirei Gensouki: Spirit Chronicles', 1, '0.0', 'https://www.crunchyroll.com/pt-br/seirei-gensouki-spirit-chronicles', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire2/eddcd2dbb19fd0395fc414cc58e47c051625359588_full.jpg', '0000-00-00 00:00:00'),
(31, 'Seiren', 1, '0.0', 'https://www.crunchyroll.com/pt-br/seiren', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire3/6de10ecb62b191e4ab2ef0927eec2db81483710188_full.jpg', '0000-00-00 00:00:00'),
(32, 'Genshiken', 1, '0.0', 'https://www.crunchyroll.com/pt-br/genshiken-second-season', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire1/326cfb405a1f3285b92172ba39dacecd1373051662_full.jpg', '0000-00-00 00:00:00'),
(33, 'Parasyte', 1, '24.0', 'https://www.crunchyroll.com/pt-br/parasyte-the-maxim-', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/7d31dfaf49397a8cc1e490ccedea04e21422401583_full.jpg', '0000-00-00 00:00:00'),
(34, 'To Your Eternity', 1, '2.0', 'https://www.crunchyroll.com/pt-br/to-your-eternity', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire4/1f4445e3383ff8565d5514875d4e90831619462690_full.jpg', '0000-00-00 00:00:00'),
(35, 'DON\'T TOY WITH ME, MISS NAGATORO', 1, '12.0', 'https://www.crunchyroll.com/pt-br/dont-toy-with-me-miss-nagatoro', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/aba45cd799e37a0ad8e745a7a822d3561618005905_full.jpg', '0000-00-00 00:00:00'),
(36, 'Higehiro: After Being Rejected, I Shaved and Took in a High School Runaway ', 1, '13.0', 'https://www.crunchyroll.com/pt-br/higehiro-after-being-rejected-i-shaved-and-took-in-a-high-school-runaway', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/1739ef035b0dd4de70ad1f92c6ca18951617610429_full.jpg', '0000-00-00 00:00:00'),
(37, 'AHO-GIRL', 1, '12.0', 'https://www.crunchyroll.com/pt-br/aho-girl', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/38529679dfcb6e71142fd496087a7cfe1532553227_full.jpg', '0000-00-00 00:00:00'),
(38, 'Blue Exorcist', 2, '12.0', 'https://www.crunchyroll.com/pt-br/blue-exorcist', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/e0c8a39fa014e57a95ef3682a4cc61d31483733959_full.jpg', '0000-00-00 00:00:00'),
(39, 'My Little Monster', 1, '13.0', 'https://www.crunchyroll.com/pt-br/my-little-monster', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/53b073cb3b5876204ee79af4f6c451ee1349212607_full.jpg', '0000-00-00 00:00:00'),
(40, 'My Love Story!!', 1, '24.0', 'https://www.crunchyroll.com/pt-br/my-love-story', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/5d50aa025d0e1b17999ea760a3c7d9401428519808_full.jpg', '0000-00-00 00:00:00'),
(41, 'GATE', 1, '24.0', 'https://www.crunchyroll.com/pt-br/gate', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/08918192d87bc1718efd977c683187031452280865_full.jpg', '0000-00-00 00:00:00'),
(42, 'So I\'m a Spider, So What?', 1, '24.0', 'https://www.crunchyroll.com/pt-br/so-im-a-spider-so-what', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/3952cc8186b2e2a7ea11f8283ca0c8951617747268_full.jpg', '0000-00-00 00:00:00'),
(43, 'The Hidden Dungeon Only I Can Enter', 1, '1.0', 'https://www.crunchyroll.com/pt-br/the-hidden-dungeon-only-i-can-enter', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/03440af3a96a2aa889271b081cb0830a1610110002_full.jpg', '0000-00-00 00:00:00'),
(44, 'Armor Shop for Ladies & Gentlemen', 1, '2.0', 'https://www.crunchyroll.com/pt-br/armor-shop-for-ladies-gentlemen', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire1/3e0093fc3a8dcaf15b419f0764a0c71f1612394783_full.jpg', '0000-00-00 00:00:00'),
(45, 'Rascal Does Not Dream of Bunny Girl Senpai', 1, '3.0', 'https://www.crunchyroll.com/pt-br/rascal-does-not-dream-of-bunny-girl-senpai', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire2/9f8894f961340ccdd9464a53b14ca3bd1538572740_full.jpg', '0000-00-00 00:00:00'),
(47, 'Rent-a-Girlfriend', 1, '12.0', 'https://www.crunchyroll.com/pt-br/rent-a-girlfriend', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/48745446a6a648a022818879ee8820d71594363087_full.jpg', '0000-00-00 00:00:00'),
(48, 'Dragon Ball Super', 1, '131.0', 'https://www.crunchyroll.com/pt-br/dragon-ball-super', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/98ea4207e23a2ea3e3af39ad641d88001533322009_full.jpg', '0000-00-00 00:00:00'),
(49, 'Re:ZERO -Starting Life in Another World-', 1, '25.0', 'https://www.crunchyroll.com/pt-br/rezero-starting-life-in-another-world-', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire3/291c6c3b60857afabe46899f848079a41610403802_full.jpg', '0000-00-00 00:00:00'),
(50, 'Recovery of an MMO Junkie', 1, '10.0', 'crunchyroll.com/pt-br/recovery-of-an-mmo-junkie', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/f543f3ac08acc24bfebe28ac2e8ac9231507245129_full.jpg', '0000-00-00 00:00:00'),
(51, 'The Master of Ragnarok & Blesser of Einherjar', 1, '12.0', 'https://www.crunchyroll.com/pt-br/the-master-of-ragnarok-blesser-of-einherjar', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/cf2965b2c053e2edc9b8b24e4c190f381530980453_full.jpg', '0000-00-00 00:00:00'),
(52, 'My Teen Romantic Comedy SNAFU', 2, '13.0', 'https://www.crunchyroll.com/pt-br/my-teen-romantic-comedy-snafu', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire1/85e8511125fe1704bd2f2741e66c329b1594706247_full.jpg', '0000-00-00 00:00:00'),
(53, 'Ixion Saga DT', 1, '1.0', 'https://www.crunchyroll.com/pt-br/ixion-saga-dt', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire1/e47aa95a73f0b007bc1bece79ed05b981349127209_full.jpg', '0000-00-00 00:00:00'),
(54, 'The God of High School', 1, '8.0', 'https://www.crunchyroll.com/pt-br/the-god-of-high-school', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/7b0b1d0858c0aeaad7fbb264b91f634e1593645590_full.jpg', '0000-00-00 00:00:00'),
(55, 'Monster Girl Doctor', 1, '7.0', 'https://www.crunchyroll.com/pt-br/monster-girl-doctor', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/a5c0ebd2e72c71fe07a99341f90668f51593821617_full.jpg', '0000-00-00 00:00:00'),
(56, 'The Misfit of Demon King Academy', 1, '13.0', 'https://www.crunchyroll.com/pt-br/the-misfit-of-demon-king-academy', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/5e7c78eaa93f2aa5cf7ef7d98ed9a20b1593621817_full.jpg', '0000-00-00 00:00:00'),
(57, 'TONIKAWA: Over The Moon For You', 1, '11.0', 'https://www.crunchyroll.com/pt-br/tonikawa-over-the-moon-for-you', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire2/0a42e961f8a9bc91c76b801b676aacad1601564805_full.jpg', '0000-00-00 00:00:00'),
(58, 'I\'m Standing on a Million Lives', 1, '5.0', 'https://www.crunchyroll.com/pt-br/im-standing-on-a-million-lives', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire2/5334a6867c83b0104458be77de05cadc1626144101_full.jpg', '0000-00-00 00:00:00'),
(59, 'Servant x Service', 1, '1.0', 'https://www.crunchyroll.com/pt-br/servant-x-service', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/1b7b13d547ab551edd381dd21e52c5c31372367873_full.jpg', '0000-00-00 00:00:00'),
(60, 'The World is Still Beautiful', 1, '12.0', 'https://www.crunchyroll.com/pt-br/the-world-is-still-beautiful', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/f584f1a1c42a9d60d96b7b899c950a901396569315_full.jpg', '0000-00-00 00:00:00'),
(61, 'Fullmetal Alchemist: Brotherhood', 1, '4.0', 'https://www.crunchyroll.com/pt-br/fullmetal-alchemist-brotherhood', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/fabddf1040abbd18948b9aacc18011b31475523493_full.jpg', '0000-00-00 00:00:00'),
(62, 'HAIKYU!!', 3, '10.0', 'https://www.crunchyroll.com/pt-br/haikyu', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire4/a9c1f36167964b81371db1bde94087861580166621_full.jpg', '0000-00-00 00:00:00'),
(63, 'GOBLIN SLAYER', 1, '12.0', 'https://www.crunchyroll.com/pt-br/goblin-slayer', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/0b07451e9b20be6c024833a762a2e6a81538837010_full.jpg', '0000-00-00 00:00:00'),
(64, 'My Next Life as a Villainess: All Routes Lead to Doom!', 1, '12.0', 'https://www.crunchyroll.com/pt-br/my-next-life-as-a-villainess-all-routes-lead-to-doom', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire3/75317df259a576c74ea9af92ff38ee7f1626143663_full.jpg', '0000-00-00 00:00:00'),
(65, 'The Silver Guardian', 1, '4.0', 'https://www.crunchyroll.com/pt-br/the-silver-guardian', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/698978eb7949bd7ff17fc24bc5507ed01517265381_full.jpg', '0000-00-00 00:00:00'),
(66, 'Conception', 1, '2.0', 'https://www.crunchyroll.com/pt-br/conception', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/94eac17b8d3ebe2ee6bc350e1ef5d01c1542152655_full.jpg', '0000-00-00 00:00:00'),
(67, 'My Hero Academia', 4, '77.0', 'https://www.crunchyroll.com/pt-br/my-hero-academia', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire4/406916ead6c45d4ceb9eb7c4d018da611626348574_full.jpg', '0000-00-00 00:00:00'),
(68, 'The 8th son? Are you kidding me?', 1, '12.0', 'https://www.crunchyroll.com/pt-br/the-8th-son-are-you-kidding-me', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/6828977583742041eec444853e3cc71e1585803207_full.jpg', '0000-00-00 00:00:00'),
(69, 'Princess Connect! Re: Dive', 1, '2.0', 'https://www.crunchyroll.com/pt-br/princess-connect-re-dive', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/e33055712235d414110792b71817543f1586177976_full.jpg', '0000-00-00 00:00:00'),
(70, 'BLEACH', 10, '196.0', 'https://www.crunchyroll.com/pt-br/bleach#', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/52edb7a843abacb4ff0f642c8eda14401325114125_full.jpg', '0000-00-00 00:00:00'),
(71, 'Tsurune', 1, '14.0', 'https://www.crunchyroll.com/pt-br/tsurune', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/3f825fe329ff491605d9a9f5cb0fdb021540009872_full.jpg', '0000-00-00 00:00:00'),
(72, 'Tsugumomo', 1, '2.0', 'https://www.crunchyroll.com/pt-br/tsugumomo', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/84bbedd335ca8de11b13d85c535cc4691587432639_full.jpg', '0000-00-00 00:00:00'),
(73, 'DARLING in the FRANXX', 1, '24.0', 'https://www.crunchyroll.com/pt-br/darling-in-the-franxx', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/e8e3c09f8450c3d8a90a03e2198688f61515484130_full.jpg', '0000-00-00 00:00:00'),
(74, 'How Not to Summon a Demon Lord', 1, '12.0', 'https://www.crunchyroll.com/pt-br/how-not-to-summon-a-demon-lord', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/6734692bd4a980ef919224b99374b4b41618246723_full.jpg', '0000-00-00 00:00:00'),
(75, 'Mob Psycho 100', 2, '3.0', 'https://www.crunchyroll.com/pt-br/mob-psycho-100', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/24452933dd3f9282b32e49f0ce5fdc5b1546985597_full.jpg', '0000-00-00 00:00:00'),
(76, 'Extra Olympia Kyklos', 1, '8.0', 'https://www.crunchyroll.com/pt-br/extra-olympia-kyklos', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/4ffaa7bba47f3447860d153defb3dfc11587348654_full.jpg', '0000-00-00 00:00:00'),
(77, 'In/Spectre', 1, '12.0', 'https://www.crunchyroll.com/pt-br/inspectre', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/db091db10d71a19dc8ea5ba3e45513371582643783_full.jpg', '0000-00-00 00:00:00'),
(78, 'The Testament of Sister New Devil', 1, '1.0', 'https://www.crunchyroll.com/pt-br/the-testament-of-sister-new-devil', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/d76981caa7e3ef51ad73b5ae21c535081532553277_full.jpg', '0000-00-00 00:00:00'),
(79, 'Problem Children are Coming from Another World, aren\'t they?', 1, '1.0', 'https://www.crunchyroll.com/pt-br/problem-children-are-coming-from-another-world-arent-they', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/5e5a8d0f46487186e64687b046e0eb691357673527_full.jpg', '0000-00-00 00:00:00'),
(80, 'Attack on Titan', 2, '33.0', 'https://www.crunchyroll.com/pt-br/attack-on-titan', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire3/1ce8ca573ac440e55f9482f42eac5a251608611536_full.jpg', '0000-00-00 00:00:00'),
(81, 'Science Fell in Love, So I Tried to Prove it', 1, '12.0', 'https://www.crunchyroll.com/pt-br/science-fell-in-love-so-i-tried-to-prove-it', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/de45d731aa97d72a4c8915508d5596dc1579031094_full.jpg', '0000-00-00 00:00:00'),
(82, 'Senryu Girl', 1, '1.0', 'https://www.crunchyroll.com/pt-br/senryu-girl', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/f40bce3e7b77f3d2797fd0dca53f0f541555109944_full.jpg', '0000-00-00 00:00:00'),
(83, 'Orange', 1, '13.0', 'https://www.crunchyroll.com/pt-br/orange', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/4052cb0ee15e76c3795319b0a08c1ecb1467466859_full.jpg', '0000-00-00 00:00:00'),
(84, 'Toradora!', 1, '25.0', 'https://www.crunchyroll.com/pt-br/toradora', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/0c40842ee6753a33e292ab258eb901171406587958_full.jpg', '0000-00-00 00:00:00'),
(85, 'Death March to the Parallel World Rhapsody', 1, '12.0', 'https://www.crunchyroll.com/pt-br/death-march-to-the-parallel-world-rhapsody', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/3b63ca8429c5bed4b645000eab5208921515627980_full.jpg', '0000-00-00 00:00:00'),
(86, 'In Another World With My Smartphone', 1, '12.0', 'https://www.crunchyroll.com/pt-br/in-another-world-with-my-smartphone', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/d13ced1c661c61c8f70ad6e33245c46d1522875200_full.jpg', '0000-00-00 00:00:00'),
(87, 'Saga of Tanya the Evil', 1, '7.0', 'https://www.crunchyroll.com/pt-br/saga-of-tanya-the-evil', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire1/b6cb5d2061b72df2e04e6b9678acfa631483619277_full.jpg', '0000-00-00 00:00:00'),
(88, 'Overlord', 3, '13.0', 'https://www.crunchyroll.com/pt-br/overlord', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/9e1a4846885dc3994414b608f80490781531935326_full.jpg', '0000-00-00 00:00:00'),
(89, 'The World God Only Knows', 2, '4.0', 'https://www.crunchyroll.com/pt-br/the-world-god-only-knows', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/4462386a1d99869f81bcc2cf3effc7671375831867_full.jpg', '0000-00-00 00:00:00'),
(90, 'Bladedance of Elementalers', 1, '3.0', 'https://www.crunchyroll.com/pt-br/bladedance-of-elementalers', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/ae33dd128ae23ad1be9d65438f00141c1405097747_full.jpg', '0000-00-00 00:00:00'),
(91, ' Chivalry of a Failed Knight', 1, '12.0', 'https://www.crunchyroll.com/pt-br/chivalry-of-a-failed-knight', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/2e0676fb1eebf156fe96ffb29b1681891543532662_full.jpg', '0000-00-00 00:00:00'),
(92, 'RADIANT', 1, '11.0', 'https://www.crunchyroll.com/pt-br/radiant', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/e75203df3d9fbee76d042cb172994f1d1571271082_full.jpg', '0000-00-00 00:00:00'),
(93, 'High School Prodigies Have It Easy Even In Another World', 1, '12.0', 'https://www.crunchyroll.com/pt-br/high-school-prodigies-have-it-easy-even-in-another-world', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/ebc3cee0d3d66bc61c79c6a3bf4f3d2b1569965179_full.jpg', '0000-00-00 00:00:00'),
(94, 'ASSASSINS PRIDE', 1, '12.0', 'https://www.crunchyroll.com/pt-br/assassins-pride', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/cc63e8a94f2028ff91b9c451e023e10a1570487820_full.jpg', '0000-00-00 00:00:00'),
(95, 'Alderamin on the Sky', 1, '7.0', 'https://www.crunchyroll.com/pt-br/alderamin-on-the-sky', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/2a560a83c5ba6eefb87200bc4a03ddad1467930221_full.jpg', '0000-00-00 00:00:00'),
(96, 'Didn\'t I say to make my abilities average in the next life', 1, '4.0', 'https://www.crunchyroll.com/pt-br/didnt-i-say-to-make-my-abilities-average-in-the-next-life', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/89f652de5eeea32c66b1ce8b8ed321fd1570055637_full.jpg', '0000-00-00 00:00:00'),
(97, 'Welcome to Demon School! Iruma-kun', 2, '0.0', 'https://www.crunchyroll.com/pt-br/welcome-to-demon-school-iruma-kun', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire2/fd4ec1b58bc75f9fdc5c658121fa6e951618988280_full.jpg', '0000-00-00 00:00:00'),
(98, 'Food Wars! Shokugeki no Soma', 5, '0.0', 'https://www.crunchyroll.com/pt-br/food-wars-shokugeki-no-soma', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire2/9f9d3ec824444991d22082852cdc3c741586972680_full.jpg', '0000-00-00 00:00:00'),
(99, 'Cells at Work!', 1, '2.0', 'https://www.crunchyroll.com/pt-br/cells-at-work', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/0ad3b1cdabf02ae580154446114030dc1617401273_full.jpg', '0000-00-00 00:00:00'),
(100, 'Eromanga Sensei', 1, '12.0', 'https://www.crunchyroll.com/pt-br/eromanga-sensei', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/6fd1a6719108981ae2d04125f0768b3d1491614015_full.jpg', '0000-00-00 00:00:00'),
(101, 'KONOSUBA -God\'s blessing on this wonderful world!', 2, '11.0', 'https://www.crunchyroll.com/pt-br/konosuba-gods-blessing-on-this-wonderful-world', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/7ba81b1709a87f5ca8930229b10029a61484092235_full.jpg', '0000-00-00 00:00:00'),
(102, 'Ascendance of a Bookworm', 2, '14.5', 'https://www.crunchyroll.com/pt-br/ascendance-of-a-bookworm', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire2/a8b461c1521ac654ada101b64b0f04fc1586302236_full.jpg', '0000-00-00 00:00:00'),
(103, 'GRANBLUE FANTASY: The Animation', 1, '2.0', 'https://www.crunchyroll.com/pt-br/granblue-fantasy-the-animation', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire1/9a5a627d7b7e3ab596c5ad7ee90a3b6b1574294753_full.jpg', '0000-00-00 00:00:00'),
(104, 'Monthly Girls\' Nozaki-kun', 1, '12.0', 'https://www.crunchyroll.com/pt-br/monthly-girls-nozaki-kun', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/49060cb7e02dd3d338273d2530e4888f1404663731_full.jpg', '0000-00-00 00:00:00'),
(105, 'Tanaka-kun is Always Listless', 1, '12.0', 'https://www.crunchyroll.com/pt-br/tanaka-kun-is-always-listless', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/83f81ae9ac9b3ff32f03e259cbce3d741460065974_full.jpg', '0000-00-00 00:00:00'),
(106, 'ORESUKI Are you the only one who loves me?', 1, '12.0', 'https://www.crunchyroll.com/pt-br/oresuki-are-you-the-only-one-who-loves-me', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire2/d207626e8baa71938e43965f2fdf9b841569978229_full.jpg', '0000-00-00 00:00:00'),
(107, 'Kuroko\'s Basketball', 3, '62.0', 'https://www.crunchyroll.com/pt-br/kurokos-basketball', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire1/be611b65eb36149005789b740efc7a361333664528_full.jpg', '0000-00-00 00:00:00'),
(108, 'Isekai Cheat Magician', 1, '13.0', 'https://www.crunchyroll.com/pt-br/isekai-cheat-magician', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/27ee54e7e9ec05447cc2d971c99fbe9b1562751577_full.jpg', '0000-00-00 00:00:00'),
(109, 'We Never Learn: BOKUBEN', 2, '13.0', 'https://www.crunchyroll.com/pt-br/we-never-learn-bokuben', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire1/81d7ab94ac21c379f1bda02b727d5f581570827991_full.jpg', '0000-00-00 00:00:00'),
(110, 'The Rising of the Shield Hero', 1, '25.0', 'https://www.crunchyroll.com/pt-br/the-rising-of-the-shield-hero', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/25627becf63b169d19af7efee6122e791555537428_full.jpg', '0000-00-00 00:00:00'),
(111, 'Demon Slayer: Kimetsu no Yaiba', 1, '26.0', 'https://www.crunchyroll.com/pt-br/demon-slayer-kimetsu-no-yaiba', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/f1fe5c7a43cb2f38f4152a58f89479821554508873_full.jpg', '0000-00-00 00:00:00'),
(112, 'KAGUYA-SAMA: LOVE IS WAR', 1, '12.0', 'https://www.crunchyroll.com/pt-br/kaguya-sama-love-is-war', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/faa002ac9675024246d94d4b8f4133561547263949_full.jpg', '0000-00-00 00:00:00'),
(113, 'Why the hell are you here, Teacher!?', 1, '12.0', 'https://www.crunchyroll.com/pt-br/why-the-hell-are-you-here-teacher', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/7da2ccb8ecf6c5d58474907977f403c01556041780_full.jpg', '0000-00-00 00:00:00'),
(114, 'ReLIFE', 1, '11.0', 'https://www.crunchyroll.com/pt-br/relife', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/06f2c7030f794acf0bfdd34e5735bd191465708255_full.jpg', '0000-00-00 00:00:00'),
(115, 'Black Clover', 1, '68.0', 'https://www.crunchyroll.com/pt-br/black-clover', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire3/501db6b69ced79e79a556b20cbdb9c5d1609784936_full.jpg', '0000-00-00 00:00:00'),
(116, 'The Ancient Magus\' Bride', 1, '24.0', 'https://www.crunchyroll.com/pt-br/the-ancient-magus-bride', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/fcd25c135faf173a4d8a67a82b3400b71507240910_full.jpg', '0000-00-00 00:00:00'),
(117, 'Monster Strike', 1, '4.0', 'https://www.crunchyroll.com/pt-br/monster-strike', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/77cbe4a2108ff933e6bf1c03870c56ac1575329793_full.jpg', '0000-00-00 00:00:00'),
(118, 'Grimms Notes the Animation', 1, '5.0', 'https://www.crunchyroll.com/pt-br/grimms-notes-the-animation', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/a959095513d0997e9be355a22b0ee7891547256783_full.jpg', '0000-00-00 00:00:00'),
(119, 'BORUTO: NARUTO NEXT GENERATIONS', 1, '106.0', 'https://www.crunchyroll.com/pt-br/boruto-naruto-next-generations', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/08f56c89d059aa0fc6e12eb38e42008f1625652299_full.jpg', '0000-00-00 00:00:00'),
(120, 'One Piece', 1, '891.0', 'https://www.crunchyroll.com/pt-br/one-piece#', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire4/8056a82e973dde98ebb82abd39dc69731564519729_full.jpg', '0000-00-00 00:00:00'),
(121, 'Hozuki\'s Coolheadedness', 1, '13.0', 'https://www.crunchyroll.com/pt-br/hozukis-coolheadedness', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire4/33c2be96128afbceefb25c670737ffa51388692549_full.jpg', '0000-00-00 00:00:00'),
(122, 'Chain Chronicle - The Light of Haecceitas', 1, '3.0', 'https://www.crunchyroll.com/pt-br/chain-chronicle-the-light-of-haecceitas-', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire3/659fdc090d5d00fccc3e7662647192f81481323284_full.jpg', '0000-00-00 00:00:00'),
(123, 'Classroom of the Elite', 1, '12.0', 'https://www.crunchyroll.com/pt-br/classroom-of-the-elite', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/3f44a6efc0ab35d49cfa1a9344f7f8841499831762_full.jpg', '0000-00-00 00:00:00'),
(124, 'A Sister\'s All You Need.', 1, '12.0', 'https://www.crunchyroll.com/pt-br/a-sisters-all-you-need', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire2/280373cfd5d6c270ca614b21b883362c1507939705_full.jpg', '0000-00-00 00:00:00'),
(125, 'GAMERS!', 1, '12.0', 'https://www.crunchyroll.com/pt-br/gamers', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/8f61d08e713fc25ad54cf12079836b5f1499856494_full.jpg', '0000-00-00 00:00:00'),
(126, 'Tsukigakirei', 1, '12.0', 'https://www.crunchyroll.com/pt-br/tsukigakirei', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/af334aeaa3a5401d604d7333a40d9ccb1493161743_full.jpg', '0000-00-00 00:00:00'),
(127, 'Masamune-kun\'s Revenge', 1, '12.0', 'https://www.crunchyroll.com/pt-br/masamune-kuns-revenge', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/e2ee07328be2ad91eb1325a4310799091532553339_full.jpg', '0000-00-00 00:00:00'),
(128, 'The Quintessential Quintuplets', 2, '0.0', 'https://www.crunchyroll.com/pt-br/the-quintessential-quintuplets', 'Crunchyroll', 'Plan to Watch', 'https://img1.ak.crunchyroll.com/i/spire2/8a6279fc503fe64b451a0e63afc658281610403545_full.jpg', '0000-00-00 00:00:00'),
(129, 'Domestic Girlfriend', 1, '12.0', 'https://www.crunchyroll.com/pt-br/domestic-girlfriend', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire4/e9d06c4b49db6a61f50d15d22056001f1549334227_full.jpg', '0000-00-00 00:00:00'),
(130, 'The Asterisk War', 1, '8.0', 'https://www.crunchyroll.com/pt-br/the-asterisk-war', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire2/533750c9078ac64f7606abdbb5e62a5e1444872589_full.jpg', '0000-00-00 00:00:00'),
(131, 'Sword Art Online', 3, '1.0', 'https://www.crunchyroll.com/pt-br/sword-art-online', 'Crunchyroll', 'Dropped', 'https://img1.ak.crunchyroll.com/i/spire4/7d3070bc3f5e32a8187ceea7445013301594706429_full.jpg', '0000-00-00 00:00:00'),
(132, 'Is It Wrong to Try to Pick Up Girls in a Dungeon?', 3, '3.0', 'https://www.crunchyroll.com/pt-br/is-it-wrong-to-try-to-pick-up-girls-in-a-dungeon', 'Crunchyroll', 'Watching', 'https://img1.ak.crunchyroll.com/i/spire1/9ebfc0a37f1eb2c8aa2a9117dbab43c91603933134_full.jpg', '0000-00-00 00:00:00'),
(133, 'TRINITY SEVEN', 1, '15.0', 'https://www.crunchyroll.com/pt-br/trinity-seven', 'Crunchyroll', 'Completed', 'https://img1.ak.crunchyroll.com/i/spire3/7130dc59da1202ef24dc99766f8189461603757017_full.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mangas`
--

CREATE TABLE `mangas` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `capitulo` decimal(10,1) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `nlink` varchar(255) COLLATE utf8_bin NOT NULL,
  `stats` varchar(255) COLLATE utf8_bin NOT NULL,
  `linkImg` varchar(255) COLLATE utf8_bin NOT NULL,
  `data_atualizacao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `mangas`
--

INSERT INTO `mangas` (`id`, `nome`, `capitulo`, `link`, `nlink`, `stats`, `linkImg`, `data_atualizacao`) VALUES
(2, 'Tensei shitara Slime Datta Ken', '84.0', 'https://mangalivre.net/manga/tensei-shitara-slime-datta-ken/2692', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/R2GDqy3vepgidsmLdCUIMw/2692/5f8b34dbc2deeexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(3, 'Kumo Desu ga, Nani ka?', '51.4', 'https://mangadex.org/title/17709/kumo-desu-ga-nani-ka', 'MangaDex', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/FTMStaZGKDfdywmupEQHEQ/3107/external_cover.jpg?quality=100', '2021-07-26 17:33:25'),
(4, 'The Beginning After The End', '113.0', 'https://mangalivre.net/manga/the-beginning-after-the-end/7403', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/Vt5uH52R0IOX39w7bORFUQ/7403/6020cdc2aacb3external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(5, 'World Teacher: Isekaishiki Kyouiku Agent', '29.0', 'https://mangalivre.net/manga/world-teacher-isekaishiki-kyouiku-agent/6238', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/OToA8P7V9DLMcdUSO0Ahig/6238/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(6, 'Isekai de Cheat Skill wo te ni Shita ore wa', '9.0', 'https://mangalivre.net/manga/isekai-de-cheat-skill-wo-te-ni-shita-ore-wa-genjitsu-sekai-wo-mo-musou-suru-level-up-wa-jinsei-wo-kaeta/9107', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/fAGwhaaqFrIOrVrIFeRsYg/9107/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(7, 'Rakudai Kenja no Gakuin Musou', '9.0', 'https://mangalivre.net/manga/rakudai-kenja-no-gakuin-musou-nidome-no-tensei-s-rank-cheat-majutsushi-boukenroku/9171', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/lq31NGhWFVZ0c-WfJPRaEg/9171/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(8, 'Keizoku wa Maryoku nari: Hazure Mahou de ', '12.0', 'https://mangalivre.net/manga/keizoku-wa-maryoku-nari-hazure-mahou-de-isekai-musou/9555', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/eWXd7cSH0BGqSMw6Im3Nbg/9555/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(9, 'Shijou Saikyou Orc-san no Tanoshii Tanetsuke', '30.0', 'https://mangalivre.net/manga/shijou-saikyou-orc-san-no-tanoshii-tanetsuke-harem-zukuri/9528', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/z2wu2zsM3Ce0-OeujSI01w/9528/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(10, 'Isekai Kenja no Tensei Musou', '0.0', 'https://mangalivre.net/manga/isekai-kenja-no-tensei-musou-geemu-no-chishiki-de-isekai-saikyou/11065', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/3ut7BgOgpr8i2HqtxZwuSg/11065/5f96da67c4748external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(11, 'Fuguushoku ', '3.1', 'https://mangalivre.net/manga/fuguushoku-kanteishi-ga-jitsu-wa-saikyou-datta-naraku-de-kitaeta-saikyou-no-shingan-de-musou-suru/11710', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/ArU-MS6uxkU1wVc5rQSzQA/11710/60004a543d3abexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(12, 'Konjiki no Word Master', '47.0', 'https://mangalivre.net/manga/konjiki-no-word-master-yuusha-yonin-ni-makikomareta-unique-cheat/2116', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/FGOrfTfLEIssRJTLxBwofA/2116/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(13, 'Botsuraku Yotei nano de, Kaji Shokunin wo Mezasu', '12.0', 'https://mangalivre.net/manga/botsuraku-yotei-nano-de-kaji-shokunin-wo-mezasu/6824', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/fvPB_L3WCaLEntA7Ad7QvA/6824/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(14, 'Maou no Ore ga Dorei Elf wo Yome ni Shitanda ga', '32.0', 'https://mangalivre.net/manga/maou-no-ore-ga-dorei-elf-wo-yome-ni-shitanda-ga-dou-medereba-ii/7732', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/8SoxecysPRTgr0Oqs_JtGQ/7732/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(15, 'Hazure Skill Kage ga Usui o Motsu Guild Shokuin ga', '15.0', 'https://mangalivre.net/manga/hazure-skill-kage-ga-usui-o-motsu-guild-shokuin-ga-jitsuha-densetsu-no-ansatsusha/8557', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/osF1wNOzgrvFiNiKKX8TJg/8557/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(16, 'Hazure Skill \"Mapping\" wo Te ni Shita Shounen wa Saikyou', '1.0', 'https://mangalivre.net/manga/hazure-skill-mapping-wo-te-ni-shita-shounen-wa-saikyou/8467', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/0ErOwP2cV_v2dNQvmixVOg/8467/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(17, 'Hazure Waku no Joutai Ijou Skill de Saikyou ni Natta Ore ga Subete wo Juurin Suru made', '14.0', 'https://mangalivre.net/manga/hazure-waku-no-joutai-ijou-skill-de-saikyou-ni-natta-ore-ga-subete-wo-juurin-suru-made/8518', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/UFdq5DhV5ZTEulsUcwz2aA/8518/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(18, 'Zennin Ossan, Umareka Wattara SSS Rank', '18.0', 'https://mangalivre.net/manga/zennin-ossan-umareka-wattara-sss-rank-jinsei-ga-kakutei-shita/9544', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/XUhLRzHmS0Iawv4ktqYnJg/9544/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(19, 'Trash of the Count’s Family', '32.0', 'https://mangalivre.net/manga/trash-of-the-counts-family/10686', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/UFsgwbYu42j2rvYxpF7icA/10686/6021927435d36external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(20, '4 Cut Hero', '2.0', 'https://mangalivre.net/manga/4-cut-hero/2133', 'MangaLivre', 'Dropped', 'https://static3.mangalivre.net/cdnwp3/capas/ukinmvmSyuo3O3CES-ENsw/2133/image_4_cut_hero_large_1.jpg?quality=100', '2021-07-26 17:23:23'),
(21, 'Ijiranaide, Nagatoro-san', '0.0', 'https://mangalivre.net/manga/ijiranaide-nagatoro-san/6938', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/F-brGXk3Ur8LCvLgHXgd5A/6938/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(22, 'TenSura Nikki Tensei Shitara Slime Datta Ken', '1.1', 'https://mangalivre.net/manga/tensura-nikki-tensei-shitara-slime-datta-ken/7791', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/XaiRNyHfKPueDcNCV4R6Zg/7791/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(23, 'Koko wa Ore ni Makasete Saki ni Ike to', '9.1', 'https://mangalivre.net/manga/koko-wa-ore-ni-makasete-saki-ni-ike-to-itte-kara-10-nen-ga-tattara-densetsu-ni-natteita-/8756', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/LHvX6o3yTtlsHYe2lML_Eg/8756/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(24, 'Kaiko sareta Ankoku Heishi (30-dai) no Slow na Second Life', '1.0', 'https://mangalivre.net/manga/kaiko-sareta-ankoku-heishi-30-dai-no-slow-na-second-life/9695', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/RKqWELAI1N7X-YFedDoTaA/9695/6069c1652f58aexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(25, 'Isekai de Tochi wo Katte Noujou wo ', '6.5', 'https://mangalivre.net/manga/isekai-de-tochi-wo-katte-noujou-wo-tsukurou/9598', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/7t6AYgf0hQVH4AW_VqJfgg/9598/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(27, 'Fuguushoku \"Kajishi\" dakedo Saikyou desu: Kizukeba Nandemo', '1.0', 'https://mangalivre.net/manga/fuguushoku-kajishi-dakedo-saikyou-desu-kizukeba-nandemo-tsukureru-you-ni-natteita-otoko-no-nonbiri-slow-life/11121', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/bwkCnxaReM9n8AiMsu7Fwg/11121/603ce56314fb6external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(28, 'Fuguushoku to Baka ni Saremashita ga, Jissai', '6.0', 'https://mangalivre.net/manga/fuguushoku-to-baka-ni-saremashita-ga-jissai-wa-sorehodo-waruku-arimasen/10746', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/xUwOzKzx54mLoSECOBY3cg/10746/5f58d8eeb1a94external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(29, 'World Customize Creator', '5.0', 'https://mangalivre.net/manga/world-customize-creator/2563', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/XFUAMc9Z09OLPI4tb7dRnQ/2563/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(30, 'Souzai Saishuka no Isekai Ryokouki', '24.0', 'https://mangalivre.net/manga/souzai-saishuka-no-isekai-ryokouki/7032', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/G2D4sG6XjZCD-cv_TSmzJQ/7032/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(31, 'Dungeon Majesty', '36.0', 'https://mangalivre.net/manga/dungeon-majesty/7833', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/MK6wA4HV-PvZrmW2-y37Cg/7833/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(32, 'Hitoribocchi no Isekai Kouryaku', '80.0', 'https://mangalivre.net/manga/hitoribocchi-no-isekai-kouryaku/8778', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/8_sVLKtftccm6A9x7iFjkg/8778/6092bfa608363external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(33, 'Level 1 No Saikyou Kenja ~noroi De Sai Kakyuu Mahou', '1.0', 'https://mangalivre.net/manga/level-1-no-saikyou-kenja-noroi-de-sai-kakyuu-mahou-shika-tsukaenaikedo-kami-no-kanchigai-de-mugen-no-maryoku-o-te-ni-ire-saikyou-ni/9600', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/dMEStVpjZEagazSDQt8KRg/9600/60538d620eaafexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(34, 'Isekai Majutsushi wa Mahou wo Tonaenai', '5.0', 'https://mangalivre.net/manga/isekai-majutsushi-wa-mahou-wo-tonaenai/10770', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/2D8ac_CtakWwO-v7m31EmQ/10770/5f5cd9d9dff35external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(35, 'Isekai Tensei Soudouki', '2.0', 'https://mangalivre.net/manga/isekai-tensei-soudouki/3595', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/41N6QzuGeG4qbqmWQqdk5w/3595/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(36, 'Maou ni Natta node, Dungeon Tsukutte ', '25.0', 'https://mangalivre.net/manga/maou-ni-natta-node-dungeon-tsukutte-jingai-musume-to-honobono-suru/7428', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/YY2sDtWS5yLTclZ4bpbHwg/7428/5f8b2a30733d4external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(37, 'TenSura: Mamono no Kuni no Arukikata', '25.0', 'https://mangalivre.net/manga/tensei-shitara-slime-datta-ken-mamono-no-kuni-no-arukikata/8040', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/KVgLwqb9j_GL-JFP8bv0uA/8040/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(38, 'Shijou Saikyou no Mahou Kenshi', '22.0', 'https://mangalivre.net/manga/shijou-saikyou-no-mahou-kenshi-f-rank-boukensha-ni-tensei-suru-kensei-to-matei-2-tsu-no-zense-wo-motta-otoko-no-eiyuutan/9069', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/0mjv1jMW1PzjteQPk17V0g/9069/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(39, 'Rettougan No Tensei Majutsushi: Shiitage Rareta Saikyou', '5.0', 'https://mangalivre.net/manga/rettougan-no-tensei-majutsushi-shiitage-rareta-saikyou-no-minashigo-ga-isekai-de-musou-suru/10003', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/1n4b5JMlDtEKIoCCgzV_1g/10003/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(40, 'Tensei shitara Slime Datta Ken Ibun: Makokugurashi no Trinity', '1.0', 'https://mangalivre.net/manga/tensei-shitara-slime-datta-ken-ibun-makokugurashi-no-trinity/11415', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/qn8SylNURWPzwiH86PvFhA/11415/5fcfddd40b527external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(41, 'Kenja no Mago', '42.0', 'https://mangalivre.net/manga/kenja-no-mago/3902', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/Oa1oidkFmjRVjVIGoe-H8Q/3902/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(42, 'Kujibiki Tokushou: Musou Harem-ken', '17.1', 'https://mangalivre.net/manga/kujibiki-tokushou-musou-harem-ken/8179', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/dozqQRrPcR0w2cLSC5dg1A/8179/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(43, 'Kakkou no Iinazuke', '38.0', 'https://mangalivre.net/manga/kakkou-no-iinazuke/9079', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/KcLHtAloRMEg3tojDjWskA/9079/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(44, 'Umarekawatta Kensei Wa Raku wo Shitai', '7.0', 'https://mangalivre.net/manga/umarekawatta-kensei-wa-raku-wo-shitai/10215', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/toPIE4yJAPVi1gl6eq8zOQ/10215/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(45, 'Isekai Yurutto Survival Seikatsu: Gakkou no Minna to Isekai no Mujintou ', '1.0', 'https://mangalivre.net/manga/isekai-yurutto-survival-seikatsu-gakkou-no-minna-to-isekai-no-mujintou-ni-tenishitakedo-ore-dake-rakushou-desu/11459', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/sqXws9AXmZfPTv-CGwpVOw/11459/5fd63758e298eexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(46, 'Jaryuu Tensei', '20.0', 'https://mangalivre.net/manga/jaryuu-tensei/4409', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/yibwjcTzHvm6N2wvzrfn1A/4409/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(47, 'Kuro no Maou', '0.0', 'https://mangalivre.net/manga/kuro-no-maou/7583', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/ITvtGEd-JTEI4RVfqE9tTQ/7583/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(48, 'Kage no Jitsuryokusha ni Naritakute!', '30.0', 'https://mangalivre.net/manga/kage-no-jitsuryokusha-ni-naritakute/7927', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/qLIkAUIRwBiD0gaoMDDIGA/7927/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(49, 'Reborn 80,000 years', '121.0', 'https://mangalivre.net/manga/reborn-80-000-years/8941', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/IDnKpUKQaR2NJDHpegGFVg/8941/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(50, 'Sousou no Frieren', '1.0', 'https://mangalivre.net/manga/sousou-no-frieren/9920', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/YISknpOQlQj-XMooMnjr0A/9920/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(51, 'Tensei Goblin dakedo Shitsumon Aru?', '19.0', 'https://mangalivre.net/manga/tensei-goblin-dakedo-shitsumon-aru/11290', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/qvvQC3AXG7akDhgROz23xA/11290/5fbbc6accea45external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(52, 'Tensei Kizoku no Isekai Boukenroku: Jichou wo Shiranai Kamigami no Shito', '26.0', 'https://mangalivre.net/manga/tensei-kizoku-no-isekai-boukenroku-jichou-wo-shiranai-kamigami-no-shito/7450', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/3twm7LiO_jxET4rGvSQGng/7450/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(53, '+C: Sword and Cornett', '16.0', 'https://mangalivre.net/manga/c-sword-and-cornett/2915', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/l5xmSjaw4CAtJIJDuo0ERg/2915/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(54, 'A-Rank Boukensha no Slow Life', '12.0', 'https://mangalivre.net/manga/a-rank-boukensha-no-slow-life/9365', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/lIMXllbVjxYq-V3ZDXplnA/9365/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(55, 'Boushoku no Berserk: Ore dake Level to Iu Gainen wo Toppa suru the Comic', '27.0', 'https://mangalivre.net/manga/boushoku-no-berserk-ore-dake-level-to-iu-gainen-wo-toppa-suru-the-comic/7164', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/ipk7oEP75XbXSR0zNl01fg/7164/5f8af32b86304external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(56, 'Dungeon Reset', '1.0', 'https://mangalivre.net/manga/dungeon-reset/9375', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/gjFLhr_UaKg4-b3KEEbLNw/9375/6025b1a27880eexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(57, 'FFF-Class Trashero', '15.0', 'https://mangalivre.net/manga/fff-class-trashero/8913', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/xSc69cR7XKKDgm-SGwFCcg/8913/603b2b7cbc65dexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(58, 'Fukushuu wo Koinegau Saikyou Yuusha wa, Yami no Chikara de Senmetsu Musou suru', '33.0', 'https://mangalivre.net/manga/fukushuu-wo-koinegau-saikyou-yuusha-wa-yami-no-chikara-de-senmetsu-musou-suru/7917', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/XRV2wpDgNnpkAyjNG-haNg/7917/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(59, 'Gaikotsu Kishi-sama, Tadaima Isekai e Odekakechuu', '16.0', 'https://mangalivre.net/manga/gaikotsu-kishi-sama-tadaima-isekai-e-odekakechuu/5181', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/XHM-Lz7Mys_SPu-gxtAQTw/5181/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(60, 'Garbage Brave: Isekai ni Shoukan Sare Suterareta Yuusha no Fukushuu Monogatari', '8.0', 'https://mangalivre.net/manga/garbage-brave-isekai-ni-shoukan-sare-suterareta-yuusha-no-fukushuu-monogatari/8904', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/jOtfyYznbasqnioRoKbRTw/8904/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(61, 'enkai Level 1 kara no Nariagari: Saijaku Level no Ore ga Isekai Saikyou ni Naru made', '7.0', 'https://mangalivre.net/manga/genkai-level-1-kara-no-nariagari-saijaku-level-no-ore-ga-isekai-saikyou-ni-naru-made/9676', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/MRni2AOyGSQ-EdM-15j9AQ/9676/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(62, 'Gun-Ota ga Mahou Sekai ni Tensei shitara, Gendai Heiki de Guntai Harem wo Tsukucchaimashita!?', '1.0', 'https://mangalivre.net/manga/gun-ota-ga-mahou-sekai-ni-tensei-shitara-gendai-heiki-de-guntai-harem-wo-tsukucchaimashita/7640', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/YqhaWv-TtDsKvkkBm8yyXQ/7640/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(63, 'Hyouken no Majutsushi ga Sekai wo Suberu: Sekai Saikyou no Majutsushi de Aru Shounen', '8.0', 'https://mangalivre.net/manga/hyouken-no-majutsushi-ga-sekai-wo-suberu-sekai-saikyou-no-majutsushi-de-aru-shounen-wa-majutsu-gakuin-ni-nyuugaku-suru/11060', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/Bf3Q3MaXd0XVyxyY2c5n4g/11060/601dd48c3290aexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(64, 'Jitsu wa Ore, Saikyou deshita?', '14.0', 'https://mangalivre.net/manga/jitsu-wa-ore-saikyou-deshita/8255', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/CdQZZUN81xcm9M7EFmDGcA/8255/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(65, 'Kami-tachi ni Hirowareta Otoko', '1.0', 'https://mangalivre.net/manga/kami-tachi-ni-hirowareta-otoko/7128', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/wTkMaT9JWJFi2sWdvbS7nw/7128/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(66, 'Konjiki no Word Master: Yuusha Yonin ni Makikomareta Unique Cheat', '47.0', 'https://mangalivre.net/manga/konjiki-no-word-master-yuusha-yonin-ni-makikomareta-unique-cheat/2116', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/FGOrfTfLEIssRJTLxBwofA/2116/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(67, 'Konyaku Haki Sareta Reijo Wo Hirotta Ore Ga, Ikenai Koto Wo Oshiekomu Oishi Mono Wo', '9.5', 'https://mangalivre.net/manga/konyaku-haki-sareta-reijo-wo-hirotta-ore-ga-ikenai-koto-wo-oshiekomu-oishi-mono-wo-tabesasete-oshare-wo-sasete-sekaichi-shiawasena-shojo-ni-produce/11125', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/VRpmam8ckw-cK-5wmwA1iw/11125/5fa0889142cbcexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(68, 'Kuitsume Youhei no Gensou Kitan', '1.0', 'https://mangalivre.net/manga/kuitsume-youhei-no-gensou-kitan/7610', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/EK0TeVIGrhsGIvXp6A7tXw/7610/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(69, 'Lv999 no Murabito', '16.0', 'https://mangalivre.net/manga/lv999-no-murabito/6405', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/YU_HYkbg8zNiShG4LPvLBw/6405/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(70, 'Maou-sama ni Shoukan sareta kedo Kotoba ga Tsuujinai', '17.0', 'https://mangalivre.net/manga/maou-sama-ni-shoukan-sareta-kedo-kotoba-ga-tsuujinai-/9668', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/wDwcyQ8t0JsGodrA8N8YyQ/9668/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(71, 'Moto Sekai 1-i no Sub-Chara Ikusei Nikki: Hai Player, Isekai wo Kouryakuchuu!', '21.0', 'https://mangalivre.net/manga/moto-sekai-1-i-no-sub-chara-ikusei-nikki-hai-player-isekai-wo-kouryakuchuu/7902', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/M1I5QZOgbH3Sip_vXzfXGw/7902/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(72, 'NEET dakedo Hello Work ni Ittara Isekai ni Tsuretekareta', '24.0', 'https://mangalivre.net/manga/neet-dakedo-hello-work-ni-ittara-isekai-ni-tsuretekareta/7218', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/ouoCSkczGiYny94ty7t5AQ/7218/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(73, 'Ossan Boukensha Kane no Zenkou', '18.0', 'https://mangalivre.net/manga/ossan-boukensha-kane-no-zenkou/9875', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/X6DUzn_zGsEM7Mo90lD0Ig/9875/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(74, 'Rakudai Kishi no Cavalry', '1.0', 'https://mangalivre.net/manga/rakudai-kishi-no-cavalry/1910', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/sz9MzmCICsO0te_cLMKSsQ/1910/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(75, 'S-Rank Boukensha de aru Ore no Musume-tachi wa Juudo no Father Con deshita', '5.0', 'https://mangalivre.net/manga/s-rank-boukensha-de-aru-ore-no-musume-tachi-wa-juudo-no-father-con-deshita/9818', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/rgWxJHMVzOuz8PlKIOfHWA/9818/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(76, 'Saikyou Mahoushi no Inton Keikaku: The Alternative', '1.0', 'https://mangalivre.net/manga/saikyou-mahoushi-no-inton-keikaku-the-alternative/10548', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/t8FsliPQcvyN2YiTSIn58A/10548/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(77, 'Seichou Cheat de Nandemo Dekiruyou ni Natta ga, Mushoku dake wa Yamerarenaiyou desu', '1.0', 'https://mangalivre.net/manga/seichou-cheat-de-nandemo-dekiruyou-ni-natta-ga-mushoku-dake-wa-yamerarenaiyou-desu/8415', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/n2MW6ocg7YRt8cMrdiURPg/8415/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(78, 'Sekai no Owari no Encore', '13.0', 'https://mangalivre.net/manga/sekai-no-owari-no-encore/2636', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/acy4pWE74qe_8Ry8QcT7sA/2636/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(79, 'Sekai Saikyou no Assassin, isekai kizoku ni tensei suru', '10.3', 'https://mangadex.org/title/b49fd121-19bf-4344-a8e1-d1be7ca04e08', 'MangaDex', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/foCyxPHvTa5pwsr1AULN4w/7909/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(80, 'Senken no Majutsushi to Yobareta Kenshi', '15.0', 'https://mangalivre.net/manga/senken-no-majutsushi-to-yobareta-kenshi/8902', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/GzyhsfDbrWCWhPGC6rhsfQ/8902/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(81, 'Shi ni Modori, Subete wo Sukuu Tame ni Saikyou He to Itaru', '24.0', 'https://mangalivre.net/manga/shi-ni-modori-subete-wo-sukuu-tame-ni-saikyou-he-to-itaru/8909', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/A7yu1MVGPWokzaW7dyDBcA/8909/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(82, 'Sokushi Cheat ga Saikyou Sugite, Isekai no Yatsura ga Marude Aite ni Naranai n desu ga. -ΑΩ-', '1.0', 'https://mangalivre.net/manga/sokushi-cheat-ga-saikyou-sugite-isekai-no-yatsura-ga-marude-aite-ni-naranai-n-desu-ga---/7876', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/pPboNBgp1XDDikqfwaBmSA/7876/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(83, 'Solo Leveling', '28.0', 'https://mangalivre.net/manga/solo-leveling/7702', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/IUQzYHNu_qeq5mosQv6wLw/7702/602ef3532b765external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(84, 'Sono Mono. Nochi ni...: Futsuu no Otoko, Saikyou no Michi wo Yuku.', '12.0', 'https://mangalivre.net/manga/sono-mono-nochi-ni-futsuu-no-otoko-saikyou-no-michi-wo-yuku-/6119', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/qu3pTvg98ZpWegGthhZudw/6119/5f689ef36145aexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(85, 'Tensei Kizoku, Kantei Skill de Nariagaru: Jakushou Ryouchi wo Uketsuida node, Yuushuu na', '35.0', 'https://mangalivre.net/manga/tensei-kizoku-kantei-skill-de-nariagaru-jakushou-ryouchi-wo-uketsuida-node-yuushuu-na-jinzai-wo-fuyashiteitara-saikyou-ryouchi-ni-natteta/10933', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/r5HBJY-bZUZcKGB-NHFdtQ/10933/60988ca0565dbexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(86, 'Tensei Shitara dai Nana Ouji dattanode, Kimamani Majutsu o Kiwamemasu', '3.0', 'https://mangalivre.net/manga/tensei-shitara-dai-nana-ouji-dattanode-kimamani-majutsu-o-kiwamemasu/10849', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/WY3WiDFKb0cZRLpbL0A3Gw/10849/5f6b77c5ef660external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(87, 'Tensei Shitara Ore ga Heroine de Aitsu ga Yuusha Datta', '1.0', 'https://mangalivre.net/manga/tensei-shitara-ore-ga-heroine-de-aitsu-ga-yuusha-datta/10379', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/nmG4zh8zt2COVG5c-OD0fQ/10379/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(88, 'Saikyou no Shuzoku ga Ningen Datta Ken', '38.0', 'https://mangalivre.net/manga/saikyou-no-shuzoku-ga-ningen-datta-ken/7608', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/eSC-7jEfLsJBUV9VdBcFxg/7608/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(89, 'Cheat Skill Shisha Sosei ga Kakusei Shite, Inishie no Maougun o Fukkatsu Sasete', '8.0', 'https://mangalivre.net/manga/cheat-skill-shisha-sosei-ga-kakusei-shite-inishie-no-maougun-o-fukkatsu-sasete-shimaimashita-daremo-shinasenai-saikyou-healer/10250', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/AogGID8HAHw-NNxPTqLL3w/10250/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(90, 'Ouritsu Mahou Gakuen no Saikasei: Slum Agari no Saikyou Mahoushi, Kizoku darake no Gakuen de Musou suru', '11.0', 'https://mangalivre.net/manga/ouritsu-mahou-gakuen-no-saikasei-slum-agari-no-saikyou-mahoushi-kizoku-darake-no-gakuen-de-musou-suru/12018', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/WQRUhHO28TZr26qD_OqU8g/12018/602bc14079a3cexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(91, 'Yuukyuu no Gusha Asley no, Kenja no Susume: to, Pochi no Daibouken', '1.3', 'https://mangalivre.net/manga/yuukyuu-no-gusha-asley-no-kenja-no-susume-to-pochi-no-daibouken/8233', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/g9SuyshNMa1eukcNW1Q-tQ/8233/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(92, 'Kuro no Souzou Shoukanshi', '6.0', 'https://mangalivre.net/manga/kuro-no-souzou-shoukanshi/6664', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/2Y6OGrlcy8fcXPKs7RFWAA/6664/607d86f3e7f3eexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(93, 'Shikkakumon no Saikyou Kenja', '2.0', 'https://mangalivre.net/manga/shikkakumon-no-saikyou-kenja/6614', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/fcYMuW4gqcCLjdue8yL1iA/6614/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(94, 'Hachi-nan tte, Sore wa Nai deshou!', '42.0', 'https://mangalivre.net/manga/hachi-nan-tte-sore-wa-nai-deshou/4774', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/xySJ0yCvBLaU2hZJhWW71A/4774/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(95, 'Genkai Level 1 kara no Nariagari: Saijaku Level no Ore ga Isekai Saikyou ni Naru made', '7.0', 'https://mangalivre.net/manga/genkai-level-1-kara-no-nariagari-saijaku-level-no-ore-ga-isekai-saikyou-ni-naru-made/9676', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/MRni2AOyGSQ-EdM-15j9AQ/9676/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(96, 'Rettoujin no Maken Tsukai Skill Board wo Kushi shite Saikyou ni Itaru', '17.0', 'https://mangalivre.net/manga/rettoujin-no-maken-tsukai-skill-board-wo-kushi-shite-saikyou-ni-itaru/10375', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/_s1ZoxbgotADrMdtagXDdw/10375/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(97, 'Legend', '12.0', 'https://mangalivre.net/manga/legend/6793', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/r0T5C-eShhIJoC9q-xxFMw/6793/capa.jpg?quality=100', '2021-07-26 17:23:23'),
(98, 'Koibito wo netorare, Yuusha party kara tsuihou sa retakedo', '3.2', 'https://mangalivre.net/manga/koibito-wo-netorare-yuusha-party-kara-tsuihou-sa-retakedo-ex-skill---kotei-dameeji---ni-mezamete-muteki-no-sonzai-ni-saa-fukushuu-o-hajimeyou-/10623', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/--aBGJOAkh1xlZedDubECA/10623/60234afce4e43external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(99, 'Kuro no Shoukanshi', '61.0', 'https://mangalivre.net/manga/kuro-no-shoukanshi/7023', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/cRQqqddGTKkmGF8uRJoWsg/7023/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(100, 'Beginner\'s Test for Infinite Power', '1.0', 'https://mangalivre.net/manga/beginners-test-for-infinite-power/10135', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/G5Y-Sz-TPzwppQj5yYwa3A/10135/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(101, 'Rettougan no Tensei Majutsushi: Shiitagerareta Motoyuusha wa Mirai no Sekai wo Yoyuu de Ikinuku', '30.0', 'https://mangalivre.net/manga/rettougan-no-tensei-majutsushi-shiitagerareta-motoyuusha-wa-mirai-no-sekai-wo-yoyuu-de-ikinuku/8272', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/aOcbhEwcNx3AxOigl_ytlA/8272/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(102, 'Tou no Kanri wo Shitemiyou', '37.0', 'https://mangalivre.net/manga/tou-no-kanri-wo-shitemiyou/7339', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/B6vylHs4pxSQXSwjg6V6yw/7339/5fd90e185af7bexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(103, 'Kage no Kyuutei Majutsushi', '1.0', 'https://mangalivre.net/manga/kage-no-kyuutei-majutsushi/10921', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/uDiUUywsP5wVyxMrFV9eOQ/10921/5f78a18736154external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(104, 'Chichi wa Eiyuu, Haha wa Seirei, Musume no Watashi wa Tenseisha', '25.0', 'https://mangalivre.net/manga/chichi-wa-eiyuu-haha-wa-seirei-musume-no-watashi-wa-tenseisha-/8200', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/2bFHqryeRZ3cDe4jCkUmRA/8200/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(105, 'The New Gate', '70.0', 'https://mangalivre.net/manga/the-new-gate/2560', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/nv1ioj_av7fl-Ye0l0goVw/2560/external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(106, 'Kimi wa Shinenai Haikaburi no Majo', '1.1', 'https://mangalivre.net/manga/kimi-wa-shinenai-haikaburi-no-majo/11742', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/8LiJyKOGcSdm3FOU1BUEww/11742/6008216e00cdcexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(107, 'Kubo-san wa Boku (Mobu) wo Yurusanai', '1.0', 'https://mangalivre.net/manga/kubo-san-wa-boku-mobu-wo-yurusanai/8903', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/jgvF3NRRUa7QeGmNr7oDRw/8903/6023d6a44c8acexternal_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(108, 'Tenkuu no Shiro wo Moratta no de Isekai de Tanoshiku Asobitai', '3.0', 'https://mangalivre.net/manga/tenkuu-no-shiro-wo-moratta-no-de-isekai-de-tanoshiku-asobitai/9148', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/U8kC7YoWOCnKGvWbgIf09g/9148/60415257b94c7external_cover.jpg?quality=100', '2021-07-26 17:23:23'),
(109, 'Shinjiteita Nakama-tachi ni Dungeon Okuchi', '0.0', 'https://mangalivre.net/manga/shinjiteita-nakama-tachi-ni-dungeon-okuchi-de-korosarekaketa-ga-gift-mugen-gacha-de-level-9999-no-nakama-tachi-wo-te-ni-irete-moto-party-member-to-sekai-ni-fukushuu-zamaa-shimasu/12887', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/e9M3jHI3H-86MwVZbHuTYw/12887/60bb76b37b027external_cover.jpg', '2021-07-26 17:23:23'),
(110, 'Isekai Mokushiroku Mynoghra: Hametsu no Bunmei de Hajimeru Sekai Seifuku', '11.1', 'https://mangalivre.net/manga/isekai-mokushiroku-mynoghra-hametsu-no-bunmei-de-hajimeru-sekai-seifuku/9981', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/dqj2AYnwIFjFVBC1CmDB1w/9981/60e48c5a82dbcexternal_cover.jpg', '2021-07-26 17:23:23'),
(111, 'Tsuki ga Michibiku Isekai Douchuu', '42.0', 'https://mangalivre.net/manga/tsuki-ga-michibiku-isekai-douchuu/3446', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/HeuBLkPF4zSgplYwTbvTyA/3446/external_cover.jpg', '2021-07-26 17:23:23'),
(112, 'Lv2 kara Cheat datta Motoyuusha Kouho no Mattari Isekai Life', '24.5', 'https://mangalivre.net/manga/lv2-kara-cheat-datta-motoyuusha-kouho-no-mattari-isekai-life/7965', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/Km3Fo6XeMgd0QalrBMh_Rg/7965/5f8b292f937d8external_cover.jpg', '2021-07-26 17:23:23'),
(114, 'Cheat Kusushi no Slow Life: Isekai ni Tsukurou Drugstore', '0.0', 'https://mangalivre.net/manga/cheat-kusushi-no-slow-life-isekai-ni-tsukurou-drugstore/7916', 'MangaLivre', 'Plan to Read', 'https://static3.mangalivre.net/cdnwp3/capas/I0awaZv3i-QRRCcyU0X7WQ/7916/external_cover.jpg', '2021-07-26 17:23:23'),
(115, 'Mushoku Tensei: Isekai Ittara Honki Dasu', '73.0', 'https://mangalivre.net/manga/mushoku-tensei-isekai-ittara-honki-dasu/2551', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/BCfoyNosFN_RmuUHJWAg_A/2551/607c482344f2dexternal_cover.jpg', '2021-07-26 17:23:23'),
(116, 'Eternal First Son-In-Law', '100.0', 'https://mangalivre.net/manga/eternal-first-son-in-law/12187', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/TzkI5nvo84sIb6ln7rZmxA/12187/6042d50b82c56external_cover.jpg', '2021-07-26 17:23:23'),
(117, 'Yondome wa Iya na Shizokusei Majutsushi', '25.0', 'https://mangalivre.net/manga/yondome-wa-iya-na-shizokusei-majutsushi/7378', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/r-Wvpyj5B2pCSHJLpyebMQ/7378/6016de0a20fcaexternal_cover.jpg', '2021-07-26 17:23:23'),
(118, 'Genjitsu Shugi Yuusha no Oukoku Saikenki', '8.0', 'https://mangalivre.net/manga/genjitsu-shugi-yuusha-no-oukoku-saikenki/6669', 'MangaLivre', 'Reading', 'https://static3.mangalivre.net/cdnwp3/capas/4iNvfq1_sxHehH3qzSZhpw/6669/external_cover.jpg', '2021-07-26 17:36:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `temporada` int(255) NOT NULL,
  `episodio` decimal(10,1) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `nlink` varchar(255) COLLATE utf8_bin NOT NULL,
  `stats` varchar(255) COLLATE utf8_bin NOT NULL,
  `linkImg` varchar(255) COLLATE utf8_bin NOT NULL,
  `data_atualizacao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`id`, `nome`, `temporada`, `episodio`, `link`, `nlink`, `stats`, `linkImg`, `data_atualizacao`) VALUES
(3, 'A maldição de Oak Island', 1, '2.0', 'https://www.oakisland.tk/', 'Oakisland', 'Watching', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSu4Cq9HaxRgsfoqYUFWwgFfFTspt4AfKkEP1Z-3PKcUdQgLH28', '2021-07-26 17:23:38');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de tabela `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

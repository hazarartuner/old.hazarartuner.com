# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.11)
# Database: pxltrtle_hazarartuner
# Generation Time: 2016-07-23 15:49:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table blog_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_commentmeta`;

CREATE TABLE `blog_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;

INSERT INTO `blog_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Mr WordPress','','http://wordpress.org/','','2013-12-08 00:42:14','2013-12-08 00:42:14','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0),
	(2,1,'LutherJaf','yourmail@gmail.com','http://fermandia.biz/?i=356','128.72.117.186','2014-01-05 22:07:27','2014-01-05 22:07:27','Для того что бы начать играть и зарабатывать, вам нужно зарегистрироваться в игре и купить животных для своей фермы. \r\nНа выбор 5 животных: курица, свинья, коза, овца и корова. На вашей ферме может быть любое количество животных. \r\nКаждое животное дает определенную продукцию, которую можно продать на рынке и получить за неё золотые монеты. \r\nЗолотые монеты можно вывести на ваш реальный счет PAYEER... \r\n \r\nПреимущества нашей игры: \r\n \r\n- Пополнение и выплаты на все популярные платежные системы; \r\n- Автоматическое накопление и выкуп продукции системой; \r\n- Никаких ограничений на срок жизни ваших животных, купленные животные остаются у вас навсегда; \r\n- Прозрачность статистики резерва, гарантирует вам постоянные выплаты; \r\n- Доброжелательная техническая поддержка 16 часов в день, 7 дней в неделю. \r\n \r\nРегистрация: http://fermandia.biz/?i=356',0,'0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.12 Safari/535.11','',0,0),
	(3,1,'Sandra','bgnihmyofs@gmail.com','http://2hams.com/51a','151.237.180.11','2014-01-07 21:37:46','2014-01-07 21:37:46','You need targeted traffic to your website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://2hams.com/51n',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(4,1,'WilliamTire','larruopwes@gmail.com','http://compticagasen.ru','91.200.14.96','2014-01-27 19:34:13','2014-01-27 19:34:13','Nice post. I be taught something more challenging on totally different blogs everyday. It will at all times be stimulating to read content material from different writers and follow a little bit something from their store. I’d favor to make use of some with the content material on my weblog whether you don’t mind. Natually I’ll offer you a link on your web blog. Thanks for sharing.',0,'0','Opera/9.80 (Windows NT 5.1; Edition Yx) Presto/2.12.388 Version/12.10','',0,0),
	(5,1,'Martinsn','martinMuh@gmail.com','http://bridegirl.ru/','5.164.194.18','2014-01-28 09:00:26','2014-01-28 09:00:26','What necessary phrase... super, magnificent idea',0,'0','Mozilla/5.0 (Windows NT 5.2; rv:12.0) Gecko/20100101 Firefox/12.0','',0,0),
	(6,1,'alexahofman','karinalashkevich@gmail.com','http://myxango.kz','178.137.165.248','2014-01-29 04:18:00','2014-01-29 04:18:00','<a href=\"http://linuxworld.kz\" rel=\"nofollow\">Магазин запчастей для сотовых телефонов</a>',0,'0','Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.11','',0,0),
	(7,1,'Luigi Fulk','3037Prunier@gmail.com','http://onblacocac.ru','62.122.73.145','2014-02-02 21:50:44','2014-02-02 21:50:44','If you\'re still on the fence: grab your favorite earphones, head down to a Best Buy and ask to plug them into a Zune then an iPod and see which one sounds better to you, and which interface makes you smile more. Then you\'ll know which is right for you.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.50','',0,0),
	(8,1,'elenavoenkova','tarassafonov9@gmail.com','http://omsk.classclinic.ru/proktologiya/gemorroi','134.249.53.142','2014-02-14 08:25:58','2014-02-14 08:25:58','<a href=\"http://omsk.classclinic.ru/proktologiya/gemorroi\" rel=\"nofollow\">геморрой</a>',0,'0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2','',0,0),
	(9,1,'Goldenst','lazarevatyu@yandex.com','http://golden-birds.biz/','95.25.54.180','2014-03-07 22:25:57','2014-03-07 22:25:57','Golden Birds - экономический симулятор в реальном времени с выводом средств. Зарабатывай на своих яйцах каждые 10 минут! \r\nРегистрация: http://golden-birds.biz/ \r\n \r\n1. Купите птиц, они будут нести вам яйца. \r\n2. Яйца будут накапливаться на складе, собирайте их. \r\n3. Продавайте яйца и получайте за них серебро. \r\n4. Обменивайте серебро на реальные деньги, либо покупайте больше птиц, чтобы они приносили вам еще больше прибыли! \r\n \r\nПримущества игры: \r\n1. Резервный фонд \r\n2. Окупаемость \r\n3. Выгодные условия \r\n4. Стабильность \r\n5. Круглосуточная поддержка \r\n6. Прозрачность системы \r\n \r\nТекущие акции: \r\nДо 12.03.2014 бонус при любом пополнении +200% \r\n2 синих птицы, при пополнении свыше 500 руб. \r\n1 красная птица, при пополнении свыше 1500 руб. \r\n \r\nЕжедневный бонус: \r\nСумма бонуса генерируется случайно от 10 до 100 серебра. \r\n \r\nПартнерская программа: \r\nПриглашайте в игру своих друзей и знакомых, Вы будете получать 30% от каждого пополнения баланса приглашенным Вами \r\nчеловеком. Доход ни чем не ограничен. Даже несколько приглашенных могут принести вам более 100 000 серебра. \r\n \r\nКонкурсы рефералов: \r\nКонкурс рефералов № 8 с общим призовым фондом 45000 руб. \r\n \r\nСтарт конкурса: 10.02.2014 в 18:58:07 \r\nЗавершение:     11.03.2014 в 18:58:02 \r\n \r\nПризовые места: \r\n1 - 30000 RUB \r\n2 - 10000 RUB \r\n3 - 5000 RUB \r\n \r\nЦены на птиц и их окупаемость: \r\nПтица----------------Стоимость------------Доход---------Окупаемость \r\nЗелёная----------------1 руб----------0,01 руб\\день--------59 дней \r\nЖёлтая----------------10 руб----------0,16 руб\\день--------59 дней \r\nКоричневая------------50 руб----------0,88 руб\\день--------56 дней \r\nСиняя----------------250 руб----------4,60 руб\\день--------54 дней \r\nКрасная-------------1000 руб---------23,16 руб\\день--------43 дней \r\n \r\nСтатистика проекта: \r\nВсего участников:    100081 \r\nНовых за 24 часа:    2021 \r\nВыплачено всего:     5041902.34 руб. \r\nРезерв проекта:      10990404.23 руб. \r\nПроекту пошел:       143 - й день \r\n \r\nтоп игр с выводом денег отзывы \r\nпроверенные игры с выводом денег отзывы \r\nфермандия игра с выводом денег отзывы \r\nигра рыбалка с выводом денег отзывы \r\nигра с выводом денег простоквашино отзывы',0,'0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4','',0,0),
	(10,1,'Pharaohsst','marysmirnofff@yandex.com','http://empire-pharaohs.com/','95.27.152.221','2014-03-10 06:51:50','2014-03-10 06:51:50','Empire Of The Pharaohs - интеллектуально-ролевая онлайн игра с возможностью зарабатывать деньги. \r\n \r\nДля тех кто играет в экономические игры и не только. Регистрация: http://empire-pharaohs.com/ \r\n \r\nВсем привет, рад представить Вам свежую экономическую игру с выводом средств \"Империя Фараонов\". \r\nПлюсы: отсутствие платежных баллов. Вывод средств ничем не ограничен. Авто-выплаты на PAYEER. \r\n \r\nИмперия Фараонов - экономический онлайн симулятор с выводом средств. Окунитесь в атмосферу древнего Египта, постройте собственную Империю Фараонов, которая будет давать Вам прибыль. \r\n \r\nВ данном симуляторе Вам предстоит управлять Империей Фараонов. Покупайте рабов, ремесленников, воинов, жрецов и фараонов. Каждый персонаж вырабатывает определенную продукцию, которую можно обменять и выручить за нее золото. Чем он значимее, тем больше продукции он дает. \r\n \r\nЗолото можно продать на денежные средства и вывести из игры на свой электронный кошелек. Можно покупать безконечное количество персонажей. Все персонажи и их продукция не портятся и никуда не пропадают. Сбор продукции происходит без потерь и ограничений по срокам. Авто ввод в игру и вывод средств на Ваш счет. Низкая минималка. \r\n \r\nМожно играть без вкладов. При регистрации мы зачисляем всем Раба в подарок. Ежедневные бонусы, лотерея, конкурсы. Так же предусмотрена реферальная программа. Приглашайте в игру своих близких и друзей. За каждое пополнение баланса партнерами, мы будем начислять Вам 20% от суммы их пополнения. Ваша Империя будет приносить прибыль всегда. \r\n \r\nСтатистика проекта: \r\nВсего жителей:	          3580 чел. \r\nНовых за сутки:	          92 чел. \r\nПродали золота на:	  6922.34 RUB \r\nКупили золота на:         73119.44 RUB \r\nВозраст империи:	  37-й день \r\n \r\nЦены и расчет дохода: \r\nПерсонаж------------Стоимость---------Прибыль------Окупаемость \r\nРаб------------------30 руб--------0,24 руб.день------125 дней \r\nРемесленник----------150 руб-------1,44 руб.день------104 дней \r\nВоин-----------------300 руб-------3,60 руб.день-------83 дней \r\nЖрец-----------------600 руб-------8,64 руб.день-------69 дней \r\nФараон--------------1200 руб-------19,44 руб.день------61 дней \r\n \r\nНе однократно уже получены выплаты. Всех кого заинтересовало мое письмо, могут зарегистрироваться на проекте \r\nи посмотреть все своими глазами, а при желании, начать играть. Всем приятной игры и хорошего настроения. \r\n \r\nигры на деньги онлайн бильярд отзывы \r\nинтеллектуальные игры на деньги онлайн отзывы \r\nигра онлайн 1000 на деньги отзывы \r\nскрипт онлайн игр на деньги отзывы \r\nигры с выводом денег отзывы',0,'0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.12 (KHTML, like Gecko) Maxthon/3.0 Chrome/18.0.966.0 Safari/535.12','',0,0),
	(11,1,'vdxgdaiufx','igoxko@jsdbzv.com','http://urumfbyisyxm.com/','93.182.158.83','2014-03-23 21:29:18','2014-03-23 21:29:18','Uankvp  <a href=\"http://yurqdwqmygly.com/\" rel=\"nofollow\">yurqdwqmygly</a>, [url=http://mzyivlftgbfb.com/]mzyivlftgbfb[/url], [link=http://hkgpzgcefbxs.com/]hkgpzgcefbxs[/link], http://hanpnxkynwba.com/',0,'0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11','',0,0),
	(12,1,'Ardagax','vodoxlyobov-kapiton@mail.ru','http://a.women-ru.ru/salat-vetka-sakuri-recept.phpСалатветкасакурырецепт','5.167.11.104','2014-03-28 18:10:03','2014-03-28 18:10:03','И не говорил ни того, и другого. В следующем году студенты требуют отмены устава 1884 г.  \r\nhttp://youbuyclothes.ru/nedforspid-mashini.php Недфорспид машины http://a.guamcosmetic.ru/oshibka-po740-kia.php Ошибка po740 киа http://a.mustelacosmetic.ru/koshelek-dlya-melochi-i-melochey-milaya-shtuchka.php Кошелек для мелочи и мелочей милая штучка http://a.guamcosmetic.ru/slovcov-petr-stihi.php Словцов петр стихи http://a.fitness-clubs.ru/skachat-terrariya-12-russkaya-versiya.php Скачать террария 1.2 русская версия  \r\nКаждый проезжавший по улице автомобиль словно проезжал по его сломанным позвонкам. Когда я шел к ней, в воздухе мелькнуло что-то белое и мягко упало на пол.',0,'0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36','',0,0),
	(13,1,'Susan','oywnzjkog@gmail.com','http://derPir.at/gm1','23.81.201.74','2014-03-29 02:39:58','2014-03-29 02:39:58','You need targeted traffic to your website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://monurl.ca/85kk',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(14,1,'FishTism','galaluda@yandex.com','http://fish-empire.net/','128.72.133.123','2014-04-07 10:00:20','2014-04-07 10:00:20','FISH-EMPIRE.NET - новая игра с выводом денег. Запуск игры 31.03.2014. \r\n \r\nДля ознакомления перейдите по ссылке: http://fish-empire.net/ \r\n \r\nНаши Качества: Прозрачная статистика - Вы всегда будете осведомлены о настоящим состоянии золота в системе. На проекте не содержится никаких запретов для продажи золота. \r\n \r\nИдеальное сотрудничество - Вы можете во много раз увеличить свои вложения. Мы предлагаем от 30% до 100% ежемесячно. \r\n \r\nУвеличение капитала проекта - за счет влива средств на рекламу и приглашения в проект новых игроков - игроками, работающих по партнерской програме. Оперативная помощь на приветном форуме. Не забываемая среда и ещё множество различных качеств. \r\n \r\nОб Игре: FISH-EMPIRE.NET - новая игра с выводом денег. Войдите в среду экономической онлайн игры и возведите свою Рыбную Империю, которая всегда будет приносить Вам реальные средства. \r\n \r\nВ этой игре Вам предстоит покупать разных рыб. Каждая рыба дает икру, которую можно выручить на золото. Золото можно продать за реальные деньги и вывести из проекта на свои электронные кошельки. \r\n \r\nЛюбые рыбы дают разное количество икры, чем они дороже, тем икры мечут больше. Вы можете преобретать любое их количество, у рыб нет срока жизни, они никуда не денутся и будут метать Вам икру стабильно. Сбор икры осуществляется без потерь и ограничений по времени. \r\n \r\nНачни Играть: Начать играть можно без затрат. При регистрации мы дарим Всем Щуку. Ежедневные бонусы, лотерея, конкурсы, акции. Так же существует партнерская програма. Приглашайте в систему своих знакомых и близких. \r\n \r\nЗа каждое пополнение счета партнерами, Вы будете получать 30% от суммы их вложений. Авто -  ввод в систему и вывод средств на Ваш электронный кошелек. Низкая минималка на Payeer, всего 3 RUB. Ваша Рыбная Империя будет приносить деньги каждый день. \r\n \r\nКурс игрового инвентаря: 100 гр. икры = 1 гр. золота. 100 гр. золота = 1 RUB. \r\n \r\nРыбы-------------------Стоимость----------------Доход в день-----------Окупаемость \r\nЩука--------------------90 RUB--------------------1 RUB--------------------90 дней \r\nМинтай-----------------270 RUB------------------3,6 RUB--------------------75 дней \r\nЛосось-----------------810 RUB------------------13,5 RUB-------------------60 дней \r\nОсетр------------------2430 RUB-----------------54 RUB---------------------45 дней \r\nБелуга-----------------7290 RUB-----------------243 RUB--------------------30 дней',0,'0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36','',0,0),
	(15,1,'FishEn','innsolowiewa@yandex.com','http://fish-empire.net/','95.25.16.143','2014-04-17 15:41:50','2014-04-17 15:41:50','FISHEMPIRE - азартная игра с выводом денег. Запуск системы 31.03.2014. \r\n \r\nДля обзора кликните по ссылке: http://fish-empire.net/ \r\n \r\nНаши Особенности: Доступная статистика - Вы всегда будете осведомлены о текущем положении золота в системе. На проекте не имеется никаких запретов для продажи золота. \r\n \r\nИдеальные условия - Вы можете многократно приумножить свои вложения. Мы обещаем от 30% до 100% в месяц. \r\n \r\nУвеличение капитала игры - за счет влива средств на рекламу и приглашения в игру новых участников - игроками, участвующих по партнерской програме. Быстрая поддержка на приветном форуме. Не забываемая атмосфера и ещё куча других качеств. \r\n \r\nО проекте: FISHEMPIRE - азартная игра с выводом денег. Погрузитесь в атмосферу экономической онлайн игры и создайте свою Рыбную Империю, которая всегда будет приносить Вам реальные средства. \r\n \r\nВ этой игре Вам нужно покупать всяких рыб. Каждая рыба производит икру, которую можно продать на золото. Золото можно продать за реальные деньги и снять из игры на свои электронные счета. \r\n \r\nЛюбые рыбы производят разное кол-во икры, чем они дороже, тем икры мечут больше. Вы можете покупать любое их количество, у рыб нет срока жизни, они никуда не денутся и будут давать Вам икру всегда. Сбор икры осуществляется без потерь и лимитов по срокам. \r\n \r\nНачни Играть: Начать играть можно без инвестиций. При регистрации мы дарим Всем Щуку. Ежедневные бонусы, лотерея, конкурсы, акции. Так же существует реферальная програма. Приводите в игру своих знакомых и близких. \r\n \r\nЗа каждое пополнение баланса партнерами, Вы будете получать 30% от суммы их пополнения. Автоматический ввод в систему и вывод средств на Ваш электронный счет. Мизерная минималка на Payeer, всего 3 RUB. Ваша Рыбная Империя будет давать профит всегда. \r\n \r\nКурс игрового инвентаря: 100 гр. икры = 1 гр. золота. 100 гр. золота = 1 RUB. \r\n \r\nРыбы-------------------Стоимость----------------Доход в день-----------Окупаемость \r\nЩука--------------------90 RUB--------------------1 RUB--------------------90 дней \r\nМинтай-----------------270 RUB------------------3,6 RUB--------------------75 дней \r\nЛосось-----------------810 RUB------------------13,5 RUB-------------------60 дней \r\nОсетр------------------2430 RUB-----------------54 RUB---------------------45 дней \r\nБелуга-----------------7290 RUB-----------------243 RUB--------------------30 дней',0,'0','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36','',0,0),
	(16,1,'Susan','elhnsx@gmail.com','http://pay4by.cc/rnwh','23.81.201.89','2014-05-01 11:09:58','2014-05-01 11:09:58','This is a comment to the webmaster. Your website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your traffic to your website: http://pay4by.cc/rnwh They offer 1,000 free visitors during their free trial period and I managed to get over 30,000 visitors per month using their services, you could also get lot more targeted traffic than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(17,1,'Sandra','ziftxim@gmail.com','http://10x.at/5i4w','23.81.201.87','2014-05-05 07:13:05','2014-05-05 07:13:05','We have decided to open our POWERFUL and PRIVATE website traffic system to the public for just a few days! You can sign up for our UP SCALE network with a free trial as we get started with the public\'s orders. Imagine how your bank account will look when your website gets the traffic it needs. Visit us today: http://ccgcafe.com/yourls/1294',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(18,1,'ASontoobots','qftfjqv@xmlfour.ru','http://tolyatti.russia-cars.ru/','83.166.232.13','2014-05-06 10:21:29','2014-05-06 10:21:29','Да и лицо Кумухара Манулы превратилось в нормальную человеческую физиономию, очень удивленную и чуть-чуть испуганную. Помолвленные женщины остаются одни. Поэтому я мог спокойно смотреть кино. Я действительно собираюсь официально вступить во владение наследством — из уважения к воле покойного, но это не значит, что я намерен выгонять вас из дома. Это важный и значимый цикл, необходимый природе.  И ни одна из ревизий не вспомнила, что в апреле нет тридцать первого числа — пока кто-то не настучал из зависти.\r\n  а также Авторынок - Автоэвакуатор, Тольятти - <a href=\"http://tolyatti.russia-cars.ru/catalog/10/\" / rel=\"nofollow\">Автосервис - Фрактал, Авторынок Тольятти</a> Авторынок - Автогазозаправки(АГЗС), Тольятти - <a href=\"http://tolyatti.russia-cars.ru/catalog/788/\" / rel=\"nofollow\">АГЗС - АГО, Авторынок Тольятти</a> Авторынок - Прокат автотранспорта, Тольятти - <a href=\"http://tolyatti.russia-cars.ru/catalog/889/\" / rel=\"nofollow\">Агентство свадебных услуг - Омела, Авторынок Тольятти</a> Авторынок - Автозапчасти, Тольятти - <a href=\"http://tolyatti.russia-cars.ru/catalog/303/\" / rel=\"nofollow\">Автомагазин - СтиВ, Авторынок Тольятти</a> Авторынок - Автозапчасти, Тольятти - <a href=\"http://tolyatti.russia-cars.ru/catalog/305/\" / rel=\"nofollow\">ИП Дорошин Н.В. - Магазин автотоваров, Авторынок Тольятти</a>   Можно не сомневаться, что и внутри у них все так же причудливо — иной обмен веществ, иная система пищеварения, возможно, даже иная клеточная структура. К сундуку была приклеена желтая полоска бумаги с вашими инициалами, написанными вашим почерком, но вы понятия не имеете, кто это сделал. И голос был какой-то чужой, ненормальный, да и голова была как бы отдельно. Гэйба, отработавшего на нефтяных буровых установках в открытом море, прислали в Девон на смену коллеге — тот покинул проект по состоянию здоровья. Я предполагаю, вы захотите спросить меня, где я была в тот вечер, когда он умер?',0,'0','Mozilla/5.0 (Windows NT 5.1; rv:26.0) Gecko/20100101 Firefox/26.0','',0,0),
	(19,1,'Swayna','nmhatlzzypt@gmail.com','http://url.lathouwers.ws/6','223.84.98.235','2014-05-11 19:46:09','2014-05-11 19:46:09','I came to your page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try their service for free. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://ccgcafe.com/yourls/1294',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(20,1,'Patricia','kdlfnef@gmail.com','http://dibty.ch/ixpm','217.164.41.33','2014-05-14 03:48:33','2014-05-14 03:48:33','I discovered your page and noticed you could have a lot more traffic. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try their service for free. I managed to get over 300 targeted visitors to day to my website. Check it out here: http://dibty.ch/ixpm',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(21,1,'Susan','yyyyqpwk@yahoo.com','http://soun.dk/cML','23.81.201.87','2014-05-15 21:33:44','2014-05-15 21:33:44','This is a message to the webmaster. Your website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your visitors to your website: http://v.af/o8l They offer 500 free visitors during their free trial period and I managed to get over 15,000 visitors per month using their services, you could also get lot more targeted visitors than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(22,1,'viktoraleksandrovich','viktoraleksandrovich7@gmail.com','http://antiagingclinic.ru','178.137.95.66','2014-05-31 09:55:32','2014-05-31 09:55:32','http://antiagingclinic.ru - Древо Жизни',0,'0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36 OPR/19.0.1326.59','',0,0),
	(23,1,'Kathy','hposhcjh@gmail.com','http://url.appleturnover.tv/kils','23.81.201.79','2014-06-02 12:08:34','2014-06-02 12:08:34','This is a message to the webmaster. Your website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your visitors to your website: http://soun.dk/cML They offer 500 free visitors during their free trial period and I managed to get over 15,000 visitors per month using their services, you could also get lot more targeted visitors than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(24,1,'Susan','nqxwodtyxug@gmail.com','http://linksilo.com/4p','23.81.201.88','2014-06-06 08:45:52','2014-06-06 08:45:52','We have decided to open our POWERFUL and PRIVATE website traffic system to the public for just a few days! You can sign up for our UP SCALE network with a free trial as we get started with the public\'s orders. Imagine how your bank account will look when your website gets the traffic it deserves. Visit us today: http://gentil.me/2c8y6',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(25,1,'Britt','fuejuoxmt@gmail.com','http://mtndew.me/6b3d','23.81.201.78','2014-06-12 01:38:14','2014-06-12 01:38:14','We have decided to open our POWERFUL and PRIVATE website traffic system to the public for a limited time! You can sign up for our UP SCALE network with a free trial as we get started with the public\'s orders. Imagine how your bank account will look when your website gets the traffic it needs. Visit us today: http://jasonchua.me/yx794',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(26,1,'Maria','yhilwdsp@gmail.com','http://hgld.ru/9LM','192.40.94.53','2014-06-12 15:23:20','2014-06-12 15:23:20','You need targeted traffic to your website so why not get some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Check it out here: http://hgld.ru/9LM',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(27,1,'mirakaraseva','mira.karaseva@gmail.com','http://antiagingclinic.ru/havinson.html','134.249.53.58','2014-06-30 12:21:03','2014-06-30 12:21:03','http://antiagingclinic.ru/havinson.html - Хавинсон Владимир Хацкелевич',0,'0','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36','',0,0),
	(28,1,'Terese','atipusgw@yahoo.com','http://we.cx/3pk','192.40.94.14','2014-07-02 09:30:09','2014-07-02 09:30:09','We have made the decision to open our POWERFUL and PRIVATE website traffic system to the public for just a few days! You can sign up for our UP SCALE network with a free trial as we get started with the public\'s orders. Imagine how your bank account will look when your website gets the traffic it needs. Visit us today: http://yourls.endinahosting.com/2uf1',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(29,1,'Donaldbek','donaldPr@gmail.com','http://www.trahnu.ru/','5.166.223.14','2014-07-02 14:42:28','2014-07-02 14:42:28','You are mistaken. I can defend the position. Write to me in PM.',0,'0','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 Safari/537.36 OPR/19.0.1326.59','',0,0),
	(30,1,'Jeanine','toflelezgqk@yahoo.com','http://url.lily.la/k6m0','193.104.110.103','2014-07-06 19:30:04','2014-07-06 19:30:04','This is a message to the admin. Your Test | M.Hazar Artuner / Personal Blog website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your traffic to your website: http://bwf.co/2j They offer 500 free visitors during their free trial period and I managed to get over 15,000 visitors per month using their services, you could also get lot more targeted visitors than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(31,1,'Jeanice','nrjcuuhfwii@yahoo.com','http://we.cx/3pk','193.105.154.94','2014-07-09 00:51:27','2014-07-09 00:51:27','You need targeted traffic to your Test | M.Hazar Artuner / Personal Blog website so why not get some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://technohistoire.info/yourls/2x65',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(32,1,'Allyson','cwjrwqrgrdk@yahoo.com','http://yourls.endinahosting.com/2uf1','188.120.236.2','2014-07-15 11:00:02','2014-07-15 11:00:02','I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more hits. I have found that the key to running a website is making sure the visitors you are getting are interested in your niche. There is a company that you can get visitors from and they let you try their service for free. I managed to get over 300 targeted visitors to day to my site. Visit them today: http://we.cx/3pk',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(33,1,'Glenna','fydolkh@yahoo.com','http://gr0bi.de/33','82.146.56.89','2014-07-23 20:09:41','2014-07-23 20:09:41','This is a comment to the webmaster. Your Test | M.Hazar Artuner / Personal Blog website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your traffic to your website: http://mlr.me/wyz They offer 500 free visitors during their free trial period and I managed to get over 15,000 visitors per month using their services, you could also get lot more targeted traffic than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(34,1,'Michael','txqxdeuvrd@yahoo.com','http://www.caliberid.com/surl/7mgg8','92.63.103.249','2014-08-10 14:22:08','2014-08-10 14:22:08','We have decided to open our POWERFUL and PRIVATE website traffic system to the public for a limited time! You can sign up for our UP SCALE network with a free trial as we get started with the public\'s orders. Imagine how your bank account will look when your website gets the traffic it needs. Visit us today: http://www.caliberid.com/surl/7mgg8',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(35,1,'Nicholas','oifrxei@yahoo.co.uk','http://ma.im/ty','188.120.229.106','2014-08-24 10:14:23','2014-08-24 10:14:23','This is a message to the webmaster. Your Test | M.Hazar Artuner / Personal Blog website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your traffic to your site: http://centrumkyrkangrabo.se/url/8w They offer 500 free visitors during their free trial period and I managed to get over 15,000 visitors per month using their services, you could also get lot more targeted visitors than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(36,1,'Sammy','xxmwxrl@gmail.com','http://60gb.com/9g5','192.171.236.236','2014-09-15 14:32:32','2014-09-15 14:32:32','You need targeted visitors for your Test | M.Hazar Artuner / Personal Blog website so why not get some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://anders.ga/jr5yo',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(37,1,'Tina','slppkc@hotmail.com','http://xebyte.com/2py9','192.69.255.169','2014-11-08 02:20:24','2014-11-08 02:20:24','I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more hits. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try the service for free. I managed to get over 300 targeted visitors to day to my site. {Check it out here:|Visit them http://test.gat.to/37be',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(38,1,'Tammy','gblcewact@aol.com','http://dl4.pl/8f41','192.69.255.189','2014-11-17 15:29:29','2014-11-17 15:29:29','You need targeted visitors for your Test | M.Hazar Artuner / Personal Blog website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://jmmy.biz/7bsy',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(39,1,'Ellie','rfgbreb@aol.com','http://bysb.eu/5rzn','192.69.255.212','2014-11-18 12:05:27','2014-11-18 12:05:27','You need targeted traffic to your Test | M.Hazar Artuner / Personal Blog website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://s0b.eu/4wwj',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(40,1,'Cherise','qshiwkiclk@aol.com','http://9n3.us/235i','192.69.255.199','2014-12-16 23:43:50','2014-12-16 23:43:50','This is a message to the webmaster. Your Test | M.Hazar Artuner / Personal Blog website is missing out on at least 300 visitors per day. I have found a company which offers to dramatically increase your traffic to your website: http://tiny6.com/solh They offer 500 free visitors during their free trial period and I managed to get over 15,000 visitors per month using their services, you could also get lot more targeted visitors than you have now. Hope this helps :) Take care.',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(41,1,'Donna','lkrrij@gmail.com','http://claimyourexcellence.info/1gl','192.69.255.188','2014-12-29 12:43:04','2014-12-29 12:43:04','Hi, my name is Donna and I am the marketing manager at StarSEO Marketing. I was just looking at your website and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website service which already has more than 16 million users, and most of the users are interested in niches like yours. By getting your website on this service you have a chance to get your site more popular than you can imagine. It is free to sign up and you can read more about it here: http://cmyad.co/i/5i1w - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular blogs are using this network to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Read more here: http://2u4.us/1qky',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(42,1,'Abby','ifebwh@aol.com','http://cabkit.in/6xl6','192.69.255.147','2015-01-18 22:08:41','2015-01-18 22:08:41','I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try their service for free. I managed to get over 300 targeted visitors to day to my site. Visit them here: http://cmyad.co/i/5b58',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(43,1,'Sammy','wypiegbojsy@aol.com','http://digitalvikn.com.br/u/9db5','192.171.236.139','2015-01-24 13:02:16','2015-01-24 13:02:16','I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try the service for free. I managed to get over 300 targeted visitors to day to my website. Check it out here: http://dakron.net/gu',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(44,1,'Samantha','nhpfeu@hotmail.com','http://mlr.me/z3p','23.81.72.179','2015-01-26 23:01:52','2015-01-26 23:01:52','Hi, my name is Samantha and I am the sales manager at StarSEO Marketing. I was just looking at your site and see that your website has the potential to become very popular. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://motg.co/dfcfi - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the network I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Read more here: http://ecx.cx/aprd',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(45,1,'Sammy','fmwjrnjn@aol.com','http://mgr.pl/8isz','23.108.170.150','2015-01-28 20:30:39','2015-01-28 20:30:39','You need targeted traffic to your Test | M.Hazar Artuner / Personal Blog website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Check it out here: http://mlr.me/z3n',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(46,1,'Samantha','gwijjkfhut@hotmail.com','http://motg.co/dfcfi','23.81.72.234','2015-02-04 15:01:30','2015-02-04 15:01:30','Hi, my name is Samantha and I am the sales manager at StarSEO Marketing. I was just looking at your site and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://www.123chs.com/6j8c - Now, let me ask you... Do you need your website to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the service I am describing. This traffic service advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular websites are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://mlr.me/z3p',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(47,1,'Brittany','marufdf@aol.com','http://kbbl.ir/4y','23.108.170.239','2015-02-06 19:54:48','2015-02-06 19:54:48','I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try the service for free. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://marshmallow-digital.com/cz/bfsu',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(48,1,'Nikki','kragdsgg@hotmail.com','http://kbbl.ir/4z','23.81.72.60','2015-02-06 23:56:24','2015-02-06 23:56:24','Hi, my name is Nikki and I am the marketing manager at StarSEO Marketing. I was just looking at your site and see that your site has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website network which already has more than 16 million users, and most of the users are interested in niches like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://1to.to/s5t - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the network I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Read more here: http://pixz.nu/1LQf',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(49,1,'Nikki','dlxugeytt@hotmail.com','http://tho.lu/42i','23.81.72.138','2015-02-08 21:10:46','2015-02-08 21:10:46','Hi, my name is Nikki and I am the marketing manager at StarSEO Marketing. I was just looking at your site and see that your site has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website service which already has more than 16 million users, and most of the users are looking for topics like yours. By getting your website on this service you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://1to.to/s5t - Now, let me ask you... Do you need your website to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your website on the service I am describing. This traffic network advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular websites are using this network to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://cabkit.in/7mfv',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(50,1,'Brittany','mgnjyslogzm@aol.com','http://marshmallow-digital.com/cz/bfsu','23.108.170.114','2015-02-09 03:12:16','2015-02-09 03:12:16','You need targeted visitors for your Test | M.Hazar Artuner / Personal Blog website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Check it out here: http://1h.ae/el0',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(51,1,'Brittany','msojigxeqsj@mail.com','http://1h.ae/el0','23.108.170.32','2015-02-26 02:25:00','2015-02-26 02:25:00','You need targeted traffic to your Test | M.Hazar Artuner / Personal Blog website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Check it out here: http://kbbl.ir/4y',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(52,1,'Adrienne','oztejvkelxa@hotmail.com','http://pixz.nu/209D','23.81.72.145','2015-02-26 07:49:34','2015-02-26 07:49:34','Hi, my name is Adrienne and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your website has the potential to get a lot of visitors. I just want to tell you, In case you don\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your site on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can read more about it here: http://dl4.pl/gg7g - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your website on the service I am describing. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular websites are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Read more here: http://pixz.nu/209D',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(53,1,'Adrienne','vleismslav@hotmail.com','http://pixz.nu/209D','23.94.186.73','2015-03-01 02:19:59','2015-03-01 02:19:59','Hi, my name is Adrienne and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your website has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://pixz.nu/209D - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am describing. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular websites are using this service to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Read more here: http://ck2.it/11xh0',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(54,1,'Brittany','xdnjigk@mail.com','http://pixz.nu/1LPS','23.108.170.238','2015-03-04 21:55:20','2015-03-04 21:55:20','You need targeted traffic to your Test | M.Hazar Artuner / Personal Blog website so why not try some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Check it out here: http://www.ahrars.com/r/2viv',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(55,1,'Brittany','vdukih@mail.com','http://1h.ae/el0','23.108.170.172','2015-03-07 18:03:45','2015-03-07 18:03:45','I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try their service for free. I managed to get over 300 targeted visitors to day to my website. Check it out here: http://kbbl.ir/4y',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(56,1,'Brittany','ulhbypsfvp@mail.com','http://pixz.nu/1LPS','23.108.170.239','2015-03-12 07:25:09','2015-03-12 07:25:09','I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more hits. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get traffic from and they let you try their service for free. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://marshmallow-digital.com/cz/bfsu',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(57,1,'Brittany','ccbjwenyk@mail.com','http://kbbl.ir/4y','23.108.170.114','2015-03-13 12:31:40','2015-03-13 12:31:40','You need targeted traffic to your Test | M.Hazar Artuner / Personal Blog website so why not get some for free? There is a VERY POWERFUL and POPULAR company out there who now lets you try their traffic service for 7 days free of charge. I am so glad they opened their traffic system back up to the public! Sign up before it is too late: http://1h.ae/el0',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(58,1,'Adrienne','eecfwq@mail.com','http://pixz.nu/209D','104.168.70.17','2015-03-13 20:04:23','2015-03-13 20:04:23','Hi, my name is Adrienne and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are interested in topics like yours. By getting your website on this service you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://1h.ae/qjr - Now, let me ask you... Do you need your website to be successful to maintain your way of life? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the service I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular sites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Read more here: http://ci8.de/2hKS',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(59,1,'Brittany','pzbmseolph@mail.com','http://pixz.nu/1LPS','23.108.170.172','2015-03-17 01:39:17','2015-03-17 01:39:17','I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a website is making sure the visitors you are getting are interested in your niche. There is a company that you can get traffic from and they let you try the service for free. I managed to get over 300 targeted visitors to day to my website. Check it out here: http://1h.ae/el0',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(60,1,'Pauline','qquidevfmd@aim.com','http://tf3.info/nf','104.168.70.17','2015-03-17 21:00:34','2015-03-17 21:00:34','Hi, my name is Adrienne and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you don\'t already know... There is a website network which already has more than 16 million users, and most of the users are interested in topics like yours. By getting your site on this service you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://tf3.info/nf - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the network I am describing. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular websites are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://gf10.com.br/url/cc9q',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(61,1,'Catherine','sbopwecw@aim.com','http://1be.info/3o3a','104.168.50.13','2015-03-28 08:20:27','2015-03-28 08:20:27','Hi, my name is Catherine and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you don\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your site on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can read more about it here: http://1be.info/3o3a - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular websites are using this network to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://tf3.info/nf',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(62,1,'Janette','stibnfwyc@mail.com','http://klick.onl/Z','23.108.170.150','2015-03-30 02:53:17','2015-03-30 02:53:17','Hi my name is Janette and I just wanted to drop you a quick note here instead of calling you. I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get targeted visitors from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://1be.info/3b4y',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(63,1,'Catherine','dklvlxuaf@dayrep.com','http://cabkit.in/9mt5','104.168.45.42','2015-04-11 11:39:29','2015-04-11 11:39:29','Hi, my name is Catherine and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are looking for topics like yours. By getting your site on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can read more about it here: http://9n3.us/6hpy - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the network I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular blogs are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Read more here: http://cabkit.in/9mt5',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(64,1,'Janette','szudxrv@mail.com','http://dl4.pl/im7p','104.168.69.19','2015-04-11 23:36:54','2015-04-11 23:36:54','Hi my name is Janette and I just wanted to drop you a quick note here instead of calling you. I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. Check it out here: http://1h.ae/28kp',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(65,1,'Janette','auquykmruu@mail.com','http://pixz.nu/2fqB','198.23.221.94','2015-04-16 05:28:15','2015-04-16 05:28:15','Hi my name is Janette and I just wanted to drop you a quick note here instead of calling you. I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more hits. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://ci8.de/2NaB',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(66,1,'Catherine','hpicae@mail.com','http://bbqr.me/ij','104.168.50.76','2015-04-19 14:09:55','2015-04-19 14:09:55','Hi, my name is Catherine and I am the marketing manager at StarSEO Marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your site has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website service which already has more than 16 million users, and the majority of the users are interested in niches like yours. By getting your site on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://cabkit.in/9mt5 - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the network I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular blogs are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://tf3.info/nf  - or to unsubscribe please go here: http://tf3.info/sb',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(67,1,'Victoire','rrmgbptiaz@ymail.com','http://anders.ga/6uk1z','23.94.176.10','2015-04-22 21:29:25','2015-04-22 21:29:25','Hi, my name is Victoire and I am the marketing manager at SwingSEO Solutions. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your site has the potential to become very popular. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are interested in niches like yours. By getting your site on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can read more about it here: http://stg2bio.co/10fv - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular sites are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://anders.ga/6uk1z  - or to unsubscribe please go here: http://bbqr.me/n1',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(68,1,'Olivie','fwowvfnup@hotmail.com','http://msus.me/48um','104.168.37.52','2015-04-23 03:36:33','2015-04-23 03:36:33','Hi my name is Olivie and I just wanted to drop you a quick note here instead of calling you. I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more hits. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get targeted traffic from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Visit them here: http://bbqr.me/mu',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(69,1,'Victoire','qozobg@ymail.com','http://claimyourexcellence.info/24e','23.94.181.74','2015-04-24 20:44:19','2015-04-24 20:44:19','Hi, my name is Victoire and I am the sales manager at SwingSEO Solutions. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your website has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are looking for topics like yours. By getting your website on this service you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://anders.ga/6uk1z - Now, let me ask you... Do you need your website to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the service I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular websites are using this service to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://claimyourexcellence.info/24e  - or to unsubscribe please go here: http://bbqr.me/n1',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) )','',0,0),
	(70,1,'Delphine','exvdnq@hotmail.co.uk','http://anders.ga/5rj-3','104.168.50.76','2015-05-20 05:23:16','2015-05-20 05:23:16','Hi, my name is Delphine and I am the sales manager at SwingSEO Solutions. I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your website has the potential to get a lot of visitors. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and most of the users are looking for niches like yours. By getting your site on this service you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://zoy.bz/4nm - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your website on the network I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular blogs are using this service to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://zoy.bz/4nm - or to unsubscribe please go here: http://innovad.ws/8h9dp',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(71,1,'Donna','pkeilvafmv@yahoo.co.uk','http://anders.ga/-fn4j','104.168.70.17','2015-05-24 17:01:27','2015-05-24 17:01:27','This is a comment to the website creator. I came to your page via Yahoo but it was difficult to find as you were not on the first page of search results. I know you could have more traffic to your website. I have found a company which offers to dramatically improve your rankings and traffic to your website: http://9n3.us/995p I managed to get close to 1000 visitors/day using their services, you can also get a lot more targeted visitors from Google than you have now. Their service brought significantly more visitors to my site. I hope this helps!',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(72,1,'Jacqueline','stftlo@hotmail.fr','http://zoy.bz/4nn','198.23.215.56','2015-05-29 06:11:42','2015-05-29 06:11:42','Hi my name is Jacqueline and I just wanted to drop you a quick note here instead of calling you. I discovered your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more hits. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. Visit them here: http://www.arvut.org/1/ddo',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','',0,0),
	(73,1,'Jacqueline','ipifjaiqmzc@hotmail.fr','http://innovad.ws/2dttq','104.168.67.69','2015-06-11 20:41:21','2015-06-11 20:41:21','Hi my name is Jacqueline and I just wanted to drop you a quick note here instead of calling you. I came to your Test | M.Hazar Artuner / Personal Blog page and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your niche. There is a company that you can get targeted visitors from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://www.arvut.org/1/ddo',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(74,1,'Laetitia','yyfbzrgs@dayrep.com','http://gf10.com.br/url/iq2f','107.173.152.213','2015-07-10 18:46:47','2015-07-10 18:46:47','Hi, my name is Laetitia and I am the sales manager at CorpSEO marketing. I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your website has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are looking for topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can find out more about it here: http://www.urlator.co/w7uk - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the network I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the service before paying anything at all. All the popular blogs are using this service to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Find out more here: http://cabkit.in/e13f',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(75,1,'Donna','ryulwtj@tom.com','http://bbqr.me/4fj5','23.94.170.143','2015-07-29 02:44:27','2015-07-29 02:44:27','I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your website has the potential to become very popular. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://www.urlator.co/w7uk - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the network I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the network before paying anything at all. All the popular blogs are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Read more here: http://cabkit.in/e137',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(76,1,'Valerie','jztmaaxqwks@tom.com','http://gf10.com.br/url/iq2f','172.245.124.196','2015-08-10 10:37:50','2015-08-10 10:37:50','I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your website has the potential to become very popular. I just want to tell you, In case you didn\'t already know... There is a website network which already has more than 16 million users, and the majority of the users are interested in websites like yours. By getting your website on this service you have a chance to get your site more popular than you can imagine. It is free to sign up and you can find out more about it here: http://gf10.com.br/url/iq2f - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the network I am describing. This traffic network advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular blogs are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful site works... Here\'s to your success! Read more here: https://spna.ca/1pvm',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0),
	(77,1,'Valerie','eahmfzixp@tom.com','http://bbqr.me/4fj5','172.245.124.196','2015-08-19 01:47:33','2015-08-19 01:47:33','I was just looking at your Test | M.Hazar Artuner / Personal Blog site and see that your site has the potential to become very popular. I just want to tell you, In case you don\'t already know... There is a website service which already has more than 16 million users, and most of the users are looking for topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can find out more about it here: http://digitalvikn.com.br/u/nk00 - Now, let me ask you... Do you need your site to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the network I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the service before paying anything at all. All the popular blogs are using this service to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://tgi.link/dcf2',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)','',0,0),
	(78,1,'Valerie','gmtvna@tom.com','http://bbqr.me/4fj5','23.95.194.69','2015-08-26 01:47:12','2015-08-26 01:47:12','I was just looking at your Test | M.Hazar Artuner / Personal Blog website and see that your website has the potential to become very popular. I just want to tell you, In case you didn\'t already know... There is a website service which already has more than 16 million users, and most of the users are looking for websites like yours. By getting your site on this service you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://digitalvikn.com.br/u/nk00 - Now, let me ask you... Do you need your website to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your website on the network I am talking about. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything at all. All the popular websites are using this network to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That\'s how running a successful website works... Here\'s to your success! Find out more here: http://bbqr.me/4fj5',0,'0','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)','',0,0);

/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_links`;

CREATE TABLE `blog_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_options`;

CREATE TABLE `blog_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_options` WRITE;
/*!40000 ALTER TABLE `blog_options` DISABLE KEYS */;

INSERT INTO `blog_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://localhost/hazar/blog','yes'),
	(2,'blogname','M.Hazar Artuner / Personal Blog','yes'),
	(3,'blogdescription','','yes'),
	(4,'users_can_register','0','yes'),
	(5,'admin_email','hazar.artuner@gmail.com','yes'),
	(6,'start_of_week','1','yes'),
	(7,'use_balanceTags','0','yes'),
	(8,'use_smilies','1','yes'),
	(9,'require_name_email','1','yes'),
	(10,'comments_notify','1','yes'),
	(11,'posts_per_rss','10','yes'),
	(12,'rss_use_excerpt','0','yes'),
	(13,'mailserver_url','mail.example.com','yes'),
	(14,'mailserver_login','login@example.com','yes'),
	(15,'mailserver_pass','password','yes'),
	(16,'mailserver_port','110','yes'),
	(17,'default_category','1','yes'),
	(18,'default_comment_status','open','yes'),
	(19,'default_ping_status','open','yes'),
	(20,'default_pingback_flag','1','yes'),
	(21,'posts_per_page','10','yes'),
	(22,'date_format','F j, Y','yes'),
	(23,'time_format','g:i a','yes'),
	(24,'links_updated_date_format','F j, Y g:i a','yes'),
	(25,'links_recently_updated_prepend','<em>','yes'),
	(26,'links_recently_updated_append','</em>','yes'),
	(27,'links_recently_updated_time','120','yes'),
	(28,'comment_moderation','0','yes'),
	(29,'moderation_notify','1','yes'),
	(30,'permalink_structure','','yes'),
	(31,'gzipcompression','0','yes'),
	(32,'hack_file','0','yes'),
	(33,'blog_charset','UTF-8','yes'),
	(34,'moderation_keys','','no'),
	(35,'active_plugins','a:0:{}','yes'),
	(36,'home','http://localhost/hazar/blog','yes'),
	(37,'category_base','','yes'),
	(38,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(39,'advanced_edit','0','yes'),
	(40,'comment_max_links','2','yes'),
	(41,'gmt_offset','0','yes'),
	(42,'default_email_category','1','yes'),
	(43,'recently_edited','a:2:{i:0;s:97:\"/home3/pxltrtle/public_html/addon_domains/hazarartuner.com/blog/wp-content/themes/remal/style.css\";i:2;s:0:\"\";}','no'),
	(44,'template','remal','yes'),
	(45,'stylesheet','remal','yes'),
	(46,'comment_whitelist','1','yes'),
	(47,'blacklist_keys','','no'),
	(48,'comment_registration','0','yes'),
	(49,'html_type','text/html','yes'),
	(50,'use_trackback','0','yes'),
	(51,'default_role','subscriber','yes'),
	(52,'db_version','26151','yes'),
	(53,'uploads_use_yearmonth_folders','1','yes'),
	(54,'upload_path','','yes'),
	(55,'blog_public','1','yes'),
	(56,'default_link_category','2','yes'),
	(57,'show_on_front','posts','yes'),
	(58,'tag_base','','yes'),
	(59,'show_avatars','1','yes'),
	(60,'avatar_rating','G','yes'),
	(61,'upload_url_path','','yes'),
	(62,'thumbnail_size_w','150','yes'),
	(63,'thumbnail_size_h','150','yes'),
	(64,'thumbnail_crop','1','yes'),
	(65,'medium_size_w','300','yes'),
	(66,'medium_size_h','300','yes'),
	(67,'avatar_default','mystery','yes'),
	(68,'large_size_w','1024','yes'),
	(69,'large_size_h','1024','yes'),
	(70,'image_default_link_type','file','yes'),
	(71,'image_default_size','','yes'),
	(72,'image_default_align','','yes'),
	(73,'close_comments_for_old_posts','0','yes'),
	(74,'close_comments_days_old','14','yes'),
	(75,'thread_comments','1','yes'),
	(76,'thread_comments_depth','5','yes'),
	(77,'page_comments','0','yes'),
	(78,'comments_per_page','50','yes'),
	(79,'default_comments_page','newest','yes'),
	(80,'comment_order','asc','yes'),
	(81,'sticky_posts','a:0:{}','yes'),
	(82,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(83,'widget_text','a:0:{}','yes'),
	(84,'widget_rss','a:0:{}','yes'),
	(85,'uninstall_plugins','a:0:{}','no'),
	(86,'timezone_string','','yes'),
	(87,'page_for_posts','0','yes'),
	(88,'page_on_front','0','yes'),
	(89,'default_post_format','0','yes'),
	(90,'link_manager_enabled','0','yes'),
	(91,'initial_db_version','25824','yes'),
	(92,'blog_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'sidebars_widgets','a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";N;s:24:\"third-footer-widget-area\";N;s:13:\"array_version\";i:3;}','yes'),
	(99,'cron','a:5:{i:1441888937;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1441899970;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1441915358;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1441932166;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(108,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:28:\"http://hazarartuner.com/blog\";s:4:\"link\";s:104:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://hazarartuner.com/blog/\";s:3:\"url\";s:136:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/hazar/blog/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),
	(143,'theme_mods_twentythirteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1386463506;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}','yes'),
	(144,'current_theme','Remal','yes'),
	(145,'theme_mods_remal','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}}','yes'),
	(146,'theme_switched','','yes'),
	(147,'tie_options','a:61:{s:11:\"breadcrumbs\";s:4:\"true\";s:21:\"breadcrumbs_delimiter\";s:1:\"/\";s:14:\"lightbox_style\";s:13:\"light_rounded\";s:12:\"logo_setting\";s:5:\"title\";s:10:\"haeder_fix\";s:4:\"true\";s:15:\"welcome_display\";s:1:\"1\";s:11:\"welcome_msg\";s:109:\"&lt;h2&gt;Welcome to Remal&lt;/h2&gt;&lt;p&gt;Change this text From Tiepanel &gt; Header Settings !&lt;/p&gt;\";s:10:\"exc_length\";s:2:\"10\";s:7:\"on_home\";s:4:\"grid\";s:9:\"show_meta\";s:4:\"true\";s:13:\"show_comments\";s:4:\"true\";s:12:\"num_comments\";s:1:\"3\";s:10:\"post_width\";s:1:\"2\";s:13:\"enable_filter\";s:4:\"true\";s:15:\"grid_pagination\";s:8:\"infinite\";s:6:\"social\";a:5:{s:8:\"facebook\";s:38:\"https://www.facebook.com/hazar.artuner\";s:7:\"twitter\";s:33:\"https://twitter.com/hazar_artuner\";s:11:\"google_plus\";s:49:\"https://plus.google.com/+MehmetHazarArtuner/posts\";s:9:\"instagram\";s:33:\"http://instagram.com/hazarartuner\";s:8:\"linkedin\";s:21:\"http://lnkd.in/Sr26-V\";}s:14:\"post_authorbio\";s:4:\"true\";s:8:\"post_nav\";s:4:\"true\";s:9:\"post_meta\";s:4:\"true\";s:11:\"post_author\";s:4:\"true\";s:9:\"post_date\";s:4:\"true\";s:9:\"post_cats\";s:4:\"true\";s:10:\"post_views\";s:4:\"true\";s:10:\"post_likes\";s:4:\"true\";s:13:\"post_comments\";s:4:\"true\";s:9:\"post_tags\";s:4:\"true\";s:10:\"share_post\";s:4:\"true\";s:11:\"share_tweet\";s:4:\"true\";s:14:\"share_facebook\";s:4:\"true\";s:12:\"share_google\";s:4:\"true\";s:13:\"share_linkdin\";s:4:\"true\";s:13:\"share_stumble\";s:4:\"true\";s:15:\"share_pinterest\";s:4:\"true\";s:14:\"related_number\";s:1:\"3\";s:13:\"related_query\";s:8:\"category\";s:10:\"footer_top\";s:4:\"true\";s:13:\"footer_social\";s:4:\"true\";s:14:\"footer_widgets\";s:9:\"footer-3c\";s:10:\"footer_one\";s:38:\"© Copyright 2013, All Rights Reserved\";s:25:\"banner_within_posts_posts\";s:1:\"0\";s:11:\"sidebar_pos\";s:5:\"right\";s:13:\"category_desc\";s:4:\"true\";s:15:\"background_type\";s:7:\"pattern\";s:18:\"background_pattern\";s:8:\"body-bg1\";s:18:\"typography_general\";a:1:{s:4:\"font\";s:1:\"0\";}s:19:\"typography_main_nav\";a:1:{s:4:\"font\";s:1:\"0\";}s:21:\"typography_page_title\";a:1:{s:4:\"font\";s:1:\"0\";}s:21:\"typography_post_title\";a:1:{s:4:\"font\";s:1:\"0\";}s:26:\"typography_home_post_title\";a:1:{s:4:\"font\";s:1:\"0\";}s:20:\"typography_post_meta\";a:1:{s:4:\"font\";s:1:\"0\";}s:21:\"typography_post_entry\";a:1:{s:4:\"font\";s:1:\"0\";}s:23:\"typography_blocks_title\";a:1:{s:4:\"font\";s:1:\"0\";}s:24:\"typography_widgets_title\";a:1:{s:4:\"font\";s:1:\"0\";}s:31:\"typography_footer_widgets_title\";a:1:{s:4:\"font\";s:1:\"0\";}s:26:\"typography_quote_link_text\";a:1:{s:4:\"font\";s:1:\"0\";}s:18:\"typography_post_h1\";a:1:{s:4:\"font\";s:1:\"0\";}s:18:\"typography_post_h2\";a:1:{s:4:\"font\";s:1:\"0\";}s:18:\"typography_post_h3\";a:1:{s:4:\"font\";s:1:\"0\";}s:18:\"typography_post_h4\";a:1:{s:4:\"font\";s:1:\"0\";}s:18:\"typography_post_h5\";a:1:{s:4:\"font\";s:1:\"0\";}s:18:\"typography_post_h6\";a:1:{s:4:\"font\";s:1:\"0\";}}','yes'),
	(148,'tie_active','1','yes'),
	(149,'notifier-cache','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<notifier>\n	<latest>2.3.1</latest>\n	<changelog>\n<![CDATA[\n<strong>Version 2.3.1 - 31-10-2013</strong>\n- Fixed: Widgets page load bug .\n- Fixed: Images lightbox titles bug for loaded posts via load more button .\n\nFiles updated\n- style.css ( new version number )\n- includes/widgets/widget-counter.php\n- includes/widgets/widget-twitter.php\n- js/tie-scripts.js\n\n\n<strong>Version 2.3.0 - 21-10-2013</strong>\n- NEW FEATURE: Infinite Scroll option (beta).\n- NEW FEATURE: Supports Youtube channels in the social counter widget.\n- Improved: Twitter counter and Twitter widget.\n- Improved: Columns shortcode now responsive.\n- Improved: Video Shortcode available again.\n- Fixed: Timeline page template bug.\n- Fixed: number_format warnings bug.\n- Fixed: Google Plus widget bug on RTL sites.\n- Fixed: Empty Background styling option bug.\n- Fixed: Vertical tabs shortcode height bug.\n- And other improvements and minor bug fixes.\n\nFiles updated\n- style.css\n- rtl.css\n- functions.php\n- template-timeline.php\n- functions/theme-functions.php\n- functions/common-scripts.php\n- functions/infinite-scroll.php\n- functions/tie-views.php\n- panel/mpanel-functions.php\n- panel/mpanel-ui.php\n- panel/shortcodes/ui.php\n- panel/shortcodes/shortcode.php\n- includes/widgets/widget-twitter.php\n- includes/widgets/widget-counter.php\n- includes/widgets/widget-text-html.php\n- includes/widgets/widget-ads.php\n- includes/pagenavi.php\n- js/jquery.infinitescroll.js\n- js/tie-scripts.js\n- js/tabs.min.js\n\n\n<strong>Version 2.2.0 - 06-08-2013</strong>\n- Fully Supports New Worpress 3.6 .\n- NEW FEATURE: Self Hosted Videos ( For WP 3.6 only )\n- Improved: Colored Posts styles .\n- Improved: Post views number format.\n- Fixed: Delete Homepage builder items and custom slides icon.\n- And other improvements and minor bug fixes.\n\nFiles updated\n- style.css\n- images/ (Folder)\n- js/tie-scripts.js\n- functions/tie-views.php\n- functions/common-scripts.php\n- functions/theme-functions.php\n- panel/style.css\n- panel/post-options.php\n- panel/shortcodes/shortcode.php\n- includes/widgets/widget-video.php\n\n\n<strong>Version 2.1.1 - 23-07-2013</strong>\n- Improvements and minor bug fixes.\n\nFiles updated\n- style.css\n- rtl.css\n- functions.php\n\n\n<strong>Version 2.1.0 - 16-07-2013</strong>\n- Improved: RTL Styling issues.\n- Improved: Twitter Counter function.\n- Improved: Vertical tabs shortcode height.\n- Improved: Theme Performance and Speed by caching the Social counters for 20 minutes .\n- Improved: theme updates notifier cache .\n- Improved: All Twitter API Error messages moved to the backend .\n- Improved : Timeline Template page.\n- Fixed: Google Plus widget on RTL version.\n- Fixed: Conflict with wordpress related posts plugins.\n- And other improvements and minor bug fixes.\n\nFiles updated\n- style.css\n- rtl.css\n- functions.php\n- loop.php\n- template-timeline.php\n- js/tabs.min.js\n- functions/common-scripts.php\n- functions/theme-functions.php\n- includes/twitteroauth/ (folder)\n- includes/widgets/widget-twitter.php\n- includes/widgets/widget-counter.php\n- includes/widgets/widget-news-pic.php\n- includes/widgets/widget-posts.php\n- includes/widgets/widget-tabbed.php\n- includes/widgets/widget-category.php\n- includes/widgets/widget-comments-avatar.php\n- images/entry-meta-icons.png\n\n\n<strong>Version 2.0.0 - 20-06-2013</strong>\n- NEW FEATURE: New Mini share icons in the homepage and archives .\n- NEW FEATURE: New Modern style social counter icons .\n- NEW FEATURE: Supports Shortcodes in banner areas .\n- NEW FEATURE: Option to hide Rss icon .\n- NEW FEATURE: Option to hide Search in the header .\n- NEW FEATURE: Option to hide Social icons in the header .\n- NEW FEATURE: Option to open social counter links in new window/tab .\n- NEW FEATURE: Option to use the normal pagination style in the GRID layout .\n- NEW FEATURE: Option to disable theme gallery to use Jetpack Tiled Galleries .\n- NEW FEATURE: Youtube Subscribers counter.\n- NEW FEATURE: Vimeo Subscribers counter.\n- NEW FEATURE: Dribble Subscribers counter.\n- NEW FEATURE: Typography Option for the posts title in the Grid layout  .\n- NEW FEATURE: Typography Option for Blocks Titles .\n- NEW FEATURE: Ability to use Check-list and Star-List shortcodes outside posts  .\n- NEW FEATURE: Multiple Images selction for galleries post format .\n- NEW FEATURE: Heighlight Parent menu item of current browsing page .\n- Improved: Facebook and Social widgets to avoid any conflict with plugins .\n- Improved: Load-more Button .\n- Improved: Facebook Social counter .\n- Improved: Reset Settings function .\n- Improved: Save Settings function .\n- Improved: wp_title() function .\n- Improved: Load more and paginations style .\n- Improved: Lightbox on small devices .\n- Improved: RTL Version .\n- Updated: Theme functions to use Twitter Api 1.1 .\n- Updated: Theme documentations .\n- Fixed: Next/Prev Post arrows icons .\n- Fixed: Register link in login widget .\n- Fixed: Single Post Title and Page Title typography option bug .\n- Fixed: Button shortcode bug .\n- Fixed: Timeline page comments bug .\n- Fixed: Author widget bug .\n- Improvements and minor bug fixes.\n\nFiles updated\n- style.css\n- rtl.css\n- header.php\n- author.php\n- loop.php\n- single.php\n- functions.php\n- content-standard.php\n- template-timeline.php\n- functions/theme-functions.php\n- functions/common-scripts.php\n- functions/banners.php\n- includes/widgets/widget-counter.php\n- includes/widgets/widget-facebook.php\n- includes/widgets/widget-social.php\n- includes/widgets/widget-author.php\n- includes/widgets/widget-twitter.php\n- includes/twitteroauth/ (folder)\n- panel/mpanel-ui.php\n- panel/mpanel-functions.php\n- panel/shortcodes/ui.php\n- panel/shortcodes/shortcode.php\n- panel/page-options.php\n- panel/post-options.php\n- panel/js/tie.js\n- panel/style.css\n- js/tie-scripts.js\n- images/ (folder)\n\n\n<strong>Version 1.6.0 - 11-01-2013</strong>\n- Added : Next/prev to lightbox for [gallery] shortcode .\n- Added : supports http://youtu.be videos in video post format .\n- Added : supports http://youtu.be videos in [video] shortcode .\n- Added : supports dailymotion videos in video post format .\n- Added : supports dailymotion videos in [video] shortcode .\n- Added : More styling Options .\n- Improved : [Audio] shortcode Styling .\n- Improved : Videos width and height ratio .\n- Fixed : Twitter API issue .\n- Fixed : Reset settings bug .\n\nFiles updated\n- style.css\n- js/tie-scripts.js\n- loop.php\n- functions/theme-functions.php\n- functions/common-scripts.php\n- includes/widgets/widget-video.php\n- panel/ (folder)\n\n\n<strong>Version 1.5.0 - 26-12-2012</strong>\n- Added : Fully RTL Support .\n- Added : Option to Hide the Featured Image from standard post format single page  .\n- Added : New ADV space area between posts .\n- Added : Option to Disable the theme Responsiveness .\n- Added : [lightbox] shortcode .\n- Improved : Footer widgets without Titles .\n- Improved : Video widget in Footer .\n- Improved : SEO issues .\n- Improved : performance and speed of the theme .\n- Fixed : Typography bug with some fonts .\n- Fixed : Author Feed URL bug .\n\nFiles updated\n- style.css\n- loop.php\n- author.php\n- content-standard.php\n- RTL.css\n- Header.php\n- functions/common-scripts.php\n- functions/theme-functions.php\n- includes/widgets/widget-twitter.php\n- includes/post-meta.php\n- js/tie-scripts.js\n- panel/ (folder)\n\n<strong>Version 1.4.1 - 09-12-2012</strong>\n- Improvements and minor bug fixes.\n\nFiles updated\n- style.css\n- js/tie-scripts.js\n- functions/theme-functions.php\n- panel/post-options.php\n- panel/mpanel-functions.php\n\n\n<strong>Version 1.4.0 - 06-12-2012</strong>\n- Added : Light Box For wordpress gallery shortcode .\n- Added : Pinterest Style for widgets in responsive action .\n- Added : More Typography Options . \n- Improved : Videos layout .\n- Improved : Audio Player design .\n- Fixed : Responsive issues .\n- Fixed : posts gallery issue .\n\nFiles updated\n- style.css\n- js/tie-scripts.js\n- includes/widgets/widget-video.php\n- images/jplayer\n- panel/mpanel-ui.php\n- functions/common-scripts.php\n- functions/theme-functions.php\n\n\n<strong>Version 1.3.2 - 17-11-2012</strong>\n- Minor bug fixes .\n\nFiles updated\n- style.css\n- functions/theme-functions.php\n- functions/common-scripts.php\n- panel/mpanel-ui.php\n- content-video.php\n- js/tie-scripts.js\n\n\n<strong>Version 1.3.1 - 13-11-2012</strong>\n- Added : More Styling Options .\n- Improved : Rtl Issues .\n- Improved : Responsive issues .\n- Fixed : Typography settings for widgets titles .\n\nFiles updated\n- style.css\n- panel/mpanel-ui.php\n- functions/common-scripts.php\n- Added : rtl.css\n\n\n<strong>Version 1.3.0 - 01-11-2012</strong>\n- Fixed: All known bugs .\n\nFiles updated\n- Please replace whole folder. We changed too many files in this version.\n\n<strong>Version 1.2.1 - 29-10-2012</strong>\n- Updated : Isotope to v1.5.21 .\n- Fixed: All known bugs .\n\nFiles updated\n- Style.css\n- template-authors.php\n- index.php\n- js/tie-scripts.js\n- js/isotope.js\n- loop.php\n- header.php\n- functions/theme-functions.php\n- functions/common-scripts.php\n- includes/widgets/widget-counter.php\n- Languages Folder\n\n<strong>Version 1.2.0 - 22-10-2012</strong>\n- Added : Option to hide post meta from homepage .\n- Added : Option to exlude categories from homepage .\n- Added : optional Posts filter by Categories in homepage .\n- Added : Image poster above audio player .\n- Added : Custom css fields to make changes depend on the device .\n- Added : More Styling Options .\n- Improved : Galleries style .\n- Improved : Reset settings button .\n- Improved : Og:image to get video image from youtube / viemeo if the post hasn\'t a featured image .\n- fixed : 404 page message style bug .\n- Fixed : Twitter Counter bug\n- Fixed : category feed url .\n\nFiles updated\n- style.css\n- js/tie-scripts.js\n- index.php\n- loop.php\n- category.php\n- content-standard.php\n- mpanel/mpanel-ui.php\n- includes/single-post-share.php\n- functions/theme-functions.php\n- functions/common-scripts.php\n- functions/default-options.php\n\n<strong>Version 1.1.0 - 05-10-2012</strong>\n- Fixed : Responsive Issues\n- Fixed : Minor Issues\n\nFiles updated\n- content-standard.php\n- header.php\n- style.css\n- js/tie-scripts.js\n\n\n<strong>Version 1.0.0</strong>\n- First release\n]]>\n	</changelog>\n</notifier>\n','yes'),
	(150,'notifier-cache-last-updated_remal','1386530152','yes'),
	(192,'category_children','a:1:{i:3;a:1:{i:0;i:2;}}','yes'),
	(193,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(550,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"hazar.artuner@gmail.com\";s:7:\"version\";s:6:\"3.7.10\";s:9:\"timestamp\";i:1438707485;}','yes'),
	(551,'db_upgraded','','yes'),
	(2979,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.3\";s:7:\"version\";s:3:\"4.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.3\";s:7:\"version\";s:3:\"4.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.4\";s:7:\"version\";s:5:\"4.2.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:3;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.1.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.1.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.1.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.1.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.1.7\";s:7:\"version\";s:5:\"4.1.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:4;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.0.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.0.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.0.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.0.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.0.7\";s:7:\"version\";s:5:\"4.0.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:5;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.9.8\";s:7:\"version\";s:5:\"3.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:6;O:8:\"stdClass\":10:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-3.8.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-3.8.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.8.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-3.8.10-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"3.8.10\";s:7:\"version\";s:6:\"3.8.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1441885025;s:15:\"version_checked\";s:6:\"3.7.10\";s:12:\"translations\";a:0:{}}','yes'),
	(3137,'_site_transient_timeout_theme_roots','1441886825','yes'),
	(3138,'_site_transient_theme_roots','a:3:{s:5:\"remal\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes'),
	(3140,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1441885025;s:7:\"checked\";a:3:{s:5:\"remal\";s:5:\"2.3.1\";s:14:\"twentythirteen\";s:3:\"1.1\";s:12:\"twentytwelve\";s:3:\"1.3\";}s:8:\"response\";a:2:{s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.1.6.zip\";}s:12:\"twentytwelve\";a:4:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwelve/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwelve.1.8.zip\";}}s:12:\"translations\";a:0:{}}','yes'),
	(3141,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1441885025;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip\";}}s:12:\"translations\";a:0:{}}','yes');

/*!40000 ALTER TABLE `blog_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_postmeta`;

CREATE TABLE `blog_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_postmeta` WRITE;
/*!40000 ALTER TABLE `blog_postmeta` DISABLE KEYS */;

INSERT INTO `blog_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,1,'tie_views','240'),
	(3,4,'_menu_item_type','custom'),
	(4,4,'_menu_item_menu_item_parent','0'),
	(5,4,'_menu_item_object_id','4'),
	(6,4,'_menu_item_object','custom'),
	(7,4,'_menu_item_target',''),
	(8,4,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(9,4,'_menu_item_xfn',''),
	(10,4,'_menu_item_url','http://hazarartuner.com/blog/'),
	(12,5,'_menu_item_type','post_type'),
	(13,5,'_menu_item_menu_item_parent','0'),
	(14,5,'_menu_item_object_id','2'),
	(15,5,'_menu_item_object','page'),
	(16,5,'_menu_item_target',''),
	(17,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(18,5,'_menu_item_xfn',''),
	(19,5,'_menu_item_url',''),
	(20,5,'_menu_item_orphaned','1386531139'),
	(21,6,'_menu_item_type','taxonomy'),
	(22,6,'_menu_item_menu_item_parent','0'),
	(23,6,'_menu_item_object_id','4'),
	(24,6,'_menu_item_object','category'),
	(25,6,'_menu_item_target',''),
	(26,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(27,6,'_menu_item_xfn',''),
	(28,6,'_menu_item_url',''),
	(30,7,'_menu_item_type','taxonomy'),
	(31,7,'_menu_item_menu_item_parent','0'),
	(32,7,'_menu_item_object_id','1'),
	(33,7,'_menu_item_object','category'),
	(34,7,'_menu_item_target',''),
	(35,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(36,7,'_menu_item_xfn',''),
	(37,7,'_menu_item_url',''),
	(38,7,'_menu_item_orphaned','1386531173'),
	(39,8,'_menu_item_type','taxonomy'),
	(40,8,'_menu_item_menu_item_parent','0'),
	(41,8,'_menu_item_object_id','3'),
	(42,8,'_menu_item_object','category'),
	(43,8,'_menu_item_target',''),
	(44,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(45,8,'_menu_item_xfn',''),
	(46,8,'_menu_item_url',''),
	(48,9,'_menu_item_type','taxonomy'),
	(49,9,'_menu_item_menu_item_parent','8'),
	(50,9,'_menu_item_object_id','2'),
	(51,9,'_menu_item_object','category'),
	(52,9,'_menu_item_target',''),
	(53,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(54,9,'_menu_item_xfn',''),
	(55,9,'_menu_item_url',''),
	(57,1,'_edit_lock','1386533027:1'),
	(58,1,'_edit_last','1'),
	(61,1,'tie_link_url',''),
	(62,1,'tie_video_url',''),
	(63,1,'tie_video_self_url',''),
	(64,1,'tie_embed_code',''),
	(65,1,'tie_audio_mp3',''),
	(66,1,'tie_audio_m4a',''),
	(67,1,'tie_audio_oga',''),
	(68,1,'tie_quote_author',''),
	(69,1,'tie_quote_link',''),
	(70,1,'tie_quote_text',''),
	(71,1,'tie_hide_meta',''),
	(72,1,'tie_hide_author',''),
	(73,1,'tie_hide_share',''),
	(74,1,'tie_hide_related',''),
	(75,1,'tie_sidebar_pos','default'),
	(76,1,'tie_sidebar_post',''),
	(77,1,'tie_banner_above',''),
	(78,1,'tie_banner_below',''),
	(79,1,'tie_post_color',''),
	(80,12,'_edit_last','1'),
	(81,12,'_edit_lock','1386827435:1'),
	(82,12,'tie_link_url',''),
	(83,12,'tie_video_url',''),
	(84,12,'tie_video_self_url',''),
	(85,12,'tie_embed_code',''),
	(86,12,'tie_audio_mp3',''),
	(87,12,'tie_audio_m4a',''),
	(88,12,'tie_audio_oga',''),
	(89,12,'tie_quote_author',''),
	(90,12,'tie_quote_link',''),
	(91,12,'tie_quote_text',''),
	(92,12,'tie_hide_meta',''),
	(93,12,'tie_hide_author',''),
	(94,12,'tie_hide_share',''),
	(95,12,'tie_hide_related',''),
	(96,12,'tie_sidebar_pos','default'),
	(97,12,'tie_sidebar_post',''),
	(98,12,'tie_banner_above',''),
	(99,12,'tie_banner_below',''),
	(100,12,'tie_post_color',''),
	(101,12,'tie_views','0');

/*!40000 ALTER TABLE `blog_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_posts`;

CREATE TABLE `blog_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;

INSERT INTO `blog_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2013-12-08 00:42:14','2013-12-08 00:42:14','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Test','','publish','open','open','','hello-world','','','2013-12-08 20:03:45','2013-12-08 20:03:45','',0,'http://localhost/hazar/blog/?p=1',0,'post','',1),
	(2,1,'2013-12-08 00:42:14','2013-12-08 00:42:14','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/hazar/blog/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2013-12-08 00:42:14','2013-12-08 00:42:14','',0,'http://localhost/hazar/blog/?page_id=2',0,'page','',0),
	(4,1,'2013-12-08 19:33:42','2013-12-08 19:33:42','','Anasayfa','','publish','open','open','','anasayfa','','','2013-12-08 19:53:10','2013-12-08 19:53:10','',0,'http://hazarartuner.com/blog/?p=4',1,'nav_menu_item','',0),
	(5,1,'2013-12-08 19:32:19','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2013-12-08 19:32:19','0000-00-00 00:00:00','',0,'http://hazarartuner.com/blog/?p=5',1,'nav_menu_item','',0),
	(6,1,'2013-12-08 19:33:42','2013-12-08 19:33:42',' ','','','publish','open','open','','6','','','2013-12-08 19:53:10','2013-12-08 19:53:10','',0,'http://hazarartuner.com/blog/?p=6',4,'nav_menu_item','',0),
	(7,1,'2013-12-08 19:32:53','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2013-12-08 19:32:53','0000-00-00 00:00:00','',0,'http://hazarartuner.com/blog/?p=7',1,'nav_menu_item','',0),
	(8,1,'2013-12-08 19:33:42','2013-12-08 19:33:42',' ','','','publish','open','open','','8','','','2013-12-08 19:53:10','2013-12-08 19:53:10','',0,'http://hazarartuner.com/blog/?p=8',2,'nav_menu_item','',0),
	(9,1,'2013-12-08 19:33:42','2013-12-08 19:33:42',' ','','','publish','open','open','','9','','','2013-12-08 19:53:10','2013-12-08 19:53:10','',3,'http://hazarartuner.com/blog/?p=9',3,'nav_menu_item','',0),
	(11,1,'2013-12-08 20:03:45','2013-12-08 20:03:45','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Test','','inherit','open','open','','1-revision-v1','','','2013-12-08 20:03:45','2013-12-08 20:03:45','',1,'http://hazarartuner.com/blog/?p=11',0,'revision','',0),
	(12,1,'2013-12-11 23:24:46','0000-00-00 00:00:00','Scope yani kapsam, programlama dillerinde kullanılan tanımlayıcılara, program içerisinde nerelerden erişim hakkına sahip olduğumuzu belirten kurala verilen isimdir. İlk cümlemde scope\'u tanımlarken programlama dillerinde kullanılan \"değişkenler\" demek yerine \"tanımlayıcı (identifier)\" demeyi tercih ettim çünkü kapsam sadece int, string, bool vs.. tiplerindeki temel değişkenleri ilgilendiren bir konu değildir. Bir fonksiyonun da program içinde sahip olduğu bir scope\'u vardır, aynı şekilde bir class\'ın ve bu class\'ın sahip olduğu method\'ların da sahip oldukları bir scope alanı vardır.\r\n\r\n&nbsp;\r\n\r\nScope, programlama dilleri arasında ve bu dillerde kullanılan değişken tipleri arasında farklılık gösterebilir.\r\n\r\n&nbsp;','Scope (Kapsam)','','draft','open','open','','','','','2013-12-11 23:24:46','2013-12-11 23:24:46','',0,'http://hazarartuner.com/blog/?p=12',0,'post','',0),
	(13,1,'2013-12-11 23:06:23','2013-12-11 23:06:23','Scope yani kapsam, programlama dillerinde kullanılan tanımlayıcılara, program içerisinde nerelerden erişim hakkına sahip olduğumuzu belirten kurala verilen isimdir. İlk cümlemde scope\'u tanımlarken programlama dillerinde kullanılan \"değişkenler\" demek yerine \"tanımlayıcı (identifier)\" demeyi tercih ettim çünkü kapsam sadece int, string, bool vs.. tiplerindeki temel değişkenleri ilgilendiren bir konu değildir. Bir fonksiyonun da program içinde sahip olduğu bir scope\'u vardır, aynı şekilde bir class\'ın ve bu class\'ın sahip olduğu method\'ların da sahip oldukları bir scope alanı vardır.\r\n\r\n&nbsp;','Scope (Kapsam)','','inherit','open','open','','12-revision-v1','','','2013-12-11 23:06:23','2013-12-11 23:06:23','',12,'http://hazarartuner.com/blog/?p=13',0,'revision','',0),
	(14,1,'2013-12-11 23:24:46','2013-12-11 23:24:46','Scope yani kapsam, programlama dillerinde kullanılan tanımlayıcılara, program içerisinde nerelerden erişim hakkına sahip olduğumuzu belirten kurala verilen isimdir. İlk cümlemde scope\'u tanımlarken programlama dillerinde kullanılan \"değişkenler\" demek yerine \"tanımlayıcı (identifier)\" demeyi tercih ettim çünkü kapsam sadece int, string, bool vs.. tiplerindeki temel değişkenleri ilgilendiren bir konu değildir. Bir fonksiyonun da program içinde sahip olduğu bir scope\'u vardır, aynı şekilde bir class\'ın ve bu class\'ın sahip olduğu method\'ların da sahip oldukları bir scope alanı vardır.\r\n\r\n&nbsp;\r\n\r\nScope, programlama dilleri arasında ve bu dillerde kullanılan değişken tipleri arasında farklılık gösterebilir.\r\n\r\n&nbsp;','Scope (Kapsam)','','inherit','open','open','','12-revision-v1','','','2013-12-11 23:24:46','2013-12-11 23:24:46','',12,'http://hazarartuner.com/blog/?p=14',0,'revision','',0);

/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_term_relationships`;

CREATE TABLE `blog_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_term_relationships` WRITE;
/*!40000 ALTER TABLE `blog_term_relationships` DISABLE KEYS */;

INSERT INTO `blog_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,5,0),
	(1,7,0),
	(4,6,0),
	(6,6,0),
	(8,6,0),
	(9,6,0),
	(12,1,0);

/*!40000 ALTER TABLE `blog_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_term_taxonomy`;

CREATE TABLE `blog_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `blog_term_taxonomy` DISABLE KEYS */;

INSERT INTO `blog_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,0),
	(2,2,'category','',3,0),
	(3,3,'category','',0,0),
	(4,4,'category','',0,0),
	(5,5,'category','',0,1),
	(6,6,'nav_menu','',0,4),
	(7,7,'post_format','',0,1);

/*!40000 ALTER TABLE `blog_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_terms`;

CREATE TABLE `blog_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_terms` WRITE;
/*!40000 ALTER TABLE `blog_terms` DISABLE KEYS */;

INSERT INTO `blog_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'Püf Noktaları','puf-noktalari',0),
	(3,'Yazılım','yazilim',0),
	(4,'Karalamalar','karalamalar',0),
	(5,'Galeri','galeri',0),
	(6,'main-nav','main-nav',0),
	(7,'post-format-gallery','post-format-gallery',0);

/*!40000 ALTER TABLE `blog_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_usermeta`;

CREATE TABLE `blog_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_usermeta` WRITE;
/*!40000 ALTER TABLE `blog_usermeta` DISABLE KEYS */;

INSERT INTO `blog_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'first_name',''),
	(2,1,'last_name',''),
	(3,1,'nickname','hazartuner'),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'blog_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(11,1,'blog_user_level','10'),
	(12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks,tie_remal_pointer'),
	(13,1,'show_welcome_panel','1'),
	(14,1,'blog_dashboard_quick_press_last_post_id','3'),
	(15,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
	(16,1,'metaboxhidden_nav-menus','a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
	(17,1,'nav_menu_recently_edited','6');

/*!40000 ALTER TABLE `blog_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_users`;

CREATE TABLE `blog_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog_users` WRITE;
/*!40000 ALTER TABLE `blog_users` DISABLE KEYS */;

INSERT INTO `blog_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'hazartuner','$P$BlXQdgxNt//i9xZItpy4wJ9gwh5FLJ1','hazartuner','hazar.artuner@gmail.com','','2013-12-08 00:42:14','',0,'hazartuner');

/*!40000 ALTER TABLE `blog_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link_key` varchar(255) NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`category_id`, `name`, `link_key`, `order_num`)
VALUES
	(1,'Web Application','web-application',0),
	(3,'Desktop Application','desktop-application',0),
	(4,'Facebook Application','facebook-application',0),
	(5,'Game','game',0),
	(6,'3D','3d',0),
	(7,'Website','website',0),
	(8,'Real-Time','real-time',0),
	(9,'Service','service',0);

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_directory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_directory`;

CREATE TABLE `hpa_directory` (
  `directory_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `directory` char(255) NOT NULL,
  `is_favourite` tinyint(1) NOT NULL DEFAULT '-1',
  `access_type` char(20) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_directory` WRITE;
/*!40000 ALTER TABLE `hpa_directory` DISABLE KEYS */;

INSERT INTO `hpa_directory` (`directory_id`, `parent_id`, `name`, `directory`, `is_favourite`, `access_type`)
VALUES
	(1,-1,'Projects','Projects/',-1,'public'),
	(2,1,'bolluca','Projects/bolluca/',-1,'public'),
	(3,1,'pixeladmin','Projects/pixeladmin/',-1,'public'),
	(4,1,'typewonder','Projects/typewonder/',-1,'public'),
	(5,-1,'Kiosk','Kiosk/',-1,'public'),
	(6,5,'her_yasta_aktif_yasa','Kiosk/her_yasta_aktif_yasa/',-1,'public'),
	(7,-1,'WebApps','WebApps/',-1,'public'),
	(8,7,'bebek','WebApps/bebek/',-1,'public'),
	(9,-1,'WebSites','WebSites/',-1,'public'),
	(10,9,'3dlab','WebSites/3dlab/',-1,'public'),
	(11,9,'eczacibasi_hijyen','WebSites/eczacibasi_hijyen/',-1,'public'),
	(12,9,'fakir','WebSites/fakir/',-1,'public'),
	(13,7,'kendinicin','WebApps/kendinicin/',-1,'public'),
	(14,7,'learnbody','WebApps/learnbody/',-1,'public'),
	(15,9,'mobility','WebSites/mobility/',-1,'public'),
	(16,9,'nano','WebSites/nano/',-1,'public'),
	(17,9,'satis_ekibi','WebSites/satis_ekibi/',-1,'public'),
	(18,9,'vsp','WebSites/vsp/',-1,'public'),
	(19,-1,'FaceApps','FaceApps/',-1,'public'),
	(20,19,'fikiryumagi','FaceApps/fikiryumagi/',-1,'public'),
	(21,10,'png','WebSites/3dlab/png/',-1,'public'),
	(22,19,'dort_dortluk','FaceApps/dort_dortluk/',-1,'public'),
	(23,9,'arsamiea','WebSites/arsamiea/',-1,'public'),
	(24,23,'png','WebSites/arsamiea/png/',-1,'public');

/*!40000 ALTER TABLE `hpa_directory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_file`;

CREATE TABLE `hpa_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `basename` char(255) NOT NULL,
  `filename` char(255) NOT NULL,
  `directory_id` int(11) NOT NULL DEFAULT '-1',
  `url` char(255) NOT NULL,
  `type` char(20) NOT NULL,
  `extension` char(20) NOT NULL,
  `size` char(255) NOT NULL,
  `creation_time` datetime NOT NULL,
  `last_update_time` datetime NOT NULL,
  `width` int(11) NOT NULL DEFAULT '-1',
  `height` int(11) NOT NULL DEFAULT '-1',
  `thumb_file_id` int(11) NOT NULL DEFAULT '-1',
  `copied_file_id` int(11) NOT NULL DEFAULT '-1',
  `access_type` char(20) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_file` WRITE;
/*!40000 ALTER TABLE `hpa_file` DISABLE KEYS */;

INSERT INTO `hpa_file` (`file_id`, `basename`, `filename`, `directory_id`, `url`, `type`, `extension`, `size`, `creation_time`, `last_update_time`, `width`, `height`, `thumb_file_id`, `copied_file_id`, `access_type`)
VALUES
	(1,'aac.png','aac',-1,'aac.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(2,'ai.png','ai',-1,'ai.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(3,'aiff.png','aiff',-1,'aiff.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(4,'avi.png','avi',-1,'avi.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(5,'css.png','css',-1,'css.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(6,'doc.png','doc',-1,'doc.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(7,'docx.png','docx',-1,'docx.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(8,'generic.png','generic',-1,'generic.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(9,'gzip.png','gzip',-1,'gzip.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(10,'html.png','html',-1,'html.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(11,'js.png','js',-1,'js.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(12,'m4a.png','m4a',-1,'m4a.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(13,'m4v.png','m4v',-1,'m4v.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(14,'mov.png','mov',-1,'mov.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(15,'mp3.png','mp3',-1,'mp3.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(16,'mp4.png','mp4',-1,'mp4.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(17,'mpeg2.png','mpeg2',-1,'mpeg2.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(18,'mpg.png','mpg',-1,'mpg.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(19,'pdf.png','pdf',-1,'pdf.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(20,'php.png','php',-1,'php.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(21,'psd.png','psd',-1,'psd.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(22,'raw.png','raw',-1,'raw.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(23,'rtf.png','rtf',-1,'rtf.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(24,'tar.png','tar',-1,'tar.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(25,'tiff.png','tiff',-1,'tiff.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(26,'txt.png','txt',-1,'txt.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(27,'wav.png','wav',-1,'wav.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(28,'wmv.png','wmv',-1,'wmv.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(29,'zip.png','zip',-1,'zip.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(30,'flv.png','flv',-1,'flv.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(31,'f4v.png','f4v',-1,'f4v.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(32,'folder.png','folder',-1,'folder.png','image','png','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',58,51,-1,-1,'system'),
	(33,'exclamation.jpg','exclamation',-1,'exclamation.jpg','image','jpg','-1','0000-00-00 00:00:00','0000-00-00 00:00:00',123,87,-1,-1,'system'),
	(90,'3.jpg','3',2,'Projects/bolluca/3.jpg','image','jpg','0','2013-09-21 22:16:29','2013-09-21 22:16:29',1010,631,-1,-1,'public'),
	(91,'1.jpg','1',2,'Projects/bolluca/1.jpg','image','jpg','0','2013-09-21 22:16:31','2013-09-21 22:16:31',1010,631,-1,-1,'public'),
	(92,'2.jpg','2',2,'Projects/bolluca/2.jpg','image','jpg','0','2013-09-21 22:16:32','2013-09-21 22:16:32',1010,631,-1,-1,'public'),
	(93,'tkmcv.jpg','tkmcv',2,'Projects/bolluca/tkmcv.jpg','image','jpg','0','2013-09-21 22:21:42','2013-09-21 22:21:42',1010,552,-1,-1,'public'),
	(94,'1.jpg','1',3,'Projects/pixeladmin/1.jpg','image','jpg','0','2013-09-21 22:23:49','2013-09-21 22:23:49',1010,614,-1,-1,'public'),
	(95,'2.jpg','2',3,'Projects/pixeladmin/2.jpg','image','jpg','0','2013-09-21 22:23:51','2013-09-21 22:23:51',1010,572,-1,-1,'public'),
	(96,'3.jpg','3',3,'Projects/pixeladmin/3.jpg','image','jpg','0','2013-09-21 22:23:52','2013-09-21 22:23:52',1010,668,-1,-1,'public'),
	(97,'7.jpg','7',3,'Projects/pixeladmin/7.jpg','image','jpg','0','2013-09-21 22:23:54','2013-09-21 22:23:54',1010,668,-1,-1,'public'),
	(98,'5.jpg','5',3,'Projects/pixeladmin/5.jpg','image','jpg','0','2013-09-21 22:23:55','2013-09-21 22:23:55',1010,666,-1,-1,'public'),
	(99,'4.jpg','4',3,'Projects/pixeladmin/4.jpg','image','jpg','0','2013-09-21 22:23:56','2013-09-21 22:23:56',1010,668,-1,-1,'public'),
	(100,'12.jpg','12',3,'Projects/pixeladmin/12.jpg','image','jpg','0','2013-09-21 22:23:58','2013-09-21 22:23:58',1010,644,-1,-1,'public'),
	(101,'6.jpg','6',3,'Projects/pixeladmin/6.jpg','image','jpg','0','2013-09-21 22:23:59','2013-09-21 22:23:59',1010,1090,-1,-1,'public'),
	(102,'11.jpg','11',3,'Projects/pixeladmin/11.jpg','image','jpg','0','2013-09-21 22:24:01','2013-09-21 22:24:01',1010,692,-1,-1,'public'),
	(103,'8.jpg','8',3,'Projects/pixeladmin/8.jpg','image','jpg','0','2013-09-21 22:24:02','2013-09-21 22:24:02',1010,534,-1,-1,'public'),
	(104,'9.jpg','9',3,'Projects/pixeladmin/9.jpg','image','jpg','0','2013-09-21 22:24:03','2013-09-21 22:24:03',1010,534,-1,-1,'public'),
	(105,'10.jpg','10',3,'Projects/pixeladmin/10.jpg','image','jpg','0','2013-09-21 22:24:05','2013-09-21 22:24:05',1010,532,-1,-1,'public'),
	(106,'1.jpg','1',4,'Projects/typewonder/1.jpg','image','jpg','0','2013-09-21 23:07:37','2013-09-21 23:07:37',1010,710,-1,-1,'public'),
	(107,'4.jpg','4',4,'Projects/typewonder/4.jpg','image','jpg','0','2013-09-21 23:07:38','2013-09-21 23:07:38',1010,678,-1,-1,'public'),
	(108,'3.jpg','3',4,'Projects/typewonder/3.jpg','image','jpg','0','2013-09-21 23:07:40','2013-09-21 23:07:40',1010,710,-1,-1,'public'),
	(109,'2.jpg','2',4,'Projects/typewonder/2.jpg','image','jpg','0','2013-09-21 23:07:41','2013-09-21 23:07:41',1010,710,-1,-1,'public'),
	(110,'6.jpg','6',4,'Projects/typewonder/6.jpg','image','jpg','0','2013-09-21 23:07:43','2013-09-21 23:07:43',1010,614,-1,-1,'public'),
	(111,'5.jpg','5',4,'Projects/typewonder/5.jpg','image','jpg','0','2013-09-21 23:07:44','2013-09-21 23:07:44',1010,588,-1,-1,'public'),
	(112,'1.jpg','1',6,'Kiosk/her_yasta_aktif_yasa/1.jpg','image','jpg','0','2013-09-21 23:14:54','2013-09-21 23:14:54',1010,758,-1,-1,'public'),
	(113,'2.jpg','2',6,'Kiosk/her_yasta_aktif_yasa/2.jpg','image','jpg','0','2013-09-21 23:14:55','2013-09-21 23:14:55',1010,758,-1,-1,'public'),
	(114,'3.jpg','3',6,'Kiosk/her_yasta_aktif_yasa/3.jpg','image','jpg','0','2013-09-21 23:14:57','2013-09-21 23:14:57',1010,758,-1,-1,'public'),
	(115,'2.jpg','2',8,'WebApps/bebek/2.jpg','image','jpg','0','2013-09-21 23:19:30','2013-09-21 23:19:30',1010,570,-1,-1,'public'),
	(116,'4.jpg','4',8,'WebApps/bebek/4.jpg','image','jpg','0','2013-09-21 23:19:31','2013-09-21 23:19:31',1010,900,-1,-1,'public'),
	(117,'3.jpg','3',8,'WebApps/bebek/3.jpg','image','jpg','0','2013-09-21 23:19:33','2013-09-21 23:19:33',1330,880,-1,-1,'public'),
	(118,'5.jpg','5',8,'WebApps/bebek/5.jpg','image','jpg','0','2013-09-21 23:19:35','2013-09-21 23:19:35',1010,855,-1,-1,'public'),
	(119,'1.jpg','1',8,'WebApps/bebek/1.jpg','image','jpg','0','2013-09-21 23:19:36','2013-09-21 23:19:36',1010,1602,-1,-1,'public'),
	(120,'6.jpg','6',8,'WebApps/bebek/6.jpg','image','jpg','0','2013-09-21 23:19:38','2013-09-21 23:19:38',1010,1567,-1,-1,'public'),
	(122,'2.jpg','2',11,'WebSites/eczacibasi_hijyen/2.jpg','image','jpg','0','2013-09-21 23:27:22','2013-09-21 23:27:22',1010,938,-1,-1,'public'),
	(123,'1.jpg','1',11,'WebSites/eczacibasi_hijyen/1.jpg','image','jpg','0','2013-09-21 23:27:24','2013-09-21 23:27:24',1010,874,-1,-1,'public'),
	(124,'3.jpg','3',11,'WebSites/eczacibasi_hijyen/3.jpg','image','jpg','0','2013-09-21 23:27:25','2013-09-21 23:27:25',1010,962,-1,-1,'public'),
	(125,'4.jpg','4',11,'WebSites/eczacibasi_hijyen/4.jpg','image','jpg','0','2013-09-21 23:27:27','2013-09-21 23:27:27',1010,644,-1,-1,'public'),
	(126,'6.jpg','6',11,'WebSites/eczacibasi_hijyen/6.jpg','image','jpg','0','2013-09-21 23:27:28','2013-09-21 23:27:28',1010,1302,-1,-1,'public'),
	(127,'5.jpg','5',11,'WebSites/eczacibasi_hijyen/5.jpg','image','jpg','0','2013-09-21 23:27:29','2013-09-21 23:27:29',1334,1638,-1,-1,'public'),
	(128,'3.jpg','3',12,'WebSites/fakir/3.jpg','image','jpg','0','2013-09-21 23:30:39','2013-09-21 23:30:39',1010,532,-1,-1,'public'),
	(129,'9.jpg','9',12,'WebSites/fakir/9.jpg','image','jpg','0','2013-09-21 23:30:40','2013-09-21 23:30:40',1010,860,-1,-1,'public'),
	(130,'2.jpg','2',12,'WebSites/fakir/2.jpg','image','jpg','0','2013-09-21 23:30:42','2013-09-21 23:30:42',1010,534,-1,-1,'public'),
	(131,'4.jpg','4',12,'WebSites/fakir/4.jpg','image','jpg','0','2013-09-21 23:30:43','2013-09-21 23:30:43',1010,828,-1,-1,'public'),
	(132,'7.jpg','7',12,'WebSites/fakir/7.jpg','image','jpg','0','2013-09-21 23:30:45','2013-09-21 23:30:45',1010,1078,-1,-1,'public'),
	(133,'1.jpg','1',12,'WebSites/fakir/1.jpg','image','jpg','0','2013-09-21 23:30:46','2013-09-21 23:30:46',1010,1239,-1,-1,'public'),
	(134,'6.jpg','6',12,'WebSites/fakir/6.jpg','image','jpg','0','2013-09-21 23:30:48','2013-09-21 23:30:48',1010,1588,-1,-1,'public'),
	(135,'8.jpg','8',12,'WebSites/fakir/8.jpg','image','jpg','0','2013-09-21 23:30:49','2013-09-21 23:30:49',1010,650,-1,-1,'public'),
	(136,'5.jpg','5',12,'WebSites/fakir/5.jpg','image','jpg','0','2013-09-21 23:30:51','2013-09-21 23:30:51',1010,2482,-1,-1,'public'),
	(137,'5.jpg','5',13,'WebApps/kendinicin/5.jpg','image','jpg','0','2013-09-21 23:36:28','2013-09-21 23:36:28',1010,917,-1,-1,'public'),
	(138,'4.jpg','4',13,'WebApps/kendinicin/4.jpg','image','jpg','0','2013-09-21 23:36:30','2013-09-21 23:36:30',1010,1317,-1,-1,'public'),
	(139,'1.jpg','1',13,'WebApps/kendinicin/1.jpg','image','jpg','0','2013-09-21 23:36:31','2013-09-21 23:36:31',1010,1136,-1,-1,'public'),
	(140,'3.jpg','3',13,'WebApps/kendinicin/3.jpg','image','jpg','0','2013-09-21 23:36:33','2013-09-21 23:36:33',1010,838,-1,-1,'public'),
	(141,'2.jpg','2',13,'WebApps/kendinicin/2.jpg','image','jpg','0','2013-09-21 23:36:34','2013-09-21 23:36:34',1010,1303,-1,-1,'public'),
	(142,'3.jpg','3',14,'WebApps/learnbody/3.jpg','image','jpg','0','2013-09-21 23:41:32','2013-09-21 23:41:32',1010,709,-1,-1,'public'),
	(143,'6.jpg','6',14,'WebApps/learnbody/6.jpg','image','jpg','0','2013-09-21 23:41:34','2013-09-21 23:41:34',1010,642,-1,-1,'public'),
	(144,'4.jpg','4',14,'WebApps/learnbody/4.jpg','image','jpg','0','2013-09-21 23:41:35','2013-09-21 23:41:35',1010,870,-1,-1,'public'),
	(145,'5.jpg','5',14,'WebApps/learnbody/5.jpg','image','jpg','0','2013-09-21 23:41:37','2013-09-21 23:41:37',1010,643,-1,-1,'public'),
	(146,'1.jpg','1',14,'WebApps/learnbody/1.jpg','image','jpg','0','2013-09-21 23:41:38','2013-09-21 23:41:38',1010,1112,-1,-1,'public'),
	(147,'2.jpg','2',14,'WebApps/learnbody/2.jpg','image','jpg','0','2013-09-21 23:41:40','2013-09-21 23:41:40',1010,1206,-1,-1,'public'),
	(148,'4.jpg','4',15,'WebSites/mobility/4.jpg','image','jpg','0','2013-09-21 23:46:01','2013-09-21 23:46:01',1010,954,-1,-1,'public'),
	(149,'5.jpg','5',15,'WebSites/mobility/5.jpg','image','jpg','0','2013-09-21 23:46:02','2013-09-21 23:46:02',1010,934,-1,-1,'public'),
	(150,'1.jpg','1',15,'WebSites/mobility/1.jpg','image','jpg','0','2013-09-21 23:46:04','2013-09-21 23:46:04',1010,904,-1,-1,'public'),
	(151,'2.jpg','2',15,'WebSites/mobility/2.jpg','image','jpg','0','2013-09-21 23:46:05','2013-09-21 23:46:05',1010,932,-1,-1,'public'),
	(152,'3.jpg','3',15,'WebSites/mobility/3.jpg','image','jpg','0','2013-09-21 23:46:07','2013-09-21 23:46:07',1010,900,-1,-1,'public'),
	(153,'1.jpg','1',16,'WebSites/nano/1.jpg','image','jpg','0','2013-09-21 23:49:50','2013-09-21 23:49:50',1010,636,-1,-1,'public'),
	(154,'5.jpg','5',16,'WebSites/nano/5.jpg','image','jpg','0','2013-09-21 23:49:52','2013-09-21 23:49:52',1010,876,-1,-1,'public'),
	(155,'3.jpg','3',16,'WebSites/nano/3.jpg','image','jpg','0','2013-09-21 23:49:53','2013-09-21 23:49:53',1010,617,-1,-1,'public'),
	(156,'4.jpg','4',16,'WebSites/nano/4.jpg','image','jpg','0','2013-09-21 23:49:55','2013-09-21 23:49:55',1010,967,-1,-1,'public'),
	(157,'2.jpg','2',16,'WebSites/nano/2.jpg','image','jpg','0','2013-09-21 23:49:56','2013-09-21 23:49:56',1010,631,-1,-1,'public'),
	(158,'3.jpg','3',17,'WebSites/satis_ekibi/3.jpg','image','jpg','0','2013-09-21 23:52:34','2013-09-21 23:52:34',1010,1028,-1,-1,'public'),
	(159,'2.jpg','2',17,'WebSites/satis_ekibi/2.jpg','image','jpg','0','2013-09-21 23:52:35','2013-09-21 23:52:35',1010,1340,-1,-1,'public'),
	(160,'1.jpg','1',17,'WebSites/satis_ekibi/1.jpg','image','jpg','0','2013-09-21 23:52:37','2013-09-21 23:52:37',1010,884,-1,-1,'public'),
	(161,'4.jpg','4',17,'WebSites/satis_ekibi/4.jpg','image','jpg','0','2013-09-21 23:52:39','2013-09-21 23:52:39',1010,1150,-1,-1,'public'),
	(162,'5.jpg','5',17,'WebSites/satis_ekibi/5.jpg','image','jpg','0','2013-09-21 23:52:40','2013-09-21 23:52:40',1010,944,-1,-1,'public'),
	(163,'5.jpg','5',18,'WebSites/vsp/5.jpg','image','jpg','0','2013-09-21 23:56:34','2013-09-21 23:56:34',1010,568,-1,-1,'public'),
	(164,'1.jpg','1',18,'WebSites/vsp/1.jpg','image','jpg','0','2013-09-21 23:56:35','2013-09-21 23:56:35',1010,568,-1,-1,'public'),
	(165,'7.jpg','7',18,'WebSites/vsp/7.jpg','image','jpg','0','2013-09-21 23:56:37','2013-09-21 23:56:37',1010,568,-1,-1,'public'),
	(166,'6.jpg','6',18,'WebSites/vsp/6.jpg','image','jpg','0','2013-09-21 23:56:38','2013-09-21 23:56:38',1010,568,-1,-1,'public'),
	(167,'2.jpg','2',18,'WebSites/vsp/2.jpg','image','jpg','0','2013-09-21 23:56:40','2013-09-21 23:56:40',1010,568,-1,-1,'public'),
	(168,'3.jpg','3',18,'WebSites/vsp/3.jpg','image','jpg','0','2013-09-21 23:56:41','2013-09-21 23:56:41',1010,568,-1,-1,'public'),
	(169,'4.jpg','4',18,'WebSites/vsp/4.jpg','image','jpg','0','2013-09-21 23:56:43','2013-09-21 23:56:43',1010,568,-1,-1,'public'),
	(170,'1.jpg','1',20,'FaceApps/fikiryumagi/1.jpg','image','jpg','0','2013-09-22 00:07:10','2013-09-22 00:07:10',1010,818,-1,-1,'public'),
	(171,'5.jpg','5',20,'FaceApps/fikiryumagi/5.jpg','image','jpg','0','2013-09-22 00:07:11','2013-09-22 00:07:11',1010,786,-1,-1,'public'),
	(172,'6.jpg','6',20,'FaceApps/fikiryumagi/6.jpg','image','jpg','0','2013-09-22 00:07:13','2013-09-22 00:07:13',1010,818,-1,-1,'public'),
	(173,'3.jpg','3',20,'FaceApps/fikiryumagi/3.jpg','image','jpg','0','2013-09-22 00:07:14','2013-09-22 00:07:14',1010,786,-1,-1,'public'),
	(174,'4.jpg','4',20,'FaceApps/fikiryumagi/4.jpg','image','jpg','0','2013-09-22 00:07:16','2013-09-22 00:07:16',1010,804,-1,-1,'public'),
	(175,'2.jpg','2',20,'FaceApps/fikiryumagi/2.jpg','image','jpg','0','2013-09-22 00:07:17','2013-09-22 00:07:17',1010,1032,-1,-1,'public'),
	(176,'7.jpg','7',20,'FaceApps/fikiryumagi/7.jpg','image','jpg','0','2013-09-22 00:07:19','2013-09-22 00:07:19',1010,712,-1,-1,'public'),
	(178,'3dlab.jpg','3dlab',10,'WebSites/3dlab/3dlab.jpg','image','jpg','0','2013-09-29 16:45:24','2013-09-29 16:45:24',1010,1462,-1,-1,'public'),
	(179,'3dlab.png','3dlab',21,'WebSites/3dlab/png/3dlab.png','image','png','0','2013-09-29 16:45:50','2013-09-29 16:45:50',1010,1462,-1,-1,'public'),
	(180,'10.png','10',22,'FaceApps/dort_dortluk/10.png','image','png','0','2014-01-19 04:33:39','2014-01-19 04:33:39',1440,900,-1,-1,'public'),
	(181,'4.png','4',22,'FaceApps/dort_dortluk/4.png','image','png','0','2014-01-19 04:33:46','2014-01-19 04:33:46',1440,900,-1,-1,'public'),
	(182,'2.png','2',22,'FaceApps/dort_dortluk/2.png','image','png','0','2014-01-19 04:33:52','2014-01-19 04:33:52',1440,900,-1,-1,'public'),
	(183,'6.png','6',22,'FaceApps/dort_dortluk/6.png','image','png','0','2014-01-19 04:33:53','2014-01-19 04:33:53',1440,900,-1,-1,'public'),
	(184,'1.png','1',22,'FaceApps/dort_dortluk/1.png','image','png','0','2014-01-19 04:33:57','2014-01-19 04:33:57',1440,900,-1,-1,'public'),
	(185,'8.png','8',22,'FaceApps/dort_dortluk/8.png','image','png','0','2014-01-19 04:34:00','2014-01-19 04:34:00',1440,900,-1,-1,'public'),
	(186,'3.png','3',22,'FaceApps/dort_dortluk/3.png','image','png','0','2014-01-19 04:34:10','2014-01-19 04:34:10',1440,900,-1,-1,'public'),
	(187,'5.png','5',22,'FaceApps/dort_dortluk/5.png','image','png','0','2014-01-19 04:34:22','2014-01-19 04:34:22',1440,900,-1,-1,'public'),
	(188,'9.png','9',22,'FaceApps/dort_dortluk/9.png','image','png','0','2014-01-19 04:34:23','2014-01-19 04:34:23',1440,900,-1,-1,'public'),
	(189,'7.png','7',22,'FaceApps/dort_dortluk/7.png','image','png','0','2014-01-19 04:34:24','2014-01-19 04:34:24',1440,900,-1,-1,'public'),
	(190,'2.png','2',24,'WebSites/arsamiea/png/2.png','image','png','0','2014-01-20 18:07:32','2014-01-20 18:07:32',1440,2008,-1,-1,'public'),
	(191,'4.png','4',24,'WebSites/arsamiea/png/4.png','image','png','0','2014-01-20 18:07:39','2014-01-20 18:07:39',1440,2008,-1,-1,'public'),
	(192,'3.png','3',24,'WebSites/arsamiea/png/3.png','image','png','0','2014-01-20 18:07:48','2014-01-20 18:07:48',1440,2008,-1,-1,'public'),
	(193,'1.png','1',24,'WebSites/arsamiea/png/1.png','image','png','0','2014-01-20 18:07:51','2014-01-20 18:07:51',1440,2008,-1,-1,'public'),
	(194,'4.jpg','4',23,'WebSites/arsamiea/4.jpg','image','jpg','0','2014-01-20 18:09:18','2014-01-20 18:09:18',1440,2008,-1,-1,'public'),
	(195,'2.jpg','2',23,'WebSites/arsamiea/2.jpg','image','jpg','0','2014-01-20 18:09:21','2014-01-20 18:09:21',1440,2008,-1,-1,'public'),
	(196,'1.jpg','1',23,'WebSites/arsamiea/1.jpg','image','jpg','0','2014-01-20 18:09:28','2014-01-20 18:09:28',1440,2008,-1,-1,'public'),
	(197,'3.jpg','3',23,'WebSites/arsamiea/3.jpg','image','jpg','0','2014-01-20 18:09:29','2014-01-20 18:09:29',1440,2008,-1,-1,'public');

/*!40000 ALTER TABLE `hpa_file` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_file_thumb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_file_thumb`;

CREATE TABLE `hpa_file_thumb` (
  `file_id` int(11) NOT NULL,
  `thumb_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`,`thumb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_file_thumb` WRITE;
/*!40000 ALTER TABLE `hpa_file_thumb` DISABLE KEYS */;

INSERT INTO `hpa_file_thumb` (`file_id`, `thumb_id`)
VALUES
	(90,31),
	(90,35),
	(91,7),
	(91,29),
	(91,33),
	(91,37),
	(91,220),
	(91,221),
	(91,222),
	(91,223),
	(91,224),
	(92,30),
	(92,34),
	(93,32),
	(93,36),
	(94,44),
	(94,80),
	(94,270),
	(95,8),
	(95,54),
	(95,90),
	(95,92),
	(95,262),
	(96,53),
	(96,89),
	(96,274),
	(97,49),
	(97,85),
	(97,278),
	(98,51),
	(98,87),
	(98,276),
	(99,52),
	(99,88),
	(99,275),
	(100,55),
	(100,91),
	(100,273),
	(101,50),
	(101,86),
	(101,277),
	(102,45),
	(102,81),
	(102,272),
	(103,48),
	(103,84),
	(103,279),
	(104,47),
	(104,83),
	(104,280),
	(105,46),
	(105,82),
	(105,271),
	(105,281),
	(106,9),
	(106,69),
	(106,100),
	(106,106),
	(106,225),
	(107,72),
	(107,103),
	(108,71),
	(108,102),
	(109,70),
	(109,101),
	(110,74),
	(110,105),
	(111,73),
	(111,104),
	(112,10),
	(112,66),
	(112,143),
	(112,146),
	(112,282),
	(113,67),
	(113,144),
	(113,268),
	(114,68),
	(114,145),
	(114,269),
	(115,2),
	(115,122),
	(115,284),
	(116,4),
	(116,124),
	(116,286),
	(117,3),
	(117,123),
	(117,285),
	(118,5),
	(118,125),
	(118,287),
	(119,1),
	(119,11),
	(119,121),
	(119,128),
	(119,226),
	(119,289),
	(120,6),
	(120,126),
	(120,288),
	(122,39),
	(122,137),
	(122,230),
	(123,13),
	(123,38),
	(123,136),
	(123,142),
	(123,266),
	(124,40),
	(124,138),
	(124,231),
	(125,41),
	(125,139),
	(125,232),
	(126,43),
	(126,141),
	(126,234),
	(127,42),
	(127,140),
	(127,233),
	(128,59),
	(128,114),
	(128,236),
	(129,65),
	(129,120),
	(129,242),
	(130,58),
	(130,113),
	(130,235),
	(131,60),
	(131,115),
	(131,237),
	(132,63),
	(132,118),
	(132,240),
	(133,14),
	(133,57),
	(133,112),
	(133,127),
	(133,229),
	(134,62),
	(134,117),
	(134,239),
	(135,64),
	(135,119),
	(135,241),
	(136,61),
	(136,116),
	(136,238),
	(137,98),
	(137,111),
	(138,97),
	(138,110),
	(139,15),
	(139,94),
	(139,99),
	(139,107),
	(139,227),
	(140,96),
	(140,109),
	(141,95),
	(141,108),
	(142,131),
	(142,196),
	(143,134),
	(143,199),
	(144,132),
	(144,197),
	(145,133),
	(145,198),
	(146,16),
	(146,129),
	(146,135),
	(146,194),
	(146,265),
	(147,130),
	(147,195),
	(148,176),
	(148,192),
	(149,177),
	(149,193),
	(150,17),
	(150,173),
	(150,180),
	(150,189),
	(150,283),
	(151,174),
	(151,190),
	(152,175),
	(152,191),
	(153,18),
	(153,147),
	(153,152),
	(153,205),
	(153,261),
	(154,151),
	(154,209),
	(155,149),
	(155,207),
	(156,150),
	(156,208),
	(157,148),
	(157,206),
	(158,155),
	(158,202),
	(159,154),
	(159,201),
	(160,19),
	(160,153),
	(160,158),
	(160,200),
	(160,264),
	(161,156),
	(161,203),
	(162,157),
	(162,204),
	(163,163),
	(163,185),
	(164,20),
	(164,159),
	(164,178),
	(164,181),
	(164,267),
	(165,165),
	(165,187),
	(166,164),
	(166,186),
	(167,160),
	(167,182),
	(168,161),
	(168,183),
	(169,162),
	(169,184),
	(170,21),
	(170,22),
	(170,166),
	(170,179),
	(170,263),
	(171,26),
	(171,170),
	(172,27),
	(172,171),
	(173,24),
	(173,168),
	(174,25),
	(174,169),
	(175,23),
	(175,167),
	(176,28),
	(176,172),
	(178,77),
	(178,79),
	(178,93),
	(178,188),
	(178,228),
	(179,78),
	(180,210),
	(181,211),
	(182,212),
	(183,213),
	(184,214),
	(185,215),
	(186,216),
	(187,217),
	(188,218),
	(189,219),
	(190,243),
	(191,244),
	(192,245),
	(193,246),
	(194,247),
	(194,254),
	(194,259),
	(195,248),
	(195,252),
	(195,257),
	(196,249),
	(196,251),
	(196,255),
	(196,256),
	(196,260),
	(197,250),
	(197,253),
	(197,258);

/*!40000 ALTER TABLE `hpa_file_thumb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_gallery`;

CREATE TABLE `hpa_gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(20) NOT NULL DEFAULT 'temporary',
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_gallery` WRITE;
/*!40000 ALTER TABLE `hpa_gallery` DISABLE KEYS */;

INSERT INTO `hpa_gallery` (`gallery_id`, `status`)
VALUES
	(1,'temporary'),
	(2,'temporary'),
	(3,'temporary'),
	(4,'temporary'),
	(5,'temporary'),
	(6,'temporary'),
	(7,'temporary'),
	(8,'temporary'),
	(9,'temporary'),
	(10,'temporary'),
	(11,'temporary'),
	(12,'temporary'),
	(13,'temporary'),
	(14,'temporary'),
	(15,'temporary'),
	(16,'temporary'),
	(17,'temporary'),
	(18,'temporary'),
	(19,'temporary'),
	(20,'temporary'),
	(21,'temporary'),
	(22,'temporary'),
	(23,'temporary');

/*!40000 ALTER TABLE `hpa_gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_gallery_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_gallery_file`;

CREATE TABLE `hpa_gallery_file` (
  `gallery_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`gallery_id`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_gallery_file` WRITE;
/*!40000 ALTER TABLE `hpa_gallery_file` DISABLE KEYS */;

INSERT INTO `hpa_gallery_file` (`gallery_id`, `file_id`, `order_num`)
VALUES
	(1,34,0),
	(1,35,1),
	(5,34,0),
	(6,34,0),
	(6,35,1),
	(9,37,0),
	(9,38,1),
	(9,39,3),
	(9,40,2),
	(9,41,4),
	(10,43,1),
	(10,44,0),
	(10,45,2),
	(11,46,5),
	(11,47,3),
	(11,48,4),
	(11,49,2),
	(11,50,1),
	(11,51,0),
	(13,54,0),
	(13,55,1),
	(13,56,2),
	(13,57,3),
	(14,58,3),
	(14,59,2),
	(14,60,1),
	(14,61,0),
	(15,64,0),
	(15,65,1),
	(15,66,2),
	(15,67,3),
	(16,68,0),
	(16,69,1),
	(17,72,2),
	(17,73,1),
	(17,74,0),
	(17,75,3),
	(18,76,0),
	(19,79,1),
	(19,80,2),
	(19,81,0),
	(20,82,0),
	(20,83,1),
	(21,86,2),
	(21,87,3),
	(21,88,0),
	(21,89,1);

/*!40000 ALTER TABLE `hpa_gallery_file` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_group`;

CREATE TABLE `hpa_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table hpa_group_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_group_permission`;

CREATE TABLE `hpa_group_permission` (
  `group_id` int(11) NOT NULL,
  `permission_key` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`group_id`,`permission_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table hpa_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_i18n`;

CREATE TABLE `hpa_i18n` (
  `i18nCode` char(255) NOT NULL,
  `scope` char(50) NOT NULL,
  `tr_TR` text,
  `en_US` text,
  PRIMARY KEY (`i18nCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_i18n` WRITE;
/*!40000 ALTER TABLE `hpa_i18n` DISABLE KEYS */;

INSERT INTO `hpa_i18n` (`i18nCode`, `scope`, `tr_TR`, `en_US`)
VALUES
	('524895f1598311000','','Homepage',NULL),
	('524895f1598321000','','',NULL),
	('5248962f3e15c1000','','Profile',NULL),
	('524896303e15d1000','','',NULL),
	('5248964b704be1000','','Works',NULL),
	('5248964c704bf1000','','',NULL),
	('52489660267041000','','Contact',NULL),
	('52489662267051000','','',NULL);

/*!40000 ALTER TABLE `hpa_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_language`;

CREATE TABLE `hpa_language` (
  `locale` varchar(8) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `language_abbr` varchar(4) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_abbr` varchar(4) NOT NULL,
  `date_format` varchar(25) NOT NULL DEFAULT '%d %M %y',
  `status` tinyint(2) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_language` WRITE;
/*!40000 ALTER TABLE `hpa_language` DISABLE KEYS */;

INSERT INTO `hpa_language` (`locale`, `language_name`, `language_abbr`, `country_name`, `country_abbr`, `date_format`, `status`)
VALUES
	('ar_AE','Arabic','ar','United Arab Emirates','AE','%d %M %y',-1),
	('ar_BH','Arabic','ar','Bahrain','BH','%d %M %y',-1),
	('ar_DZ','Arabic','ar','Algeria','DZ','%d %M %y',-1),
	('ar_EG','Arabic','ar','Egypt','EG','%d %M %y',-1),
	('ar_IN','Arabic','ar','India','IN','%d %M %y',-1),
	('ar_IQ','Arabic','ar','Iraq','IQ','%d %M %y',-1),
	('ar_JO','Arabic','ar','Jordan','JO','%d %M %y',-1),
	('ar_KW','Arabic','ar','Kuwait','KW','%d %M %y',-1),
	('ar_LB','Arabic','ar','Lebanon','LB','%d %M %y',-1),
	('ar_LY','Arabic','ar','Libya','LY','%d %M %y',-1),
	('ar_MA','Arabic','ar','Morocco','MA','%d %M %y',-1),
	('ar_OM','Arabic','ar','Oman','OM','%d %M %y',-1),
	('ar_QA','Arabic','ar','Qatar','QA','%d %M %y',-1),
	('ar_SA','Arabic','ar','Saudi Arabia','SA','%d %M %y',-1),
	('ar_SD','Arabic','ar','Sudan','SD','%d %M %y',-1),
	('ar_SY','Arabic','ar','Syria','SY','%d %M %y',-1),
	('ar_TN','Arabic','ar','Tunisia','TN','%d %M %y',-1),
	('ar_YE','Arabic','ar','Yemen','YE','%d %M %y',-1),
	('be_BY','Belarusian','be','Belarus','BY','%d %M %y',-1),
	('bg_BG','Bulgarian','bg','Bulgaria','BG','%d %M %y',-1),
	('ca_ES','Catalan','ca','Spain','ES','%d %M %y',-1),
	('cs_CZ','Czech','cs','Czech Republic','CZ','%d %M %y',-1),
	('da_DK','Danish','da','Denmark','DK','%d %M %y',-1),
	('de_AT','German','de','Austria','AT','%d %M %y',-1),
	('de_BE','German','de','Belgium','BE','%d %M %y',-1),
	('de_CH','German','de','Switzerland','CH','%d %M %y',-1),
	('de_DE','German','de','Germany','DE','%d %M %y',-1),
	('de_LU','German','de','Luxembourg','LU','%d %M %y',-1),
	('en_AU','English','en','Australia','AU','%d %M %y',-1),
	('en_CA','English','en','Canada','CA','%d %M %y',-1),
	('en_GB','English','en','United Kingdom','GB','%d %M %y',-1),
	('en_IN','English','en','India','IN','%d %M %y',-1),
	('en_NZ','English','en','New Zealand','NZ','%d %M %y',-1),
	('en_PH','English','en','Philippines','PH','%d %M %y',-1),
	('en_US','English','en','United States','US','%d %M %y',1),
	('en_ZA','English','en','South Africa','ZA','%d %M %y',-1),
	('en_ZW','English','en','Zimbabwe','ZW','%d %M %y',-1),
	('es_AR','Spanish','es','Argentina','AR','%d %M %y',-1),
	('es_BO','Spanish','es','Bolivia','BO','%d %M %y',-1),
	('es_CL','Spanish','es','Chile','CL','%d %M %y',-1),
	('es_CO','Spanish','es','Columbia','CO','%d %M %y',-1),
	('es_CR','Spanish','es','Costa Rica','CR','%d %M %y',-1),
	('es_DO','Spanish','es','Dominican Republic','DO','%d %M %y',-1),
	('es_EC','Spanish','es','Ecuador','EC','%d %M %y',-1),
	('es_ES','Spanish','es','Spain','ES','%d %M %y',-1),
	('es_GT','Spanish','es','Guatemala','GT','%d %M %y',-1),
	('es_HN','Spanish','es','Honduras','HN','%d %M %y',-1),
	('es_MX','Spanish','es','Mexico','MX','%d %M %y',-1),
	('es_NI','Spanish','es','Nicaragua','NI','%d %M %y',-1),
	('es_PA','Spanish','es','Panama','PA','%d %M %y',-1),
	('es_PE','Spanish','es','Peru','PE','%d %M %y',-1),
	('es_PR','Spanish','es','Puerto Rico','PR','%d %M %y',-1),
	('es_PY','Spanish','es','Paraguay','PY','%d %M %y',-1),
	('es_SV','Spanish','es','El Salvador','SV','%d %M %y',-1),
	('es_US','Spanish','es','United States','US','%d %M %y',-1),
	('es_UY','Spanish','es','Uruguay','UY','%d %M %y',-1),
	('es_VE','Spanish','es','Venezuela','VE','%d %M %y',-1),
	('et_EE','Estonian','et','Estonia','EE','%d %M %y',-1),
	('eu_ES','Basque','eu','Basque','ES','%d %M %y',-1),
	('fi_FI','Finnish','fi','Finland','FI','%d %M %y',-1),
	('fo_FO','Faroese','fo','Faroe Islands','FO','%d %M %y',-1),
	('fr_BE','French','fr','Belgium','BE','%d %M %y',-1),
	('fr_CA','French','fr','Canada','CA','%d %M %y',-1),
	('fr_CH','French','fr','Switzerland','CH','%d %M %y',-1),
	('fr_FR','French','fr','France','FR','%d %M %y',-1),
	('fr_LU','French','fr','Luxembourg','LU','%d %M %y',-1),
	('gl_ES','Galician','gl','Spain','ES','%d %M %y',-1),
	('gu_IN','Gujarati','gu','India','IN','%d %M %y',-1),
	('he_IL','Hebrew','he','Israel','IL','%d %M %y',-1),
	('hi_IN','Hindi','hi','India','IN','%d %M %y',-1),
	('hr_HR','Croatian','hr','Croatia','HR','%d %M %y',-1),
	('hu_HU','Hungarian','hu','Hungary','HU','%d %M %y',-1),
	('id_ID','Indonesian','id','Indonesia','ID','%d %M %y',-1),
	('is_IS','Icelandic','is','Iceland','IS','%d %M %y',-1),
	('it_CH','Italian','it','Switzerland','CH','%d %M %y',-1),
	('it_IT','Italian','it','Italy','IT','%d %M %y',-1),
	('ja_JP','Japanese','ja','Japan','JP','%d %M %y',-1),
	('ko_KR','Korean','ko','Republic of Korea','KR','%d %M %y',-1),
	('lt_LT','Lithuanian','lt','Lithuania','LT','%d %M %y',-1),
	('lv_LV','Latvian','lv','Latvia','LV','%d %M %y',-1),
	('mk_MK','Macedonian','mk','FYROM','MK','%d %M %y',-1),
	('mn_MN','Mongolia','mn','Mongolian','MN','%d %M %y',-1),
	('ms_MY','Malay','ms','Malaysia','MY','%d %M %y',-1),
	('nb_NO','Norwegian(Bokmål)','nb','Norway','NO','%d %M %y',-1),
	('nl_BE','Dutch','nl','Belgium','BE','%d %M %y',-1),
	('nl_NL','Dutch','nl','The Netherlands','NL','%d %M %y',-1),
	('no_NO','Norwegian','no','Norway','NO','%d %M %y',-1),
	('pl_PL','Polish','pl','Poland','PL','%d %M %y',-1),
	('pt_BR','Portugese','pt','Brazil','BR','%d %M %y',-1),
	('pt_PT','Portugese','pt','Portugal','PT','%d %M %y',-1),
	('ro_RO','Romanian','ro','Romania','RO','%d %M %y',-1),
	('ru_RU','Russian','ru','Russia','RU','%d %M %y',-1),
	('ru_UA','Russian','ru','Ukraine','UA','%d %M %y',-1),
	('sk_SK','Slovak','sk','Slovakia','SK','%d %M %y',-1),
	('sl_SI','Slovenian','sl','Slovenia','SI','%d %M %y',-1),
	('sq_AL','Albanian','sq','Albania','AL','%d %M %y',-1),
	('sr_YU','Serbian','sr','Yugoslavia','YU','%d %M %y',-1),
	('sv_FI','Swedish','sv','Finland','FI','%d %M %y',-1),
	('sv_SE','Swedish','sv','Sweden','SE','%d %M %y',-1),
	('ta_IN','Tamil','ta','India','IN','%d %M %y',-1),
	('te_IN','Telugu','te','India','IN','%d %M %y',-1),
	('th_TH','Thai','th','Thailand','TH','%d %M %y',-1),
	('tr_TR','Türkçe','tr','Turkey','TR','%d %M %y',10),
	('uk_UA','Ukrainian','uk','Ukraine','UA','%d %M %y',-1),
	('ur_PK','Urdu','ur','Pakistan','PK','%d %M %y',-1),
	('vi_VN','Vietnamese','vi','Viet Nam','VN','%d %M %y',-1),
	('zh_CN','Chinese','zh','China','CN','%d %M %y',-1),
	('zh_HK','Chinese','zh','Hong Kong','HK','%d %M %y',-1);

/*!40000 ALTER TABLE `hpa_language` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_log`;

CREATE TABLE `hpa_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `log` text NOT NULL,
  `type` char(20) NOT NULL DEFAULT 'log',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_log` WRITE;
/*!40000 ALTER TABLE `hpa_log` DISABLE KEYS */;

INSERT INTO `hpa_log` (`log_id`, `user_id`, `date`, `log`, `type`)
VALUES
	(1,1,'2013-08-26 20:36:04','giriş yaptı','log'),
	(2,1,'2013-08-27 09:26:34','giriş yaptı','log'),
	(3,1,'2013-08-27 05:07:45','giriş yaptı','log'),
	(4,1,'2013-08-27 05:17:23','giriş yaptı','log'),
	(5,1,'2013-08-27 06:49:51','giriş yaptı','log'),
	(6,1,'2013-09-20 22:13:42','giriş yaptı','log'),
	(7,1,'2013-09-22 14:44:59','giriş yaptı','log'),
	(8,1,'2013-09-23 00:06:41','giriş yaptı','log'),
	(9,1,'2013-09-23 04:09:03','giriş yaptı','log'),
	(10,1,'2013-09-23 08:25:27','giriş yaptı','log'),
	(11,1,'2013-09-23 11:26:45','giriş yaptı','log'),
	(12,1,'2013-09-29 16:36:58','giriş yaptı','log'),
	(13,1,'2013-09-29 14:09:41','giriş yaptı','log'),
	(14,1,'2013-10-01 00:29:24','giriş yaptı','log'),
	(15,1,'2013-11-15 03:57:28','giriş yaptı','log'),
	(16,1,'2014-01-19 04:32:06','giriş yaptı','log'),
	(17,1,'2014-01-20 03:27:44','giriş yaptı','log'),
	(18,1,'2014-01-20 17:59:05','giriş yaptı','log'),
	(19,1,'2014-01-27 05:38:27','giriş yaptı','log'),
	(20,1,'2014-02-19 05:18:37','giriş yaptı','log'),
	(21,1,'2014-08-21 07:50:26','giriş yaptı','log'),
	(22,1,'2014-10-07 04:27:38','giriş yaptı','log'),
	(23,1,'2014-10-09 03:04:00','giriş yaptı','log'),
	(24,1,'2014-10-14 06:47:30','giriş yaptı','log'),
	(25,1,'2014-12-21 15:12:06','giriş yaptı','log'),
	(26,1,'2014-12-21 15:12:51','çıkış yaptı','log'),
	(27,1,'2014-12-23 06:50:46','giriş yaptı','log'),
	(28,1,'2015-01-18 09:14:32','giriş yaptı','log'),
	(29,1,'2015-08-20 06:56:28','giriş yaptı','log'),
	(30,1,'2015-08-20 06:58:31','çıkış yaptı','log');

/*!40000 ALTER TABLE `hpa_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_message`;

CREATE TABLE `hpa_message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `fromName` char(100) NOT NULL,
  `subject` char(255) NOT NULL,
  `message` text NOT NULL,
  `submitTime` datetime NOT NULL,
  `readStatus` char(20) NOT NULL DEFAULT 'unread',
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table hpa_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_option`;

CREATE TABLE `hpa_option` (
  `option_name` char(255) NOT NULL,
  `option_value` text NOT NULL,
  `group_name` char(255) NOT NULL,
  `data_type` char(20) NOT NULL,
  PRIMARY KEY (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_option` WRITE;
/*!40000 ALTER TABLE `hpa_option` DISABLE KEYS */;

INSERT INTO `hpa_option` (`option_name`, `option_value`, `group_name`, `data_type`)
VALUES
	('ABOUT_ME_TEXT','Hi! this is Mehmet Hazar Artuner. I\'m a freelance software developer\r\nand a physics student at Marmara University.\r\n\r\nI\'ve got involved different types and size of projects.\r\nIn this page you can look at some of them.\r\n\r\nMy abilities are UX Design, Back-End / Front-End Development, \r\nDatabase Design and Game Development.\r\n\r\nI like body-building, playing basketball and playing piano.\r\n\r\nI\'m available for freelance projects, \r\nget in touch via hi@hazarartuner.com ','','string'),
	('ABOUT_ME_TITLE','About me','','string'),
	('admin_active_modules','./modules/project/,./modules/pages/,','','string'),
	('admin_analystics','<script type=\"text/javascript\">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([\'_setAccount\', \'UA-23799955-4\']);\r\n  _gaq.push([\'_trackPageview\']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>','pa_settings','string'),
	('admin_debug_mode','debugmode','','string'),
	('admin_description','Hi! this is Mehmet Hazar Artuner. I\'m a freelance software developer and a physics student at Marmara University.','pa_settings','string'),
	('admin_display_mode','public','','string'),
	('admin_facebook','','pa_settings','string'),
	('admin_get_mail_address','hazar.artuner@gmail.com','pa_settings','string'),
	('admin_isSmtpMail',' checked=\"checked\" ','pa_settings','string'),
	('admin_keywords','','pa_settings','string'),
	('admin_mailHost','mail.hazarartuner.com','pa_settings','string'),
	('admin_mailPassword','haZAR.1987','pa_settings','string'),
	('admin_mail_port','587','pa_settings','string'),
	('admin_mail_user','hi@hazarartuner.com','pa_settings','string'),
	('admin_multilanguage_mode','multilanguage','','string'),
	('admin_postMessage','','','string'),
	('admin_predefined_crop_resolutions','[[1024,768],[800,600],[640,480]]','','array'),
	('admin_site_address','http://hazarartuner.com/','pa_settings','string'),
	('admin_site_title','Mehmet Hazar Artuner / Personal Portfolio','pa_settings','string'),
	('admin_twitter','','pa_settings','string'),
	('AVAILABLE_FOR_FREELANCE','available','','string'),
	('CONTACT_BEHANCE','http://www.behance.net/ardacan','','string'),
	('CONTACT_FACEBOOK','https://www.facebook.com/hazar.artuner','','string'),
	('CONTACT_FORM_ADDRESS','hazar.artuner@gmail.com','','string'),
	('CONTACT_LINKEDIN','http://lnkd.in/Sr26-V','','string'),
	('CONTACT_TWITTER','https://twitter.com/hazar_artuner','','string'),
	('SLOGAN_ABOUT_ME','Here I Am','','string'),
	('SLOGAN_ALT_ABOUT_ME','Let\'s talk about me.','','string'),
	('SLOGAN_ALT_CONTACT','or just say hello..','','string'),
	('SLOGAN_ALT_HOMEPAGE','I\'m a Freelance Software Developer','','string'),
	('SLOGAN_CONTACT','Let’s Work Together,','','string'),
	('SLOGAN_HOMEPAGE','Hi! this is Mehmet Hazar Artuner','','string');

/*!40000 ALTER TABLE `hpa_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_permission`;

CREATE TABLE `hpa_permission` (
  `permission_key` varchar(50) COLLATE utf8_bin NOT NULL,
  `permission_parent` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `permission_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`permission_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table hpa_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_role`;

CREATE TABLE `hpa_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `hpa_role` WRITE;
/*!40000 ALTER TABLE `hpa_role` DISABLE KEYS */;

INSERT INTO `hpa_role` (`role_id`, `role_name`, `order_num`)
VALUES
	(1,X'59C3B66E6574696369',0),
	(2,X'53C4B16EC4B1726CC4B12059C3B66E6574696369',0);

/*!40000 ALTER TABLE `hpa_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_role_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_role_permission`;

CREATE TABLE `hpa_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_key` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`role_id`,`permission_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `hpa_role_permission` WRITE;
/*!40000 ALTER TABLE `hpa_role_permission` DISABLE KEYS */;

INSERT INTO `hpa_role_permission` (`role_id`, `permission_key`)
VALUES
	(1,X'41444D494E5F41444D494E50414E454C'),
	(1,X'41444D494E5F6164645F7065726D697373696F6E'),
	(1,X'41444D494E5F6164645F726F6C65'),
	(1,X'41444D494E5F6164645F736974656D61705F70616765'),
	(1,X'41444D494E5F6164645F75736572'),
	(1,X'41444D494E5F64617368626F617264'),
	(1,X'41444D494E5F646576656C6F70657273'),
	(1,X'41444D494E5F656469745F7065726D697373696F6E'),
	(1,X'41444D494E5F656469745F726F6C65'),
	(1,X'41444D494E5F656469745F736974656D61705F70616765'),
	(1,X'41444D494E5F656469745F757365726163636F756E74'),
	(1,X'41444D494E5F696E766974655F75736572'),
	(1,X'41444D494E5F6D65737361676573'),
	(1,X'41444D494E5F6D6F64756C6573'),
	(1,X'41444D494E5F7065726D697373696F6E73'),
	(1,X'41444D494E5F70726F66696C65'),
	(1,X'41444D494E5F726561646D657373616765'),
	(1,X'41444D494E5F726F6C6573'),
	(1,X'41444D494E5F73657474696E6773'),
	(1,X'41444D494E5F736974656D6170'),
	(1,X'41444D494E5F757365726163636F756E7473'),
	(2,X'41444D494E5F41444D494E50414E454C'),
	(2,X'41444D494E5F6164645F736974656D61705F70616765'),
	(2,X'41444D494E5F64617368626F617264'),
	(2,X'41444D494E5F646576656C6F70657273'),
	(2,X'41444D494E5F656469745F736974656D61705F70616765'),
	(2,X'41444D494E5F6D65737361676573'),
	(2,X'41444D494E5F6D6F64756C6573'),
	(2,X'41444D494E5F70726F66696C65'),
	(2,X'41444D494E5F726561646D657373616765'),
	(2,X'41444D494E5F73657474696E6773'),
	(2,X'41444D494E5F736974656D6170');

/*!40000 ALTER TABLE `hpa_role_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_sitemap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_sitemap`;

CREATE TABLE `hpa_sitemap` (
  `page_id` varchar(25) COLLATE utf8_bin NOT NULL,
  `page_image` int(11) DEFAULT '-1',
  `page_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `page_title` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `page_description` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `changefreq` varchar(20) COLLATE utf8_bin DEFAULT 'monthly',
  `priority` double DEFAULT '0.5',
  `modified_date` date DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `hpa_sitemap` WRITE;
/*!40000 ALTER TABLE `hpa_sitemap` DISABLE KEYS */;

INSERT INTO `hpa_sitemap` (`page_id`, `page_image`, `page_url`, `page_title`, `page_description`, `changefreq`, `priority`, `modified_date`)
VALUES
	(X'35323438393565663165366263',0,X'687474703A2F2F68617A6172617274756E65722E636F6D2F',X'3532343839356631353938333131303030',X'3532343839356631353938333231303030',X'616C77617973',1,'2013-09-29'),
	(X'35323438393632646465303562',0,X'687474703A2F2F68617A6172617274756E65722E636F6D2F70726F66696C65',X'3532343839363266336531356331303030',X'3532343839363330336531356431303030',X'616C77617973',1,'2013-09-29'),
	(X'35323438393634396431656332',0,X'687474703A2F2F68617A6172617274756E65722E636F6D2F776F726B73',X'3532343839363462373034626531303030',X'3532343839363463373034626631303030',X'616C77617973',1,'2013-09-29'),
	(X'35323438393635636330386566',0,X'687474703A2F2F68617A6172617274756E65722E636F6D2F636F6E74616374',X'3532343839363630323637303431303030',X'3532343839363632323637303531303030',X'616C77617973',1,'2013-09-29');

/*!40000 ALTER TABLE `hpa_sitemap` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_thumb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_thumb`;

CREATE TABLE `hpa_thumb` (
  `thumb_id` int(11) NOT NULL AUTO_INCREMENT,
  `basename` char(255) NOT NULL,
  `filename` char(255) NOT NULL,
  `extension` char(20) NOT NULL,
  `directory` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `width` int(6) NOT NULL,
  `height` int(6) NOT NULL,
  `squeeze` tinyint(1) NOT NULL DEFAULT '-1',
  `proportion` tinyint(1) NOT NULL DEFAULT '1',
  `crop_position` char(20) NOT NULL DEFAULT 'center_top',
  `crop_left` smallint(5) NOT NULL,
  `crop_top` smallint(5) NOT NULL,
  `crop_width` smallint(5) NOT NULL,
  `crop_height` smallint(5) NOT NULL,
  `bg_color` char(6) NOT NULL DEFAULT 'FFFFFF',
  `crop_type` char(25) NOT NULL DEFAULT 'auto_crop',
  PRIMARY KEY (`thumb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_thumb` WRITE;
/*!40000 ALTER TABLE `hpa_thumb` DISABLE KEYS */;

INSERT INTO `hpa_thumb` (`thumb_id`, `basename`, `filename`, `extension`, `directory`, `url`, `width`, `height`, `squeeze`, `proportion`, `crop_position`, `crop_left`, `crop_top`, `crop_width`, `crop_height`, `bg_color`, `crop_type`)
VALUES
	(1,'119-1010-1602-s-p-center_center-FFFFFF.jpg','119-1010-1602-s-p-center_center-FFFFFF','jpg','','119-1010-1602-s-p-center_center-FFFFFF.jpg',1010,1602,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(2,'115-1010-570-s-p-center_center-FFFFFF.jpg','115-1010-570-s-p-center_center-FFFFFF','jpg','','115-1010-570-s-p-center_center-FFFFFF.jpg',1010,570,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(3,'117-1010-668-s-p-center_center-FFFFFF.jpg','117-1010-668-s-p-center_center-FFFFFF','jpg','','117-1010-668-s-p-center_center-FFFFFF.jpg',1010,668,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(4,'116-1010-900-s-p-center_center-FFFFFF.jpg','116-1010-900-s-p-center_center-FFFFFF','jpg','','116-1010-900-s-p-center_center-FFFFFF.jpg',1010,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(5,'118-1010-855-s-p-center_center-FFFFFF.jpg','118-1010-855-s-p-center_center-FFFFFF','jpg','','118-1010-855-s-p-center_center-FFFFFF.jpg',1010,855,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(6,'120-1010-1567-s-p-center_center-FFFFFF.jpg','120-1010-1567-s-p-center_center-FFFFFF','jpg','','120-1010-1567-s-p-center_center-FFFFFF.jpg',1010,1567,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(7,'91-495-309-s-p-center_center-FFFFFF.jpg','91-495-309-s-p-center_center-FFFFFF','jpg','','91-495-309-s-p-center_center-FFFFFF.jpg',495,309,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(8,'95-495-280-s-p-center_center-FFFFFF.jpg','95-495-280-s-p-center_center-FFFFFF','jpg','','95-495-280-s-p-center_center-FFFFFF.jpg',495,280,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(9,'106-495-348-s-p-center_center-FFFFFF.jpg','106-495-348-s-p-center_center-FFFFFF','jpg','','106-495-348-s-p-center_center-FFFFFF.jpg',495,348,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(10,'112-495-371-s-p-center_center-FFFFFF.jpg','112-495-371-s-p-center_center-FFFFFF','jpg','','112-495-371-s-p-center_center-FFFFFF.jpg',495,371,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(11,'119-495-785-s-p-center_center-FFFFFF.jpg','119-495-785-s-p-center_center-FFFFFF','jpg','','119-495-785-s-p-center_center-FFFFFF.jpg',495,785,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(13,'123-495-428-s-p-center_center-FFFFFF.jpg','123-495-428-s-p-center_center-FFFFFF','jpg','','123-495-428-s-p-center_center-FFFFFF.jpg',495,428,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(14,'133-495-607-s-p-center_center-FFFFFF.jpg','133-495-607-s-p-center_center-FFFFFF','jpg','','133-495-607-s-p-center_center-FFFFFF.jpg',495,607,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(15,'139-495-557-s-p-center_center-FFFFFF.jpg','139-495-557-s-p-center_center-FFFFFF','jpg','','139-495-557-s-p-center_center-FFFFFF.jpg',495,557,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(16,'146-495-545-s-p-center_center-FFFFFF.jpg','146-495-545-s-p-center_center-FFFFFF','jpg','','146-495-545-s-p-center_center-FFFFFF.jpg',495,545,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(17,'150-495-443-s-p-center_center-FFFFFF.jpg','150-495-443-s-p-center_center-FFFFFF','jpg','','150-495-443-s-p-center_center-FFFFFF.jpg',495,443,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(18,'153-495-312-s-p-center_center-FFFFFF.jpg','153-495-312-s-p-center_center-FFFFFF','jpg','','153-495-312-s-p-center_center-FFFFFF.jpg',495,312,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(19,'160-495-433-s-p-center_center-FFFFFF.jpg','160-495-433-s-p-center_center-FFFFFF','jpg','','160-495-433-s-p-center_center-FFFFFF.jpg',495,433,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(20,'164-495-278-s-p-center_center-FFFFFF.jpg','164-495-278-s-p-center_center-FFFFFF','jpg','','164-495-278-s-p-center_center-FFFFFF.jpg',495,278,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(21,'170-495-401-s-p-center_center-FFFFFF.jpg','170-495-401-s-p-center_center-FFFFFF','jpg','','170-495-401-s-p-center_center-FFFFFF.jpg',495,401,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(22,'170-1010-818-s-p-center_center-FFFFFF.jpg','170-1010-818-s-p-center_center-FFFFFF','jpg','','170-1010-818-s-p-center_center-FFFFFF.jpg',1010,818,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(23,'175-1010-1032-s-p-center_center-FFFFFF.jpg','175-1010-1032-s-p-center_center-FFFFFF','jpg','','175-1010-1032-s-p-center_center-FFFFFF.jpg',1010,1032,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(24,'173-1010-786-s-p-center_center-FFFFFF.jpg','173-1010-786-s-p-center_center-FFFFFF','jpg','','173-1010-786-s-p-center_center-FFFFFF.jpg',1010,786,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(25,'174-1010-804-s-p-center_center-FFFFFF.jpg','174-1010-804-s-p-center_center-FFFFFF','jpg','','174-1010-804-s-p-center_center-FFFFFF.jpg',1010,804,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(26,'171-1010-786-s-p-center_center-FFFFFF.jpg','171-1010-786-s-p-center_center-FFFFFF','jpg','','171-1010-786-s-p-center_center-FFFFFF.jpg',1010,786,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(27,'172-1010-818-s-p-center_center-FFFFFF.jpg','172-1010-818-s-p-center_center-FFFFFF','jpg','','172-1010-818-s-p-center_center-FFFFFF.jpg',1010,818,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(28,'176-1010-712-s-p-center_center-FFFFFF.jpg','176-1010-712-s-p-center_center-FFFFFF','jpg','','176-1010-712-s-p-center_center-FFFFFF.jpg',1010,712,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(29,'91-1010-631-s-p-center_center-FFFFFF.jpg','91-1010-631-s-p-center_center-FFFFFF','jpg','','91-1010-631-s-p-center_center-FFFFFF.jpg',1010,631,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(30,'92-1010-631-s-p-center_center-FFFFFF.jpg','92-1010-631-s-p-center_center-FFFFFF','jpg','','92-1010-631-s-p-center_center-FFFFFF.jpg',1010,631,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(31,'90-1010-631-s-p-center_center-FFFFFF.jpg','90-1010-631-s-p-center_center-FFFFFF','jpg','','90-1010-631-s-p-center_center-FFFFFF.jpg',1010,631,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(32,'93-1010-552-s-p-center_center-FFFFFF.jpg','93-1010-552-s-p-center_center-FFFFFF','jpg','','93-1010-552-s-p-center_center-FFFFFF.jpg',1010,552,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(33,'91-100-75-p-center_center-FFFFFF.jpg','91-100-75-p-center_center-FFFFFF','jpg','','91-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(34,'92-100-75-p-center_center-FFFFFF.jpg','92-100-75-p-center_center-FFFFFF','jpg','','92-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(35,'90-100-75-p-center_center-FFFFFF.jpg','90-100-75-p-center_center-FFFFFF','jpg','','90-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(36,'93-100-75-p-center_center-FFFFFF.jpg','93-100-75-p-center_center-FFFFFF','jpg','','93-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(37,'91-123-87-p-center_top-FFFFFF.jpg','91-123-87-p-center_top-FFFFFF','jpg','','91-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(38,'123-1010-874-s-p-center_center-FFFFFF.jpg','123-1010-874-s-p-center_center-FFFFFF','jpg','','123-1010-874-s-p-center_center-FFFFFF.jpg',1010,874,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(39,'122-1010-938-s-p-center_center-FFFFFF.jpg','122-1010-938-s-p-center_center-FFFFFF','jpg','','122-1010-938-s-p-center_center-FFFFFF.jpg',1010,938,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(40,'124-1010-962-s-p-center_center-FFFFFF.jpg','124-1010-962-s-p-center_center-FFFFFF','jpg','','124-1010-962-s-p-center_center-FFFFFF.jpg',1010,962,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(41,'125-1010-644-s-p-center_center-FFFFFF.jpg','125-1010-644-s-p-center_center-FFFFFF','jpg','','125-1010-644-s-p-center_center-FFFFFF.jpg',1010,644,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(42,'127-1010-1240-s-p-center_center-FFFFFF.jpg','127-1010-1240-s-p-center_center-FFFFFF','jpg','','127-1010-1240-s-p-center_center-FFFFFF.jpg',1010,1240,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(43,'126-1010-1302-s-p-center_center-FFFFFF.jpg','126-1010-1302-s-p-center_center-FFFFFF','jpg','','126-1010-1302-s-p-center_center-FFFFFF.jpg',1010,1302,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(44,'94-1010-614-s-p-center_center-FFFFFF.jpg','94-1010-614-s-p-center_center-FFFFFF','jpg','','94-1010-614-s-p-center_center-FFFFFF.jpg',1010,614,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(45,'102-1010-692-s-p-center_center-FFFFFF.jpg','102-1010-692-s-p-center_center-FFFFFF','jpg','','102-1010-692-s-p-center_center-FFFFFF.jpg',1010,692,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(46,'105-1010-532-s-p-center_center-FFFFFF.jpg','105-1010-532-s-p-center_center-FFFFFF','jpg','','105-1010-532-s-p-center_center-FFFFFF.jpg',1010,532,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(47,'104-1010-534-s-p-center_center-FFFFFF.jpg','104-1010-534-s-p-center_center-FFFFFF','jpg','','104-1010-534-s-p-center_center-FFFFFF.jpg',1010,534,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(48,'103-1010-534-s-p-center_center-FFFFFF.jpg','103-1010-534-s-p-center_center-FFFFFF','jpg','','103-1010-534-s-p-center_center-FFFFFF.jpg',1010,534,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(49,'97-1010-668-s-p-center_center-FFFFFF.jpg','97-1010-668-s-p-center_center-FFFFFF','jpg','','97-1010-668-s-p-center_center-FFFFFF.jpg',1010,668,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(50,'101-1010-1090-s-p-center_center-FFFFFF.jpg','101-1010-1090-s-p-center_center-FFFFFF','jpg','','101-1010-1090-s-p-center_center-FFFFFF.jpg',1010,1090,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(51,'98-1010-666-s-p-center_center-FFFFFF.jpg','98-1010-666-s-p-center_center-FFFFFF','jpg','','98-1010-666-s-p-center_center-FFFFFF.jpg',1010,666,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(52,'99-1010-668-s-p-center_center-FFFFFF.jpg','99-1010-668-s-p-center_center-FFFFFF','jpg','','99-1010-668-s-p-center_center-FFFFFF.jpg',1010,668,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(53,'96-1010-668-s-p-center_center-FFFFFF.jpg','96-1010-668-s-p-center_center-FFFFFF','jpg','','96-1010-668-s-p-center_center-FFFFFF.jpg',1010,668,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(54,'95-1010-572-s-p-center_center-FFFFFF.jpg','95-1010-572-s-p-center_center-FFFFFF','jpg','','95-1010-572-s-p-center_center-FFFFFF.jpg',1010,572,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(55,'100-1010-644-s-p-center_center-FFFFFF.jpg','100-1010-644-s-p-center_center-FFFFFF','jpg','','100-1010-644-s-p-center_center-FFFFFF.jpg',1010,644,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(57,'133-1010-1239-s-p-center_center-FFFFFF.jpg','133-1010-1239-s-p-center_center-FFFFFF','jpg','','133-1010-1239-s-p-center_center-FFFFFF.jpg',1010,1239,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(58,'130-1010-534-s-p-center_center-FFFFFF.jpg','130-1010-534-s-p-center_center-FFFFFF','jpg','','130-1010-534-s-p-center_center-FFFFFF.jpg',1010,534,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(59,'128-1010-532-s-p-center_center-FFFFFF.jpg','128-1010-532-s-p-center_center-FFFFFF','jpg','','128-1010-532-s-p-center_center-FFFFFF.jpg',1010,532,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(60,'131-1010-828-s-p-center_center-FFFFFF.jpg','131-1010-828-s-p-center_center-FFFFFF','jpg','','131-1010-828-s-p-center_center-FFFFFF.jpg',1010,828,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(61,'136-1010-2482-s-p-center_center-FFFFFF.jpg','136-1010-2482-s-p-center_center-FFFFFF','jpg','','136-1010-2482-s-p-center_center-FFFFFF.jpg',1010,2482,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(62,'134-1010-1588-s-p-center_center-FFFFFF.jpg','134-1010-1588-s-p-center_center-FFFFFF','jpg','','134-1010-1588-s-p-center_center-FFFFFF.jpg',1010,1588,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(63,'132-1010-1078-s-p-center_center-FFFFFF.jpg','132-1010-1078-s-p-center_center-FFFFFF','jpg','','132-1010-1078-s-p-center_center-FFFFFF.jpg',1010,1078,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(64,'135-1010-650-s-p-center_center-FFFFFF.jpg','135-1010-650-s-p-center_center-FFFFFF','jpg','','135-1010-650-s-p-center_center-FFFFFF.jpg',1010,650,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(65,'129-1010-860-s-p-center_center-FFFFFF.jpg','129-1010-860-s-p-center_center-FFFFFF','jpg','','129-1010-860-s-p-center_center-FFFFFF.jpg',1010,860,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(66,'112-1010-758-s-p-center_center-FFFFFF.jpg','112-1010-758-s-p-center_center-FFFFFF','jpg','','112-1010-758-s-p-center_center-FFFFFF.jpg',1010,758,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(67,'113-1010-758-s-p-center_center-FFFFFF.jpg','113-1010-758-s-p-center_center-FFFFFF','jpg','','113-1010-758-s-p-center_center-FFFFFF.jpg',1010,758,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(68,'114-1010-758-s-p-center_center-FFFFFF.jpg','114-1010-758-s-p-center_center-FFFFFF','jpg','','114-1010-758-s-p-center_center-FFFFFF.jpg',1010,758,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(69,'106-1010-710-s-p-center_center-FFFFFF.jpg','106-1010-710-s-p-center_center-FFFFFF','jpg','','106-1010-710-s-p-center_center-FFFFFF.jpg',1010,710,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(70,'109-1010-710-s-p-center_center-FFFFFF.jpg','109-1010-710-s-p-center_center-FFFFFF','jpg','','109-1010-710-s-p-center_center-FFFFFF.jpg',1010,710,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(71,'108-1010-710-s-p-center_center-FFFFFF.jpg','108-1010-710-s-p-center_center-FFFFFF','jpg','','108-1010-710-s-p-center_center-FFFFFF.jpg',1010,710,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(72,'107-1010-678-s-p-center_center-FFFFFF.jpg','107-1010-678-s-p-center_center-FFFFFF','jpg','','107-1010-678-s-p-center_center-FFFFFF.jpg',1010,678,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(73,'111-1010-588-s-p-center_center-FFFFFF.jpg','111-1010-588-s-p-center_center-FFFFFF','jpg','','111-1010-588-s-p-center_center-FFFFFF.jpg',1010,588,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(74,'110-1010-614-s-p-center_center-FFFFFF.jpg','110-1010-614-s-p-center_center-FFFFFF','jpg','','110-1010-614-s-p-center_center-FFFFFF.jpg',1010,614,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(77,'178-123-87-p-center_top-FFFFFF.jpg','178-123-87-p-center_top-FFFFFF','jpg','','178-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(78,'179-123-87-p-center_top-FFFFFF.png','179-123-87-p-center_top-FFFFFF','png','','179-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(79,'178-100-75-p-center_center-FFFFFF.jpg','178-100-75-p-center_center-FFFFFF','jpg','','178-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(80,'94-100-75-p-center_center-FFFFFF.jpg','94-100-75-p-center_center-FFFFFF','jpg','','94-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(81,'102-100-75-p-center_center-FFFFFF.jpg','102-100-75-p-center_center-FFFFFF','jpg','','102-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(82,'105-100-75-p-center_center-FFFFFF.jpg','105-100-75-p-center_center-FFFFFF','jpg','','105-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(83,'104-100-75-p-center_center-FFFFFF.jpg','104-100-75-p-center_center-FFFFFF','jpg','','104-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(84,'103-100-75-p-center_center-FFFFFF.jpg','103-100-75-p-center_center-FFFFFF','jpg','','103-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(85,'97-100-75-p-center_center-FFFFFF.jpg','97-100-75-p-center_center-FFFFFF','jpg','','97-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(86,'101-100-75-p-center_center-FFFFFF.jpg','101-100-75-p-center_center-FFFFFF','jpg','','101-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(87,'98-100-75-p-center_center-FFFFFF.jpg','98-100-75-p-center_center-FFFFFF','jpg','','98-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(88,'99-100-75-p-center_center-FFFFFF.jpg','99-100-75-p-center_center-FFFFFF','jpg','','99-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(89,'96-100-75-p-center_center-FFFFFF.jpg','96-100-75-p-center_center-FFFFFF','jpg','','96-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(90,'95-100-75-p-center_center-FFFFFF.jpg','95-100-75-p-center_center-FFFFFF','jpg','','95-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(91,'100-100-75-p-center_center-FFFFFF.jpg','100-100-75-p-center_center-FFFFFF','jpg','','100-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(92,'95-123-87-p-center_top-FFFFFF.jpg','95-123-87-p-center_top-FFFFFF','jpg','','95-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(93,'178-495-717-s-p-center_center-FFFFFF.jpg','178-495-717-s-p-center_center-FFFFFF','jpg','','178-495-717-s-p-center_center-FFFFFF.jpg',495,717,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(94,'139-100-75-p-center_center-FFFFFF.jpg','139-100-75-p-center_center-FFFFFF','jpg','','139-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(95,'141-100-75-p-center_center-FFFFFF.jpg','141-100-75-p-center_center-FFFFFF','jpg','','141-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(96,'140-100-75-p-center_center-FFFFFF.jpg','140-100-75-p-center_center-FFFFFF','jpg','','140-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(97,'138-100-75-p-center_center-FFFFFF.jpg','138-100-75-p-center_center-FFFFFF','jpg','','138-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(98,'137-100-75-p-center_center-FFFFFF.jpg','137-100-75-p-center_center-FFFFFF','jpg','','137-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(99,'139-123-87-p-center_top-FFFFFF.jpg','139-123-87-p-center_top-FFFFFF','jpg','','139-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(100,'106-100-75-p-center_center-FFFFFF.jpg','106-100-75-p-center_center-FFFFFF','jpg','','106-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(101,'109-100-75-p-center_center-FFFFFF.jpg','109-100-75-p-center_center-FFFFFF','jpg','','109-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(102,'108-100-75-p-center_center-FFFFFF.jpg','108-100-75-p-center_center-FFFFFF','jpg','','108-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(103,'107-100-75-p-center_center-FFFFFF.jpg','107-100-75-p-center_center-FFFFFF','jpg','','107-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(104,'111-100-75-p-center_center-FFFFFF.jpg','111-100-75-p-center_center-FFFFFF','jpg','','111-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(105,'110-100-75-p-center_center-FFFFFF.jpg','110-100-75-p-center_center-FFFFFF','jpg','','110-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(106,'106-123-87-p-center_top-FFFFFF.jpg','106-123-87-p-center_top-FFFFFF','jpg','','106-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(107,'139-1010-1136-s-p-center_center-FFFFFF.jpg','139-1010-1136-s-p-center_center-FFFFFF','jpg','','139-1010-1136-s-p-center_center-FFFFFF.jpg',1010,1136,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(108,'141-1010-1303-s-p-center_center-FFFFFF.jpg','141-1010-1303-s-p-center_center-FFFFFF','jpg','','141-1010-1303-s-p-center_center-FFFFFF.jpg',1010,1303,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(109,'140-1010-838-s-p-center_center-FFFFFF.jpg','140-1010-838-s-p-center_center-FFFFFF','jpg','','140-1010-838-s-p-center_center-FFFFFF.jpg',1010,838,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(110,'138-1010-1317-s-p-center_center-FFFFFF.jpg','138-1010-1317-s-p-center_center-FFFFFF','jpg','','138-1010-1317-s-p-center_center-FFFFFF.jpg',1010,1317,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(111,'137-1010-917-s-p-center_center-FFFFFF.jpg','137-1010-917-s-p-center_center-FFFFFF','jpg','','137-1010-917-s-p-center_center-FFFFFF.jpg',1010,917,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(112,'133-100-75-p-center_center-FFFFFF.jpg','133-100-75-p-center_center-FFFFFF','jpg','','133-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(113,'130-100-75-p-center_center-FFFFFF.jpg','130-100-75-p-center_center-FFFFFF','jpg','','130-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(114,'128-100-75-p-center_center-FFFFFF.jpg','128-100-75-p-center_center-FFFFFF','jpg','','128-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(115,'131-100-75-p-center_center-FFFFFF.jpg','131-100-75-p-center_center-FFFFFF','jpg','','131-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(116,'136-100-75-p-center_center-FFFFFF.jpg','136-100-75-p-center_center-FFFFFF','jpg','','136-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(117,'134-100-75-p-center_center-FFFFFF.jpg','134-100-75-p-center_center-FFFFFF','jpg','','134-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(118,'132-100-75-p-center_center-FFFFFF.jpg','132-100-75-p-center_center-FFFFFF','jpg','','132-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(119,'135-100-75-p-center_center-FFFFFF.jpg','135-100-75-p-center_center-FFFFFF','jpg','','135-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(120,'129-100-75-p-center_center-FFFFFF.jpg','129-100-75-p-center_center-FFFFFF','jpg','','129-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(121,'119-100-75-p-center_center-FFFFFF.jpg','119-100-75-p-center_center-FFFFFF','jpg','','119-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(122,'115-100-75-p-center_center-FFFFFF.jpg','115-100-75-p-center_center-FFFFFF','jpg','','115-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(123,'117-100-75-p-center_center-FFFFFF.jpg','117-100-75-p-center_center-FFFFFF','jpg','','117-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(124,'116-100-75-p-center_center-FFFFFF.jpg','116-100-75-p-center_center-FFFFFF','jpg','','116-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(125,'118-100-75-p-center_center-FFFFFF.jpg','118-100-75-p-center_center-FFFFFF','jpg','','118-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(126,'120-100-75-p-center_center-FFFFFF.jpg','120-100-75-p-center_center-FFFFFF','jpg','','120-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(127,'133-123-87-p-center_top-FFFFFF.jpg','133-123-87-p-center_top-FFFFFF','jpg','','133-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(128,'119-123-87-p-center_top-FFFFFF.jpg','119-123-87-p-center_top-FFFFFF','jpg','','119-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(129,'146-100-75-p-center_center-FFFFFF.jpg','146-100-75-p-center_center-FFFFFF','jpg','','146-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(130,'147-100-75-p-center_center-FFFFFF.jpg','147-100-75-p-center_center-FFFFFF','jpg','','147-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(131,'142-100-75-p-center_center-FFFFFF.jpg','142-100-75-p-center_center-FFFFFF','jpg','','142-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(132,'144-100-75-p-center_center-FFFFFF.jpg','144-100-75-p-center_center-FFFFFF','jpg','','144-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(133,'145-100-75-p-center_center-FFFFFF.jpg','145-100-75-p-center_center-FFFFFF','jpg','','145-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(134,'143-100-75-p-center_center-FFFFFF.jpg','143-100-75-p-center_center-FFFFFF','jpg','','143-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(135,'146-123-87-p-center_top-FFFFFF.jpg','146-123-87-p-center_top-FFFFFF','jpg','','146-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(136,'123-100-75-p-center_center-FFFFFF.jpg','123-100-75-p-center_center-FFFFFF','jpg','','123-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(137,'122-100-75-p-center_center-FFFFFF.jpg','122-100-75-p-center_center-FFFFFF','jpg','','122-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(138,'124-100-75-p-center_center-FFFFFF.jpg','124-100-75-p-center_center-FFFFFF','jpg','','124-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(139,'125-100-75-p-center_center-FFFFFF.jpg','125-100-75-p-center_center-FFFFFF','jpg','','125-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(140,'127-100-75-p-center_center-FFFFFF.jpg','127-100-75-p-center_center-FFFFFF','jpg','','127-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(141,'126-100-75-p-center_center-FFFFFF.jpg','126-100-75-p-center_center-FFFFFF','jpg','','126-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(142,'123-123-87-p-center_top-FFFFFF.jpg','123-123-87-p-center_top-FFFFFF','jpg','','123-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(143,'112-100-75-p-center_center-FFFFFF.jpg','112-100-75-p-center_center-FFFFFF','jpg','','112-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(144,'113-100-75-p-center_center-FFFFFF.jpg','113-100-75-p-center_center-FFFFFF','jpg','','113-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(145,'114-100-75-p-center_center-FFFFFF.jpg','114-100-75-p-center_center-FFFFFF','jpg','','114-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(146,'112-123-87-p-center_top-FFFFFF.jpg','112-123-87-p-center_top-FFFFFF','jpg','','112-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(147,'153-100-75-p-center_center-FFFFFF.jpg','153-100-75-p-center_center-FFFFFF','jpg','','153-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(148,'157-100-75-p-center_center-FFFFFF.jpg','157-100-75-p-center_center-FFFFFF','jpg','','157-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(149,'155-100-75-p-center_center-FFFFFF.jpg','155-100-75-p-center_center-FFFFFF','jpg','','155-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(150,'156-100-75-p-center_center-FFFFFF.jpg','156-100-75-p-center_center-FFFFFF','jpg','','156-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(151,'154-100-75-p-center_center-FFFFFF.jpg','154-100-75-p-center_center-FFFFFF','jpg','','154-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(152,'153-123-87-p-center_top-FFFFFF.jpg','153-123-87-p-center_top-FFFFFF','jpg','','153-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(153,'160-100-75-p-center_center-FFFFFF.jpg','160-100-75-p-center_center-FFFFFF','jpg','','160-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(154,'159-100-75-p-center_center-FFFFFF.jpg','159-100-75-p-center_center-FFFFFF','jpg','','159-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(155,'158-100-75-p-center_center-FFFFFF.jpg','158-100-75-p-center_center-FFFFFF','jpg','','158-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(156,'161-100-75-p-center_center-FFFFFF.jpg','161-100-75-p-center_center-FFFFFF','jpg','','161-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(157,'162-100-75-p-center_center-FFFFFF.jpg','162-100-75-p-center_center-FFFFFF','jpg','','162-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(158,'160-123-87-p-center_top-FFFFFF.jpg','160-123-87-p-center_top-FFFFFF','jpg','','160-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(159,'164-100-75-p-center_center-FFFFFF.jpg','164-100-75-p-center_center-FFFFFF','jpg','','164-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(160,'167-100-75-p-center_center-FFFFFF.jpg','167-100-75-p-center_center-FFFFFF','jpg','','167-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(161,'168-100-75-p-center_center-FFFFFF.jpg','168-100-75-p-center_center-FFFFFF','jpg','','168-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(162,'169-100-75-p-center_center-FFFFFF.jpg','169-100-75-p-center_center-FFFFFF','jpg','','169-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(163,'163-100-75-p-center_center-FFFFFF.jpg','163-100-75-p-center_center-FFFFFF','jpg','','163-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(164,'166-100-75-p-center_center-FFFFFF.jpg','166-100-75-p-center_center-FFFFFF','jpg','','166-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(165,'165-100-75-p-center_center-FFFFFF.jpg','165-100-75-p-center_center-FFFFFF','jpg','','165-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(166,'170-100-75-p-center_center-FFFFFF.jpg','170-100-75-p-center_center-FFFFFF','jpg','','170-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(167,'175-100-75-p-center_center-FFFFFF.jpg','175-100-75-p-center_center-FFFFFF','jpg','','175-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(168,'173-100-75-p-center_center-FFFFFF.jpg','173-100-75-p-center_center-FFFFFF','jpg','','173-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(169,'174-100-75-p-center_center-FFFFFF.jpg','174-100-75-p-center_center-FFFFFF','jpg','','174-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(170,'171-100-75-p-center_center-FFFFFF.jpg','171-100-75-p-center_center-FFFFFF','jpg','','171-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(171,'172-100-75-p-center_center-FFFFFF.jpg','172-100-75-p-center_center-FFFFFF','jpg','','172-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(172,'176-100-75-p-center_center-FFFFFF.jpg','176-100-75-p-center_center-FFFFFF','jpg','','176-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(173,'150-100-75-p-center_center-FFFFFF.jpg','150-100-75-p-center_center-FFFFFF','jpg','','150-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(174,'151-100-75-p-center_center-FFFFFF.jpg','151-100-75-p-center_center-FFFFFF','jpg','','151-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(175,'152-100-75-p-center_center-FFFFFF.jpg','152-100-75-p-center_center-FFFFFF','jpg','','152-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(176,'148-100-75-p-center_center-FFFFFF.jpg','148-100-75-p-center_center-FFFFFF','jpg','','148-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(177,'149-100-75-p-center_center-FFFFFF.jpg','149-100-75-p-center_center-FFFFFF','jpg','','149-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(178,'164-123-87-p-center_top-FFFFFF.jpg','164-123-87-p-center_top-FFFFFF','jpg','','164-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(179,'170-123-87-p-center_top-FFFFFF.jpg','170-123-87-p-center_top-FFFFFF','jpg','','170-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(180,'150-123-87-p-center_top-FFFFFF.jpg','150-123-87-p-center_top-FFFFFF','jpg','','150-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(181,'164-1010-568-s-p-center_center-FFFFFF.jpg','164-1010-568-s-p-center_center-FFFFFF','jpg','','164-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(182,'167-1010-568-s-p-center_center-FFFFFF.jpg','167-1010-568-s-p-center_center-FFFFFF','jpg','','167-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(183,'168-1010-568-s-p-center_center-FFFFFF.jpg','168-1010-568-s-p-center_center-FFFFFF','jpg','','168-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(184,'169-1010-568-s-p-center_center-FFFFFF.jpg','169-1010-568-s-p-center_center-FFFFFF','jpg','','169-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(185,'163-1010-568-s-p-center_center-FFFFFF.jpg','163-1010-568-s-p-center_center-FFFFFF','jpg','','163-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(186,'166-1010-568-s-p-center_center-FFFFFF.jpg','166-1010-568-s-p-center_center-FFFFFF','jpg','','166-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(187,'165-1010-568-s-p-center_center-FFFFFF.jpg','165-1010-568-s-p-center_center-FFFFFF','jpg','','165-1010-568-s-p-center_center-FFFFFF.jpg',1010,568,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(188,'178-1010-1462-s-p-center_center-FFFFFF.jpg','178-1010-1462-s-p-center_center-FFFFFF','jpg','','178-1010-1462-s-p-center_center-FFFFFF.jpg',1010,1462,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(189,'150-1010-904-s-p-center_center-FFFFFF.jpg','150-1010-904-s-p-center_center-FFFFFF','jpg','','150-1010-904-s-p-center_center-FFFFFF.jpg',1010,904,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(190,'151-1010-932-s-p-center_center-FFFFFF.jpg','151-1010-932-s-p-center_center-FFFFFF','jpg','','151-1010-932-s-p-center_center-FFFFFF.jpg',1010,932,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(191,'152-1010-900-s-p-center_center-FFFFFF.jpg','152-1010-900-s-p-center_center-FFFFFF','jpg','','152-1010-900-s-p-center_center-FFFFFF.jpg',1010,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(192,'148-1010-954-s-p-center_center-FFFFFF.jpg','148-1010-954-s-p-center_center-FFFFFF','jpg','','148-1010-954-s-p-center_center-FFFFFF.jpg',1010,954,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(193,'149-1010-934-s-p-center_center-FFFFFF.jpg','149-1010-934-s-p-center_center-FFFFFF','jpg','','149-1010-934-s-p-center_center-FFFFFF.jpg',1010,934,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(194,'146-1010-1112-s-p-center_center-FFFFFF.jpg','146-1010-1112-s-p-center_center-FFFFFF','jpg','','146-1010-1112-s-p-center_center-FFFFFF.jpg',1010,1112,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(195,'147-1010-1206-s-p-center_center-FFFFFF.jpg','147-1010-1206-s-p-center_center-FFFFFF','jpg','','147-1010-1206-s-p-center_center-FFFFFF.jpg',1010,1206,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(196,'142-1010-709-s-p-center_center-FFFFFF.jpg','142-1010-709-s-p-center_center-FFFFFF','jpg','','142-1010-709-s-p-center_center-FFFFFF.jpg',1010,709,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(197,'144-1010-870-s-p-center_center-FFFFFF.jpg','144-1010-870-s-p-center_center-FFFFFF','jpg','','144-1010-870-s-p-center_center-FFFFFF.jpg',1010,870,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(198,'145-1010-643-s-p-center_center-FFFFFF.jpg','145-1010-643-s-p-center_center-FFFFFF','jpg','','145-1010-643-s-p-center_center-FFFFFF.jpg',1010,643,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(199,'143-1010-642-s-p-center_center-FFFFFF.jpg','143-1010-642-s-p-center_center-FFFFFF','jpg','','143-1010-642-s-p-center_center-FFFFFF.jpg',1010,642,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(200,'160-1010-884-s-p-center_center-FFFFFF.jpg','160-1010-884-s-p-center_center-FFFFFF','jpg','','160-1010-884-s-p-center_center-FFFFFF.jpg',1010,884,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(201,'159-1010-1340-s-p-center_center-FFFFFF.jpg','159-1010-1340-s-p-center_center-FFFFFF','jpg','','159-1010-1340-s-p-center_center-FFFFFF.jpg',1010,1340,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(202,'158-1010-1028-s-p-center_center-FFFFFF.jpg','158-1010-1028-s-p-center_center-FFFFFF','jpg','','158-1010-1028-s-p-center_center-FFFFFF.jpg',1010,1028,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(203,'161-1010-1150-s-p-center_center-FFFFFF.jpg','161-1010-1150-s-p-center_center-FFFFFF','jpg','','161-1010-1150-s-p-center_center-FFFFFF.jpg',1010,1150,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(204,'162-1010-944-s-p-center_center-FFFFFF.jpg','162-1010-944-s-p-center_center-FFFFFF','jpg','','162-1010-944-s-p-center_center-FFFFFF.jpg',1010,944,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(205,'153-1010-636-s-p-center_center-FFFFFF.jpg','153-1010-636-s-p-center_center-FFFFFF','jpg','','153-1010-636-s-p-center_center-FFFFFF.jpg',1010,636,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(206,'157-1010-631-s-p-center_center-FFFFFF.jpg','157-1010-631-s-p-center_center-FFFFFF','jpg','','157-1010-631-s-p-center_center-FFFFFF.jpg',1010,631,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(207,'155-1010-617-s-p-center_center-FFFFFF.jpg','155-1010-617-s-p-center_center-FFFFFF','jpg','','155-1010-617-s-p-center_center-FFFFFF.jpg',1010,617,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(208,'156-1010-967-s-p-center_center-FFFFFF.jpg','156-1010-967-s-p-center_center-FFFFFF','jpg','','156-1010-967-s-p-center_center-FFFFFF.jpg',1010,967,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(209,'154-1010-876-s-p-center_center-FFFFFF.jpg','154-1010-876-s-p-center_center-FFFFFF','jpg','','154-1010-876-s-p-center_center-FFFFFF.jpg',1010,876,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(210,'180-123-87-p-center_top-FFFFFF.png','180-123-87-p-center_top-FFFFFF','png','','180-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(211,'181-123-87-p-center_top-FFFFFF.png','181-123-87-p-center_top-FFFFFF','png','','181-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(212,'182-123-87-p-center_top-FFFFFF.png','182-123-87-p-center_top-FFFFFF','png','','182-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(213,'183-123-87-p-center_top-FFFFFF.png','183-123-87-p-center_top-FFFFFF','png','','183-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(214,'184-123-87-p-center_top-FFFFFF.png','184-123-87-p-center_top-FFFFFF','png','','184-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(215,'185-123-87-p-center_top-FFFFFF.png','185-123-87-p-center_top-FFFFFF','png','','185-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(216,'186-123-87-p-center_top-FFFFFF.png','186-123-87-p-center_top-FFFFFF','png','','186-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(217,'187-123-87-p-center_top-FFFFFF.png','187-123-87-p-center_top-FFFFFF','png','','187-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(218,'188-123-87-p-center_top-FFFFFF.png','188-123-87-p-center_top-FFFFFF','png','','188-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(219,'189-123-87-p-center_top-FFFFFF.png','189-123-87-p-center_top-FFFFFF','png','','189-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(220,'91-150-150-s-p-center_center-FFFFFF.jpg','91-150-150-s-p-center_center-FFFFFF','jpg','','91-150-150-s-p-center_center-FFFFFF.jpg',150,150,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(221,'91-400-400-s-p-center_center-FFFFFF.jpg','91-400-400-s-p-center_center-FFFFFF','jpg','','91-400-400-s-p-center_center-FFFFFF.jpg',400,400,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(222,'91-200-200-s-p-center_center-FFFFFF.jpg','91-200-200-s-p-center_center-FFFFFF','jpg','','91-200-200-s-p-center_center-FFFFFF.jpg',200,200,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(223,'91-1024-1024-s-p-center_center-FFFFFF.jpg','91-1024-1024-s-p-center_center-FFFFFF','jpg','','91-1024-1024-s-p-center_center-FFFFFF.jpg',1024,1024,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(224,'91-1200-900-s-p-center_center-FFFFFF.jpg','91-1200-900-s-p-center_center-FFFFFF','jpg','','91-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(225,'106-1200-900-s-p-center_center-FFFFFF.jpg','106-1200-900-s-p-center_center-FFFFFF','jpg','','106-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(226,'119-1200-900-s-p-center_center-FFFFFF.jpg','119-1200-900-s-p-center_center-FFFFFF','jpg','','119-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(227,'139-1200-900-s-p-center_center-FFFFFF.jpg','139-1200-900-s-p-center_center-FFFFFF','jpg','','139-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(228,'178-1200-900-s-p-center_center-FFFFFF.jpg','178-1200-900-s-p-center_center-FFFFFF','jpg','','178-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(229,'133-1200-900-s-p-center_center-FFFFFF.jpg','133-1200-900-s-p-center_center-FFFFFF','jpg','','133-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(230,'122-123-87-p-center_top-FFFFFF.jpg','122-123-87-p-center_top-FFFFFF','jpg','','122-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(231,'124-123-87-p-center_top-FFFFFF.jpg','124-123-87-p-center_top-FFFFFF','jpg','','124-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(232,'125-123-87-p-center_top-FFFFFF.jpg','125-123-87-p-center_top-FFFFFF','jpg','','125-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(233,'127-123-87-p-center_top-FFFFFF.jpg','127-123-87-p-center_top-FFFFFF','jpg','','127-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(234,'126-123-87-p-center_top-FFFFFF.jpg','126-123-87-p-center_top-FFFFFF','jpg','','126-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(235,'130-123-87-p-center_top-FFFFFF.jpg','130-123-87-p-center_top-FFFFFF','jpg','','130-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(236,'128-123-87-p-center_top-FFFFFF.jpg','128-123-87-p-center_top-FFFFFF','jpg','','128-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(237,'131-123-87-p-center_top-FFFFFF.jpg','131-123-87-p-center_top-FFFFFF','jpg','','131-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(238,'136-123-87-p-center_top-FFFFFF.jpg','136-123-87-p-center_top-FFFFFF','jpg','','136-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(239,'134-123-87-p-center_top-FFFFFF.jpg','134-123-87-p-center_top-FFFFFF','jpg','','134-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(240,'132-123-87-p-center_top-FFFFFF.jpg','132-123-87-p-center_top-FFFFFF','jpg','','132-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(241,'135-123-87-p-center_top-FFFFFF.jpg','135-123-87-p-center_top-FFFFFF','jpg','','135-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(242,'129-123-87-p-center_top-FFFFFF.jpg','129-123-87-p-center_top-FFFFFF','jpg','','129-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(243,'190-123-87-p-center_top-FFFFFF.png','190-123-87-p-center_top-FFFFFF','png','','190-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(244,'191-123-87-p-center_top-FFFFFF.png','191-123-87-p-center_top-FFFFFF','png','','191-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(245,'192-123-87-p-center_top-FFFFFF.png','192-123-87-p-center_top-FFFFFF','png','','192-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(246,'193-123-87-p-center_top-FFFFFF.png','193-123-87-p-center_top-FFFFFF','png','','193-123-87-p-center_top-FFFFFF.png',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(247,'194-123-87-p-center_top-FFFFFF.jpg','194-123-87-p-center_top-FFFFFF','jpg','','194-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(248,'195-123-87-p-center_top-FFFFFF.jpg','195-123-87-p-center_top-FFFFFF','jpg','','195-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(249,'196-123-87-p-center_top-FFFFFF.jpg','196-123-87-p-center_top-FFFFFF','jpg','','196-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(250,'197-123-87-p-center_top-FFFFFF.jpg','197-123-87-p-center_top-FFFFFF','jpg','','197-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(251,'196-100-75-p-center_center-FFFFFF.jpg','196-100-75-p-center_center-FFFFFF','jpg','','196-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(252,'195-100-75-p-center_center-FFFFFF.jpg','195-100-75-p-center_center-FFFFFF','jpg','','195-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(253,'197-100-75-p-center_center-FFFFFF.jpg','197-100-75-p-center_center-FFFFFF','jpg','','197-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(254,'194-100-75-p-center_center-FFFFFF.jpg','194-100-75-p-center_center-FFFFFF','jpg','','194-100-75-p-center_center-FFFFFF.jpg',100,75,-1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(255,'196-495-690-s-p-center_center-FFFFFF.jpg','196-495-690-s-p-center_center-FFFFFF','jpg','','196-495-690-s-p-center_center-FFFFFF.jpg',495,690,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(256,'196-1010-1408-s-p-center_center-FFFFFF.jpg','196-1010-1408-s-p-center_center-FFFFFF','jpg','','196-1010-1408-s-p-center_center-FFFFFF.jpg',1010,1408,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(257,'195-1010-1408-s-p-center_center-FFFFFF.jpg','195-1010-1408-s-p-center_center-FFFFFF','jpg','','195-1010-1408-s-p-center_center-FFFFFF.jpg',1010,1408,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(258,'197-1010-1408-s-p-center_center-FFFFFF.jpg','197-1010-1408-s-p-center_center-FFFFFF','jpg','','197-1010-1408-s-p-center_center-FFFFFF.jpg',1010,1408,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(259,'194-1010-1408-s-p-center_center-FFFFFF.jpg','194-1010-1408-s-p-center_center-FFFFFF','jpg','','194-1010-1408-s-p-center_center-FFFFFF.jpg',1010,1408,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(260,'196-1200-900-s-p-center_center-FFFFFF.jpg','196-1200-900-s-p-center_center-FFFFFF','jpg','','196-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(261,'153-1200-900-s-p-center_center-FFFFFF.jpg','153-1200-900-s-p-center_center-FFFFFF','jpg','','153-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(262,'95-1200-900-s-p-center_center-FFFFFF.jpg','95-1200-900-s-p-center_center-FFFFFF','jpg','','95-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(263,'170-1200-900-s-p-center_center-FFFFFF.jpg','170-1200-900-s-p-center_center-FFFFFF','jpg','','170-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(264,'160-1200-900-s-p-center_center-FFFFFF.jpg','160-1200-900-s-p-center_center-FFFFFF','jpg','','160-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(265,'146-1200-900-s-p-center_center-FFFFFF.jpg','146-1200-900-s-p-center_center-FFFFFF','jpg','','146-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(266,'123-1200-900-s-p-center_center-FFFFFF.jpg','123-1200-900-s-p-center_center-FFFFFF','jpg','','123-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(267,'164-1200-900-s-p-center_center-FFFFFF.jpg','164-1200-900-s-p-center_center-FFFFFF','jpg','','164-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(268,'113-123-87-p-center_top-FFFFFF.jpg','113-123-87-p-center_top-FFFFFF','jpg','','113-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(269,'114-123-87-p-center_top-FFFFFF.jpg','114-123-87-p-center_top-FFFFFF','jpg','','114-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(270,'94-123-87-p-center_top-FFFFFF.jpg','94-123-87-p-center_top-FFFFFF','jpg','','94-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(271,'105-123-87-p-center_top-FFFFFF.jpg','105-123-87-p-center_top-FFFFFF','jpg','','105-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(272,'102-123-87-p-center_top-FFFFFF.jpg','102-123-87-p-center_top-FFFFFF','jpg','','102-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(273,'100-123-87-p-center_top-FFFFFF.jpg','100-123-87-p-center_top-FFFFFF','jpg','','100-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(274,'96-123-87-p-center_top-FFFFFF.jpg','96-123-87-p-center_top-FFFFFF','jpg','','96-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(275,'99-123-87-p-center_top-FFFFFF.jpg','99-123-87-p-center_top-FFFFFF','jpg','','99-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(276,'98-123-87-p-center_top-FFFFFF.jpg','98-123-87-p-center_top-FFFFFF','jpg','','98-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(277,'101-123-87-p-center_top-FFFFFF.jpg','101-123-87-p-center_top-FFFFFF','jpg','','101-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(278,'97-123-87-p-center_top-FFFFFF.jpg','97-123-87-p-center_top-FFFFFF','jpg','','97-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(279,'103-123-87-p-center_top-FFFFFF.jpg','103-123-87-p-center_top-FFFFFF','jpg','','103-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(280,'104-123-87-p-center_top-FFFFFF.jpg','104-123-87-p-center_top-FFFFFF','jpg','','104-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(281,'105-420-350-p-center_top-FFFFFF.jpg','105-420-350-p-center_top-FFFFFF','jpg','','105-420-350-p-center_top-FFFFFF.jpg',420,350,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(282,'112-1200-900-s-p-center_center-FFFFFF.jpg','112-1200-900-s-p-center_center-FFFFFF','jpg','','112-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(283,'150-1200-900-s-p-center_center-FFFFFF.jpg','150-1200-900-s-p-center_center-FFFFFF','jpg','','150-1200-900-s-p-center_center-FFFFFF.jpg',1200,900,1,1,'center_center',0,0,0,0,'FFFFFF','auto_crop'),
	(284,'115-123-87-p-center_top-FFFFFF.jpg','115-123-87-p-center_top-FFFFFF','jpg','','115-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(285,'117-123-87-p-center_top-FFFFFF.jpg','117-123-87-p-center_top-FFFFFF','jpg','','117-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(286,'116-123-87-p-center_top-FFFFFF.jpg','116-123-87-p-center_top-FFFFFF','jpg','','116-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(287,'118-123-87-p-center_top-FFFFFF.jpg','118-123-87-p-center_top-FFFFFF','jpg','','118-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(288,'120-123-87-p-center_top-FFFFFF.jpg','120-123-87-p-center_top-FFFFFF','jpg','','120-123-87-p-center_top-FFFFFF.jpg',123,87,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop'),
	(289,'119-420-350-p-center_top-FFFFFF.jpg','119-420-350-p-center_top-FFFFFF','jpg','','119-420-350-p-center_top-FFFFFF.jpg',420,350,-1,1,'center_top',0,0,0,0,'FFFFFF','auto_crop');

/*!40000 ALTER TABLE `hpa_thumb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_user`;

CREATE TABLE `hpa_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `displayname` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `pass_key` varchar(30) NOT NULL,
  `register_time` datetime NOT NULL,
  `captcha_limit` tinyint(1) NOT NULL DEFAULT '3',
  `status` varchar(50) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username, email` (`username`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_user` WRITE;
/*!40000 ALTER TABLE `hpa_user` DISABLE KEYS */;

INSERT INTO `hpa_user` (`user_id`, `image_id`, `username`, `displayname`, `birthday`, `first_name`, `last_name`, `email`, `phone`, `password`, `pass_key`, `register_time`, `captcha_limit`, `status`)
VALUES
	(1,0,'hazartuner','Hazar Artuner','2013-09-20','','','hazar.artuner@gmail.com','','14ddeaad0a08167656a3480f46f3e65b40d2be16','=542)%h#zdgordr|$yu_','2013-08-26 20:36:04',3,'active');

/*!40000 ALTER TABLE `hpa_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_user_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_user_group`;

CREATE TABLE `hpa_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table hpa_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_user_role`;

CREATE TABLE `hpa_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `hpa_user_role` WRITE;
/*!40000 ALTER TABLE `hpa_user_role` DISABLE KEYS */;

INSERT INTO `hpa_user_role` (`user_id`, `role_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `hpa_user_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hpa_user_ticket
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_user_ticket`;

CREATE TABLE `hpa_user_ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `ticket_type` varchar(20) NOT NULL DEFAULT 'invitation',
  `ticket_key` varchar(100) NOT NULL,
  `end_time` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table hpa_user_track
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hpa_user_track`;

CREATE TABLE `hpa_user_track` (
  `track_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_key` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_session` varchar(200) NOT NULL,
  `user_ip` varchar(30) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hpa_user_track` WRITE;
/*!40000 ALTER TABLE `hpa_user_track` DISABLE KEYS */;

INSERT INTO `hpa_user_track` (`track_id`, `tracking_key`, `user_id`, `user_session`, `user_ip`, `start_time`, `end_time`, `status`)
VALUES
	(1,'521ba01462e1d1.02136701_TRKY',1,'cf942473fa8968082ccbf55ced7d87e4','::1','2013-08-26 20:36:04','2013-08-26 20:41:04','active'),
	(2,'521c54aa1722a4.81298379_TRKY',1,'1ddf5d0db0491ad004d216b90976b31c','::1','2013-08-27 09:26:34','2013-08-27 09:31:34','active'),
	(3,'521c7a71a8dc79.10626986_TRKY',1,'4198fd610931cb371f33736e03b44d8c','85.102.211.174','2013-08-27 05:07:45','2013-08-27 05:12:45','active'),
	(4,'521c7cb30db4f2.52915606_TRKY',1,'2a28b23d52f99404d49b2ed70b9f08b6','85.102.211.174','2013-08-27 05:17:23','2013-08-27 05:22:23','active'),
	(5,'521c925f4bab42.12108856_TRKY',1,'2a28b23d52f99404d49b2ed70b9f08b6','85.102.211.174','2013-08-27 06:49:51','2013-08-27 06:54:51','active'),
	(6,'523cac76d879b7.51123609_TRKY',1,'0m3sloggh9d0bco638knabn0f5','::1','2013-09-20 22:13:42','2013-09-20 22:18:42','active'),
	(7,'523ee64b26d531.53303926_TRKY',1,'6afgf6fmgigqjaubd1dfoik3h3','::1','2013-09-22 14:44:59','2013-09-22 14:49:59','active'),
	(8,'523fcc61cddcd3.78343405_TRKY',1,'b0503b0e3438ad9300200caeb67b6631','94.123.231.198','2013-09-23 00:06:41','2013-09-23 00:11:41','active'),
	(9,'5240052f75ede8.02260869_TRKY',1,'2566fc6afbce3b3d0fc59d653cc96fca','94.123.231.198','2013-09-23 04:09:03','2013-09-23 04:14:03','active'),
	(10,'52404147a1c2a8.04356881_TRKY',1,'1292132a52676beb10820933c4295c23','85.102.106.68','2013-09-23 08:25:27','2013-09-23 08:30:27','active'),
	(11,'52406bc5724042.26158912_TRKY',1,'1292132a52676beb10820933c4295c23','85.102.106.68','2013-09-23 11:26:45','2013-09-23 11:31:45','active'),
	(12,'52483b0adac3b3.35219132_TRKY',1,'q97nj7rrqiok2kfctkr7qof723','::1','2013-09-29 16:36:58','2013-09-29 16:41:58','active'),
	(13,'52487af5ca8d76.70680592_TRKY',1,'4a67db22e90cfedf090aa54fe8af85df','94.123.224.142','2013-09-29 14:09:41','2013-09-29 14:14:41','active'),
	(14,'524a5db4184742.61905022_TRKY',1,'ea161bf39ee8ae3b2754d952ae5126a7','94.123.224.177','2013-10-01 00:29:24','2013-10-01 00:34:24','active'),
	(15,'5285f008583974.85667953_TRKY',1,'81b140fe9a00570be0299ab468c4414e','78.180.86.156','2013-11-15 03:57:28','2013-11-15 04:02:28','active'),
	(16,'52dba9a6234319.11988795_TRKY',1,'264b3aea48f3a0c8f69a2abd03159fc7','83.66.116.141','2014-01-19 04:32:06','2014-01-19 04:37:06','active'),
	(17,'52dcec107f0861.82993723_TRKY',1,'22d64d532b68e9776e1379da36fc4f04','95.183.147.8','2014-01-20 03:27:44','2014-01-20 03:32:44','active'),
	(18,'52ddb849365622.19395392_TRKY',1,'22d64d532b68e9776e1379da36fc4f04','83.66.116.141','2014-01-20 17:59:05','2014-01-20 18:04:05','active'),
	(19,'52e64533369a48.07268966_TRKY',1,'1ad9d764549b57ddf79a9d2b1221f814','78.180.150.107','2014-01-27 05:38:27','2014-01-27 05:43:27','active'),
	(20,'5304930dc50049.87716624_TRKY',1,'08c25c60d47c1c487c48d1ff3e1bd37c','78.180.150.107','2014-02-19 05:18:37','2014-02-19 05:23:37','active'),
	(21,'53f5eb1233a1e1.59631194_TRKY',1,'f8fd6fd427f6cc12bb441f4a6f126e57','78.180.150.107','2014-08-21 07:50:26','2014-08-21 07:55:26','active'),
	(22,'5433b20a37d9f1.92739772_TRKY',1,'3a76c49b557163c1ed21fc7fa783177d','212.253.58.41','2014-10-07 04:27:38','2014-10-07 04:32:38','active'),
	(23,'543641705eff87.05851579_TRKY',1,'7f963e4dca9664390af26186e462defb','95.85.57.245','2014-10-09 03:04:00','2014-10-09 03:09:00','active'),
	(24,'543d0d522cd7c1.59710913_TRKY',1,'ec9643d78f6f4cc472aa1319e3306158','95.85.57.245','2014-10-14 06:47:30','2014-10-14 06:52:30','active'),
	(25,'549737a60f7b18.06291525_TRKY',1,'4d909ef5e408e34bb77a933806fdb7f2','212.253.53.173','2014-12-21 15:12:06','2014-12-21 15:12:51','closed'),
	(26,'54996526a3e970.44365739_TRKY',1,'0570d8ce368703c64f3e88e12ba8153b','188.226.137.127','2014-12-23 06:50:46','2014-12-23 06:55:46','active'),
	(27,'54bbcdd816f241.44448784_TRKY',1,'ebdc5e54943190df25db8d49d8a09bfe','213.155.126.9','2015-01-18 09:14:32','2015-01-18 09:19:32','active'),
	(28,'55d5c06c9fb0b8.16979370_TRKY',1,'0ece97df39023e5787ad49b379b62ce9','188.132.211.35','2015-08-20 06:56:28','2015-08-20 06:58:31','closed');

/*!40000 ALTER TABLE `hpa_user_track` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `image_template` varchar(15) NOT NULL DEFAULT 'no_template',
  `name` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_key` varchar(255) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '1',
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;

INSERT INTO `project` (`project_id`, `image_id`, `image_template`, `name`, `slogan`, `comment`, `project_type`, `client`, `role`, `link`, `link_key`, `is_featured`, `publish`, `order_num`)
VALUES
	(18,91,'desktop','Bolluca Çocuk Köyü 3D Virtual Tour','Children are our future','Bolluca Çocuk Köyü 3D Virtual Tour Project is the interactive introduction demo of the first and only civil society initiative which is called Bolluca Çocuk Köyü. In this demo visitors are easily able to walk around and experience how it feels like be there.','Virtual Tour','T.K.M.Ç.V','3D Modelling & Software Development','http://hazarartuner.com/downloads/bolluca_win_106.exe','bolluca-cocuk-koyu-3d-virtual-tour',1,1,3),
	(19,95,'web','PixelAdmin','Developing an administration panel was never as easy as now','This is a php framework that i try develop in my free times to helps web developers to make web applications so easily. Now this is private. It\'ll be released for public usage soon!','Web based Framework','Personal Project','Prime Mover & Back-End / Front-End Development','','pixeladmin',1,1,2),
	(20,106,'web','TypeWonder','TypeWonder, making the choice of web fonts so enjoyable!','TypeWonder is a free online tool that helps you test web fonts on the fly ! \r\nEnter the site url and preview instantly the fonts with-out any hassle !','Service','Free to use','Back-End / Front-End Development','http://typewonder.com/','typewonder',1,1,1),
	(21,112,'kiosk','Her Yaşta Aktif Yaşa','','','Kiosk Application','CocaCola Hayata Artı Vakfı','Software Developer','','her-yasta-aktif-yasa',1,1,14),
	(22,119,'web','En Güzel Gülen Bebek','','','Web Application','Hürriyet Aile','Back-end / Front-End Deveelopment','','en-guzel-gulen-bebek',1,1,5),
	(23,178,'web','3DLab','We love architectural visualization','','Web Site','Service','Front-End Development','http://interaktiftur.com/','3dlab',1,1,13),
	(24,123,'web','EczacibasiHijyen.com.tr','','','Corporate Web Site','Eczacıbaşı','Back-End / Front-End Development','http://www.eczacibasihijyen.com.tr/','eczacibasihijyencomtr',1,1,7),
	(25,133,'web','Fakir.com.tr','','','Corporate Web Site','Fakir Hausgerate','Back-End / Front-End Development','http://fakir.com.tr/','fakircomtr',1,1,4),
	(26,139,'web','KendinIcin.com','Take care of your body','Doğru eğitmenleri, temiz bilgiyi ve çok daha fazlasını bir arada sunan, herkesin merakla beklediği Kendin İçin Gelişim Platformu çok yakında yayında!','Web Platform','Again it & media solutions','Back-End / Front-End Development','http://kendinicin.com/','kendinicincom',1,1,0),
	(27,146,'web','Learnbody','Welcome to the world of learnbody.com!','','Web Platform','Again it & media solutions','Front-End Developer','http://www.learnbody.com/','learnbody',1,1,6),
	(28,150,'web','Mobility Channel','','','Corporate Web Site','Mobility Channel','Back-End / Front-End Development','','mobility-channel',1,1,12),
	(29,153,'web','Nano109.com','The invisible revolution','','Corporate Web Site','Nano109','Back-End / Front-End Development','http://nano109.com/','nano109com',1,1,8),
	(30,160,'web','SatısEkibi.com','','','Corporate Web Site','Satışekibi gayrimenkul inşaat pazarlama ve danışmanlık','Back-End / Front-End Development','http://www.satisekibi.com/','satisekibicom',1,1,9),
	(31,164,'web','VspofVespucci.com','','','Corporate Web Site','Vsp of Vespucci','Back-End / Front-End Development','http://vspofvespucci.com','vspofvespuccicom',1,1,10),
	(32,170,'web','Fikiryumağı','','','Web Application','Kartopu Yünleri','Back-End / Front-End Development','','fikiryumagi',1,1,11),
	(33,196,'web','ArsamieaCigKofte.com.tr','','','Corporate Web Site','Arsamiea','Software Developer','http://arsamieacigkofte.com.tr/','arsamieacigkoftecomtr',1,1,0);

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_category`;

CREATE TABLE `project_category` (
  `project_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_category` WRITE;
/*!40000 ALTER TABLE `project_category` DISABLE KEYS */;

INSERT INTO `project_category` (`project_id`, `category_id`)
VALUES
	(20,1),
	(20,9),
	(33,7);

/*!40000 ALTER TABLE `project_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_image`;

CREATE TABLE `project_image` (
  `project_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `template` varchar(15) NOT NULL DEFAULT 'no_template',
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`project_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_image` WRITE;
/*!40000 ALTER TABLE `project_image` DISABLE KEYS */;

INSERT INTO `project_image` (`project_image_id`, `project_id`, `image_id`, `template`, `order_num`)
VALUES
	(6,18,91,'desktop',0),
	(7,18,92,'desktop',0),
	(8,18,90,'desktop',0),
	(9,18,93,'no_template',0),
	(10,19,94,'web',2),
	(11,19,95,'web',3),
	(12,19,96,'web',11),
	(13,19,99,'web',10),
	(14,19,98,'web',9),
	(15,19,101,'web',8),
	(16,19,97,'web',7),
	(17,19,103,'web',6),
	(18,19,104,'web',5),
	(19,19,105,'web',4),
	(20,19,102,'web',1),
	(21,19,100,'web',0),
	(22,20,106,'web',0),
	(23,20,109,'web',0),
	(24,20,108,'web',0),
	(25,20,107,'web',0),
	(26,20,111,'web',0),
	(27,20,110,'web',0),
	(28,21,112,'kiosk',0),
	(29,21,113,'kiosk',0),
	(30,21,114,'kiosk',0),
	(31,22,119,'web',0),
	(32,22,115,'web',0),
	(33,22,117,'web',0),
	(34,22,116,'web',0),
	(35,22,118,'web',0),
	(36,22,120,'web',0),
	(38,24,123,'web',0),
	(39,24,122,'web',0),
	(40,24,124,'web',0),
	(41,24,125,'web',0),
	(42,24,127,'web',0),
	(43,24,126,'web',0),
	(44,25,133,'web',0),
	(45,25,130,'web',0),
	(46,25,128,'web',0),
	(47,25,131,'web',0),
	(48,25,136,'web',0),
	(49,25,134,'web',0),
	(50,25,132,'web',0),
	(51,25,135,'web',0),
	(52,25,129,'web',0),
	(53,26,139,'web',0),
	(54,26,141,'web',0),
	(55,26,140,'web',0),
	(56,26,138,'no_template',0),
	(57,26,137,'no_template',0),
	(58,27,146,'web',0),
	(59,27,147,'web',0),
	(60,27,142,'web',0),
	(61,27,144,'web',0),
	(62,27,145,'web',0),
	(63,27,143,'web',0),
	(64,28,150,'web',0),
	(65,28,151,'web',0),
	(66,28,152,'web',0),
	(67,28,148,'web',0),
	(68,28,149,'web',0),
	(69,29,153,'web',0),
	(70,29,157,'web',0),
	(71,29,155,'web',0),
	(72,29,156,'web',0),
	(73,29,154,'web',0),
	(74,30,160,'web',0),
	(75,30,159,'web',0),
	(76,30,158,'web',0),
	(77,30,161,'web',0),
	(78,30,162,'web',0),
	(79,31,164,'web',0),
	(80,31,167,'web',0),
	(81,31,168,'web',0),
	(82,31,169,'web',0),
	(83,31,163,'web',0),
	(84,31,166,'web',0),
	(85,31,165,'web',0),
	(86,32,170,'web',0),
	(87,32,175,'web',0),
	(88,32,173,'web',0),
	(89,32,174,'web',0),
	(90,32,171,'web',0),
	(91,32,172,'web',0),
	(92,32,176,'web',0),
	(93,23,178,'web',0),
	(94,33,196,'web',0),
	(95,33,195,'web',0),
	(96,33,197,'web',0),
	(97,33,194,'web',0);

/*!40000 ALTER TABLE `project_image` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

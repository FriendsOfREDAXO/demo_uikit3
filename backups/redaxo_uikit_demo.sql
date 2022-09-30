## Redaxo Database Dump Version 5
## Prefix rex_
## charset utf8mb4

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presave` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postsave` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catpriority` int(10) unsigned NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang_id`),
  KEY `id` (`id`),
  KEY `clang_id` (`clang_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'Start','Start',1,1,1,'|',1,1,1,'2022-01-22 16:31:13','uikitdemo','2022-01-29 14:17:35','uikitdemo',0),
  (2,2,0,'Die Module','Die Module',2,1,1,'|',1,1,1,'2022-01-22 16:48:11','uikitdemo','2022-09-30 15:31:29','admin',0),
  (4,4,0,'AJAX - Modal 1','Modal 1',3,1,1,'|',0,1,1,'2022-01-24 16:41:07','uikitdemo','2022-02-05 13:37:42','uikitdemo',0),
  (5,5,0,'Modal 2','Modal 2',4,1,1,'|',0,1,1,'2022-01-24 16:42:48','uikitdemo','2022-01-24 16:43:40','uikitdemo',0);
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `ctype_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `revision` int(11) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `value1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value3` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value4` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value5` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value6` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value7` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value8` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value9` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value10` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value11` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value12` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value13` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value14` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value15` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value16` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value17` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value18` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value19` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value20` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medialist10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link4` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link5` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link6` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link7` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link8` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link9` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link10` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linklist10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  KEY `clang_id` (`clang_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (2,1,1,1,2,0,1,1,'[{\"header\":\"\",\"REX_MEDIA_1\":\"for-into.mp4\",\"imageTitle\":\"\",\"content\":\"<h2>UIKit3 Demo<\\/h2><p>Diese Demo zeigt, wie einfach es ist mit UIKit und REDAXO komplexe Layouts zu realisieren. Haupts\\u00e4chlich verwenden wir hierbei Cards und Slider verwendet. &nbsp;<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"ukWidth\":\"2-3@m\",\"linkdiv\":\"linkdiv\",\"ukColor\":\"primary\"},{\"header\":\"\",\"REX_MEDIA_1\":\"\",\"imageTitle\":\"\",\"content\":\"<h2>Informationen zum Projekt<\\/h2><p><strong>FriendsOFRedaxo<\\/strong> (FOR) ist der Ort f\\u00fcr gemeinsame REDAXO-Entwicklung. Alles, was hier entwickelt wird, ist Teil der Community und damit Gemeingut.<\\/p><p>Hier entstehen Addons, Plugins, Templates, Module oder sonstige n\\u00fctzliche Dinge f\\u00fcr REDAXO. Jeder kann mitmachen und sich an bestehenden Projekten beteiligen, Ideen anbringen, \\u00fcber Features diskutieren und neue Projekte starten.<\\/p><p>Interesse? Gro\\u00dfartig. Mach\\u2019 dich irgendwie bemerkbar (Slack, Github-Issue, Twitter, E-Mail an friendsof {at} redaxo.org), dann holt dich jemand ins Team! \\ud83d\\ude4b\\ud83c\\udffc<\\/p>\",\"1\":\"https:\\/\\/friendsofredaxo.github.io\",\"LinkText\":\"Weitere Informationen\",\"ukWidth\":\"expand@m\",\"linkdiv\":\"linkdiv\",\"ukColor\":\"muted\"}]','[{\"gutterWidth\":\"medium\",\"matchHeight\":\"1\"}]','[{\"ukcolor\":\"default\"}]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'blue-g499898749_1920.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-22 18:39:35','uikitdemo','2022-01-29 14:17:35','uikitdemo'),
  (3,1,1,1,2,0,4,1,'[{\"header\":\"\",\"REX_MEDIA_1\":\"\",\"imageTitle\":\"\",\"content\":\"<h2>Anleitungen<\\/h2><h3>Ein Addon zu den Friends Of REDAXO \\u00fcbertragen<\\/h3><p>Du kannst dein Repo nur dann an FOR, \\u00fcbertragen, wenn du auch FOR-Mitglied bist. Kontaktiere uns also vor den n\\u00e4chsten Schritten, damit wir dich als Mitglied aufnehmen k\\u00f6nnen. Solltest du kein Mitglied werden wollen, kannst du dein Repo nach vorheriger Abstimmung an eines der Mitglieder \\u00fcbertragen, das es danach weiter an FOR \\u00fcbertr\\u00e4gt.<br>Benutze in den Repository-Settings die Option \\u201cTransfer ownership\\u201d, um dein Repository an FriendsOfREDAXO (oder ein Mitglied) zu \\u00fcbertragen.<br>\\u00c4ndere den Autor \\u00fcberall in \\u201cFriends Of REDAXO\\u201d, insbesondere in der package.yml.<br>\\u00c4ndere die Supportpage in der package.yml auf die URL des neuen GitHub-Repositorys und passe auch andere Links zum Repository an.<br>Falls das Addon bereits in deinem MyREDAXO-Account angelegt wurde \\u2014 du also den Addon-Key besitzt \\u2014, bitte die Admins darum, das Addon den Friends Of REDAXO zu \\u00fcbertragen.<br>Nach erfolgreicher \\u00dcbertragung k\\u00f6nntest du \\u2014 k\\u00f6nnten wir! \\u2014 ein neues Major-Release ver\\u00f6ffentlichen, damit es alle mitbekommen. \\ud83c\\udf7e<br>&nbsp;<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"ukWidth\":\"auto@m\",\"linkdiv\":\"\",\"ukColor\":\"secondary uk-light\"}]','[{\"gutterWidth\":\"medium\"}]','[{\"ukcolor\":\"primary\"}]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-22 18:51:38','uikitdemo','2022-01-24 13:11:33','uikitdemo'),
  (4,1,1,1,1,0,3,1,'[{\"6\":\"for-into.mp4\",\"imageTitle\":\"Bild\",\"content\":\"<h2>Blindtext&nbsp;<\\/h2><p>Eine wunderbare Heiterkeit hat meine ganze Seele eingenommen, gleich den s\\u00fc\\u00dfen Fr\\u00fchlingsmorgen, die ich mit ganzem Herzen genie\\u00dfe. Ich bin allein und freue mich meines Lebens in dieser Gegend, die f\\u00fcr solche Seelen geschaffen ist wie die meine. Ich bin so gl\\u00fccklich, mein Bester, so ganz in dem Gef\\u00fchle von ruhigem Dasein versunken, da\\u00df meine Kunst darunter leidet.&nbsp;<\\/p><p><a class=\\\"uk-button uk-button-primary uk-margin-small-bottom\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" href=\\\"https:\\/\\/redaxo.org\\\" download=\\\"\\\">Ich bin ein Button<\\/a><br><sup>Dieser Button wurde im CKE5-Editor erstellt&nbsp;<\\/sup><\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-flex-last@s uk-card-media-left\"},{\"6\":\"blue-g499898749_1920.jpg\",\"imageTitle\":\"dsfgdsfg\",\"content\":\"<p>Eine wunderbare Heiterkeit hat meine ganze Seele eingenommen, gleich den s\\u00fc\\u00dfen Fr\\u00fchlingsmorgen, die ich mit ganzem Herzen genie\\u00dfe. Ich bin allein und freue mich meines Lebens in dieser Gegend, die f\\u00fcr solche Seelen geschaffen ist wie die meine. Ich bin so gl\\u00fccklich, mein Bester, so ganz in dem Gef\\u00fchle von ruhigem Dasein versunken, da\\u00df meine Kunst darunter leidet.&nbsp;<\\/p>\",\"1\":\"https:\\/\\/github.com\\/FriendsOfREDAXO\\/demo_uikit3\",\"LinkText\":\"Zur GitHub-Repo\",\"align\":\"uk-card-media-left\"}]','secondary',NULL,'slideshow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 12:40:18','uikitdemo','2022-01-27 16:30:58','uikitdemo'),
  (5,1,1,1,3,0,2,1,'[{\"REX_MEDIA_1\":\"uikit.svg\",\"text\":\"UIkit 3 Demo f\\u00fcr REDAXO. \"},{\"REX_MEDIA_1\":\"expand.svg\",\"text\":\"Responsive Design\"},{\"REX_MEDIA_1\":\"github-alt.svg\",\"text\":\"Gemeinsam entwickelt bei GitHub\"},{\"REX_MEDIA_1\":\"happy.svg\",\"text\":\"Sieht doch ok aus? \"},{\"REX_MEDIA_1\":\"thumbnails.svg\",\"text\":\"All you need are cards \"}]','h2','Hier ein paar SVG-Bilder \r\nmit uk-svg und tiles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 14:41:11','uikitdemo','2022-01-25 17:33:41','uikitdemo'),
  (6,4,1,1,1,0,1,1,'[{\"6\":\"blue-g499898749_1920.jpg\",\"imageTitle\":\"\",\"content\":\"<p>\\u00dcberall dieselbe alte Leier. Das Layout ist fertig, der Text l\\u00e4sst auf sich warten. Damit das Layout nun nicht nackt im Raume steht und sich klein und leer vorkommt, springe ich ein: der Blindtext. Genau zu diesem Zwecke erschaffen, immer im Schatten meines gro\\u00dfen Bruders \\u00bbLorem Ipsum\\u00ab, freue ich mich jedes Mal, wenn Sie ein paar Zeilen lesen. Denn esse est percipi - Sein ist wahrgenommen werden. Und weil Sie nun schon die G\\u00fcte haben, mich ein paar weitere S\\u00e4tze lang zu begleiten, m\\u00f6chte ich diese Gelegenheit nutzen, Ihnen nicht nur als L\\u00fcckenf\\u00fcller zu dienen, sondern auf etwas hinzuweisen, das es ebenso verdient wahrgenommen zu werden: Webstandards n\\u00e4mlich. Sehen Sie, Webstandards sind das Regelwerk, auf dem Webseiten aufbauen. So gibt es Regeln f\\u00fcr HTML, CSS, JavaScript oder auch XML; Worte, die Sie vielleicht schon einmal von Ihrem Entwickler geh\\u00f6rt haben. Diese Standards sorgen daf\\u00fcr, dass alle Beteiligten aus einer Webseite den gr\\u00f6\\u00dften Nutzen ziehen. Im Gegensatz zu fr\\u00fcheren Webseiten m\\u00fcssen wir zum Beispiel nicht mehr zwei verschiedene Webseiten f\\u00fcr den Internet Explorer und einen anderen Browser programmieren. Es reicht eine Seite, die - richtig angelegt - sowohl auf verschiedenen Browsern im Netz funktioniert, aber ebenso gut f\\u00fcr den Ausdruck oder\\u2026<\\/p>\",\"align\":\"uk-card-media-left\"}]','secondary',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 16:34:31','uikitdemo','2022-02-05 13:37:42','uikitdemo'),
  (7,5,1,1,1,0,1,1,'[{\"6\":\"\",\"imageTitle\":\"\",\"content\":\"<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal S\\u00e4tze, die alle Buchstaben des Alphabets enthalten - man nennt diese S\\u00e4tze \\u00bbPangrams\\u00ab. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL\\u00ae and Wefox\\u2122 are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 \\u00a7 ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 \\u20ac oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch \\u00c2\\u00e7c\\u00e8\\u00f1t\\u00eb, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalit\\u00e4ten. Je nach Software und Voreinstellungen k\\u00f6nnen eingebaute Kapit\\u00e4lchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext.&nbsp;<\\/p><p>An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal S\\u00e4tze, die alle Buchstaben des Alphabets enthalten - man nennt diese S\\u00e4tze \\u00bbPangrams\\u00ab. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL\\u00ae and Wefox\\u2122 are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 \\u00a7 ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 \\u20ac oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch \\u00c2\\u00e7c\\u00e8\\u00f1t\\u00eb, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalit\\u00e4ten. Je nach Software und Voreinstellungen k\\u00f6nnen eingebaute Kapit\\u00e4lchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-flex-last@s uk-card-media-left\"}]','default',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 16:43:40','uikitdemo','2022-01-24 16:43:40','uikitdemo'),
  (8,2,1,1,2,0,2,1,'[{\"header\":\"Das Cards Modul\",\"REX_MEDIA_1\":\"\",\"imageTitle\":\"\",\"content\":\"<p>Mit dem Cards-Modul wurde dieser Textabschnitt erstellt. Hiermit k\\u00f6nnen verschiedene Layouts realisiert werden. Es erm\\u00f6glicht die Gestaltung ohne fest definiertem Grid. Es k\\u00f6nnen in der Sektion Hintergrundfarben und Hintergrundbilder mit Parallax-Effekt eingebunden werden&nbsp;<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"ukWidth\":\"auto@m\",\"linkdiv\":\"\",\"ukColor\":\"default\"},{\"header\":\"Bilder\",\"REX_MEDIA_1\":\"blue-5457731_1920.jpg\",\"imageTitle\":\"\",\"content\":\"<p>Das Cards-Modul erlaubt die Einbindung von Bildern.&nbsp;<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"ukWidth\":\"1-2@m\",\"linkdiv\":\"\",\"ukColor\":\"primary\"},{\"header\":\"Videos\",\"REX_MEDIA_1\":\"for-into.mp4\",\"imageTitle\":\"\",\"content\":\"<p>Kurze lokale Videos k\\u00f6nnen eingebunden werden<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"ukWidth\":\"1-2@m\",\"linkdiv\":\"\",\"ukColor\":\"secondary\"}]','[{\"gutterWidth\":\"medium\"}]','[{\"ukcolor\":\"default\"}]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'blue-g499898749_1920.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 17:16:44','uikitdemo','2022-01-24 17:27:59','uikitdemo'),
  (9,2,1,1,4,0,1,1,'Die Module','h1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 17:24:44','uikitdemo','2022-09-30 15:31:29','admin'),
  (10,2,1,1,1,0,3,1,'[{\"6\":\"\",\"imageTitle\":\"\",\"content\":\"<h2>Text \\/ Bild \\/ Video \\/ Slides<\\/h2><p>Dieses Modul kann zur Darstellung von einfachen Texten, 50\\/50 Kacheln und f\\u00fcr Slide-Shows verwendet werden. Wird kein Bild ausgew\\u00e4hlt wird die Textbreite reduziert um einen besseren Lesefluss zu erm\\u00f6glichen<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-flex-last@s uk-card-media-left\"}]','secondary',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 17:32:57','uikitdemo','2022-01-24 17:33:41','uikitdemo'),
  (11,2,1,1,1,0,5,1,'[{\"6\":\"for-into.mp4\",\"imageTitle\":\"Daa FriendsOfREDAXO-Logo \",\"content\":\"<h2>Slider oder Content-Block?<\\/h2><p>Ein Click gen\\u00fcgt und aus den Bl\\u00f6cken wird ein Slider. Es k\\u00f6nnen im Modul Text \\/ Bild \\/ Video \\/ Slides mehre Bl\\u00f6cke mittels Mblock angelegt werden. Entwerfe werden diese untereinander dargestellt oder auf Wunsch als Slider. Auch hier k\\u00f6nnen Videos und Bilder zus\\u00e4tzlich eingebunden werden.&nbsp;<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-flex-last@s uk-card-media-left\"},{\"6\":\"blue-g499898749_1920.jpg\",\"imageTitle\":\"Irgendein Bild\",\"content\":\"<h2>Ein bisschen Blindtext<\\/h2><p>Eine wunderbare Heiterkeit hat meine ganze Seele eingenommen, gleich den s\\u00fc\\u00dfen Fr\\u00fchlingsmorgen, die ich mit ganzem Herzen genie\\u00dfe. Ich bin allein und freue mich meines Lebens in dieser Gegend, die f\\u00fcr solche Seelen geschaffen ist wie die meine. Ich bin so gl\\u00fccklich, mein Bester, so ganz in dem Gef\\u00fchle von ruhigem Dasein versunken, da\\u00df meine Kunst darunter leidet. Ich k\\u00f6nnte jetzt nicht zeichnen, nicht einen Strich, und bin nie ein gr\\u00f6\\u00dferer Maler gewesen als in diesen Augenblicken. Wenn das liebe Tal um mich dampft, und die hohe Sonne an der Oberfl\\u00e4<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-card-media-left\"}]','primary',NULL,'slideshow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 17:35:44','uikitdemo','2022-01-24 17:39:43','uikitdemo'),
  (12,2,1,1,1,0,4,1,'[{\"6\":\"for-into.mp4\",\"imageTitle\":\"Daa FriendsOfREDAXO-Logo \",\"content\":\"<h2>Slider oder Content-Block?<\\/h2><p>Ein Click gen\\u00fcgt und aus den Bl\\u00f6cken wird ein Slider. Es k\\u00f6nnen im Modul Text \\/ Bild \\/ Video \\/ Slides mehre Bl\\u00f6cke mittels Mblock angelegt werden. Entwerfe werden diese untereinander dargestellt oder auf Wunsch als Slider. Auch hier k\\u00f6nnen Videos und Bilder zus\\u00e4tzlich eingebunden werden.&nbsp;<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-flex-last@s uk-card-media-left\"},{\"6\":\"blue-g499898749_1920.jpg\",\"imageTitle\":\"Irgendein Bild\",\"content\":\"<h2>Ein bisschen Blindtext<\\/h2><p>Eine wunderbare Heiterkeit hat meine ganze Seele eingenommen, gleich den s\\u00fc\\u00dfen Fr\\u00fchlingsmorgen, die ich mit ganzem Herzen genie\\u00dfe. Ich bin allein und freue mich meines Lebens in dieser Gegend, die f\\u00fcr solche Seelen geschaffen ist wie die meine. Ich bin so gl\\u00fccklich, mein Bester, so ganz in dem Gef\\u00fchle von ruhigem Dasein versunken, da\\u00df meine Kunst darunter leidet. Ich k\\u00f6nnte jetzt nicht zeichnen, nicht einen Strich, und bin nie ein gr\\u00f6\\u00dferer Maler gewesen als in diesen Augenblicken. Wenn das liebe Tal um mich dampft, und die hohe Sonne an der Oberfl\\u00e4<\\/p>\",\"1\":\"\",\"LinkText\":\"\",\"align\":\"uk-card-media-left\"}]','default',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-24 17:46:44','uikitdemo','2022-01-24 17:47:27','uikitdemo');
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_cke5_mblock_demo`;
CREATE TABLE `rex_cke5_mblock_demo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mblock_field` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_cke5_mblock_demo` WRITE;
/*!40000 ALTER TABLE `rex_cke5_mblock_demo` DISABLE KEYS */;
INSERT INTO `rex_cke5_mblock_demo` VALUES 
  (1,'demo','{\"attr_type\":[{\"text\":\"<h2>Die einzelnen Orbiter<\\/h2><p>Seit dem Beginn der Shuttle-Fl\\u00fcge im Jahr 1981 waren insgesamt f\\u00fcnf verschiedene Space Shuttles ins All geflogen. Davon waren bis zur Einstellung des Programms im Jahre 2011 noch drei (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Discovery_(Raumf%C3%A4hre)\\\">Discovery<\\/a>, <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Raumf%C3%A4hre)\\\">Atlantis<\\/a> und <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Endeavour_(Raumf%C3%A4hre)\\\">Endeavour<\\/a>) im Einsatz. Zwei Space Shuttles (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Challenger_(Raumf%C3%A4hre)\\\">Challenger<\\/a>und <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Columbia_(Raumf%C3%A4hre)\\\">Columbia<\\/a>) wurden bei Ungl\\u00fccken in den Jahren 1986 und 2003 zerst\\u00f6rt.<\\/p><p>OV-101 <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Enterprise_(Raumf%C3%A4hre)\\\">Enterprise<\\/a> war ein flug-, jedoch nicht raumflugtauglicher Prototyp, der f\\u00fcr Gleitversuche und f\\u00fcr Flugversuche auf dem R\\u00fccken des Shuttle Carrier Aircrafts eingesetzt wurde. Die <i>Enterprise<\\/i> kann seit August 2012 im <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Intrepid_Sea-Air-Space_Museum\\\">Intrepid Sea, Air &amp; Space Museum<\\/a> besichtigt werden.<\\/p><p>Quelle: <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Wikipedia<\\/a><\\/p>\"},{\"text\":\"<h2>Columbia<\\/h2><figure class=\\\"image image-style-align-right\\\"><img src=\\\"..\\/assets\\/addons\\/cke5\\/images\\/1125px-columbia.sts-1.01.jpg\\\"><figcaption>Die Columbia vor ihrem Jungfernflug am 12. April 1981 | NASA | Eine Langzeitbeleuchtung der ersten Space Shuttle Mission, STS-1 vor dem Start. Shuttle Columbia steht auf dem Launch Pad A des Complex 39 im KSC .<\\/figcaption><\\/figure><p>Die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumf%C3%A4hre\\\">Raumf\\u00e4hre<\\/a> <strong>Columbia<\\/strong> war das erste weltraumtaugliche <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Space Shuttle<\\/a> der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/NASA\\\">NASA<\\/a> und das erste wiederverwendbare Raumfahrzeug. Im M\\u00e4rz 1979 fertiggestellt, fand der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Jungfernflug\\\">Jungfernflug<\\/a> am 12. April 1981 statt (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-1\\\">STS-1<\\/a>). Die interne Bezeichnung lautet OV-102, wobei OV f\\u00fcr <i>Orbiter Vehicle<\\/i> steht. Sie brach am 1. Februar 2003 bei ihrem 28. Weltraumeinsatz (Mission <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-107\\\">STS-107<\\/a>) beim <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Wiedereintritt\\\">Wiedereintritt<\\/a> in die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Erdatmosph%C3%A4re\\\">Erdatmosph\\u00e4re<\\/a> auseinander, wobei alle sieben Besatzungmitglieder ums Leben kamen.<\\/p><p>Quelle: <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Columbia_(Raumf\\u00e4hre)#\\/media\\/File:Columbia.sts-1.01.jpg\\\">Wikipedia<\\/a><\\/p>\"},{\"text\":\"<h2>Challenger<\\/h2><figure class=\\\"image image-style-align-right\\\"><img src=\\\"..\\/assets\\/addons\\/cke5\\/images\\/space_shuttle_challenger_lands_for_the_first_time_completing_sts-6.jpg\\\"><figcaption>Landung der Raumf\\u00e4hre <i>Challenger<\\/i> nach der Mission STS-6 im April 1983 | NASA | The title says it all. She landed at Edwards Air Force Base on April 9th, 1983. The ill-fated Orbiter completed the first of her 10 flights, which as we all know, culminated in her destruction on January 28th, 1986, during the launch of STS-51-L, the 25th Space Shuttle Mission, killing her brave crew of seven.<\\/figcaption><\\/figure><p>Das <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Space Shuttle<\\/a> <i><strong>Challenger<\\/strong><\\/i> (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Englische_Sprache\\\">englisch<\\/a> f\\u00fcr <i>Herausforderer<\\/i>) war die dritte <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumf%C3%A4hre\\\">Raumf\\u00e4hre<\\/a> der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/National_Aeronautics_and_Space_Administration\\\">NASA<\\/a> nach dem weltraumuntauglichen Prototyp <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Enterprise_(Raumf%C3%A4hre)\\\"><i>Enterprise<\\/i><\\/a> und der ersten voll flugtauglichen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Columbia_(Raumf%C3%A4hre)\\\"><i>Columbia<\\/i><\\/a>. Im Oktober 1982 fertiggestellt, erfolgte der Jungfernflug im April 1983 (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-6\\\">STS-6<\\/a>). Die interne Bezeichnung lautet OV-099.<\\/p><p>Die <i>Challenger<\\/i> wurde nach dem britischen Forschungsschiff <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/HMS_Challenger_(1858)\\\">HMS <i>Challenger<\\/i><\\/a> benannt, das von 1872 bis 1876 die Weltmeere befuhr. Schon die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Mondlandef%C3%A4hre\\\">Mondlandef\\u00e4hre<\\/a> von <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Apollo_17\\\">Apollo 17<\\/a> trug diesen Namen.<\\/p><p>Die <i>Challenger<\\/i> absolvierte neun vollst\\u00e4ndige Fl\\u00fcge mit insgesamt 987 Erdumkreisungen. Sie war insgesamt 69 Tage im <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Weltraum\\\">Weltraum<\\/a>.<\\/p><p>Am 28. Januar 1986, 73 Sekunden nach dem Start der Mission <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-51-L\\\">STS-51-L<\\/a>, brach die Raumf\\u00e4hre in etwa 15 Kilometer H\\u00f6he auseinander<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Challenger_(Raumf%C3%A4hre)#cite_note-1\\\">[1]<\\/a> (siehe <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-51-L#Das_Challenger-Ungl%C3%BCck\\\">Challenger-Katastrophe<\\/a>). Dabei starben alle sieben Astronauten. Als Grund wurde das Versagen eines oder mehrerer Dichtungsringe in einer der seitlichen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space-Shuttle-Feststoffraketen\\\">Feststoffraketen<\\/a> ermittelt. Es war der bis dahin schwerste <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Liste_von_Katastrophen_der_Raumfahrt\\\">Unfall in der Raumfahrtgeschichte<\\/a> der USA.<\\/p><p>Quelle: <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Challenger_(Raumf\\u00e4hre)\\\">Wikipedia<\\/a><\\/p>\"},{\"text\":\"<h2>Discovery<\\/h2><figure class=\\\"image image-style-align-right\\\"><img src=\\\"..\\/assets\\/addons\\/cke5\\/images\\/604px-sts-95_launch.jpg\\\"><figcaption>Das Space Shuttle kurz nach der Z\\u00fcndung der Triebwerke \\u2013 Start der Discovery zur Mission STS-95 vom Kennedy Space Center (1998) | NASA | Thousands of gallons of water released as part of the sound suppression system at the launch pad create clouds of steam and exhaust as Space Shuttle Discovery lifts off from Launch Pad 39B at 2:19 p.m. EST Oct. 29 on mission STS-95. Making his second voyage into space after 36 years is Payload Specialist John H. Glenn Jr., senator from Ohio. Other crew members are Mission Commander Curtis L. Brown Jr., Pilot Steven W. Lindsey, Payload Specialist Chiaki Mukai, (M.D., Ph.D.), with the National Space Development Agency of Japan (NASDA), Mission Specialist Stephen K. Robinson, Mission Specialist Pedro Duque of Spain, representing the European Space Agency (ESA), and Mission Specialist Scott E. Parazynski. The STS-95 mission includes research payloads such as the Spartan solar-observing deployable spacecraft, the Hubble Space Telescope Orbital Systems Test Platform, the International Extreme Ultraviolet Hitchhiker, as well as the SPACEHAB single module with experiments on space flight and the aging process. Discovery is expected to return to KSC at 11:49 a.m. EST on Nov. 7.<\\/figcaption><\\/figure><p>Die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumf%C3%A4hre\\\">Raumf\\u00e4hre<\\/a> <strong>Discovery<\\/strong> (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Englische_Sprache\\\">englisch<\\/a> f\\u00fcr <i>Entdeckung<\\/i>) wurde am 12. August 1983 fertiggestellt und startete zu ihrem <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Erstflug\\\">Jungfernflug<\\/a> am 30. August 1984 (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-41-D\\\">STS-41-D<\\/a>). Die interne Bezeichnung f\\u00fcr das <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Space Shuttle<\\/a> lautet OV-103, wobei OV f\\u00fcr <i>Orbiter Vehicle<\\/i> steht. Mit der Landung am 9. M\\u00e4rz 2011 beendete die Raumf\\u00e4hre ihre letzte Mission <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-133\\\">STS-133<\\/a>. Mit 39 Fl\\u00fcgen ist die <i>Discovery<\\/i> das am h\\u00e4ufigsten eingesetzte aller Weltraumfahrzeuge.<\\/p><p>Die Discovery ist nach einem der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Schiff\\\">Schiffe<\\/a> benannt, mit denen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/James_Cook\\\">James Cook<\\/a> den <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Pazifik\\\">Pazifik<\\/a> befuhr und 1778 <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Hawaii\\\">Hawaii<\\/a> entdeckte.<\\/p><p>Mit 39 Fl\\u00fcgen absolvierte die Discovery mehr Fl\\u00fcge als alle \\u00fcbrigen Orbiter. Au\\u00dferdem wurde sie jeweils f\\u00fcr den ersten Flug nach den Ungl\\u00fccken der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Challenger_(Raumf%C3%A4hre)\\\">Challenger<\\/a> und der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Columbia_(Raumf%C3%A4hre)\\\">Columbia<\\/a> ausgew\\u00e4hlt.<\\/p><p>1990 transportierte die Discovery das <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Hubble-Weltraumteleskop\\\">Hubble-Weltraumteleskop<\\/a> ins All.<\\/p><p>Gro\\u00dfe Beachtung fand 2005 die Mission <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-114\\\">STS-114<\\/a>, der erste Flug eines Shuttles nach der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-107#Die_Katastrophe\\\">Columbia-Katastrophe<\\/a> im Jahr 2003. Auch dieser Flug wurde von einigen Pannen begleitet, was erneut zur Aussetzung der Shuttle-Fl\\u00fcge f\\u00fchrte.<\\/p><p>Im Juli 2006 absolvierte die Discovery mit der Mission <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-121\\\">STS-121<\\/a> erfolgreich einen weiteren Versorgungsflug zur <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Internationale_Raumstation\\\">Internationalen Raumstation<\\/a> (ISS).<\\/p><p>Im Mai\\/Juni 2008 f\\u00fchrte der Orbiter die Mission <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-124\\\">STS-124<\\/a> durch. Das mit sieben Mann besetzte Shuttle dockte am 2. Juni 2008 an der ISS an. Hauptaufgabe der Mission war es, das japanische Labormodul <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Kib%C5%8D\\\">Kib\\u014d<\\/a> zur ISS zu bringen. Au\\u00dferdem brachte das Shuttle Ersatzteile zur Reparatur der defekten Weltraumtoilette in der ISS mit.<\\/p><p>Am 29. August 2009 startete die Discovery mit dem <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Multi-Purpose_Logistics_Module\\\">Multi-Purpose Logistics Module<\\/a> Leonardo zur ISS, um dort Vorr\\u00e4te und Material anzuliefern.<\\/p><p>Am 24. Februar 2011 um 22:53 Uhr startete das Shuttle nach 27 Dienstjahren mit <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-133\\\">STS-133<\\/a> zum letzten Mal. Am 26. Februar 2011, 20:14 Uhr, dockte sie an der ISS an und landete am 9. M\\u00e4rz 2011 um 17:57 Uhr zum letzten Mal auf der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Shuttle_Landing_Facility\\\">Landebahn<\\/a> des Kennedy Space Center in Florida.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Discovery_(Raumf%C3%A4hre)#cite_note-NASAMissionUpdate-1\\\">[1]<\\/a> Die Discovery ist mit 238,5 Millionen Kilometern die am weitesten gereiste Raumf\\u00e4hre der NASA-Shuttleflotte.<\\/p><p>Seit dem 19. April 2012 steht die Discovery als Museumsst\\u00fcck im James S. McDonnell Space Hangar im <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Steven_F._Udvar-Hazy_Center\\\">Steven F. Udvar-Hazy Center<\\/a> des <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Smithsonian_Institution\\\">Smithsonian-Instituts<\\/a> in der N\\u00e4he vom Washington Dulles International Airport. Dort hat sie den Prototyp der Space Shuttles, die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Enterprise_(Raumf%C3%A4hre)\\\">Enterprise<\\/a>, ersetzt.<\\/p>\"},{\"text\":\"<h2>Enterprise<\\/h2><figure class=\\\"image image-style-align-right\\\"><img src=\\\"..\\/assets\\/addons\\/cke5\\/images\\/1148px-enterprise_free_flight.jpg\\\"><figcaption>Die <i>Enterprise<\\/i> beim zweiten freien Flug, noch mit Triebwerksverkleidung | NASA | The Space Shuttle prototype Enterprise flies free after being released from NASA\'s 747 Shuttle Carrier Aircraft (SCA) during one of five free flights carried out at the Dryden Flight Research Center, Edwards, California in 1977, as part of the Shuttle program\'s Approach and Landing Tests (ALT). The tests were conducted to verify orbiter aerodynamics and handling characteristics in preparation for orbital flights with the Space Shuttle Columbia. A tail cone over the main engine area of Enterprise smoothed out turbulent airflow during flight. It was removed on the two last free flights to accurately check approach and landing characteristics.<\\/figcaption><\\/figure><p>Die <strong>Enterprise<\\/strong> (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Englische_Sprache\\\">englisch<\\/a> f\\u00fcr <i>Unternehmen<\\/i>, <i>Unternehmung<\\/i>) ist ein <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Prototyp_(Technik)\\\">Prototyp<\\/a> f\\u00fcr die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumf%C3%A4hre\\\">Raumf\\u00e4hren<\\/a> aus dem <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Space-Shuttle<\\/a>-Programm der US-Raumfahrtbeh\\u00f6rde <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/National_Aeronautics_and_Space_Administration\\\">NASA<\\/a>. Die interne Bezeichnung lautet <i>OV-101<\\/i>. Der Name \\u201eEnterprise\\u201c geht auf das fiktive Raumschiff <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Enterprise_(Raumschiff)\\\"><i>Enterprise<\\/i><\\/a> aus der Science-Fiction-Serie <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumschiff_Enterprise\\\"><i>Star Trek<\\/i><\\/a> zur\\u00fcck.<\\/p><p>Die Raumf\\u00e4hre diente ab 1977 zur Erprobung der Flugf\\u00e4higkeiten der Space Shuttles in der Atmosph\\u00e4re. Dazu wurde sie ohne einige wichtige Komponenten wie <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle_Main_Engine\\\">Triebwerk<\\/a> und <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Hitzeschild\\\">Hitzeschild<\\/a> gebaut und war deshalb nicht zu Fl\\u00fcgen in den <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Weltraum\\\">Weltraum<\\/a> f\\u00e4hig. Pl\\u00e4ne, sie hierf\\u00fcr nachzur\\u00fcsten, wurden aus Kostengr\\u00fcnden nicht realisiert. Obwohl die <i>Enterprise<\\/i> damit ein Prototyp blieb, wird sie von der NASA als \\u201eerstes Space Shuttle\\u201c bezeichnet.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Enterprise_(Raumf%C3%A4hre)#cite_note-nasa-science-1\\\">[1]<\\/a> In den Jahren 1983 und 1984 wurde sie in verschiedenen europ\\u00e4ischen L\\u00e4ndern, Kanada und den USA vorgef\\u00fchrt und 1985 schlie\\u00dflich der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Smithsonian_Institution\\\">Smithsonian Institution<\\/a> \\u00fcbergeben, die sie im <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/National_Air_and_Space_Museum\\\">National Air and Space Museum<\\/a> ausstellte. Im April 2012 wurde die Raumf\\u00e4hre nach New York gebracht, wo sie seither im <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Intrepid_Sea-Air-Space_Museum\\\">Intrepid Sea-Air-Space Museum<\\/a> ausgestellt wird.<\\/p><p>Quelle: <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Enterprise_(Raumf\\u00e4hre)\\\">Wikipedia<\\/a><\\/p>\"},{\"text\":\"<h2>Atlantis<\\/h2><figure class=\\\"image image-style-align-right\\\"><img src=\\\"..\\/assets\\/addons\\/cke5\\/images\\/atlantis_lands_kl.jpg\\\"><figcaption>Landung der Atlantis mithilfe eines Bremsschirms | Nasa<\\/figcaption><\\/figure><p>Die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumf%C3%A4hre\\\">Raumf\\u00e4hre<\\/a> <strong>Atlantis<\\/strong> ist ein <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Space Shuttle<\\/a> der <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/National_Aeronautics_and_Space_Administration\\\">NASA<\\/a>. Benannt nach dem ersten amerikanischen ozeanografischen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Forschungsschiff\\\">Forschungsschiff<\\/a> <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Schiff,_1931)\\\"><i>Atlantis<\\/i><\\/a>, wurde sie im April 1984 fertiggestellt und hatte ihren Jungfernflug im Oktober 1985 (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/STS-51-J\\\">STS-51-J<\\/a>). Die interne Bezeichnung des <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Orbiter_(Raumfahrt)\\\">Orbiters<\\/a> lautet <i>OV-104<\\/i>. Ihre letzte Mission endete am 21. Juli 2011.<\\/p><p>Von 1995 bis 1997 wurde die Atlantis ausschlie\\u00dflich f\\u00fcr die Fl\\u00fcge zur russischen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumstation\\\">Raumstation<\\/a> <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Mir_(Raumstation)\\\">Mir<\\/a> im Rahmen des <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Shuttle-Mir-Programm\\\">Shuttle-Mir-Programms<\\/a> eingesetzt, wof\\u00fcr sie mit einem Kopplungsadapter russischer Bauart ausgestattet wurde.<\\/p><p>Am 8. Juli 2011 startete sie zu ihrer 33. und letzten Mission. Sie transportierte Proviant, Material und Technik f\\u00fcr Experimente zur <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/ISS\\\">ISS<\\/a> und brachte das <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Multi-Purpose_Logistics_Module\\\">Logistikmodul<\\/a> Raffaello zur Erde zur\\u00fcck.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Raumf%C3%A4hre)#cite_note-1\\\">[1]<\\/a> Am 21. Juli 2011 p\\u00fcnktlich um 11.57 <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/MESZ\\\">MESZ<\\/a> setzte sie sicher auf der Landebahn 15 des <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Kennedy_Space_Center\\\">Kennedy Space Centers<\\/a> in <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Florida\\\">Florida (USA)<\\/a> auf.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Raumf%C3%A4hre)#cite_note-2\\\">[2]<\\/a> Ihre Landung beendete die \\u00c4ra der Shuttlefl\\u00fcge. Das Programm kostete zuletzt etwa 775 Millionen Dollar pro Mission.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Raumf%C3%A4hre)#cite_note-3\\\">[3]<\\/a><\\/p><p>Seit dem Ende des amerikanischen Shuttle-Programms wird die Raumf\\u00e4hre als Museumsst\\u00fcck im Besucherzentrum des <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Kennedy_Space_Center\\\">Kennedy Space Centers<\\/a> in Florida ausgestellt.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Raumf%C3%A4hre)#cite_note-4\\\">[4]<\\/a><\\/p><p>Quelle: <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Atlantis_(Raumf\\u00e4hre)\\\">Wikipedia<\\/a><\\/p>\"},{\"text\":\"<h2>Endeavour<\\/h2><figure class=\\\"image image-style-align-right\\\"><img src=\\\"..\\/assets\\/addons\\/cke5\\/images\\/711px-space_shuttle_endeavour_launches_on_sts-99.jpg\\\"><figcaption>Die Endeavour startet zur Erdbeobachtungsmission STS-99 | NASA | Space Shuttle Endeavour seems to leap from the among the palmettos on its launch into the clear blue Florida sky. Launch of Endeavour on mission STS-99 occurred at 12:43:40 p.m. EST. Known as the Shuttle Radar Topography Mission (SRTM), STS-99 will chart a new course to produce unrivaled 3-D images of the Earth\'s surface. The result of the SRTM could be close to 1 trillion measurements of the Earth\'s topography. The mission is expected to last 11 days, with Endeavour landing at KSC Tuesday, Feb. 22, at 4:36 p.m. EST. This is the 97th Shuttle flight and 14th for Shuttle Endeavour.<\\/figcaption><\\/figure><p>Das <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Space Shuttle<\\/a> <strong>Endeavour<\\/strong> (<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Englische_Sprache\\\">englisch<\\/a> f\\u00fcr <i>Bem\\u00fchen<\\/i>, <i>Anstrengung<\\/i>) wurde am 25. April 1991 als Ersatz f\\u00fcr die Raumf\\u00e4hre <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Challenger_(Raumf%C3%A4hre)\\\">Challenger<\\/a> fertiggestellt und hatte seinen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Jungfernflug\\\">Jungfernflug<\\/a> am 7. Mai 1992. Seine interne Bezeichnung lautet OV-105. Der letzte Start fand am 16. Mai 2011 um 14:56 Uhr <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Mitteleurop%C3%A4ische_Sommerzeit\\\">MESZ<\\/a> statt; die letzte Landung am 1. Juni 2011 um 8:35 Uhr MESZ in Florida.<\\/p><p>Der Name f\\u00fcr die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Raumf%C3%A4hre\\\">Raumf\\u00e4hre<\\/a> wurde durch einen Sch\\u00fclerwettbewerb gefunden, an dem insgesamt 71.652 Sch\\u00fcler teilnahmen. Im Mai 1989 verk\\u00fcndete <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Pr%C3%A4sident_der_Vereinigten_Staaten\\\">US-Pr\\u00e4sident<\\/a> <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/George_H._W._Bush\\\">George H. W. Bush<\\/a> den Namen Endeavour nach dem gleichnamigen ersten <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Endeavour_(Schiff)\\\">Schiff<\\/a> von <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/James_Cook\\\">James Cook<\\/a> (daher auch die <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Britisches_Englisch\\\">britische Schreibweise<\\/a> anstelle der im <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Amerikanisches_Englisch\\\">amerikanischen Englisch<\\/a> richtigen Schreibweise <i>Endeavor<\\/i>).<\\/p><p>Die Endeavour wurde von <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Rockwell_International\\\">Rockwell International<\\/a> gebaut und kostete insgesamt 2,2 Milliarden US-Dollar. Sie absolvierte 25 erfolgreiche Fl\\u00fcge.<\\/p><p>Zuletzt wurde das Shuttle zwischen Dezember 2003 und Oktober 2005 grund\\u00fcberholt (Orbiter Major Modification Period) und erhielt dabei wichtige technische und sicherheitsrelevante Verbesserungen. Neben dem sogenannten <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/EFIS\\\">Gl\\u00e4sernen Cockpit<\\/a>, einer mit mehreren frei belegbaren Monitoren ausger\\u00fcsteten Instrumententafel, erhielt die Endeavour dabei ein verbessertes <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Global_Positioning_System\\\">Navigationssystem<\\/a> zur Positionsbestimmung und die aus den Empfehlungen des \\u201eColumbia Accident Investigation Boards\\u201c resultierende Robotarm-Verl\\u00e4ngerung <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Orbiter_Boom_Sensor_System\\\">Orbiter Boom Sensor System<\\/a> (OBSS).<\\/p><p>Nach ihrer letzten Mission im Mai\\/Juni 2011 wurde die Raumf\\u00e4hre mit Ende des amerikanischen <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Space_Shuttle\\\">Shuttle-Programms<\\/a> als Museumsst\\u00fcck dem <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/California_Science_Center\\\">California Science Center<\\/a> in <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Los_Angeles\\\">Los Angeles<\\/a> zugewiesen, und ist dort seit Oktober 2012 ausgestellt.<a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Endeavour_(Raumf%C3%A4hre)#cite_note-1\\\">[1]<\\/a><\\/p><p>Quelle: <a href=\\\"https:\\/\\/de.wikipedia.org\\/wiki\\/Endeavour_(Raumf\\u00e4hre)\\\">Wikipedia<\\/a><\\/p>\"}]}','2018-05-03 19:54:50','2018-05-21 09:28:25','admin','admin');
/*!40000 ALTER TABLE `rex_cke5_mblock_demo` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_cke5_profiles`;
CREATE TABLE `rex_cke5_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toolbar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expert_definition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expert_suboption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expert` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_definition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_block` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_characters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_when_full` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_color_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ytable` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transformation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transformation_extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transformation_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transformation_include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_support_allow` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_support_disallow` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blank_to_external` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_downloadable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_decorators` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_decorators_definition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_toolbar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_resize_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_resize_options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_resize_group_options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_resize_options_definition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fontsize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emoji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_toolbar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rexlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_height` int(4) DEFAULT NULL,
  `max_height` int(4) DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_content` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_color_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_background_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_background_color_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_families` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_family_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mediaembed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mediatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mediapath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mediacategory` int(4) DEFAULT NULL,
  `upload_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_de_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_en_gb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_es_es` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_it_it` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_nl_nl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_pt_br` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_sv_se` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_cke5_profiles` WRITE;
/*!40000 ALTER TABLE `rex_cke5_profiles` DISABLE KEYS */;
INSERT INTO `rex_cke5_profiles` VALUES 
  (1,'default','Default & Demo Profile','heading,|,bold,italic,underline,strikethrough,blockQuote,|,subscript,superscript,|,bulletedList,numberedList,todoList,|,insertTable,|,outdent,indent,alignment,|,link,rexImage,mediaEmbed,|,redo,undo,|,removeFormat,pastePlainText,|,code,codeBlock','','',NULL,'',NULL,'css,html,javascript,php,plaintext',NULL,'|group_when_full|',NULL,'','',NULL,'',NULL,NULL,'[\r\n    {\r\n        \"name\": \"regex(/.*/)\",\r\n        \"attributes\": true,\r\n        \"classes\": true,\r\n        \"styles\": true\r\n    }\r\n]','','|blank_to_external|','|link_downloadable|','|link_decorators_definition|','{\"buttonlink\": { \"mode\": \"manual\", \"label\": \"Als Button darstellen\", \"attributes\": { \"class\": \"uk-button uk-button-primary uk-margin-small-bottom\" } },\r\n\"buttonlink_style\": { \"mode\": \"manual\", \"label\": \"Link mobil volle Breite\", \"attributes\": { \"class\": \"uk-width-1-1@s uk-width-auto@m\" } }\r\n }',NULL,'paragraph,h1,h2,h3','left,right,center','imageTextAlternative,toggleImageCaption,|,linkImage,alignLeft,alignRight,alignCenter,block','%','|default_resize_options|','|default_resize_group_options|','[{\"name\":\"original\",\"value\":\"null\",\"icon\":\"original\"},{\"name\":\"25\",\"value\":\"25\",\"icon\":\"small\"},{\"name\":\"50\",\"value\":\"50\",\"icon\":\"medium\"},{\"name\":\"75\",\"value\":\"75\",\"icon\":\"large\"}]','default,tiny,small,big,huge','yellowMarker,greenMarker,redPen,greenPen','','tableColumn,tableRow,mergeTableCells','internal,media','|liststyle|',NULL,'|default_height|',100,280,'','','','|default_font_color|','','|default_font_background_color|','',NULL,'youtube,vimeo','','media',0,'|default_upload|','2018-05-21 17:50:09','2022-01-27 16:20:35','admin','uikitdemo','','','','','','',''),
  (2,'light','Lead-Text & Demo Profile','bold,italic,bulletedList,numberedList,Undo,Redo,link,pastePlainText','','',NULL,'',NULL,'',NULL,NULL,NULL,'','',NULL,'',NULL,NULL,'','',NULL,NULL,NULL,'',NULL,'','left,right,center','','%',NULL,NULL,'','','','','','internal,media',NULL,NULL,'|default_height|',0,0,'','','',NULL,'',NULL,'',NULL,'','','',0,NULL,'2018-05-26 20:48:34','2021-12-01 21:25:48','admin','klxm','','','','','','',''),
  (3,'full_expert','Full Expert-Mode Demo Profile','heading,|','{\r\n    \"toolbar\": [\"heading\", \"|\", \"bold\", \"italic\", \"underline\", \"strikethrough\", \"subscript\", \"superscript\", \"|\", \"alignment\", \"bulletedList\", \"numberedList\", \"todoList\", \"|\", \"link\", \"rexImage\", \"|\", \"undo\", \"redo\", \"|\", \"selectAll\", \"insertTable\", \"specialCharacters\", \"removeFormat\", \"|\", \"code\", \"codeBlock\", \"|\", \"fontSize\", \"fontColor\", \"fontFamily\", \"fontBackgroundColor\", \"|\", \"blockQuote\", \"|\", \"outdent\", \"indent\", \"|\", \"highlight\", \"emoji\", \"pastePlainText\", \"|\", \"horizontalLine\", \"pageBreak\"],\r\n    \"removePlugins\": [\"MediaEmbed\"],\r\n    \"link\": {\r\n        \"rexlink\": [\"internal\", \"media\"],\r\n        \"addTargetToExternalLinks\": true,\r\n        \"decorators\": {\r\n            \"downloadable\": {\r\n                \"mode\": \"manual\",\r\n                \"label\": \"Downloadable\",\r\n                \"attributes\": {\"download\": \"download\"}\r\n            },\r\n            \"openInNewTab\": {\r\n                \"mode\": \"manual\",\r\n                \"label\": \"Open in a new tab\",\r\n                \"attributes\": {\"target\": \"_blank\", \"rel\": \"noopener noreferrer\"}\r\n            }\r\n        }\r\n    },\r\n    \"image\": {\r\n        \"toolbar\": [\"imageTextAlternative\", \"|\", \"imageStyle:block\", \"imageStyle:alignLeft\", \"imageStyle:alignRight\", \"imageStyle:alignCenter\", \"|\", \"linkImage\"],\r\n        \"styles\": [\"full\", \"alignLeft\", \"alignRight\", \"alignCenter\"]\r\n    },\r\n    \"table\": {\r\n        \"contentToolbar\": [\"tableColumn\", \"tableRow\", \"mergeTableCells\", \"tableProperties\", \"tableCellProperties\"],\r\n        \"tableProperties\": {\r\n            \"borderColors\": [{\r\n                \"color\": \"rgb(214, 126, 126)\",\r\n                \"label\": \"red\",\r\n                \"hasBorder\": \"false\"\r\n            }, {\"color\": \"rgb(255, 255, 255)\", \"label\": \"white\", \"hasBorder\": \"true\"}, {\r\n                \"color\": \"rgb(21, 194, 79)\",\r\n                \"label\": \"green\",\r\n                \"hasBorder\": \"false\"\r\n            }],\r\n            \"backgroundColors\": [{\r\n                \"color\": \"rgb(214, 126, 126)\",\r\n                \"label\": \"red\",\r\n                \"hasBorder\": \"false\"\r\n            }, {\"color\": \"rgb(255, 255, 255)\", \"label\": \"white\", \"hasBorder\": \"true\"}, {\r\n                \"color\": \"rgb(21, 194, 79)\",\r\n                \"label\": \"green\",\r\n                \"hasBorder\": \"false\"\r\n            }]\r\n        },\r\n        \"tableCellProperties\": {\r\n            \"borderColors\": [{\r\n                \"color\": \"rgb(214, 126, 126)\",\r\n                \"label\": \"red\",\r\n                \"hasBorder\": \"false\"\r\n            }, {\"color\": \"rgb(255, 255, 255)\", \"label\": \"white\", \"hasBorder\": \"true\"}, {\r\n                \"color\": \"rgb(21, 194, 79)\",\r\n                \"label\": \"green\",\r\n                \"hasBorder\": \"false\"\r\n            }],\r\n            \"backgroundColors\": [{\r\n                \"color\": \"rgb(214, 126, 126)\",\r\n                \"label\": \"red\",\r\n                \"hasBorder\": \"false\"\r\n            }, {\"color\": \"rgb(255, 255, 255)\", \"label\": \"white\", \"hasBorder\": \"true\"}, {\r\n                \"color\": \"rgb(21, 194, 79)\",\r\n                \"label\": \"green\",\r\n                \"hasBorder\": \"false\"\r\n            }]\r\n        }\r\n    },\r\n    \"typing\": {\r\n        \"transformations\": {\r\n            \"extra\": [{\"from\": \":)\", \"to\": \"smile!!\"}, {\r\n                \"from\": \":+1:\",\r\n                \"to\": \"JE+11++1\"\r\n            }, {\"from\": \":tada:\", \"to\": \"tadaaa\"}]\r\n        }\r\n    },\r\n    \"alignment\": [\"left\", \"right\", \"center\", \"justify\"],\r\n    \"heading\": {\r\n        \"options\": [{\r\n            \"model\": \"paragraph\",\r\n            \"title\": \"Paragraph\",\r\n            \"class\": \"ck-heading_paragraph\"\r\n        }, {\r\n            \"model\": \"heading1\",\r\n            \"view\": \"h1\",\r\n            \"title\": \"Heading 1\",\r\n            \"class\": \"ck-heading_heading1\"\r\n        }, {\r\n            \"model\": \"heading2\",\r\n            \"view\": \"h2\",\r\n            \"title\": \"Heading 2\",\r\n            \"class\": \"ck-heading_heading2\"\r\n        }, {\r\n            \"model\": \"heading3\",\r\n            \"view\": \"h3\",\r\n            \"title\": \"Heading 3\",\r\n            \"class\": \"ck-heading_heading3\"\r\n        }, {\r\n            \"model\": \"heading4\",\r\n            \"view\": \"h4\",\r\n            \"title\": \"Heading 4\",\r\n            \"class\": \"ck-heading_heading4\"\r\n        }, {\r\n            \"model\": \"heading5\",\r\n            \"view\": \"h5\",\r\n            \"title\": \"Heading 5\",\r\n            \"class\": \"ck-heading_heading5\"\r\n        }, {\"model\": \"heading6\", \"view\": \"h6\", \"title\": \"Heading 6\", \"class\": \"ck-heading_heading6\"}]\r\n    },\r\n    \"highlight\": {\r\n        \"options\": [{\r\n            \"model\": \"yellowMarker\",\r\n            \"class\": \"marker-yellow\",\r\n            \"title\": \"Yellow Marker\",\r\n            \"color\": \"var(--ck-highlight-marker-yellow)\",\r\n            \"type\": \"marker\"\r\n        }, {\r\n            \"model\": \"greenMarker\",\r\n            \"class\": \"marker-green\",\r\n            \"title\": \"Green Marker\",\r\n            \"color\": \"var(--ck-highlight-marker-green)\",\r\n            \"type\": \"marker\"\r\n        }, {\r\n            \"model\": \"redPen\",\r\n            \"class\": \"pen-red\",\r\n            \"title\": \"Red pen\",\r\n            \"color\": \"var(--ck-highlight-pen-red)\",\r\n            \"type\": \"pen\"\r\n        }, {\r\n            \"model\": \"greenPen\",\r\n            \"class\": \"pen-green\",\r\n            \"title\": \"Green pen\",\r\n            \"color\": \"var(--ck-highlight-pen-green)\",\r\n            \"type\": \"pen\"\r\n        }, {\r\n            \"model\": \"pinkMarker\",\r\n            \"class\": \"marker-pink\",\r\n            \"title\": \"Pink Marker\",\r\n            \"color\": \"var(--ck-highlight-marker-pink)\",\r\n            \"type\": \"marker\"\r\n        }, {\r\n            \"model\": \"blueMarker\",\r\n            \"class\": \"marker-blue\",\r\n            \"title\": \"Blue Marker\",\r\n            \"color\": \"var(--ck-highlight-marker-blue)\",\r\n            \"type\": \"marker\"\r\n        }]\r\n    },\r\n    \"fontSize\": {\"options\": [\"default\", \"tiny\", \"small\", \"big\", \"huge\"]},\r\n    \"codeBlock\": {\r\n        \"languages\": [{\"language\": \"c\", \"label\": \"C\", \"class\": \"block_c\"}, {\r\n            \"language\": \"plaintext\",\r\n            \"label\": \"Plain Text\",\r\n            \"class\": \"block_plain_text\"\r\n        }, {\"language\": \"html\", \"label\": \"HTML\", \"class\": \"block_html\"}, {\r\n            \"language\": \"css\",\r\n            \"label\": \"CSS\",\r\n            \"class\": \"block_css\"\r\n        }, {\"language\": \"python\", \"label\": \"Python\", \"class\": \"block_python\"}, {\r\n            \"language\": \"ruby\",\r\n            \"label\": \"Ruby\",\r\n            \"class\": \"block_ruby\"\r\n        }, {\"language\": \"javascript\", \"label\": \"JavaScript\", \"class\": \"block_java_script\"}, {\r\n            \"language\": \"cs\",\r\n            \"label\": \"C#\",\r\n            \"class\": \"block_cs\"\r\n        }, {\"language\": \"cpp\", \"label\": \"C++\", \"class\": \"block_cpp\"}, {\r\n            \"language\": \"diff\",\r\n            \"label\": \"Diff\",\r\n            \"class\": \"block_diff\"\r\n        }, {\"language\": \"java\", \"label\": \"Java\", \"class\": \"block_java\"}, {\r\n            \"language\": \"php\",\r\n            \"label\": \"PHP\",\r\n            \"class\": \"block_php\"\r\n        }, {\"language\": \"typescript\", \"label\": \"TypeScript\", \"css\": \"block_type_script\"}, {\r\n            \"language\": \"xml\",\r\n            \"label\": \"XML\",\r\n            \"class\": \"block_xml\"\r\n        }]\r\n    },\r\n    \"rexImage\": {\"media_path\": \"\\/media\\/\"},\r\n    \"ckfinder\": {\"uploadUrl\": \".\\/index.php?cke5upload=1&media_path=media\"},\r\n    \"placeholder_en\": \"Placeholder EN\",\r\n    \"placeholder_de\": \"Placeholder DE\"\r\n}','[{\"min-height\": 100}, {\"max-height\": 280}]','|expert_definition|','',NULL,'plaintext,php,javascript,python',NULL,NULL,'|default_table_color|','','',NULL,'',NULL,NULL,'','',NULL,NULL,NULL,'',NULL,'paragraph,h1,h2,h3','left,right,center','imageTextAlternative,|,full,alignLeft,alignRight,linkImage','%',NULL,NULL,'','tiny,small,default,big,huge','yellowMarker,greenMarker,redPen,greenPen','','tableColumn,tableRow,mergeTableCells,tableProperties,tableCellProperties','internal,media',NULL,NULL,'|default_height|',0,0,'','','','|default_font_color|','','|default_font_background_color|','','|default_font_family|','youtube,vimeo','','',0,'|default_upload|','2020-07-14 09:27:00','2021-12-01 21:26:12','admin','klxm','','','','','','','');
/*!40000 ALTER TABLE `rex_cke5_profiles` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (1,'de','deutsch',1,1,0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_config`;
CREATE TABLE `rex_config` (
  `namespace` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`namespace`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_config` WRITE;
/*!40000 ALTER TABLE `rex_config` DISABLE KEYS */;
INSERT INTO `rex_config` VALUES 
  ('be_style/customizer','codemirror','1'),
  ('be_style/customizer','codemirror_darktheme','\"dracula\"'),
  ('be_style/customizer','codemirror_theme','\"eclipse\"'),
  ('be_style/customizer','codemirror-langs','0'),
  ('be_style/customizer','codemirror-options','\"\"'),
  ('be_style/customizer','codemirror-selectors','\"\"'),
  ('be_style/customizer','codemirror-tools','0'),
  ('be_style/customizer','labelcolor','\"#3bb594\"'),
  ('be_style/customizer','showlink','1'),
  ('cke5','updated','false'),
  ('core','package-config','{\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":true,\"status\":true},\"redaxo\":{\"install\":true,\"status\":true}}},\"cke5\":{\"install\":true,\"status\":true},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"debug\":{\"install\":false,\"status\":false},\"demo_uikit3\":{\"install\":false,\"status\":false},\"install\":{\"install\":true,\"status\":true},\"maintenance\":{\"install\":false,\"status\":false},\"markitup\":{\"install\":false,\"status\":false,\"plugins\":{\"documentation\":{\"install\":false,\"status\":false}}},\"mblock\":{\"install\":true,\"status\":true},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"mform\":{\"install\":true,\"status\":true,\"plugins\":{\"docs\":{\"install\":true,\"status\":true}}},\"minibar\":{\"install\":false,\"status\":false},\"navigation_array\":{\"install\":true,\"status\":true},\"phpmailer\":{\"install\":true,\"status\":true},\"project\":{\"install\":true,\"status\":true},\"quick_navigation\":{\"install\":false,\"status\":false},\"rexstan\":{\"install\":false,\"status\":false},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"theme_lock\":{\"install\":true,\"status\":true},\"uikit_collection\":{\"install\":true,\"status\":true},\"users\":{\"install\":true,\"status\":true},\"yform\":{\"install\":false,\"status\":false,\"plugins\":{\"email\":{\"install\":false,\"status\":false},\"manager\":{\"install\":false,\"status\":false},\"rest\":{\"install\":false,\"status\":false},\"tools\":{\"install\":false,\"status\":false}}},\"yform_quick_edit\":{\"install\":false,\"status\":false},\"zip_install\":{\"install\":true,\"status\":true}}'),
  ('core','package-order','[\"be_style\",\"be_style\\/customizer\",\"be_style\\/redaxo\",\"theme_lock\",\"users\",\"backup\",\"cke5\",\"install\",\"mblock\",\"media_manager\",\"mediapool\",\"mform\",\"mform\\/docs\",\"navigation_array\",\"phpmailer\",\"structure\",\"metainfo\",\"structure\\/content\",\"uikit_collection\",\"zip_install\",\"project\"]'),
  ('core','utf8mb4','true'),
  ('core','version','\"5.13.2\"'),
  ('mblock','mblock_delete','1'),
  ('mblock','mblock_delete_confirm','1'),
  ('mblock','mblock_scroll','1'),
  ('mblock','mblock_theme','\"default_theme\"'),
  ('media_manager','interlace','[\"jpg\"]'),
  ('media_manager','jpg_quality','80'),
  ('media_manager','png_compression','5'),
  ('media_manager','webp_quality','85'),
  ('mform','mform_theme','\"default_theme\"'),
  ('phpmailer','archive','false'),
  ('phpmailer','bcc','\"\"'),
  ('phpmailer','charset','\"utf-8\"'),
  ('phpmailer','confirmto','\"\"'),
  ('phpmailer','detour_mode','false'),
  ('phpmailer','encoding','\"8bit\"'),
  ('phpmailer','errormail','0'),
  ('phpmailer','from','\"\"'),
  ('phpmailer','fromname','\"Mailer\"'),
  ('phpmailer','host','\"localhost\"'),
  ('phpmailer','logging','0'),
  ('phpmailer','mailer','\"smtp\"'),
  ('phpmailer','password','\"\"'),
  ('phpmailer','port','587'),
  ('phpmailer','priority','0'),
  ('phpmailer','security_mode','false'),
  ('phpmailer','smtp_debug','\"0\"'),
  ('phpmailer','smtpauth','true'),
  ('phpmailer','smtpsecure','\"tls\"'),
  ('phpmailer','test_address','\"\"'),
  ('phpmailer','username','\"\"'),
  ('phpmailer','wordwrap','120'),
  ('structure','notfound_article_id','1'),
  ('structure','start_article_id','1'),
  ('structure/content','default_template_id','1');
/*!40000 ALTER TABLE `rex_config` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_markitup_profiles`;
CREATE TABLE `rex_markitup_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `urltype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minheight` smallint(5) unsigned NOT NULL,
  `maxheight` smallint(5) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `markitup_buttons` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_markitup_profiles` WRITE;
/*!40000 ALTER TABLE `rex_markitup_profiles` DISABLE KEYS */;
INSERT INTO `rex_markitup_profiles` VALUES 
  (1,'textile_full','Textile default configuration','relative',300,800,'textile','bold,code,clips[Snippetname1=Snippettext1|Snippetname2=Snippettext2],deleted,emaillink,externallink,groupheading[1|2|3|4|5|6],grouplink[file|internal|external|mailto],heading1,heading2,heading3,heading4,heading5,heading6,internallink,italic,media,medialink,orderedlist,paragraph,quote,sub,sup,table,underline,unorderedlist'),
  (2,'markdown_full','Markdown default configuration','relative',300,800,'markdown','bold,code,clips[Snippetname1=Snippettext1|Snippetname2=Snippettext2],deleted,emaillink,externallink,groupheading[1|2|3|4|5|6],grouplink[file|internal|external|mailto],heading1,heading2,heading3,heading4,heading5,heading6,internallink,italic,media,medialink,orderedlist,paragraph,quote,sub,sup,table,underline,unorderedlist');
/*!40000 ALTER TABLE `rex_markitup_profiles` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_markitup_snippets`;
CREATE TABLE `rex_markitup_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_mblock_rexform_demo`;
CREATE TABLE `rex_mblock_rexform_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) DEFAULT 1,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mblock_field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_media`;
CREATE TABLE `rex_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originalname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media` WRITE;
/*!40000 ALTER TABLE `rex_media` DISABLE KEYS */;
INSERT INTO `rex_media` VALUES 
  (1,0,NULL,'image/svg+xml','logo.svg','logo.svg','4306',NULL,NULL,'','2022-01-22 16:44:02','uikitdemo','2022-01-22 16:44:02','uikitdemo',0),
  (2,0,NULL,'video/mp4','for-into.mp4','for-into.mp4','10084416',NULL,NULL,'','2022-01-22 16:44:59','uikitdemo','2022-01-22 16:44:59','uikitdemo',0),
  (3,0,NULL,'image/jpeg','blue-g499898749_1920.jpg','blue-313995.jpg','455659',3000,2000,'Aus Pixabay','2022-01-22 18:49:32','uikitdemo','2022-01-22 18:58:25','uikitdemo',0),
  (54,0,NULL,'image/svg+xml','expand.svg','expand.svg','348',NULL,NULL,'','2022-01-24 14:40:45','uikitdemo','2022-01-24 14:40:45','uikitdemo',0),
  (72,0,NULL,'image/svg+xml','happy.svg','happy.svg','338',NULL,NULL,'','2022-01-24 14:40:46','uikitdemo','2022-01-24 14:40:46','uikitdemo',0),
  (83,0,NULL,'image/svg+xml','github-alt.svg','github-alt.svg','1158',NULL,NULL,'','2022-01-24 14:40:47','uikitdemo','2022-01-24 14:40:47','uikitdemo',0),
  (110,0,NULL,'image/svg+xml','uikit.svg','uikit.svg','265',NULL,NULL,'','2022-01-24 14:40:48','uikitdemo','2022-01-24 14:40:48','uikitdemo',0),
  (129,0,NULL,'image/svg+xml','thumbnails.svg','thumbnails.svg','398',NULL,NULL,'','2022-01-24 14:40:49','uikitdemo','2022-01-24 14:40:49','uikitdemo',0),
  (149,0,NULL,'image/jpeg','blue-5457731_1920.jpg','blue-5457731_1920.jpg','64960',1920,1080,'','2022-01-24 17:27:52','uikitdemo','2022-01-24 17:27:52','uikitdemo',0);
/*!40000 ALTER TABLE `rex_media` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_category`;
CREATE TABLE `rex_media_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media_category` WRITE;
/*!40000 ALTER TABLE `rex_media_category` DISABLE KEYS */;
INSERT INTO `rex_media_category` VALUES 
  (1,'Logo und Standardvorlagen',0,'|','2022-01-24 14:37:52','uikitdemo','2022-01-24 14:37:52','uikitdemo',NULL,0),
  (2,'Demo Medien',0,'|','2022-01-24 14:38:03','uikitdemo','2022-01-24 14:38:03','uikitdemo',NULL,0);
/*!40000 ALTER TABLE `rex_media_category` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type`;
CREATE TABLE `rex_media_manager_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media_manager_type` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type` VALUES 
  (1,1,'rex_media_small','200 × 200 px','2022-01-22 16:04:28','backend','2022-01-22 16:04:28','backend'),
  (2,1,'rex_media_medium','600 × 600 px','2022-01-22 16:04:28','backend','2022-01-22 16:04:28','backend'),
  (3,1,'rex_media_large','1200 × 1200 px','2022-01-22 16:04:28','backend','2022-01-22 16:04:28','backend'),
  (4,0,'demo_hero_image','','2022-01-23 15:31:09','uikitdemo','2022-01-23 15:31:58','uikitdemo');
/*!40000 ALTER TABLE `rex_media_manager_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type_effect`;
CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_media_manager_type_effect` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type_effect` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type_effect` VALUES 
  (1,1,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2022-01-22 16:04:28','backend','2022-01-22 16:04:28','backend'),
  (2,2,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2022-01-22 16:04:28','backend','2022-01-22 16:04:28','backend'),
  (3,3,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"1200\",\"rex_effect_resize_height\":\"1200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2022-01-22 16:04:28','backend','2022-01-22 16:04:28','backend'),
  (4,4,'resize','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_image_format\":{\"rex_effect_image_format_convert_to\":\"webp\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"3000\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_opacity\":\"100\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\",\"rex_effect_header_filename\":\"filename\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\",\"rex_effect_convert2img_color\":\"\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',1,'2022-01-23 15:31:50','uikitdemo','2022-01-23 15:31:58','uikitdemo');
/*!40000 ALTER TABLE `rex_media_manager_type_effect` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_field`;
CREATE TABLE `rex_metainfo_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(10) unsigned NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrictions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templates` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_metainfo_type`;
CREATE TABLE `rex_metainfo_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dbtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_metainfo_type` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_type` DISABLE KEYS */;
INSERT INTO `rex_metainfo_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (6,'REX_MEDIA_WIDGET','varchar',255),
  (7,'REX_MEDIALIST_WIDGET','text',0),
  (8,'REX_LINK_WIDGET','varchar',255),
  (9,'REX_LINKLIST_WIDGET','text',0),
  (10,'date','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (13,'time','text',0);
/*!40000 ALTER TABLE `rex_metainfo_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,NULL,'0010 :: Text / Bild / Video / Slides','<?php\r\n$mediaFile = $bgimage =  $out = $color = $font_color = \'\';\r\n\r\nif (\'REX_MEDIA[1]\' != \'\') {\r\n    $bgimage = \' uk-parallax=\"bgy: -100\" style=\"background-image: url(\' . rex_media_manager::getUrl(\'uikit_hero_image\', \'REX_MEDIA[1]\') . \')\" \';\r\n}\r\n$out =  $caption = $width = \'\';\r\n$rexInputVars = rex_var::toArray(\"REX_VALUE[1]\");\r\n\r\nforeach ($rexInputVars as $rexVar) {\r\n    $mediaFile = $rexVar[\'6\'];\r\n    $mediaFile_title = $rexVar[\'imageTitle\'];\r\n    if ($mediaFile_title != \'\') {\r\n        $caption =  \'<figcaption>\r\n   \' . $mediaFile_title . \'\r\n  </figcaption>\';\r\n    }\r\n    $content = $rexVar[\'content\'];\r\n    $align = $rexVar[\'align\'];\r\n    $media =  $text_align = \'\';\r\n    if (uikit_checkMedia($mediaFile) == true) {\r\n\r\n        $media = \'<video uk-video src=\"\' . rex_url::media($mediaFile) . \'\" muted loop playsinline uk-video=\"autoplay: inview\"></video>\';\r\n    } elseif ($mediaFile != \'\') {\r\n        $media = \'<img src=\"\' . rex_media_manager::getUrl(\'card\', $mediaFile) . \'\" alt=\"\">\';\r\n    }\r\n\r\n    if (\'REX_VALUE[4]\' == \'slideshow\') {\r\n        $out .= \'<li><div class=\"uk-container\">\';\r\n    }\r\n    if ($media != \'\') {\r\n\r\n        $out .= \'<div class=\"uk-card uk-card-\' . $color . $font_color . \' uk-child-width-1-2@s\"  uk-grid>\r\n    <div class=\"\' . $align . \'\">\r\n    <figure class=\"uk-width-1-1 uk-card-body uk-padding uk-padding-remove\" role=\"group\">\r\n  \' . $media . \'\r\n\' . $caption . \'\r\n</figure>\r\n    </div>\';\r\n    } else {\r\n        $out .= \'<div class=\"uk-card uk-card-\' . $color . $font_color . \'\"  uk-grid>\';\r\n        $width = \' class=\"uk-width-3-4\"\';\r\n    }\r\n    $out .= \'    \r\n    <div\' . $width . \'>\r\n        <div class=\"my-border-reset uk-card-body uk-padding-remove\">\r\n            \' . $content . \'\r\n        </div>\r\n    </div>  </div>              \r\n\';\r\n    $width  =  \'\';\r\n    if (\'REX_VALUE[4]\' == \'slideshow\') {\r\n        $out .= \'</div></li>\';\r\n    }\r\n    $content =  \'\';\r\n}\r\n\r\nif (\'REX_VALUE[4]\' == \'\') {\r\n    echo \'<section class=\"uk-section uk-background-cover uk-section-REX_VALUE[2]\"\' . $bgimage . \' >\r\n  <div class=\"uk-container\">\r\n  \' . $out . \'\r\n  </div>\r\n  </section>\r\n  \';\r\n} else {\r\n\r\n    echo \'<section class=\"uk-section uk-section-REX_VALUE[2] uk-padding uk-background-cover\"\' . $bgimage . \' ><div class=\"uk-container\">\';\r\n    echo \'<div class=\"\" uk-slider=\"autoplay: true\">\r\n\r\n    <div class=\"uk-position-relative \" tabindex=\"-1\">\r\n <div class=\"uk-slider-container\">\r\n        <ul class=\"uk-slider-items uk-child-width-1-1@l uk-child-width-1-1@m uk-grid-match uk-grid-large uk-grid\">\';\r\n    echo    $out;\r\n    echo \' </ul>\r\n   <a class=\"uk-position-center-left-out uk-position-large\" href=\"#\" uk-slidenav-previous uk-slider-item=\"previous\"></a>\r\n    <a class=\"uk-position-center-right-out uk-position-large\" href=\"#\" uk-slidenav-next uk-slider-item=\"next\"></a>\r\n</div>\r\n\r\n    </div>\r\n  \r\n    <ul class=\"uk-slider-nav uk-dotnav uk-flex-center uk-margin\"></ul>\r\n\r\n</div>\';\r\n    echo \'</div>\r\n\r\n\r\n\r\n</section>\';\r\n}\r\n$out =  $bgimage = \'\';\r\n','<?php \r\n$MForm = MForm::factory()\r\n->addFieldsetArea(\'Einstellungen\', MForm::factory()\r\n->addSelectField(\"4\")\r\n->setLabel(\'Typ\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'\' => \'Kacheln\',\r\n    \'slideshow\' => \'Slideshow\',\r\n)))\r\n\r\n->addFieldsetArea(\'Einstellungen\', MForm::factory()\r\n->addSelectField(\"2\")\r\n->setLabel(\'Farbeinstellungen:\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'default\' => \'Standard\',\r\n    \'primary\' => \'Haupt-/Logo-Farbe\',\r\n    \'secondary\' => \'Sekundärfarbe\',\r\n    \'muted\' => \'Hell / Stumm\',\r\n    \'none uk-light\' => \'Helle Schrift erzwingen (bei Hintergrundbildern)\',\r\n))\r\n->addMediaField(1, array(\'label\' => \'Hintergrundbild\'))\r\n);\r\necho $MForm->show();\r\n\r\n$id = 1;\r\n$MForm = MForm::factory()\r\n->addFieldsetArea(\'Cards\', MForm::factory()\r\n->addCustomLinkField(\"$id.0.6\", [\'label\' => \'Bild oder Video\', \'data-mailto\'=>\'disable\',\'data-intern\'=>\'disable\', \'data-extern\'=>\'enable\'])\r\n->addTextField(\"$id.0.imageTitle\", array(\r\n    \'label\' => \'Medienbeschreibung:\'\r\n))\r\n\r\n\r\n->addTextAreaField(\"$id.0.content\", array(\r\n    \'label\' => \'Inhalt:\',\r\n    \'data-lang\' => \\Cke5\\Utils\\Cke5Lang::getUserLang() ,\r\n    \'data-profile\' => \'default\',\r\n    \'class\' => \'cke5-editor\'\r\n))\r\n)\r\n    \r\n\r\n->addFieldsetArea(\'Einstellung für diese Card\', MForm::factory()\r\n\r\n->addSelectField(\"$id.0.align\")\r\n->setLabel(\'Medienausrichtung:\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'uk-flex-last@s uk-card-media-left\' => \'rechts\',\r\n    \'uk-card-media-left\' => \'links\'\r\n))\r\n                 );\r\necho MBlock::show($id, $MForm->show() , array(\r\n    \'max\' => 100\r\n));\r\n?>','2022-01-22 16:57:11','uikitdemo','2022-09-30 15:40:27','admin',NULL,0),
  (2,NULL,'0020 :: Cards','<?php\r\n$bgimage = $footer = $result = $mediaFile = \'\';\r\n$rexInputVars = rex_var::toArray(\"REX_VALUE[1]\");\r\n$rexSettingVars = rex_var::toArray(\"REX_VALUE[2]\")[0];\r\n$rexColorVars = rex_var::toArray(\"REX_VALUE[3]\")[0];\r\n$bgimage = \'\';\r\nif (\'REX_MEDIA[1]\' != \'\') {\r\n    $bgimage = \'style=\"background-image: url(\'.rex_media_manager::getUrl(\'uikit_hero_image\',\'REX_MEDIA[1]\').\')\" \';\r\n}\r\n?>\r\n\r\n<?php\r\n$footer = \'\';\r\n$rexInputVars = rex_var::toArray(\"REX_VALUE[1]\");\r\n$rexSettingVars = rex_var::toArray(\"REX_VALUE[2]\")[0];\r\n// settings vars\r\n$ukGutterWidth = \'uk-grid-\' . $rexSettingVars[\'gutterWidth\'];\r\n$ukMatchHeight = isset($rexSettingVars[\'matchHeight\']) ? \' uk-grid-match\' : \'\';\r\n\r\n$output = array();\r\n$output[] = \'<div uk-height-match=\".uk-card-wrapper\" uk-scrollspy=\"target: > div; cls:uk-animation-fade; delay: 500\" class=\"\' . $ukGutterWidth . $ukMatchHeight . \' uk-child-width-expand@m uk-flex-center\" uk-grid>\';\r\n\r\nforeach ($rexInputVars as $rexVar) {\r\n    $linkpre = $linksuf = $uklinkdiv = \'\';\r\n    // uk vars\r\n    $ukColor = \'uk-card-\' . $rexVar[\'ukColor\'];\r\n    $ukWidth = \'uk-width-\' . $rexVar[\'ukWidth\'];\r\n    $uklinkdiv = \' \' . $rexVar[\'linkdiv\'];\r\n    // content vars\r\n    $header = $rexVar[\'header\'];\r\n    $title = $rexVar[\'imageTitle\'];\r\n    $content = $rexVar[\'content\'];\r\n    $mediaFile = $rexVar[\'REX_MEDIA_1\'];\r\n    $managertype_effect = \'\';\r\n    $media_type = rex_media::get($mediaFile);\r\n    if ($media_type) {\r\n        $media_type = $media_type->getType();\r\n\r\n        if ($media_type != \'image/svg+xml\') {\r\n            $managertype_effect = \'card/\';\r\n        }\r\n    }\r\n\r\n    $managertype_effect = \'card\';\r\n\r\n    $link = $rexVar[1];\r\n    $LinkText = $rexVar[\'LinkText\'];\r\n    if ($LinkText == \'\') {\r\n        $LinkText = \'Weitere Informationen\';\r\n    }\r\n\r\n// BEGIN Wrapper \r\n    if ($link != \'\') {\r\n        if (!uikit_checklink($link)) {\r\n            $link = rex_getUrl($link);\r\n        }\r\n        if ($rexVar[\'linkdiv\'] != \'\') {\r\n            $linkpre = \'<a class=\"uk-link-reset\" href=\"\' . $link . \'\" title=\"Alle Infos anzeigen\">\';\r\n            $linksuf = \'</a>\';\r\n        }\r\n\r\n        $linkout = uikit_checklink($link);\r\n        $linkout = \'<a class=\"uk-preserve-color uk-button uk-button-text\" href=\"\' . $linkout . \'\">\' . $LinkText . \' <i data-uk-icon=\"icon: chevron-right; ratio: 1\"></i></a>\';\r\n    }\r\n\r\n\r\n    $output[] = \'<div class=\"\' . $ukWidth . \'\">\';\r\n    $output[] =  $linkpre . \'<div class=\"uk-card uk-preserve-color uk-card-default \' . $ukColor .  \'\">\';\r\n    $output[] = \'<div class=\"uk-card-wrapper\">\';\r\n\r\n// Image oder Video selected?\r\n    if ($mediaFile != \'\') {\r\n        \r\n        $mediaObject = rex_media::get($mediaFile);\r\n        $mediaTitle = $mediaObject ->getTitle();\r\n        \r\n        if (uikit_checkMedia($mediaFile) == true) {\r\n            $output[] = \'\r\n<div class=\"uk-card-media-top\">\r\n<div class=\"uk-overflow-hidden\">\r\n<video title=\"\' . $mediaTitle . \'\" src=\"\'.rex_url::media($mediaFile).\'\" muted loop playsinline uk-video=\"autoplay: inview\"></video>\r\n<div class=\"uk-position-center\" uk-lightbox=\"video-autoplay:true\">\r\n<a uk-tooltip=\"title: Click zum Vergrößern; pos: top-left\" class=\"uk-icon-button\" uk-icon=\"play-circle\" data-type=\"video\" href=\"\' . rex_url::media($mediaFile) . \'\" data-caption=\"Video\"></a>\r\n</div></div></div>\';\r\n        } else {\r\n            $output[] = \'<div class=\"uk-card-media-top\"><div class=\"uk-overflow-hidden\">\r\n            <img uk-image uk-scrollspy=\"cls:uk-animation-kenburns; repeat:true\" src=\"\'.rex_media_manager::getUrl($managertype_effect,$mediaFile).\'\" title=\"\' . $mediaTitle . \'\" alt=\"\' . $mediaTitle . \'\">\r\n            </div></div>\';\r\n        }\r\n    }\r\n    // Card header\r\n    if ($header != \'\') {\r\n        $output[] = \'<div class=\"uk-card-header\"><h2 class=\"uk-card-title\">\' . $header . \'</h2></div>\';\r\n    }\r\n\r\n    // body / content\r\n    $output[] = \'<div class=\"uk-card-body\">\';\r\n    $output[] = $content;\r\n    $output[] = \'</div>\';\r\n    $output[] = \'</div>\';\r\n    // footer\r\n    if ($rexVar[1]) {\r\n        $output[] = \'<div class=\"uk-card-footer\">\';\r\n        $output[] = $linkout;\r\n        $output[] = \'</div>\';\r\n    }\r\n\r\n    // end wrapper\r\n    $output[] = \'</div>\';\r\n    $output[] = \'</div>\';\r\n    $output[] = $linksuf;\r\n}\r\n\r\n$output[] = \'</div>\';\r\n$result =  join(\"\\n\", $output);\r\n?>\r\n\r\n<section <?= $bgimage ?> class=\"uk-background-cover uk-section uk-preserve-color uk-background-cover uk-section-<?= $rexColorVars[\'ukcolor\'] ?>REX_VALUE[14]\"  uk-parallax=\"bgy: -100\">\r\n    <div class=\"uk-container\">\r\n        <?= $result ?>\r\n    </div>\r\n</section>','<div class=\"uk-text-right\">\r\n<a class=\"uk-button uk-button-primary\" href=\"#cards_help\" uk-toggle=\"target: #cards_help\">Info</a>\r\n</div>\r\n\r\n<div id=\"cards_help\" class=\"uk-flex-top\" uk-modal>\r\n    <div class=\"uk-modal-dialog uk-modal-body uk-margin-auto-vertical\">\r\n         <button class=\"uk-modal-close-default\" type=\"button\" uk-close></button>\r\n        <h2 class=\"uk-modal-title\">Info zum Modul</h2>\r\n        <p>Dieses Modul ermöglicht die Erstellung mehrpaltiger Designs, ohne fest definiertem Grid. </p>\r\n         <p>Es können in der Sektion Hintergrundfarben und Hintergrundbilder mit Parallax-Effekt eingebunden werden</p>\r\n        <p>Jeder Abschnitt kann unterschiedlich breit sein oder sich dem vorhandenen Platz anpassen</p>\r\n        <p class=\"uk-text-right\">\r\n            <button class=\"uk-button uk-button-default uk-modal-close\" type=\"button\">Schließen</button>\r\n        </p>\r\n    </div>\r\n</div>\r\n\r\n<?php\r\n\r\n$id = 1;\r\n$MBlock = MForm::factory()\r\n->addTabElement(\'Cards\', MForm::factory()\r\n->addTextField(\"$id.0.header\", array(\r\n    \'label\' => \'Header:\',\r\n))\r\n\r\n->addMediaField(1, array(\r\n    \'label\' => \'<i class=\"fa fa-file\" aria-hidden=\"true\"></i> Medium\',\r\n    \'preview\' => \'1\'\r\n))\r\n->addTextField(\"$id.0.imageTitle\", array(\r\n    \'label\' => \'Bildinfo:\'\r\n))\r\n\r\n->addTextAreaField(\"$id.0.content\", array(\r\n    \'label\' => \'Inhalt:\',\r\n    \'data-lang\' => \\Cke5\\Utils\\Cke5Lang::getUserLang() ,\r\n    \'data-profile\' => \'default\',\r\n    \'class\' => \'cke5-editor\'\r\n))\r\n->addCustomLinkField(\"$id.0.1\",array(\'label\'=>\'Link\'))\r\n->addTextField(\"$id.0.LinkText\", array(\r\n    \'label\' => \'Linktext (optional):\'\r\n))\r\n               ,true,false\r\n               )\r\n    \r\n->addTabElement(\'Settings für diese Card\', MForm::factory()\r\n->addSelectField(\"$id.0.ukWidth\")\r\n->setLabel(\'Breite:\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'auto@m\' => \'automatisch\',\r\n    \'1-1@m\' => \'100%\',\r\n    \'2-3@m\' => \'66%\',\r\n    \'1-2@m\' => \'50%\',\r\n    \'1-3@m\' => \'33%\',\r\n    \'1-4@m\' => \'25%\',\r\n    \'1-5@m\' => \'20%\',\r\n    \'expand@m\' => \'Ausdehnen\'\r\n))\r\n\r\n->addSelectField(\"$id.0.linkdiv\")\r\n->setLabel(\'Kachel verlinken\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'\' => \'Nein\',\r\n    \'linkdiv\' => \'ja\'\r\n))\r\n\r\n->addSelectField(\"$id.0.ukColor\")\r\n->setLabel(\'Farbe:\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'default\' => \'Standard\',\r\n    \'primary\' => \'Hauptfarbe\',\r\n    \'secondary\' => \'Sekundär\',\r\n    \'muted\' => \'Muted\',\r\n))\r\n               );\r\n\r\n$mm = MBlock::show($id, $MBlock->show() , array(\r\n    \'max\' => 100\r\n));\r\n\r\n\r\n\r\n// settings\r\n$MForm = MForm::factory()\r\n->addTabElement(\'Cards\', MForm::factory()\r\n->addHTML($mm), true, false)\r\n->addTabElement(\'Sektionseinstellung\', MForm::factory()\r\n->addSelectField(\"2.0.gutterWidth\")\r\n->setLabel(\'Abstand:\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'medium\' => \'normal\',\r\n    \'small\' => \'eng\',\r\n    \'large\' => \'weit\',\r\n    \'collapse\' => \'entfernen\'\r\n))\r\n->addDescription(\"Abstände zwischen den \'Cards\' verändern\")\r\n->addMediaField(1, array(\'label\'=>\'Hintergrundbild\'))\r\n\r\n->addSelectField(\"3.0.ukcolor\")\r\n->setLabel(\'Farbe:\')\r\n->setAttribute(\'class\', \'selectpicker\')\r\n->setOptions(array(\r\n    \'default\' => \'Standard\',\r\n    \'primary\' => \'Primär\',\r\n    \'secondary\' => \'Sekundär\',\r\n    \'muted\' => \'Muted\',\r\n))\r\n\r\n// checkbox\r\n->addCheckboxField(\"2.0.matchHeight\", array(\r\n    1 => \'Ja\'\r\n) , array(\r\n    \'label\' => \'Alle gleiche Höhe:\'\r\n))\r\n\r\n->addSelectField(14, array(\'\'=>\'Standard\',\' uk-padding-remove\'=>\'Keine\',\' uk-padding-small\'=>\'mittel\',\' uk-padding-large\'=>\'groß\'), array(\'label\'=>\'Abschnitssfüllung\', \'class\'=>\'selectpicker\'))\r\n                );\r\n\r\necho $MForm->show();\r\n','2022-01-22 17:01:11','uikitdemo','2022-09-30 16:09:54','admin',NULL,0),
  (3,NULL,'0030 :: Iconliste','<section class=\"uk-section uk-background-primary\">\r\n<div class=\"uk-container uk-padding-small uk-light\">\r\n   <REX_VALUE[2]><?php echo nl2br(\'REX_VALUE[id=3 output=html]\');?></REX_VALUE[2]> \r\n<div class=\"uk-background-primary uk-light uk-child-width-1-2 uk-child-width-1-3@m uk-child-width-1-5@l uk-grid-collapse uk-text-center\" uk-grid uk-scrollspy=\"cls: uk-animation-scale-up; target: .uk-tile; delay: 300; repeat: true\">\r\n<?php\r\n$data = rex_var::toArray(\"REX_VALUE[1]\");\r\n\r\nforeach ($data as $item)\r\n{\r\n    $image = $item[\'REX_MEDIA_1\']; \r\n    $text =  nl2br($item[\'text\']); \r\n    \r\n    echo \' <div>\r\n        <div class=\"uk-tile uk-padding-small uk-tile-primary\">\r\n            <img class=\" uk-padding uk-width-1-1\" uk-svg src=\"\'.rex_url::media().$image.\'\"><br><strong>\'. $text.\'</strong>\r\n        </div>\r\n    </div>\';\r\n    \r\n}\r\n?>\r\n</div>\r\n</div>\r\n</section>\r\n   ','<style>\r\n    .rex-js-media-preview {background-color: #666;}\r\n</style>\r\n<?php $mform = MForm::factory()\r\n->addFieldsetArea(\'Überschrift\', MForm::factory()\r\n->addTextAreaField(3, [\'label\' => \'Text\'])\r\n->addSelectField(2, [\'h1\' => \'Überschrift 1\', \'h2\' => \'Überschrift 2\', \'h3\' => \'Überschrift 3\'], [\'label\' => \'Format\']) \r\n->setAttribute(\'class\', \'selectpicker\')\r\n);                \r\necho $mform->show();\r\n\r\n\r\n$id = 1;\r\n$MBlock = MForm::factory()\r\n->addTabElement(\'links\', MForm::factory()\r\n\r\n->addMediaField(1, array(\r\n    \'label\' => \'<i class=\"fa fa-picture-o\" aria-hidden=\"true\"></i> SVG Bild\',\r\n    \'preview\' => \'1\',\r\n    \'types\' => \'svg\'\r\n))\r\n\r\n->addTextAreaField(\"$id.0.text\", array(\r\n    \'label\' => \'Text (wird zentriert)\',\r\n))\r\n                ,true,false);\r\necho MBlock::show($id, $MBlock->show()); \r\n?>','2022-01-24 14:37:32','uikitdemo','2022-09-30 16:14:42','admin',NULL,0),
  (4,NULL,'0000 :: Überschrift','<section class=\"uk-section uk-padding\">\r\n<div class=\"uk-container\">\r\n<REX_VALUE[2]><?php echo nl2br(\'REX_VALUE[id=1 output=html]\');?></REX_VALUE[2]>\r\n</div>\r\n</section>    ','<?php $mform = MForm::factory()\r\n->addFieldsetArea(\'Überschrift\', MForm::factory()\r\n                    ->addTextAreaField(1, [\'label\' => \'Text\'])\r\n                    ->addSelectField(2, [\'h1\' => \'Überschrift 1\', \'h2\' => \'Überschrift 2\', \'h3\' => \'Überschrift 3\'], [\'label\' => \'Format\']) \r\n                    ->setAttribute(\'class\', \'selectpicker\')\r\n                  );\r\necho $mform->show();\r\n\r\n','2022-01-24 17:24:31','uikitdemo','2022-09-30 15:31:06','admin',NULL,0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_redactor_profile`;
CREATE TABLE `rex_redactor_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_height` int(5) NOT NULL,
  `max_height` int(5) NOT NULL,
  `plugin_counter` tinyint(1) NOT NULL,
  `plugin_limiter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'default','Default','<?php // Öffnet das Modal am Ende des Templates bei einem Ajax-Request\r\nif ((array_key_exists(\'Ajax\', apache_request_headers()) && apache_request_headers()[\'Ajax\'] == \"on\") or rex_request::isXmlHttpRequest()) {\r\n  echo \'<div class=\"uk-padding-small uk-light uk-background-primary\"><h1>REX_ARTICLE[field=name]</h1></div>\';\r\n    echo rex_extension::registerPoint(new rex_extension_point(\'OUTPUT_FILTER\', \'REX_ARTICLE[]\' . \'<script>UIkit.scroll().scrollTo(\"#ajax-dialog\");</script>\'));\r\n    die();\r\n}?><!DOCTYPE html>\r\n<html lang=\"de\">\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <?php // SEO-Tags generiert mit YRewrite\r\n    if (rex_addon::get(\"yrewrite\")->isInstalled() && rex_addon::get(\"yrewrite\")->isAvailable()) {\r\n        $seo = new rex_yrewrite_seo();\r\n        echo $seo->getTitleTag() . PHP_EOL;\r\n        echo $seo->getDescriptionTag() . PHP_EOL;\r\n        echo $seo->getRobotsTag() . PHP_EOL;\r\n        echo $seo->getHreflangTags() . PHP_EOL;\r\n        echo $seo->getCanonicalUrlTag() . PHP_EOL;\r\n    }\r\n    ?>\r\n    <link rel=\"stylesheet\" href=\"<?=rex_url::frontend()?>uikit/css/uikit.min.css\">\r\n</head>\r\n\r\n<body>\r\n    REX_TEMPLATE[key=uikit_navi]\r\n    <section class=\"uk-section uk-padding-remove uk-margin-remove\">\r\n        REX_ARTICLE[]\r\n    </section>\r\n    REX_TEMPLATE[key=uikit_footer]\r\n\r\n     <div id=\"ajax-modal\" class=\"uk-modal-container\" uk-modal>        \r\n     <div id=\"ajax-modal-dialog\" class=\"uk-padding-remove uk-modal-dialog uk-margin-auto-vertical uk-modal-body u uk-padding-small\" >\r\n<button class=\"uk-light uk-modal-close-default uk-close-large\" type=\"button\" uk-close></button>\r\n        <div class=\"uk-padding-remove uk-grid-collapse uk-child-width-1-1@s uk-flex-middle\" uk-grid>\r\n            <div id=\"ajax-modal-content\">          \r\n            </div>\r\n        </div>\r\n         <div class=\"uk-modal-footer uk-background-primary uk-light my-border-reset uk-text-right\">\r\n            <button class=\"uk-button uk-button-default uk-modal-close\" type=\"button\">Schließen</button>\r\n        </div> \r\n    </div>\r\n</div> \r\n    \r\n    \r\n    <div id=\"ajax-offcanvas\" uk-offcanvas=\"overlay: true\">\r\n    <div id=\"ajax-offcanvas-dialog\" class=\"uk-box-shadow-xlarge uk-padding-remove uk-offcanvas-bar uk-width-2-3\">\r\n\r\n        <button class=\"uk-offcanvas-close\" type=\"button\" uk-close></button>\r\n\r\n       <div id=\"ajax-offcanvas-content\" class=\"uk-background-primary uk-dark\">\r\n        </div>\r\n\r\n    </div>\r\n</div>\r\n\r\n\r\n  \r\n    <script type=\"text/javascript\" src=\"<?=rex_url::frontend()?>uikit/js/uikit.min.js\" ); ?>\r\n    </script>\r\n    <script type=\"text/javascript\" src=\"<?=rex_url::frontend()?>/uikit/js/uikit-icons.min.js\" ); ?>\r\n    </script>\r\n    <script>\r\n        var {\r\n            $$,\r\n            ajax,\r\n            css,\r\n            data,\r\n            html,\r\n            on\r\n        } = UIkit.util;\r\n\r\n        $$(\'.modal-trigger\').forEach(function(trigger) {\r\n            on(trigger, \'click\', function() {\r\n                var id = data(this, \'id\');\r\n                ajax(id, {\r\n\r\n                            headers: {\r\n                                Ajax: \"on\"\r\n                            }\r\n                        }\r\n\r\n\r\n                    )\r\n                    .then(function(xhr) {\r\n                        html($$(\'#ajax-modal-content\'), xhr.response);\r\n                    });\r\n            });\r\n        });\r\n        \r\n        \r\n            $$(\'.offcanvas-trigger\').forEach(function(trigger) {\r\n            on(trigger, \'click\', function() {\r\n                var id = data(this, \'id\');\r\n                ajax(id, {\r\n\r\n                            headers: {\r\n                                Ajax: \"on\"\r\n                            }\r\n                        }\r\n\r\n\r\n                    )\r\n                    .then(function(xhr) {\r\n                        html($$(\'#ajax-offcanvas-content\'), xhr.response);\r\n                    });\r\n            });\r\n        });\r\n        \r\n        \r\n    </script>\r\n\r\n</body>\r\n\r\n</html>',1,'2022-02-05 13:32:08','uikitdemo','2022-02-05 13:32:08','uikitdemo','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (2,'uikit_navi','Navigation','<?php\r\n// UIkit NAVIGATION uses navigation_array AddOn\r\nfunction myNavi_demo($data = array())\r\n{\r\n    $output = [];\r\n    foreach ($data as $cat) {\r\n        $subnavi = $liclass = $ul = \"\";\r\n        $subclass = \'uk-default\';\r\n        if ($cat[\'level\'] == 0 && $cat[\'hasChildren\'] == true) {\r\n            $liclass = \'uk-parent \';\r\n            $ul = \' class=\"uk-nav uk-navbar-dropdown-nav\"\';\r\n            $subclass = \'uk-navbar-dropdown uk-margin-remove uk-padding-small\';\r\n        }\r\n        if ($cat[\'hasChildren\'] == true) {\r\n            $sub = [];\r\n            $sub[] = \'<div class=\"\' . $subclass . \'\">\';\r\n            $sub[] = \'<ul\' . $ul . \'>\';\r\n            $sub[] = myNavi_demo($cat[\'children\']);\r\n            $sub[] = \'</ul>\';\r\n            $sub[] = \'</div>\';\r\n            $subnavi = join(\"\\n\", $sub);\r\n        }\r\n        $catname = $cat[\'catName\'];\r\n        if ($cat[\'active\'] == true) {\r\n            $catname = \'\' . $catname . \'\';\r\n            $liclass .= \'uk-active\';\r\n        }\r\n        if ($liclass != \'\') {\r\n            $liclass =  \' class=\"\' . $liclass . \'\"\';\r\n        }\r\n        $catname = \'<a href=\"\' . $cat[\'url\'] . \'\">\' . $catname . \'</a>\';\r\n        $output[] = \'<li\' . $liclass . \'>\' . $catname . $subnavi . \'</li>\';\r\n    }\r\n\r\n    if (!empty($output)) {\r\n        return join(\"\\n\", $output);\r\n    }\r\n}\r\n// Navigation erzeugen\r\n$navigation = \'\r\n    <ul class=\"uk-navbar-nav\">\'\r\n    . myNavi_demo(navArray($start = 0, $depth = 4, true)) .\r\n    \'</ul>\r\n\';\r\n?>\r\n<!--- NAVI-BAR --->\r\n<div class=\"nav\">\r\n    <nav class=\"uk-box-shadow-small uk-background-secondary uk-light \" uk-navbar>\r\n        <div class=\"uk-navbar-left\">\r\n            <a class=\"uk-navbar-item uk-logo\" title=\"Logo: <?=rex::getServerName()?>\" href=\"/\">\r\n            <img class=\"logo\" name=\"Logo\" src=\"<?=rex_url::media()?>logo.svg\" alt=\"\">\r\n            </a>\r\n        </div>\r\n        <div class=\"uk-visible@m uk-navbar-center uk-text-large\">\r\n            <?= $navigation; ?>\r\n        </div>\r\n\r\n        <div class=\"uk-navbar-right\">\r\n        <a class=\"uk-icon-button uk-margin-right\" href=\"https://github.com/FriendsOfREDAXO\" uk-icon=\"icon: github\"></a>\r\n            REX_TEMPLATE[key=uikit_mobile_navi]\r\n        </div>\r\n    </nav>\r\n</div>\r\n<!--- ENDE NAVI-BAR --->',0,'2022-02-04 19:41:09','uikitdemo','2022-02-04 19:41:09','uikitdemo','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (3,'uikit_mobile_navi','Mobile Navi','<?php\r\n//\r\n// DEMO ::UiKit-Aufklappmenü\r\n//\r\nfunction myNavi2($data = array())\r\n{\r\n    foreach ($data as $cat) {\r\n        $subnavi = $li = $ul = \"\";\r\n        if ($cat[\'hasChildren\'] == true)\r\n         {\r\n            $open = \'\';\r\n            if ($cat[\'active\'] == true)\r\n                $open = \' uk-open\';\r\n            \r\n            $li = \' class=\"level-\'.$cat[\'level\'].\' uk-parent\'.$open.\'\"\';\r\n            $ul = \' class=\"uk-nav-sub uk-nav-divider\" data-uk-nav=\"toggle:>.clicky\"\';\r\n         }\r\n        if ($cat[\'hasChildren\'] == true) {\r\n            $sub = [];\r\n            $sub[] = \'<ul\'.$ul.\'>\';\r\n            $sub[] = myNavi2($cat[\'children\']);\r\n            $sub[] = \'</ul>\';\r\n            $subnavi = join(\"\\n\", $sub);\r\n        }\r\n        \r\n        $catname = $cat[\'catName\'];\r\n        \r\n        if ($cat[\'active\'] == true) {\r\n            $catname = \'<strong>\' . $catname . \'</strong>\';\r\n        }\r\n        $clicky =\'\';\r\n      #  if ($li==\' class=\"uk-parent\"\')\r\n       if ($cat[\'hasChildren\'] == true)\r\n        { \r\n            $clicky = \'<span uk-icon=\"icon: plus; ratio 1.2\" class=\"clicky\"></span>\';\r\n        }\r\n        $catname = \'<a href=\"\'.$cat[\'url\'].\'\">\'.$catname.\'</a>\';\r\n       \r\n        $output[] = \'<li\'.$li.\'>\' . $catname . $subnavi . \'</li>\';\r\n    }\r\n    return join(\"\\n\", $output);\r\n}\r\n\r\n\r\n// Navigation erzeugen\r\n$navigation2 = \'<div>\r\n    <ul class=\"uk-nav-default uk-nav-parent-icon\" data-uk-nav=\"multiple: true\">\'\r\n    . myNavi2(navArray($start = 0, $depth = 4, true)) .\r\n    \'</ul>\r\n</div>\';\r\n?>\r\n\r\n\r\n<button class=\"uk-hidden@l uk-navbar-toggle\" uk-icon=\"icon: menu; ratio: 1\" type=\"button\" uk-toggle=\"target: #sidebar-navi\"></button>\r\n<div id=\"sidebar-navi\" uk-offcanvas=\"mode: slide; overlay: true; flip: true;\">\r\n    <div class=\"uk-offcanvas-bar uk-background-primary\">\r\n        <button class=\"uk-offcanvas-close\" type=\"button\" data-uk-close=\"ratio: 1\"></button><br><br>\r\n        <?= $navigation2; ?>\r\n    </div>\r\n</div>',0,'2022-01-22 16:55:45','uikitdemo','2022-01-22 16:55:45','uikitdemo','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (4,'uikit_footer','Footer','<section class=\"uk-section uk-section-muted uk-padding-remove\">\r\n<div class=\"uk-container\">\r\n<div class=\"uk-flex-middle\" uk-grid>\r\n    <div class=\"uk-padding-small uk-width-3-4@m uk-text-right\">\r\n        <p><a class=\"uk-button uk-inline modal-trigger\" href=\"<?=rex_getUrl(4)?>\" data-id=\"<?=rex_getUrl(4)?>\" uk-toggle=\"target: #ajax-modal\">AJAX Modal</a> | \r\n        <a class=\"uk-button uk-inline modal-trigger\" href=\"<?=rex_getUrl(4)?>\" data-id=\"<?=rex_getUrl(5)?>\" uk-toggle=\"target: #ajax-modal\">AJAX Modal 2</a>\r\n            \r\n                  <a class=\"uk-button uk-inline offcanvas-trigger\" href=\"<?=rex_getUrl(4)?>\" data-id=\"<?=rex_getUrl(4)?>\" uk-toggle=\"target: #ajax-offcanvas\">Canvas Link</a>\r\n            \r\n        </p>\r\n    </div>\r\n    <div class=\"uk-padding-small uk-width-1-4@m uk-flex-first\">\r\n        <img alt=\"FriendsOfRedaxo\" src=\"<?=rex_url::media()?>logo.svg\"> UIKit3 Demo\r\n    </div>\r\n</div>\r\n    </div>\r\n</section>',0,'2022-02-05 13:43:32','uikitdemo','2022-02-05 13:43:32','uikitdemo','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user_role`;
CREATE TABLE `rex_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_email_template`;
CREATE TABLE `rex_yform_email_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_reply_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_reply_to_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_field`;
CREATE TABLE `rex_yform_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_required` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expanded` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history`;
CREATE TABLE `rex_yform_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dataset` (`table_name`,`dataset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history_field`;
CREATE TABLE `rex_yform_history_field` (
  `history_id` int(11) NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`history_id`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_table`;
CREATE TABLE `rex_yform_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_amount` int(11) NOT NULL DEFAULT 50,
  `list_sortfield` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `mass_deletion` tinyint(1) NOT NULL,
  `mass_edit` tinyint(1) NOT NULL,
  `schema_overwrite` tinyint(1) NOT NULL DEFAULT 1,
  `history` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
SET FOREIGN_KEY_CHECKS = 1;

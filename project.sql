-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022 年 01 月 04 日 22:13
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `coverPic` varchar(200) DEFAULT 'img/g_park1.jpg',
  `section1_title` varchar(50) NOT NULL,
  `section1_span` varchar(20) DEFAULT NULL,
  `section1_text` varchar(1500) NOT NULL,
  `section1_pic` varchar(200) DEFAULT 'img/g_park1.jpg',
  `section2_title` varchar(50) NOT NULL,
  `section2_span` varchar(20) DEFAULT NULL,
  `section2_text` varchar(1500) NOT NULL,
  `section2_pic1` varchar(200) DEFAULT 'img/g_clock.jpg',
  `section2_pic2` varchar(200) DEFAULT 'img/g_clock.jpg',
  `section2_pic3` varchar(200) DEFAULT 'img/g_clock.jpg',
  `section3_title` varchar(50) NOT NULL,
  `section3_span` varchar(20) DEFAULT NULL,
  `section3_text` varchar(1500) NOT NULL,
  `section3_pic` varchar(200) DEFAULT 'img/g_park1.jpg',
  `quote` varchar(1500) NOT NULL,
  `author` varchar(30) NOT NULL,
  `end_pic` varchar(200) DEFAULT 'img/g_park1.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `post`
--

INSERT INTO `post` (`postID`, `title`, `coverPic`, `section1_title`, `section1_span`, `section1_text`, `section1_pic`, `section2_title`, `section2_span`, `section2_text`, `section2_pic1`, `section2_pic2`, `section2_pic3`, `section3_title`, `section3_span`, `section3_text`, `section3_pic`, `quote`, `author`, `end_pic`) VALUES
(1, 'Greenwich', 'img/g_park1.jpg', 'About Greenwich', '', 'Greenwich is situated at the suburban London. When I arrived at Greenwich, it feels like entering another world under different time zone. Unlike the hustle and bustle in London, the pace in Greenwich is moderate. You can see people picnicking and chilling on the grass-field.\r\n\r\n', 'img/g_entrance.jpg', 'Royal Observatory Greenwich', '', 'The Royal Observatory Greenwich actually appears in the film - \"Now You See Me.\" However, it\'s not the reason why it\'s famous. The Royal Observatory Grennwich is famous for being the home of Greewich Mean Time, the Prime Meridian of the world, and London\'s Planetarium.\r\n', 'img/g_clock.jpg', 'img/g_prime.jpg', 'img/g_inHouse.mp4', 'University of Greenwich', '', 'The University of Greenwich has stunning views. I love the corridors, and suprisingly, there are not many people gathering. It is lucky to temporarily own the delicate hall.\r\n', 'img/g_campus.jpg', '“If the parks be “the lungs of London”, we wonder what Greenwich Fair is – a periodical breaking out, we suppose – a sort of spring rash.”\n', '— Charles Dickens', 'img/g_park2.jpg'),
(2, 'Central London', 'img/l_duck.mp4', 'Natural History Museum', '', 'The Natural History Museum reminds me of the movie - \"Night at The Museum\" - since there is also an enormous dinosaur skeleton in the hall of the museum. This museum includes a wide arrange of themes, and it\'s definitely worth it to spend time with friends here.', 'img/l_history.jpg', 'London Eye', '', 'As a world-known scenery spot, London Eye owns its reputation. I enjoy the chilling vibe with my friends while strolling along the Thames. The sky becomes extremely stunning when it\'s close to evening. Don\'t miss the ride on the London Eye. You could definitely discover the beautiful city views from the top of the ferris wheel!\r\n\r\n', 'img/l_eye.jpg', 'img/l_river.jpg', 'img/l_shard.jpg', 'Tate Modern', '', 'Tate Modern is a must-vist for art enthusiasts. Especially for those who loves the style of Andy Warhol, Pablo Picasso and Salvador Dali. Walking through the Millennial Bridge, and voilla, it\'s Tate Modern!\r\n\r\n', 'img/l_museum.mp4', '“To walk alone in London is the greatest rest.”\r\n', '— Virginia Woolf', 'img/l_tate.jpg'),
(3, 'Bath & Stonehenge', 'img/b_water.mp4', 'About Bath', '', 'Bath is a city located in the county of Somerest, England. It is known for its Roman-built baths. Many visitors came here for a one-day tour of Bath and the Stonehenge. I think it is pretty cool to see the roman baths built hundreds years ago.', 'img/b_bath.jpg', 'The Roman Baths', '', 'To enter the Roman Baths, you have to buy the ticket first. Inside the building, you can see many handicrafts made hundreds years ago. You can also get an audio guide, which will tell you the history of the Roman Baths in detail. In fact, the Roman Baths has been existing for 2000 years. It took us around 1.5 to 2 hours to finish the tour. Overall, Bath is a terrific city for relaxation. If you want to escape from the hustle and bustle, Bath is a perfect choice for you!\r\n\r\n', 'img/b_quote.jpg', 'img/b_ticket.jpg', 'img/b_minerva.jpg', 'Way to the Stonehenge', '', 'I am still in doubt whether the Stonehenge is built by human or by aliens. Originally, I thought the piles of the stones would be gigantic; however, it did not turned out as what I\'ve been imagining for the whole time. It\'s smaller in size, but it\'s still great to see this wonder in person. By the way, you have to take a shuttle bus to arrive the Stonehenge. There are many hays on the side of the road.', 'img/b_hay.mp4', '“Every age has the Stonehenge it deserves — or desires.”\r\n', '— Jacquetta Hawkes', 'img/b_stone.jpg'),
(4, 'Xizi Bay', 'img/xiziwan/cover.jpeg', 'About Xizi Bay', '', 'Xizi Bay is known for its beautiful sunset and natural reefs. You can enjoy the view of the sea, or gaze over Kaohsiung Port.\r\n', 'img/xiziwan/ph1.mov', 'Famous Sunset View', '', 'The most prestigious view of Xizi Bay is its beautiful sunset. Tourists who come to Kaohsiung will come here to get a glimpse.\r\n', 'img/xiziwan/ph2-1.jpeg', 'img/xiziwan/ph2-2.jpg', 'img/xiziwan/ph2-3.jpeg', 'National Sun Yat-sen University', '', 'Sun Yat-sen University is located in Xizi Bay. It also has the nickname of Tourism University. Surrounded by mountains and seas, it is the most unique university in Taiwan.', ' img/xiziwan/ph3.jpeg', '“On a sunny evening, the farewell ceremony of the setting sun is a splendid ceremony.”', '— Yu Kwang Chung', 'img/xiziwan/end.jpg'),
(5, 'Pier 2', 'img/pier/cover.jpg', 'About Pier 2', '', 'Situated in the basin No. 3 of Kaohsiung Port, it has been made into a unique open art space, providing artists and students with an environment in which to express themselves, and has already become Kaohsiung\'s most popular cultural spot.\r\n', 'img/pier/ph1.jpg', 'Hamasing Railway Park', '', 'If you walk directly along the Penglai Warehouse Light Rail to the light rail station, you will pass a large grassland. The old trains and railways are now organized into a large lawn. Looking at Shoushan from here is very comfortable, with a vast view.\r\n', 'img/pier/ph2-1.jpg', 'img/pier/ph2-2.jpg', 'img/pier/ph2-3.jpg', 'Kaohsiung Warehouse no.2', '', 'KW2 is the largest activated old warehouse in Taiwan. For decades, kw2 has not only watched the changes of Kaohsiung Port, but also opened its hands to welcome the future of the port city.\r\n', 'img/pier/ph3.jpg', '“Travel is not a vacation, and is often the opposite of a rest.”\r\n', '— Paul Theroux', 'img/pier/end.jpg'),
(6, 'Hokkaido', 'img/Hokkaido/cover.jpg', 'About Hokkaido', '', 'Hokkaido is the northernmost administrative region in Japan. Due to its late development, the natural environment has not been destroyed by humans. The original natural features are still preserved. It can be said to be Japan\'s most tourist-worthy natural resort.\r\n', 'img/Hokkaido/ph1.jpg', 'Capital City Sapporo', '', 'Located in Hokkaido, Sapporo is the fifth largest city in Japan. When the 1972 Winter Olympics took place in Sapporo, the city became world famous. In modern times, it is well known for its ramen, beer, and snow festival held every February.\r\n', 'img/Hokkaido/ph2-1.jpg', 'img/Hokkaido/ph2-2.jpg', 'img/Hokkaido/ph2-3.jpg', 'Lavender in Hokkaido', '', 'Speaking of Hokkaido’s summer, you will definitely think of the vast flower fields. The lavender field of Tomita Farm has the reputation of Eastern Provence. The peak of the lavender blooming period is about mid-to-late July. Those who plan to come to appreciate this vast purple blanket can choose Junes and come between late and early August.\r\n', 'img/Hokkaido/ph3.jpg', '“I would rather own a little and see the world than own the world and see a little of it.”', '— Alexan Sattler', 'img/Hokkaido/end.jpg'),
(7, 'Tokyo', 'img/Tokyo/cover.jpg', 'About Tokyo', '', 'Tokyo is the capital of Japan, and it is also the center of Japan\'s politics, economy, and culture. In this cosmopolitan city with a population of 13.74 million people, it also gathers the latest fashions, special cuisines from various countries, exciting theme parks and traditional Edo culture. The colorful fashions will be endless!\r\n', 'img/Tokyo/ph1.jpg', 'Old Edo Asakusa', '', 'Asakusa is one of my favorite spots. \"Sensoji Temple\" in Asakusa is a very popular tourist spot. After passing through the famous Kaminarimon Gate, you can see the sight of Nakamise Street, which is crowded with shops on both sides, leading to Sensoji Temple. Walking into the temple, its solemn and solemn architecture will definitely amaze you.\r\n', 'img/Tokyo/ph2-1.jpg', 'img/Tokyo/ph2-2.jpg', 'img/Tokyo/ph2-3.jpg', 'Mount Fuji', '', '        Fujisan, as it is known in Japan, is located on Japan\'s largest island, Honshu. Mt.Fuji is often depicted in art, literature, and religion as the most perfect volcanic cone. Mt. Fuji is the only famous high-elevation mountain not to be part of a larger mountain range. By itself, it is magnificent. Unlike other famous high-elevation mountains in the world, Mt. Fuji is not part of a large mountain range. It stands alone, in all its magnificence.\r\n', 'img/Tokyo/ph3.jpg', '“Blessed are the curious for they will have adventures.”\r\n', '— Lovelle Drachman', 'img/Tokyo/end.jpg'),
(8, 'Central Park', 'img/Central Park/cover.jpg', 'About Central Park', '', 'The arcade was constructed in 2001 with a series of lighting along the pedestrian and rebuilt in 2014 with the addition of art and performance spaces.\r\n', 'img/Central Park/ph1.jpeg', 'Urban Spotlight Arcade', '', '', 'img/Central Park/ph2-1.jpg', 'img/Central Park/ph2-2.jpg', 'img/Central Park/ph2-3.jpg', 'Li Keyong Memorial Library', '', 'It is a library located in Central Park. The interior of the building uses a clear water model and a large number of floor-to-ceiling windows. The green scenery is panoramic, and the beautiful lake scenery can be seen from adistance.', 'img/Central Park/ph3.jpg', '“I’m bored’ is a useless thing to say. You live in a great, big, vast world that you’ve seen non-percent of.”', '— Louis C.K', 'img/Central Park/end.jpg'),
(9, 'Cultural Center', 'img/cultural park/cover.jpeg', 'About Cultural Park', '', 'The cultural center of Kaohsiung City, the cultural center built earlier, is not only a hub to promote the cultural construction of the Hong Kong capital, but also a cultural symbol and indicator. It is also an important place for Kaohsiung citizens to relax and retreat, condensing the fond memories of many people.\r\n', 'img/cultural park/ph1.jpg', 'The most beautiful park cafe', '', 'The Caffaina Coffee Gallery, located in the Cultural Center, combines art, greenery, and coffee, as if you are in a European coffee shop. Large floor-to-ceiling windows present different aesthetics with the daytime and night scenery. The meals are not sloppy, whether it\'s coffee, bread, or cakes.\r\n', 'img/cultural park/ph2-1.jpg', 'img/cultural park/ph2-2.jpg', 'img/cultural park/ph2-3.jpg', 'Weekend art marker', '', 'The Art Market is currently held on Saturdays and Sundays every week. In addition to providing a space for artisan creatives to freely perform and a platform for dialogue with the public, it also encourages the public to go out and engage in art and cultural activities and enrich the public. Spiritual life. The most beautiful park cafe in Kaohsiung.\r\n', 'img/cultural park/ph3.jpg', '“Live your life by a compass, not a clock.“\r\n', '— Stephen Covey', 'img/cultural park/end.jpg'),
(10, 'Da Gou Ding', 'img/dagauding/cover.jpg', 'About Da Gou Ding', '', 'There are a lot of traditional snacks in Yancheng District, which is very suitable for a small gourmet food trip. Dagou Ding was once a prosperous area in Yancheng District, and it was full of warm and human touch.\r\n', 'img/dagauding/ph1.jpg', 'Nostalgic memories', '', 'There are many old shops in the market that are more than 50 years old. These shops are quietly guarding the old Jiejiang. They have seen his prosperity and decline, which are the eternal memories of Kaohsiung people.\r\n', 'img/dagauding/ph2-1.jpg', 'img/dagauding/ph2-2.jpg', 'img/dagauding/ph2-3.jpg', 'Old market new life', '', 'In recent years, Taiwan has blew a trend of local creation. The young generation has found a breakthrough between the traditional and the old, presenting the new and the old in different ways. Dagouding of Kaohsiung Yancheng No. 1 Public Market is one of them.\r\n', 'img/dagauding/end.jpg', '“To move, to breathe, to fly, to float, To gain all while you give, To roam the roads of lands remote: To travel is to live.”\n', '— Andersen', 'img/dagauding/end.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `post-original`
--

CREATE TABLE `post-original` (
  `postID` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `coverPic` varchar(200) DEFAULT 'img/g_park1.jpg',
  `section1_title` varchar(50) NOT NULL,
  `section1_span` varchar(20) DEFAULT NULL,
  `section1_text` varchar(1500) NOT NULL,
  `section1_pic` varchar(200) DEFAULT 'img/g_park1.jpg',
  `section2_title` varchar(50) NOT NULL,
  `section2_span` varchar(20) DEFAULT NULL,
  `section2_text` varchar(1500) NOT NULL,
  `section2_pic1` varchar(200) DEFAULT 'img/g_clock.jpg',
  `section2_pic2` varchar(200) DEFAULT 'img/g_clock.jpg',
  `section2_pic3` varchar(200) DEFAULT 'img/g_clock.jpg',
  `section3_title` varchar(50) NOT NULL,
  `section3_span` varchar(20) DEFAULT NULL,
  `section3_text` varchar(1500) NOT NULL,
  `section3_pic` varchar(200) DEFAULT 'img/g_park1.jpg',
  `quote` varchar(1500) NOT NULL,
  `author` varchar(30) NOT NULL,
  `end_pic` varchar(200) DEFAULT 'img/g_park1.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `post-original`
--

INSERT INTO `post-original` (`postID`, `title`, `coverPic`, `section1_title`, `section1_span`, `section1_text`, `section1_pic`, `section2_title`, `section2_span`, `section2_text`, `section2_pic1`, `section2_pic2`, `section2_pic3`, `section3_title`, `section3_span`, `section3_text`, `section3_pic`, `quote`, `author`, `end_pic`) VALUES
(1, 'Greenwich', 'img/g_park1.jpg', 'About Greenwich', '', 'Greenwich is situated at the suburban London. When I arrived at Greenwich, it feels like entering another world under different time zone. Unlike the hustle and bustle in London, the pace in Greenwich is moderate. You can see people picnicking and chilling on the grass-field.\r\n\r\n', 'img/g_entrance.jpg', 'Royal Observatory Greenwich', '', 'The Royal Observatory Greenwich actually appears in the film - \"Now You See Me.\" However, it\'s not the reason why it\'s famous. The Royal Observatory Grennwich is famous for being the home of Greewich Mean Time, the Prime Meridian of the world, and London\'s Planetarium.\r\n', 'img/g_clock.jpg', 'img/g_prime.jpg', 'img/g_inHouse.mp4', 'University of Greenwich', '', 'The University of Greenwich has stunning views. I love the corridors, and suprisingly, there are not many people gathering. It is lucky to temporarily own the delicate hall.\r\n', 'img/g_campus.jpg', '“If the parks be “the lungs of London”, we wonder what Greenwich Fair is – a periodical breaking out, we suppose – a sort of spring rash.”\n', '— Charles Dickens', 'img/g_park2.jpg'),
(2, 'Central London', 'img/l_duck.mp4', 'Natural History Museum', '', 'The Natural History Museum reminds me of the movie - \"Night at The Museum\" - since there is also an enormous dinosaur skeleton in the hall of the museum. This museum includes a wide arrange of themes, and it\'s definitely worth it to spend time with friends here.', 'img/l_history.jpg', 'London Eye', '', 'As a world-known scenery spot, London Eye owns its reputation. I enjoy the chilling vibe with my friends while strolling along the Thames. The sky becomes extremely stunning when it\'s close to evening. Don\'t miss the ride on the London Eye. You could definitely discover the beautiful city views from the top of the ferris wheel!\r\n\r\n', 'img/l_eye.jpg', 'img/l_river.jpg', 'img/l_shard.jpg', 'Tate Modern', '', 'Tate Modern is a must-vist for art enthusiasts. Especially for those who loves the style of Andy Warhol, Pablo Picasso and Salvador Dali. Walking through the Millennial Bridge, and voilla, it\'s Tate Modern!\r\n\r\n', 'img/l_museum.mp4', '“To walk alone in London is the greatest rest.”\r\n', '— Virginia Woolf', 'img/l_tate.jpg'),
(3, 'Bath & Stonehenge', 'img/b_water.mp4', 'About Bath', '', 'Bath is a city located in the county of Somerest, England. It is known for its Roman-built baths. Many visitors came here for a one-day tour of Bath and the Stonehenge. I think it is pretty cool to see the roman baths built hundreds years ago.', 'img/b_bath.jpg', 'The Roman Baths', '', 'To enter the Roman Baths, you have to buy the ticket first. Inside the building, you can see many handicrafts made hundreds years ago. You can also get an audio guide, which will tell you the history of the Roman Baths in detail. In fact, the Roman Baths has been existing for 2000 years. It took us around 1.5 to 2 hours to finish the tour. Overall, Bath is a terrific city for relaxation. If you want to escape from the hustle and bustle, Bath is a perfect choice for you!\r\n\r\n', 'img/b_quote.jpg', 'img/b_ticket.jpg', 'img/b_minerva.jpg', 'Way to the Stonehenge', '', 'I am still in doubt whether the Stonehenge is built by human or by aliens. Originally, I thought the piles of the stones would be gigantic; however, it did not turned out as what I\'ve been imagining for the whole time. It\'s smaller in size, but it\'s still great to see this wonder in person. By the way, you have to take a shuttle bus to arrive the Stonehenge. There are many hays on the side of the road.', 'img/b_hay.mp4', '“Every age has the Stonehenge it deserves — or desires.”\r\n', '— Jacquetta Hawkes', 'img/b_stone.jpg'),
(4, 'Xizi Bay', 'img/xiziwan/cover.jpeg', 'About Xizi Bay', '', 'Xizi Bay is known for its beautiful sunset and natural reefs. You can enjoy the view of the sea, or gaze over Kaohsiung Port.\r\n', 'img/xiziwan/ph1.mov', 'Famous Sunset View', '', 'The most prestigious view of Xizi Bay is its beautiful sunset. Tourists who come to Kaohsiung will come here to get a glimpse.\r\n', 'img/xiziwan/ph2-1.jpeg', 'img/xiziwan/ph2-2.jpg', 'img/xiziwan/ph2-3.jpeg', 'National Sun Yat-sen University', '', 'Sun Yat-sen University is located in Xizi Bay. It also has the nickname of Tourism University. Surrounded by mountains and seas, it is the most unique university in Taiwan.', ' img/xiziwan/ph3.jpeg', '“On a sunny evening, the farewell ceremony of the setting sun is a splendid ceremony.”', '— Yu Kwang Chung', 'img/xiziwan/end.jpg'),
(5, 'Pier 2', 'img/pier/cover.jpg', 'About Pier 2', '', 'Situated in the basin No. 3 of Kaohsiung Port, it has been made into a unique open art space, providing artists and students with an environment in which to express themselves, and has already become Kaohsiung\'s most popular cultural spot.\r\n', 'img/pier/ph1.jpg', 'Hamasing Railway Park', '', 'If you walk directly along the Penglai Warehouse Light Rail to the light rail station, you will pass a large grassland. The old trains and railways are now organized into a large lawn. Looking at Shoushan from here is very comfortable, with a vast view.\r\n', 'img/pier/ph2-1.jpg', 'img/pier/ph2-2.jpg', 'img/pier/ph2-3.jpg', 'Kaohsiung Warehouse no.2', '', 'KW2 is the largest activated old warehouse in Taiwan. For decades, kw2 has not only watched the changes of Kaohsiung Port, but also opened its hands to welcome the future of the port city.\r\n', 'img/pier/ph3.jpg', '“Travel is not a vacation, and is often the opposite of a rest.”\r\n', '— Paul Theroux', 'img/pier/end.jpg'),
(6, 'Hokkaido', 'img/Hokkaido/cover.jpg', 'About Hokkaido', '', 'Hokkaido is the northernmost administrative region in Japan. Due to its late development, the natural environment has not been destroyed by humans. The original natural features are still preserved. It can be said to be Japan\'s most tourist-worthy natural resort.\r\n', 'img/Hokkaido/ph1.jpg', 'Capital City Sapporo', '', 'Located in Hokkaido, Sapporo is the fifth largest city in Japan. When the 1972 Winter Olympics took place in Sapporo, the city became world famous. In modern times, it is well known for its ramen, beer, and snow festival held every February.\r\n', 'img/Hokkaido/ph2-1.jpg', 'img/Hokkaido/ph2-2.jpg', 'img/Hokkaido/ph2-3.jpg', 'Lavender in Hokkaido', '', 'Speaking of Hokkaido’s summer, you will definitely think of the vast flower fields. The lavender field of Tomita Farm has the reputation of Eastern Provence. The peak of the lavender blooming period is about mid-to-late July. Those who plan to come to appreciate this vast purple blanket can choose Junes and come between late and early August.\r\n', 'img/Hokkaido/ph3.jpg', '“I would rather own a little and see the world than own the world and see a little of it.”', '— Alexan Sattler', 'img/Hokkaido/end.jpg'),
(7, 'Tokyo', 'img/Tokyo/cover.jpg', 'About Tokyo', '', 'Tokyo is the capital of Japan, and it is also the center of Japan\'s politics, economy, and culture. In this cosmopolitan city with a population of 13.74 million people, it also gathers the latest fashions, special cuisines from various countries, exciting theme parks and traditional Edo culture. The colorful fashions will be endless!\r\n', 'img/Tokyo/ph1.jpg', 'Old Edo Asakusa', '', 'Asakusa is one of my favorite spots. \"Sensoji Temple\" in Asakusa is a very popular tourist spot. After passing through the famous Kaminarimon Gate, you can see the sight of Nakamise Street, which is crowded with shops on both sides, leading to Sensoji Temple. Walking into the temple, its solemn and solemn architecture will definitely amaze you.\r\n', 'img/Tokyo/ph2-1.jpg', 'img/Tokyo/ph2-2.jpg', 'img/Tokyo/ph2-3.jpg', 'Mount Fuji', '', '        Fujisan, as it is known in Japan, is located on Japan\'s largest island, Honshu. Mt.Fuji is often depicted in art, literature, and religion as the most perfect volcanic cone. Mt. Fuji is the only famous high-elevation mountain not to be part of a larger mountain range. By itself, it is magnificent. Unlike other famous high-elevation mountains in the world, Mt. Fuji is not part of a large mountain range. It stands alone, in all its magnificence.\r\n', 'img/Tokyo/ph3.jpg', '“Blessed are the curious for they will have adventures.”\r\n', '— Lovelle Drachman', 'img/Tokyo/end.jpg'),
(8, 'Central Park', 'img/Central Park/cover.jpg', 'About Central Park', '', 'The arcade was constructed in 2001 with a series of lighting along the pedestrian and rebuilt in 2014 with the addition of art and performance spaces.\r\n', 'img/Central Park/ph1.jpeg', 'Urban Spotlight Arcade', '', '', 'img/Central Park/ph2-1.jpg', 'img/Central Park/ph2-2.jpg', 'img/Central Park/ph2-3.jpg', 'Li Keyong Memorial Library', '', 'It is a library located in Central Park. The interior of the building uses a clear water model and a large number of floor-to-ceiling windows. The green scenery is panoramic, and the beautiful lake scenery can be seen from adistance.', 'img/Central Park/ph3.jpg', '“I’m bored’ is a useless thing to say. You live in a great, big, vast world that you’ve seen non-percent of.”', '— Louis C.K', 'img/Central Park/end.jpg'),
(9, 'Cultural Center', 'img/cultural park/cover.jpeg', 'About Cultural Park', '', 'The cultural center of Kaohsiung City, the cultural center built earlier, is not only a hub to promote the cultural construction of the Hong Kong capital, but also a cultural symbol and indicator. It is also an important place for Kaohsiung citizens to relax and retreat, condensing the fond memories of many people.\r\n', 'img/cultural park/ph1.jpg', 'The most beautiful park cafe', '', 'The Caffaina Coffee Gallery, located in the Cultural Center, combines art, greenery, and coffee, as if you are in a European coffee shop. Large floor-to-ceiling windows present different aesthetics with the daytime and night scenery. The meals are not sloppy, whether it\'s coffee, bread, or cakes.\r\n', 'img/cultural park/ph2-1.jpg', 'img/cultural park/ph2-2.jpg', 'img/cultural park/ph2-3.jpg', 'Weekend art marker', '', 'The Art Market is currently held on Saturdays and Sundays every week. In addition to providing a space for artisan creatives to freely perform and a platform for dialogue with the public, it also encourages the public to go out and engage in art and cultural activities and enrich the public. Spiritual life. The most beautiful park cafe in Kaohsiung.\r\n', 'img/cultural park/ph3.jpg', '“Live your life by a compass, not a clock.“\r\n', '— Stephen Covey', 'img/cultural park/end.jpg'),
(10, 'Da Gou Ding', 'img/dagauding/cover.jpg', 'About Da Gou Ding', '', 'There are a lot of traditional snacks in Yancheng District, which is very suitable for a small gourmet food trip. Dagou Ding was once a prosperous area in Yancheng District, and it was full of warm and human touch.\r\n', 'img/dagauding/ph1.jpg', 'Nostalgic memories', '', 'There are many old shops in the market that are more than 50 years old. These shops are quietly guarding the old Jiejiang. They have seen his prosperity and decline, which are the eternal memories of Kaohsiung people.\r\n', 'img/dagauding/ph2-1.jpg', 'img/dagauding/ph2-2.jpg', 'img/dagauding/ph2-3.jpg', 'Old market new life', '', 'In recent years, Taiwan has blew a trend of local creation. The young generation has found a breakthrough between the traditional and the old, presenting the new and the old in different ways. Dagouding of Kaohsiung Yancheng No. 1 Public Market is one of them.\r\n', 'img/dagauding/end.jpg', '“To move, to breathe, to fly, to float, To gain all while you give, To roam the roads of lands remote: To travel is to live.”\n', '— Andersen', 'img/dagauding/end.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `readmore`
--

CREATE TABLE `readmore` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `imgsrc` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `readmore`
--

INSERT INTO `readmore` (`id`, `title`, `imgsrc`, `description`, `link`) VALUES
(1, 'Greenwich', 'r1.jpg', 'When I arrived at Greenwich, it feels like entering another world under different time zone. Unlike the hustle and bustle in London, the pace in Green', '../project/city.php?postID=1'),
(2, 'London', 'r2.jpg', 'I enjoy the chilling vibe with my friends while strolling along the Thames. The sky becomes extremely stunning when it\'s close to evening. Don\'t miss ', '../project/city.php?postID=2'),
(3, 'Bath', 'r3.jpg', 'Originally, I thought the piles of the stones would be gigantic; however, it did not turned out as what I\'ve been imagining for the whole time.', '../project/city.php?postID=3'),
(4, 'Xiziwan', 'r4.jpg', 'Kaohsiung\'s Xizi Bay lies on the sea just southwest of the Shoushan Peninsula, on the western edge of Kaohsiung City.', '../project/city.php?postID=4'),
(5, 'Pier2', 'r5.jpg', 'Collisions are a driving force at Pier-2', '../project/city.php?postID=5'),
(6, 'Hokkaido', 'r6.jpg', 'Japan\'s northern island is known for its stunning wilderness, world class powder snow, delicious seafood, and fascinating indigenous culture.', '../project/city.php?postID=6'),
(7, 'Tokyo', 'r7.jpg', 'As futuristic as it is historical, Tokyo is a city of high rises and neon lights', '../project/city.php?postID=7'),
(8, 'Central Park', 'r8.jpeg', 'Located in the middle of a heavily populated and built-up area, the park is a rare oasis of greenery.', '../project/city.php?postID=8'),
(9, 'Cultural Center', 'r9.jpeg', 'This center is one of the city\'s oldest cultural venues and now offers a wide variety of cultural and artistic activities.', '../project/city.php?postID=9'),
(10, 'Da-gou-ding', 'r10.jpeg', 'You can take a walk in this area to learn about the city\'s past and present. About', '../project/city.php?postID=10');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(5) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'web', 'programming'),
(2, 'web2', 'programming2');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`);

--
-- 資料表索引 `post-original`
--
ALTER TABLE `post-original`
  ADD PRIMARY KEY (`postID`);

--
-- 資料表索引 `readmore`
--
ALTER TABLE `readmore`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `post-original`
--
ALTER TABLE `post-original`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `readmore`
--
ALTER TABLE `readmore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

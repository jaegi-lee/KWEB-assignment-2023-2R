CREATE TABLE `crud` (
    `id` INT NOT NULL AUTO_INCREMENT, `c1` INT NOT NULL, `c2` INT NOT NULL,
    `c3` VARCHAR(8) NOT NULL, `c4` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    `c5` TINYINT(1) NOT NULL DEFAULT 1, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `crud` (c1,c2,c3,c5) VALUES (5,5,'col1',1),(17,3,'col2',1),
(7,1,'col3',1),(12,1,'col4',1),(7,2,'col5',1),(20,2,'col6',1),(20,2,'col7',1),
(11,2,'col8',1),(13,2,'col9',1),(19,5,'col10',1),(5,4,'col11',1),(7,1,'col12',1),
(7,3,'col13',1),(16,5,'col14',0),(17,3,'col15',1),(15,2,'col16',1),(15,5,'col17',1),
(10,4,'col18',0),(14,2,'col19',1),(5,5,'col20',1),(8,5,'col21',1),(20,3,'col22',0),
(9,3,'col23',1),(10,1,'col24',1),(10,4,'col25',1),(4,4,'col26',1),(12,1,'col27',1),
(3,5,'col28',1),(14,5,'col29',1),(16,3,'col30',1),(3,3,'col31',1),(9,2,'col32',1),
(1,3,'col33',1),(15,5,'col34',0),(6,1,'col35',1),(2,2,'col36',1),(3,2,'col37',0),
(14,3,'col38',1),(6,3,'col39',1),(13,4,'col40',1),(19,4,'col41',1),(16,2,'col42',1),
(12,5,'col43',1),(14,1,'col44',0),(17,2,'col45',0),(18,3,'col46',1),(18,5,'col47',1),
(9,1,'col48',1),(16,3,'col49',1),(18,4,'col50',1),(18,4,'col51',0),(11,3,'col52',0),
(8,4,'col53',1),(4,4,'col54',0),(11,2,'col55',0),(14,3,'col56',1),(9,2,'col57',1),
(12,1,'col58',1),(5,4,'col59',1),(19,5,'col60',1),(12,5,'col61',1),(6,5,'col62',1),
(1,3,'col63',1),(1,1,'col64',0),(3,1,'col65',1),(7,2,'col66',1),(18,2,'col67',1),
(17,1,'col68',1),(11,5,'col69',1),(1,5,'col70',1),(20,5,'col71',1),(8,1,'col72',1),
(20,5,'col73',1),(2,3,'col74',1),(12,3,'col75',1),(5,3,'col76',1),(2,1,'col77',1),
(5,4,'col78',0),(5,4,'col79',1),(11,5,'col80',1),(19,5,'col81',1),(16,3,'col82',1),
(4,1,'col83',0),(9,1,'col84',0),(8,4,'col85',1),(20,3,'col86',1),(15,1,'col87',1),
(5,5,'col88',0),(2,1,'col89',1),(6,4,'col90',0),(14,2,'col91',1),(3,2,'col92',1),
(18,2,'col93',1),(14,3,'col94',1),(3,1,'col95',1),(1,3,'col96',1),(12,4,'col97',0),
(10,3,'col98',1),(11,3,'col99',1),(9,3,'col100',1);
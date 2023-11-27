use hippo_jenn;

DROP TABLE IF EXISTS albums;

CREATE TABLE `albums` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `artist` varchar(50) NOT NULL,
    `name` varchar(100) NOT NULL,
    `release_date` smallint NOT NULL,
    `sales` decimal NOT NULL,
    `genre` varchar(50) NOT NULL
);

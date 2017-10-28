CREATE DATABASE IF NOT EXISTS `notaryserver`;

CREATE USER "server"@"%" IDENTIFIED BY "server";

GRANT SELECT, INSERT, UPDATE, DELETE ON `notaryserver`.* TO "server"@"%";

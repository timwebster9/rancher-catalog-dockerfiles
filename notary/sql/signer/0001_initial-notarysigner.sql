CREATE DATABASE IF NOT EXISTS `notarysigner`;

CREATE USER "signer"@"%" IDENTIFIED BY "";

GRANT
	SELECT, INSERT, DELETE ON `notarysigner`.* TO "signer"@"%";

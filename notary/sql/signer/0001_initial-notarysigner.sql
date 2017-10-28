CREATE DATABASE IF NOT EXISTS `notarysigner`;

CREATE USER "signer"@"%" IDENTIFIED BY "signer";

GRANT
	SELECT, INSERT, DELETE ON `notarysigner`.* TO "signer"@"%";

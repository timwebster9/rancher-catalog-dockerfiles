CREATE DATABASE IF NOT EXISTS `notarysigner`;

CREATE USER "signer"@"%" IDENTIFIED BY "signer";

GRANT
	SELECT, INSERT, UPDATE, DELETE ON `notarysigner`.* TO "signer"@"%";

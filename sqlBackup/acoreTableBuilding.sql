DROP USER IF EXISTS 'acore'@'localhost';
CREATE USER 'acore'@'localhost' IDENTIFIED BY 'acore' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0;

-- Create databases for AzerothCore, only if they do not exist
CREATE DATABASE IF NOT EXISTS `acore_world` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS `acore_characters` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS `acore_auth` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_unicode_ci;

GRANT ALL PRIVILEGES ON `acore_world` . * TO 'acore'@'localhost' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `acore_characters` . * TO 'acore'@'localhost' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `acore_auth` . * TO 'acore'@'localhost' WITH GRANT OPTION;

-- Creating new Databases to prevent the loss of data and stability from the originals --
GRANT ALL PRIVILEGES ON acore_playable_races.* TO 'acore'@'localhost';
-- this one doesn't work as acore user doesn't exist in 127.0.0.1 - it's only in the localhost table--
GRANT ALL PRIVILEGES ON acore_playable_races.* TO 'acore'@'127.0.0.1';

FLUSH PRIVILEGES;

## Decided to create a Database to keep the integrity of the original acore_characters  this database will let me alter  achievements and roguelite features of rewards for characters
CREATE DATABASE acore_chaos_characters;

GRANT ALL PRIVILEGES ON acore_chaos_characters.* TO 'acore'@'localhost';
-- this one doesn't work as acore user doesn't exist in 127.0.0.1 - it's only in the localhost table--
GRANT ALL PRIVILEGES ON acore_chaos_characters.* TO 'acore'@'127.0.0.1';

## Had to drop a couple of tables after I tried to use the mysqldump into new database, as it was not successful first time
DROP TABLE IF EXISTS acore_characters_2;


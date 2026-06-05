## this is used for switching to Acore_characters

Select *
FROM acore_playable_races.custom_player_identity;

## Pull from Character table
USE acore_characters;
SELECT guid, name, race, class, level, xp
FROM acore_characters.characters;


USE acore_playable_races;


CREATE TABLE custom_achievements
(
    achievement_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name           VARCHAR(100) NOT NULL,
    description    TEXT         NULL,

    PRIMARY KEY (achievement_id)
);

CREATE TABLE custom_rewards
(
    reward_id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    reward_type   VARCHAR(50)  NOT NULL,
    reward_value  INT          NULL,
    reward_amount FLOAT        NULL,

    PRIMARY KEY (reward_id)
);


CREATE TABLE custom_achievement_rewards
(
    achievement_id INT UNSIGNED NOT NULL,
    reward_id      INT UNSIGNED NOT NULL,

    PRIMARY KEY (achievement_id, reward_id)
);
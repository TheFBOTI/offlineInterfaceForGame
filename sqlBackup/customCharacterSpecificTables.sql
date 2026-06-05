## Table for player guid and achievements to be linked
CREATE TABLE custom_player_achievements
(
    guid           INT UNSIGNED NOT NULL,
    achievement_id INT UNSIGNED NOT NULL,
    completed      TINYINT(1)   NOT NULL DEFAULT 0,
    completed_at   TIMESTAMP    NULL     DEFAULT NULL,

    PRIMARY KEY (guid, achievement_id)
);

## Table for player guid and rewards from Achievement to be linked
CREATE TABLE custom_player_rewards
(
    guid       INT UNSIGNED                NOT NULL,
    reward_id  INT UNSIGNED                NOT NULL,
    status     ENUM ('PENDING', 'APPLIED') NOT NULL DEFAULT 'PENDING',
    applied_at TIMESTAMP                   NULL     DEFAULT NULL,

    PRIMARY KEY (guid, reward_id)
);
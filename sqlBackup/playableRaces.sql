##  Playable Races - Acore_playable_races
USE acore_playable_races;

##This gets the stats  - These we might want to change to fit the races style, murlocs might be more agile and int based? Ogres might be less Dexterity
Select *
FROM acore_playable_races.player_race_stats;


##This gets the player classes available - We'll remove the originals and add a single or two related to the monster for players. Huzzah!
Select *
FROM acore_playable_races.player_class_stats;

##This gets the player races - We'll remove the originals and add monsters as players. Huzzah!

Select *
FROM acore_playable_races.chrraces_dbc;

Select *
FROM acore_playable_races.chrclasses_dbc;


## Talents
Select *
FROM acore_playable_races.talent_dbc;

## What's this?
SELECT *
FROM acore_playable_races.talenttab_dbc;

SELECT *
FROM acore_playable_races.playercreateinfo;


### This is a Sudo - there's multiple createinfo_x - might need to look at what each one does - apparently it's to do with action bars when character is created
#SELECT *
#FROM acore_playable_races.playercreateinfo_...;

SELECT *
FROM acore_playable_races.player_class_stats;


SELECT *
FROM acore_playable_races.creature_template_model;

SELECT *
FROM acore_playable_races.creature;

### We'll want to change more later - about starting locations, hostiles, friendlies and vendors - TBC

### Unique table to modify an existing race to a display a custom, or existing but not related model - e.g human can become a murloc - easiest way to make;
### will probably want to include similar tables for custom friendlies, and so forth

CREATE TABLE custom_player_identity (
                                        guid INT UNSIGNED NOT NULL PRIMARY KEY,
                                        identity_type VARCHAR(50) NOT NULL,
                                        display_id INT UNSIGNED NOT NULL,
                                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT *
FROM custom_player_identity;


INSERT INTO custom_player_identity
(guid, identity_type, display_id)
VALUES
    (1, 'MURLOC', 15395)
    ON DUPLICATE KEY UPDATE
                         identity_type = VALUES(identity_type),
                         display_id = VALUES(display_id);

### Updates the display ID
UPDATE custom_player_identity
SET display_ID = 15926
WHERE guid = 1;

select *
From talent_dbc;


### Achievements:
CREATE TABLE custom_player_identity (
                                        guid INT UNSIGNED NOT NULL PRIMARY KEY,
                                        identity_type VARCHAR(50) NOT NULL,
                                        display_id INT UNSIGNED NOT NULL,
                                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

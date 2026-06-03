## this is used for switching to Acore_characters

Select *
FROM acore_playable_races.custom_player_identity;

## Pull from Character table
USE acore_characters;
SELECT guid, name, race, class, level, xp
FROM acore_characters.characters;

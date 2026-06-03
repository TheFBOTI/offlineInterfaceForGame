SELECT entry, name
FROM creature_template
WHERE name LIKE '%Kobold%';

SELECT entry, name
FROM creature_template
WHERE name LIKE '%murloc%';


### This is the table, that has the display information - Creature ID (Entry of creature_template) - that we can use to customise races
SELECT *
FROM creature_template_model
         #WHERE CreatureDisplayID = 4111
WHERE CreatureID = 17102
    LIMIT 30;

###
SELECT entry, name
FROM creature_template
WHERE entry IN (1991, 2004, 15111) ;

SELECT guid, id1, map, zoneId, areaId, position_x, position_y, position_z, orientation
FROM creature
WHERE id1 IN (
    SELECT entry FROM creature_template WHERE name LIKE '%Kobold%'
)
    LIMIT 20;

DESCRIBE creature_template;

USE acore_playable_races;
INSERT INTO creature_template (
    entry,
    name,
    subname,
    minlevel,
    maxlevel,
    faction,
    npcflag,
    speed_walk,
    speed_run
)
SELECT
    900001,
    'Mutated Kobold',
    'Chaos Spawn',
    minlevel,
    maxlevel,
    faction,
    npcflag,
    speed_walk,
    speed_run
FROM creature_template
WHERE entry = 40;

SELECT *
FROM Creature_Template
WHERE Name = 'Mutated Kobold';

DELETE FROM creature_template
WHERE entry = 900001;

SELECT *
FROM creature_template_model
WHERE CreatureID IN (40, 900001);

DELETE FROM creature_template_model
WHERE CreatureID = 900001;

INSERT INTO creature_template_model(
    CreatureID, CreatureDisplayID, VerifiedBuild, DisplayScale
)
SELECT
    900001,
    CreatureDisplayID,
    VerifiedBuild,
    5
FROM creature_template_model
WHERE CreatureID = 40;

SELECT *
FROM CREATURE
WHERE id1 = 900001;
SELECT *
FROM CREATURE
WHERE id1 = 40;

INSERT INTO creature(
    ID1, MAP, ZONEID, AREAID, POSITION_X, POSITION_Y, POSITION_Z, SPAWNTIMESECS, CURHEALTH, CURMANA, NPCFLAG, UNIT_FLAGS, DYNAMICFLAGS, SCRIPTNAME, CREATEOBJECT
)SELECT
     900001,
     0,
     12,
     9,
     -9004.948,
     -143.368,
     83.57,
     SPAWNTIMESECS,
     CURHEALTH,
     CURMANA,
     NPCFLAG,
     UNIT_FLAGS,
     DYNAMICFLAGS,
     SCRIPTNAME,
     CREATEOBJECT
FROM creature
WHERE id1 = 40
    LIMIT 1;

DELETE FROM creature
WHERE id1 = 900001;


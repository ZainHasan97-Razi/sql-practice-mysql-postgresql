-- INSERT INTO events(
--       name,
--       date_planned,
--       description,
--       max_participants,
--       min_age
--    )
-- VALUES (
--       'Mehendi event',
--       '2023-10-09 23:59:00',
--       'Lawn!',
--       20,
--       18
--    ),
-- (
--       'Barat event',
--       '2023-10-09 23:59:00',
--       'Banquet!',
--       20,
--       18
--    )
-- 
-- 
-- 
-- Updating an event 
-- UPDATE events
-- SET min_age = 16,
--    max_participants = 10
-- WHERE id = 1;
-- 
-- 
-- 
-- Deleting an event
DELETE FROM events
WHERE id = 10;
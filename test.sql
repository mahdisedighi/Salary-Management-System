-- Mahdi Saremi
CREATE TABLE users
(
    id   INT,
    name VARCHAR(255)
);


-- Sedighi Homeless
DELETE
FROM user_homes
WHERE user_name = 'Sedighi';


-- Saeed safaee
UPDATE user_profile
SET remaining_courses = remaining_courses + 1;

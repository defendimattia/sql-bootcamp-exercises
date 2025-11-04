SELECT
    starttime AS start,
    name
FROM
    cd.bookings
    INNER JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
WHERE
    starttime BETWEEN
        '2012-09-21'
        AND '2012-09-22'
    AND name LIKE 'Tennis Court _'
ORDER BY
    starttime;
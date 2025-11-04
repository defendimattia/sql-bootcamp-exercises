SELECT
    starttime AS member
FROM
    cd.bookings
    INNER JOIN cd.members ON cd.bookings.memid = cd.members.memid
WHERE
    surname = 'Farrell'
    AND firstname = 'David';
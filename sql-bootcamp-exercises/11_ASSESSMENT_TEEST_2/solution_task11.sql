SELECT DISTINCT
    (facid),
    SUM(slots) AS "Total Slots"
FROM
    cd.bookings
WHERE
    starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY
    facid;
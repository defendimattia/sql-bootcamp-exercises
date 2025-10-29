SELECT
    staff_id,
    COUNT(*)
FROM
    payment
GROUP BY
    staff_id;
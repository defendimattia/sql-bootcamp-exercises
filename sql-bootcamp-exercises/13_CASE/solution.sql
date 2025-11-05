SELECT
    SUM(
        CASE rating
            WHEN 'R' then 1
            ELSE 0
        END
    ) as r,
    SUM(
        CASE rating
            WHEN 'PG' then 1
            ELSE 0
        END
    ) as pg,
    SUM(
        CASE rating
            WHEN 'PG-13' then 1
            ELSE 0
        END
    ) as pg13
FROM
    film;
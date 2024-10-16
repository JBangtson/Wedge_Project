SELECT *
FROM {{ source('the_wedge_dataset', 'transArchive_201001_201003') }}

DECLARE @SummaryOfChanges TABLE (Change VARCHAR(20))
;

MERGE INTO
    dbo.Product AS tgt
USING
    (VALUES
        ('Milk'),
        ('Bread')
    ) AS src([Name])
ON tgt.[Name] = src.[Name]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Name])
    VALUES (src.[Name])
OUTPUT $action
INTO @SummaryOfChanges
;

SELECT      Change, COUNT(*) as ChangeCount
FROM        @SummaryOfChanges
GROUP BY    Change
;

To handle NULL values correctly, use IS NULL or IS NOT NULL in your WHERE clause to explicitly check for NULLs. For example, to include rows where `column_name` is either 'some_value' or NULL, use:

```sql
WHERE column_name = 'some_value' OR column_name IS NULL
```

For aggregate functions, you might need to use functions like COALESCE() or ISNULL() to replace NULLs with a meaningful value before applying the aggregate function. For instance, to calculate the average of a column while treating NULLs as zero:

```sql
SELECT AVG(COALESCE(column_name, 0)) AS average_value FROM your_table;
```
These techniques ensure a more robust and accurate treatment of NULLs in SQL queries.
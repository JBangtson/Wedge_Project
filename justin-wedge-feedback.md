## Feedback 

Nice work on this project, you can consider it complete. I'm going to read your files in order and give you feedback
as I move through them, from Task 1 to Task 3. 

I appreciate the "table of contents". This might be the Wedge project with the most extensive organizational structure. Thanks for the call-out on the difference is `trans_subtype`. That makes sense. 

Your experience of the Wedge project is nearly universal among students who do a good job. The whole thing feels like a mess, it's in need of serious cleaning, and it's a big learning experience. This is all part of the design. I _still_ end up with projects where I wish I had the time and space to go through them in detail and do them "right". Of course, if I actually had that time, I'd probably come up with all kinds of changes and enhancements and spend that time doing new things. Probably why I'm not a DE!

It's good to learn about the "do everything in a loop" trap. ChatGPT loves this style of coding and it makes intutitive sense. But going down that route secretly signs one up for a bunch of additional code that you'd need to write to handle the cases where the code crashes or hangs and needs to restart. (Getting those restarts automated is yet another level.) My partner Ben calls this the "goop and pickles" of programming and it seems like there are many layers. 

### Task 1

* Nice use of the polars data type. It's the future. As you can see from class, I've backed off using it a bit in class. There's just too many functions and sources of help that are pandas-focused. 
* Great use of the functions for cleaning. This is the way.
* To-the-cloud has some clean up theoretically needed, but obviously it'd be a mistake to spend any additional time on this if you could work on something more fun/novel.  

### Task 2

* I appreciate that you took the time to do this with the reproducible approach. 
* This is, however, on the over-engineered side. I do this in a more simple way in my solutions (these are the key parts): 

```
query = (
    "SELECT "
    "DISTINCT(card_no) "
    "FROM "
    "`umt-msba.wedge_transactions.transArchive_*` "
    "WHERE card_no != 3.0"
)
query_job = client.query(
    query,
    location="US",
)
all_owners = []

for row in query_job :
    all_owners.append(row[0])
    
    
owner_sample = random.sample(all_owners,300)

query = (
    "SELECT "
    "* "
    "FROM "
    "`umt-msba.wedge_transactions.transArchive_*` "
    "WHERE "
    "card_no IN("
)

query = query + ",".join([str(num) for num in owner_sample]) + ")"

```


### Task 3

This task is the only place where you make any substantive mistakes. For instance, your owner-year-month query looks like this: 

```
SELECT
card_no,
EXTRACT(YEAR FROM datetime) AS year,
EXTRACT(MONTH FROM datetime) AS month,
COUNT(DISTINCT datetime) AS transactions,
SUM(quantity) AS items,
SUM(total) AS sales
FROM
`the_wedge_dataset.transArchive_*`
WHERE
card_no IS NOT NULL 
GROUP BY
card_no, year, month
ORDER BY
card_no, year, month;
```

Compare this to mine: 

```
SELECT 
    card_no,
    EXTRACT(YEAR FROM datetime) AS year,
    EXTRACT(MONTH FROM datetime) AS month,
    ROUND(SUM(total), 2) AS sales,
    COUNT(DISTINCT(
        CONCAT(
            CAST(EXTRACT(DATE FROM datetime) AS STRING),
            CAST(register_no AS STRING),
            CAST(emp_no AS STRING),
            CAST(trans_no AS STRING)
        ))
    ) AS transactions,
    SUM(CASE 
        WHEN trans_status IN ('V', 'R') THEN -1 
        ELSE 1 
    END) AS items
FROM `umt-msba.wedge_transactions.transArchive_*`
WHERE department NOT IN (0, 15)
    AND (
        trans_status IS NULL 
        OR trans_status = ' ' 
        OR trans_status IN ('V', 'R')
    )
GROUP BY 
    card_no, 
    year, 
    month
ORDER BY 
    card_no, 
    year, 
    month

```

There are a bunch of conditions missing that are preventing you from getting the right results. Also, dates are not transactions. It's rare to go to the store more than once a day, but it definitely happens. 

(Let me know if I may be looking in the wrong spot--there are a lot of files going on here.) 

Overall, though, great job. 

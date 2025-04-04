# Tables {#sec:tables}

## Pipe table

Table @tbl:pipe-1 shows how to create a table without specifying a caption.

: Table without caption specified. {#tbl:pipe-1}

| **Right** | **Left** | **Default** | **Center** |
| --------: | :------- | ----------- | :--------: |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |

In Table @tbl:pipe-2 we specify the capion. However, this may be a bad approach if we change language.

Table: Table with caption specified. {#tbl:pipe-2}

| **Right** | **Left** | **Default** | **Center** |
| --------: | :------- | ----------- | :--------: |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |


\newpage

Table: A very long table. {#tbl:pipe-3}

| **Right** | **Left** | **Default** | **Center** |
| --------: | :------- | ----------- | :--------: |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |
|         1 | 1        | 1           |     1      |
|        12 | 12       | 12          |     12     |
|       123 | 123      | 123         |    123     |


## Grid tables

Table @tbl:pipe-3 shows a table created with grid tables format. It seems like they allow you to control the width of the coloumn

: Table in `grid_table` format. {#tbl:grid-1}

+-------------+----------------+
| **Fruit**   | **Price**      |
+:============+:===============+
| Bananas     | $1.3           |
+-------------+----------------+
| Oranges     | $2.10          |
+-------------+----------------+
| **Sum**     | **$3.44**      |
+-------------+----------------+

And Table @tbl:grid-2 shows one long table

: Long table in `grid_table` format. {#tbl:grid-2}

+-------------+----------------+
| **Fruit**   | **Price**      |
+:============+:===============+
| Bananas     | $1.3           |
+-------------+----------------+
| Oranges     | $2.10          |
+-------------+----------------+
| Bananas     | $1.3           |
+-------------+----------------+
| Oranges     | $2.10          |
+-------------+----------------+
| Bananas     | $1.3           |
+-------------+----------------+
| Oranges     | $2.10          |
+-------------+----------------+
| Bananas     | $1.3           |
+-------------+----------------+
| Oranges     | $2.10          |
+-------------+----------------+
| **Sum**     | **$3.44**      |
+-------------+----------------+

Table @tbl:grid-3 show how to use multi-lines in `grid_format`. I only made it work with empty lines.

: Table with `grid_table` and multi-lines. {#tbl:grid-3}

+---------------+---------------+--------------------+
| **Fruit**     | **Price**     | **Advantages**     |
+===============+===============+====================+
| Bananas       | $1.34         | built-in wrapper   |
|               |               |                    |
|               |               | bright color       |
|               |               |                    |
|               |               | potassium          |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | cures scurvy       |
|               |               |                    |
|               |               | tasty              |
+---------------+---------------+--------------------+
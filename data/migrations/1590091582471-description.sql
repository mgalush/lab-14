Query 1: CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

  Creates a second table in the lab_14 database with the name "bookshelves". I typed `\d bookshelves` to confirm. 

Query 2: INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

  Retrieves a distinct (unique) bookshelf value from the books table and inserts each one into the bookshelves table in the name column.  I typed `SELECT COUNT(*) FROM bookshelves` to confirm. 

Query 3: ALTER TABLE books ADD COLUMN bookshelf_id INT;

  Adds a column to the books table called bookshelf_id, which connects each book to a bookshelf in the other table.  I typed `\d books` to confirm. 

Query 4: UPDATE books SET bookshelf_id=shelf.id FROM (SELET * FROM bookshelves) AS shelf WHERE books.bookshelf=shelf.name;

  Connects the two tables by finding each bookshelf row whose name matches the books bookshelf value and sets the id of that row to the value of the bookshelf id.  I typed `SELECT bookshelf_id FROM books` to confirm. 

Query 5: ALTER TABLE books DROP COLUMN bookshelf;

  Modifies the book table by removing the colmumn "bookshelf".  I typed `\d books` to confirm. 

Query 6: ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);

  Modifies the data type of the bookshelf id and sets it to a foriegn key, which references the primary key in the bookshelves table, connecting the two tables.  I typed `\d books` to confirm. 
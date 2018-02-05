# Database
The repository exit of 2 files. projekt.rb and data.db.

projekt.rb is the code for the database and data.db is the database file.

I used docker to run the file with the command

sudo docker run -it --rm -v $(pwd):/src -w /src helgecph/pythonruby sh -c "ruby projekt.rb"

It should also be able to be runned with normal ruby if you got that.

The projekt will open a terminal/CMD windown where you can do 3 things.
"put":
This command will let you write data to the database/hash. You write the key first and press ENTER and then enter the value for that key. This will save the data to the hash and the database file.

"get":
This command ask for a key value and return the value that pairs with that key. This will return the data from the hash

"all":
This command will return all data from the hash and show the key and value pairs.

# To Tally Today
## http://totallytoday.herokuapp.com/
> Bucket List Blog Built with Ruby on Rails & PostgreSQL to encourage a prosperous and eventful living of the blogger

Insert GIF

======

### Wireframe
Insert Photo

### Relational Database
Insert Photo

### Functionalities
User
- Login & (Hidden) Registration
- Password Encryption
- Admin Dashboard
Bucket List
- CRUD of Categories, Tallies/Items, Statuses
- RESTful Architecture
Error Display
- Use flash[:variable] for failed DB entries

### Roadblocks
1. Layouts
- Using different CSS file for different layouts
- **Solution**: config.assets.precompile
2. This was my first time using PostgreSQL; before, I used SQLite3. There were a ton of difficulties.
- Basic PostgreSQL Queries
	- **Solution**: Don't forget to add semicolons (;)
		*\h*: Displays a list of SQL commands
- PostgreSQL in different environments
	- Migrating from development to Heroku deployment
- Creating a *Role*
- Relational DB
	- 'Which table do I create first?'
	- **Solution**: Diagrams drawn on paper help
3. Displaying Data in Front-End
4. Redirecting from view-to-view
	- Parameter was not stored
	- **Solution**: Instead of params, store user_id in sessions and destroy upon logout
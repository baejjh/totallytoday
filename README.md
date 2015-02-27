# To Tally Today
## http://totallytoday.herokuapp.com/
> Bucket List Blog Built with Ruby on Rails & PostgreSQL to encourage a prosperous and eventful living of the blogger

Insert GIF
======

### Wireframe
Insert Photo

### Functionalities
User
- Login & (Hidden) Registration
- Password Encryption
- Admin Dashboard
Bucket List
- CRUD of Category, Tally (also referred to as *Item*), Status
- RESTful Architecture
Error Display
- Use flash[:variable] for failed DB entries

### Roadblocks
Layouts
- Using different CSS file for different layouts
- **Solution**: config.assets.precompile in config/enßvironments/..
This was my first time using PostgreSQL; before, I used SQLite3. There were a ton of difficulties.
- Basic PostgreSQL Queries
	- **Solution**: Use *\h* to display a list of SQL commands
	- **Solution**: Don't forget to add semicolons (;) in psql!
- PostgreSQL in different environments
	- Migrating from development to Heroku deployment
- Creating a *Role*
- Relational DB
	- 'Which table do I create first?'
	- **Solution**: Relational DB Diagrams drawn on paper helped.
	Insert Photo
	- **Solution**: Status, Category, Tally
Redirecting from view-to-view
	- Parameter is not stored second time visitng the dashboard
	- **Attempt**: Instead of params, store *user_id* in sessions and destroy upon logout but realized that I was already doing that in controllers/helpers/sessions_helpers
	- **Solution**: Use *User.find(session[:user_id])* instead of *User.find(params[:id])*
Navigation Tabs
	- Attribute of *class="active"* added
Private Methods
	- **Solution**: Always display on the bottom
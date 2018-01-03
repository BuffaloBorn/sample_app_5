# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).

#### Useful rails console snippet

```bash
$ rails console
>> flash = { success: "It worked!", danger: "It failed." }
=> {:success=>"It worked!", danger: "It failed."}
>> flash.each do |key, value|
?>   puts "#{key}"
?>   puts "#{value}"
>> end
success
It worked!
danger
It failed.
>> User.find_by(email:"example@railstutorial.org")
=> #<User id: 1, name: "Rails Tutorial", email: "example@railstutorial.org", created_at: "2017-12-06 01:04:13", updated_at: "2017-12-06 01:04:13", password_digest: "$2a$10$WwydSt3xyWmAcXGGUB5KgO.hmhuCZs3nSJ7trS/zcgy...">
```

#### Useful rails task

```bash
$ rails db:migrate:reset
```
#### Some useful assert_select options.
| Code	                        | Matching HTML                          |
|-------------------------------|----------------------------------------|
| assert_select "div"	          | ```<div>foobar</div>```                |
| assert_select "div", "foobar"	| ```<div>foobar</div>```                |
| assert_select "div.nav"	      | ```<div class="nav">foobar</div>```    |
| assert_select "div#profile"	  | ```<div id="profile">foobar</div>```   |
| assert_select "div[name=yo]"	| ```<div name="yo">hey</div>```         |
| assert_select "a[href=?]", ’/’, count: 1 |	```<a href="/">foo</a>```  |
| assert_select "a[href=?]", ’/’, text: "foo"	| ```<a href="/">foo</a>```|


##### Figure 11.1: Users table
|||
|-----------------|----------|
| id              | integer  |
| name            | string   |
| email           | string   |
| created_at      | datetime |
| updated_at      | datetime |
| password_digest | string   |
| remember_digest | string   |
| admin           | boolean  |
| activation_digest           | string  |
| activated           | boolean  |
|activated_at|datetime|
###### *Figure 11.1: The User model with added account activation attributes.*

 ##### Table 2.3

| HTTP request |	URL	 | Action	    | Purpose        |
|------------|-------|------------|----------------|
| GET	| /microposts	| index	| page to list all microposts |
| GET	| /microposts/1	| show |	page to show micropost with id |
| GET	| /microposts/new	| new	| page to make a new micropost |
| POST |	/microposts	| create |	create a new micropost |
| GET	| /microposts/1/edit |	edit |	page to edit micropost with id |
| PATCH |	/microposts/1	| update	| update micropost with id |
| DELETE |	/microposts/1 |	destroy |	delete micropost with id |

###### *Table 2.3: RESTful routes provided by the Microposts resource in Listing 2.11.*

 ##### Table 7.1

|HTTP request |	URL	| Action |	Named route |	Purpose |
|---------|----------|------------|----------------|
| GET	 | /users	| index |	users_path	|page to list all users |
| GET	 | /users/1	| show	| user_path(user) |	page to show user |
| GET	 | /users/new |	new |	new_user_path	|page to make a new user (signup)|
| POST |	/users	| create	| users_path	| create a new user |
| GET	 | /users/1/edit |	edit |	edit_user_path(user)	| page to edit user with id 1 |
| PATCH| 	/users/1 |	update |	user_path(user)	| update user|
| DELETE|	/users/1 | destroy |	user_path(user)	| delete user |
| GET	 |/password_resets/new |	new	|new_password_reset_path||
| POST	/password_resets	| create	| password_resets_path ||
| GET	http://ex.co/password_resets/<token>/edit |	edit	| ||edit_password_reset_url(token) ||
| PATCH	/password_resets/<token> |	update	| password_reset_path(token) ||
###### *Table 7.1: RESTful routes provided by the Users resource in Listing 7.3.*

 ##### Table 11.1

| find by	|  string	 |   digest   | authentication |
|---------|----------|------------|----------------|
|  email  | password |	password_digest |	authenticate(password) |
| id	    | remember_token |	remember_digest	| authenticated?(:remember, token) |
| email	  | activation_token |	activation_digest |	authenticated?(:activation, token) |
| email	  | reset_token	| reset_digest |	authenticated?(:reset, token) ||
###### *Table 11.1: The analogy between login, remembering, account activation, and password reset.*

 ##### Table 11.2

| HTTP request	| URL	| Action	| Named route |
|---------------|-----|---------|----------------|
| GET	| http://ex.co/account_activation/<token>/edit	| edit |	edit_account_activation_url(token) |
###### * Table 11.2: RESTful route provided by the Account Activations resource in this commit.*

##### Table 12.1
|HTTP request |	URL	| Action |	Named route
|---------|----------|------------|----------------|
| GET	 |/password_resets/new |	new	|new_password_reset_path|
| POST |	/password_resets	| create	| password_resets_path |
| GET |	http://ex.co/password_resets/<token>/edit |	edit	| edit_password_reset_url(token) |
| PATCH	| /password_resets/<token> |	update	| password_reset_path(token) |
###### *12.1: RESTful routes provided by the Password Resets resource in Listing 12.1.*

##### Figure 13.1: Micropost table
|||
|-----------------|----------|
| id              | integer  |
| content         | text     |
| user_id         | integer  |
| created_at      | datetime |
| updated_at      | datetime |

###### *Figure 13.1: The Micropost data model.*

##### Table 13.1: User/micropost association methods table

| Method	        | Purpose                                          |
|-----------------|--------------------------------------------------|
|micropost.user	  | Returns the User object associated with the micropost |
|user.microposts	| Returns a collection of the user’s microposts |
|user.microposts.create(arg)	| Creates a micropost associated with user |
|user.microposts.create!(arg)	| Creates a micropost associated with user  (exception on failure)|
|user.microposts.build(arg)	| Returns a new Micropost object associated with user |
|user.microposts.find_by(id: 1)	| Finds the micropost with id 1 and user_id equal to user.id |
###### *Table 13.1: A summary of user/micropost association methods.*


##### Figure 13.19: Microposts table

|||
|-----------------|----------|
| id              | integer  |
| content         | text     |
| user_id         | integer  |
| created_at      | datetime |
| updated_at      | datetime |
| picture         | string   |
###### *Figure 13.19: The Micropost data model with a picture attribute.*


| HTTP request | 	URL         |	Action  |	Named route                         |
|--------------|--------------|---------|-------------------------------------|
| POST	       | /microposts  |	create  | microposts_path                     |
| DELETE	     | /microposts/1|	destroy	| micropost_path(micropost)           |
###### *Table 13.2: RESTful routes provided by the Microposts resource in Listing 13.30.*



##### Figure 14.8: Microposts table

|||
|-----------------|----------|
| id              | integer  |
| follower_id     | integer  |
| followed_id     | integer  |
| created_at      | datetime |
| updated_at      | datetime |

###### *Figure 14.8: The Relationship data model.*


For commit: An initializer to skip image resizing in tests, we not able to finish the exercises but I was developing on windows and mini-imagemagic did not work on windows like linux.

### What we learned in this chapter

#### Mostly static pages

  *  For a third time, we went through the full procedure of creating a new Rails application from scratch, installing the necessary gems, pushing it up to a remote repository, and deploying it to production.
  *  The rails script generates a new controller with rails generate controller ControllerName <optional action names>.
  *  New routes are defined in the file config/routes.rb.
  *  Rails views can contain static HTML or embedded Ruby (ERb).
  *  Automated testing allows us to write test suites that drive the development of new features, allow for confident refactoring, and catch regressions.
  *  Test-driven development uses a “Red, Green, Refactor” cycle.
  *  Rails layouts allow the use of a common template for pages in our application, thereby eliminating duplication.

#### Rails Flavored Ruby

  * Ruby has a large number of methods for manipulating strings of characters.
  * Everything in Ruby is an object.
  * Ruby supports method definition via the def keyword.
  * Ruby supports class definition via the class keyword.
  * Rails views can contain static HTML or embedded Ruby (ERb).
  * Built-in Ruby data structures include arrays, ranges, and hashes.
  * Ruby blocks are a flexible construct that (among other things) allow natural iteration over enumerable data structures.
  * Symbols are labels, like strings without any additional structure.
  * Ruby supports object inheritance.
  * It is possible to open up and modify built-in Ruby classes.
  * The word “deified” is a palindrome.

#### Filling in the layout

  * Using HTML5, we can define a site layout with logo, header, footer, and main body content.
  * Rails partials are used to place markup in a separate file for convenience.
  * CSS allows us to style the site layout based on CSS classes and ids.
  * The Bootstrap framework makes it easy to make a nicely designed site quickly.
  * Sass and the asset pipeline allow us to eliminate duplication in our CSS while packaging up the results efficiently for production.
  * Rails allows us to define custom routing rules, thereby providing named routes.
  * Integration tests effectively simulate a browser clicking from page to page.

####  Modeling users

  * Migrations allow us to modify our application’s data model.
  * Active Record comes with a large number of methods for creating and manipulating data models.
  * Active Record validations allow us to place constraints on the data in our models.
  * Common validations include presence, length, and format.
  * Regular expressions are cryptic but powerful.
  * Defining a database index improves lookup efficiency while allowing enforcement of uniqueness at the database level.
  * We can add a secure password to a model using the built-in has_secure_password method.

####  Sign up

  * Rails displays useful debug information via the debug method.
  * Sass mixins allow a group of CSS rules to be bundled and reused in multiple places.
  * Rails comes with three standard environments: development, test, and production.
  * We can interact with users as a resource through a standard set of REST URLs.
  * Gravatars provide a convenient way of displaying images to represent users.
  * The form_for helper is used to generate forms for interacting with Active Record objects.
  * Signup failure renders the new user page and displays error messages automatically determined by Active Record.
  * Rails provides the flash as a standard way to display temporary messages.
  * Signup success creates a user in the database and redirects to the user show page, and displays a welcome message.
  * We can use integration tests to verify form submission behavior and catch regressions.
  * We can configure our production application to use SSL for secure communications and Puma for high performance.

####  Basic login

  * Rails can maintain state from one page to the next using temporary cookies via the session method.
  * The login form is designed to create a new session to log a user in.
  * The flash.now method is used for flash messages on rendered pages.
  * Test-driven development is useful when debugging by reproducing the bug in a test.
  * Using the session method, we can securely place a user id on the browser to create a temporary session.
  * We can change features such as links on the layouts based on login status.
  * Integration tests can verify correct routes, database updates, and proper changes to the layout.

#### Advance login

  * Rails can maintain state from one page to the next using persistent cookies via the cookies method.
  * We associate to each user a remember token and a corresponding remember digest for use in persistent sessions.
  * Using the cookies method, we create a persistent session by placing a permanent remember token cookie on the browser.
  * Login status is determined by the presence of a current user based on the temporary session’s user id or the permanent session’s unique remember token.
  * The application signs users out by deleting the session’s user id and removing the permanent cookie from the browser.
  * The ternary operator is a compact way to write simple if-then statements.


#### Updating, showing, and deleting users

  * Users can be updated using an edit form, which sends a PATCH request to the update action.
  * Safe updating through the web is enforced using strong parameters.
  * Before filters give a standard way to run methods before particular controller actions.
  * We implement an authorization using before filters.
  * Authorization tests use both low-level commands to submit particular HTTP requests directly to controller actions and high-level integration tests.
  * Friendly forwarding redirects users where they wanted to go after logging in.
  * The users index page shows all users, one page at a time.
  * Rails uses the standard file ```db/seeds.rb``` to seed the database with sample data using ```rails db:seed```.
  * Running ```render @users``` automatically calls the ```_user.html.erb``` partial on each user in the collection.  
  * A boolean attribute called admin on the User model automatically creates an admin? boolean method on user objects.
  * Admins can delete users through the web by clicking on delete links that issue DELETE requests to the Users controller ```destroy``` action.
  * We can create a large number of test users using embedded Ruby inside fixtures.

#### Account activation

  * Like sessions, account activations can be modeled as a resource despite not being Active Record objects.
  * Rails can generate Action Mailer actions and views to send email.
  * Action Mailer supports both plain-text and HTML mail.
  * As with ordinary actions and views, instance variables defined in mailer actions are available in mailer views.
  * Account activations use a generated token to create a unique URL for activating users.
  * Account activations use a hashed activation digest to securely identify valid activation requests.
  * Both mailer tests and integration tests are useful for verifying the behavior of the User mailer.
  * We can send email in production using SendGrid.

#### Password reset

  * Like sessions and account activations, password resets can be modeled as a resource despite not being Active Record objects.
  * Rails can generate Action Mailer actions and views to send email.
  * Action Mailer supports both plain-text and HTML mail.
  * As with ordinary actions and views, instance variables defined in mailer actions are available in mailer views.
  * Password resets use a generated token to create a unique URL for resetting passwords.
  * Password resets use a hashed reset digest to securely identify valid reset requests.
  * Both mailer tests and integration tests are useful for verifying the behavior of the User mailer.
  * We can send email in production using SendGrid.

#### User microposts

 * Microposts, like Users, are modeled as a resource backed by an Active Record model.
 * Rails supports multiple-key indices.
 * We can model a user having many microposts using the has_many and belongs_to methods in the User and Micropost models, respectively.
 * The has_many/belongs_to combination gives rise to methods that work through the association.
 * The code user.microposts.build(...) returns a new Micropost object automatically associated with the given user.
 * Rails supports default ordering via default_scope.
 * Scopes take anonymous functions as arguments.
 * The dependent: :destroy option causes objects to be destroyed at the same time as associated objects.
 * Pagination and object counts can both be performed through associations, leading to automatically efficient code.
 * Fixtures support the creation of associations.
 * It is possible to pass variables to Rails partials.
 * The where method can be used to perform Active Record selections.
 * We can enforce secure operations by always creating and destroying dependent objects through their association.
 * We can upload and resize images using CarrierWave.

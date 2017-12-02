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

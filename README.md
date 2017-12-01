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



What we learned in this chapter

  *  For a third time, we went through the full procedure of creating a new Rails application from scratch, installing the necessary gems, pushing it up to a remote repository, and deploying it to production.
  *  The rails script generates a new controller with rails generate controller ControllerName <optional action names>.
  *  New routes are defined in the file config/routes.rb.
  *  Rails views can contain static HTML or embedded Ruby (ERb).
  *  Automated testing allows us to write test suites that drive the development of new features, allow for confident refactoring, and catch regressions.
  *  Test-driven development uses a “Red, Green, Refactor” cycle.
  *  Rails layouts allow the use of a common template for pages in our application, thereby eliminating duplication. 

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version `3.3.5`

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Hints

Using Rubocop to Autocorrect offenses:

> rubocop -a or > rubocop -A (check and correct)

Using rails/devise to create models:

> rails generate model devise users

``` 
invoke  active_record
create    db/migrate/[some_timestamp]_devise_create_users.rb
create    app/models/user.rb
invoke    rspec
create      spec/models/user_spec.rb
invoke      factory_bot
create        spec/factories/users.rb
insert    app/models/user.rb
route   devise_for :users
```

Using rails console to create an user with `FactoryBot`:

> rails c > FactoryBot.create(:user)

Using other files on `rails_helpers.rb`

```
1 | rails_support_path = Rails.root.join("spec", "support", "**", "*.rb")
2 | DIR[rails_support_path].each { |file| require file }
```

### Testing

for running tests we can use the command:

`bundle exec rspec spec/path/file_spec.rb:(line ex: 10)`

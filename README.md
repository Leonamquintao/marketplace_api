# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


### Hints

Using rails console to create an user with `FactoryBot`:

> rails c > FactoryBot.create(:user)

Using other files on `rails_helpers.rb`

```
1 | rails_support_path = Rails.root.join("spec", "support", "**", "*.rb")
2 | DIR[rails_support_path].each { |file| require file }
```

source "https://rubygems.org"

gem "rails", "~> 7.2.0"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rswag"
gem "rswag-api"
gem "rswag-ui"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "rack-cors"
gem "dotenv-rails", "~> 3.1", ">= 3.1.4"

group :development, :test do
  gem "brakeman", require: false
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "ffaker"
  gem "factory_bot_rails", "~> 6.4", ">= 6.4.4"
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 7.0.0"
  gem "rswag-specs"
  gem "rubocop", "~> 1.68", require: false
  gem "pry-rails", "~> 0.3.11"
end

group :test do
  gem "simplecov", "~> 0.22.0", require: false
end

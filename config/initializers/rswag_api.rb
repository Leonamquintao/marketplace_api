# frozen_string_literal: true

Rswag::Api.configure do |c|
  c.openapi_root = "#{Rails.root}/swagger"

  # c.swagger_filter = lambda { |swagger, env| swagger['host'] = env['HTTP_HOST'] }
end

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Phase5Project
  class Application < Rails::Application
    # Adding cookies and session middleware
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
    config.middleware.use ActionDispatch::Flash

    # Use SameSite=Strict for all cookies to help protect against CSRF
    # https://owasp.org/www-community/SameSite
    config.action_dispatch.cookies_same_site_protection = :strict
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.api_only = true
  end
end

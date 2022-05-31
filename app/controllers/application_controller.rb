class ApplicationController < ActionController::Base
  include ActionController::Cookies
  #protect_from_forgery with: :null_session
  protect_from_forgery
  # include SessionsHelper
end


  class ApiController < ActionController::Base
    protect_from_forgery with: :null_session
    acts_as_token_authentication_handler_for User

  end
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def world
    render html: "This is my world!"
  end
end

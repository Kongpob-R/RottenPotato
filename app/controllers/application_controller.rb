class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  before_action :set_current_user, :authenticate!, :set_config
  
  def set_current_user
      @current_user = Moviegoer.find_by(id: session[:user_id])
  end
  
  require 'themoviedb'
  Tmdb::Api.key("b32bfdf1b2c01c891e8e29f961a81acc")

  def set_config
  	@configuration = Tmdb::Configuration.new
  end

  protected
  
  def authenticate!
      unless @current_user
          redirect_to login_path
      end
  end
end
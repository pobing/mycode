class ApplicationController < ActionController::Base
  before_filter :set_current_user
  protect_from_forgery

  def login_required
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  protected

  def set_current_user
      User.current = current_user
  end
end

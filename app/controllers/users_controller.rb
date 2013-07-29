class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @snippets = @user.snippets
  end

end

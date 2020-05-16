class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @quotes = current_user.quotes
  end
end

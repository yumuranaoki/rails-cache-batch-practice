class UsersController < ApplicationController
  def index
    cached_user = Rails.cache.read('user')
    if cached_user != nil
      @user = cached_user
    else
      @user = 'no user'
      Rails.cache.write('user', 'naoki')
    end
  end
end

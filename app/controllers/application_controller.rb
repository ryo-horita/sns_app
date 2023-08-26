class ApplicationController < ActionController::Base
end
class PostsController < ApplicationController
  def new
    render :new
  end
end
rails g controller Topics

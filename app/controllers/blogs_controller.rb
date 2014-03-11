class BlogsController < ApplicationController
  before_action :signed_in_admin, only: [:new,:edit,:update]

  def new
  end
end
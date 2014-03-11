class AdminsController < ApplicationController
  before_action :signed_in_admin, only: [:show]
  before_action :correct_admin, only: [:show]

  def new
    @admin = Admin.new
  end

  def show

  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      render 'review'
    else
      render 'new'
    end
  end

  private
    def admin_params
      params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end
end
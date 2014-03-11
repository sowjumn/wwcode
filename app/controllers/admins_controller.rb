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

    def signed_in_admin
      unless signed_in?
        store_location
        redirect_to admin_signin_url, notice: "please sign in"
      end
    end

    def correct_admin
      @admin = Admin.find(params[:id])
      redirect_to(root_url) unless (current_admin?(@admin) && @admin.trust)
    end
end
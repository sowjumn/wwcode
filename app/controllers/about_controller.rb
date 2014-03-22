class AboutController < ApplicationController
  before_action :signed_in_admin, only: [:edit, :update]

  def index
     @about = About.first
     @email = AudienceEmail.new
  end

  def edit
    @about = About.first
  end

  def update
    @about = About.first

    if @about.update_attributes(about_params)
      redirect_to current_admin
    else
      render 'edit'
    end
  end


  private
    def about_params
      params.require(:about).permit(:mission,:studynights,:hackevents,:techtalks)
    end
end
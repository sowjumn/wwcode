class AudienceEmailsController < ApplicationController
  def create
    @email = AudienceEmail.new(audience_email_params)
    @email.save
    redirect_to root_url
  end

  private
    def audience_email_params
      params.require(:audience_email).permit(:email)
    end
end
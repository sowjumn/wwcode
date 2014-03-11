class BlogsController < ApplicationController
  before_action :signed_in_admin, only: [:new,:edit,:update]

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to current_admin
    else
      render 'new'
    end
  end


  private
    def blog_params
      u = params.require(:blog).permit(:title,:para1,:para2,:para3,:author)
      u["admin_id"] = current_admin.id 
      u
    end

end
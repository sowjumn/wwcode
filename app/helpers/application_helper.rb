module ApplicationHelper
  def location_name
    if @location
      @location.name
    else
      ""
    end
  end
end

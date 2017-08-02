class MenuController < ApplicationController
  def index
    @sections = Section.all

    if params[:section]
      section = Section.find_by(name: params[:section])
      @food_items = section.food_items
    end
  end
end

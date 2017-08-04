class MenuController < ApplicationController
  def index
    unless params[:section]
      redirect_to menu_path(section: Section.first.name)
      return # to prevent executing the rest of the action code
    end

    @sections = Section.all
    section = Section.find_by(name: params[:section])
    @food_items = section.food_items
  end
end
class PersonalitiesController < ApplicationController
  def index
    @personalities=Personality.all
  end

  
  def show
    @personality = Personality[params[:id]]
  end
end

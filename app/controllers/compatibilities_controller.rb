class CompatibilitiesController < ApplicationController
  def index
    @compatibilities=Compatibility.all
  end

  def show
    @compatibility=Compatibility.find(params[:id])
  end
end

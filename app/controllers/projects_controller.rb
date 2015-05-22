class ProjectsController < ApplicationController
  def index
    @projects=Projects.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
      if project.save
        redirect_to projects_url
      else render :new
    end
  end

  def destroy
  end

  def update
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, )
end

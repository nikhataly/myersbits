class ProjectsController < ApplicationController

  def index
    @projects=Project.all
  end

  def show
    @project = Project.find(params[:id])
    @founder = @project.user #User.where(id:founder_id)
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

  def update
    @project = Project.find(params[:id])
    if project.update_attributes(project_params)
      redirect_to project_path(@project), notice => "Project founder has been notified of your participation request!"
    else
      render :edit,  :notice => "Project participation request didn't go through, please try again!"
    end
  end


  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end


  private

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, :location)
  end

end
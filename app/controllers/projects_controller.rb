class ProjectsController < ApplicationController

  def index
    @projects=Project.all.paginate(page: params[:page])
    @search = Project.search(params[:q])
    @projects = @search.result.order(:title).paginate(page: params[:page])
  end


  def mine
    @memberships = Membership.all
  end


  def show
    @project = Project.find(params[:id])
    @founder = @project.user #User.where(id:founder_id)
    @nearby_projects = @project.nearbys(1, units: :km)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
      if @project.save
        redirect_to projects_url
      else render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def my_projects
    @my_founded_projects = Project.where(user.id = current_user.id )
    @my_joined_projects = Memberships.where(user.id = current_user.id && pending == false).projects

  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, :location, :address, :skills_required, :participants)
  end

end
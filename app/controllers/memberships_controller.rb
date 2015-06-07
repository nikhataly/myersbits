class MembershipsController < ApplicationController
before_filter :load_project
before_filter :is_founder?

  def index
    @project = load_project
    # @memberships = @project.memberships.where(approved: true)
  end

  def show
    @project = load_project
    @membership = Membership.find(params[:id])
    @relationship = current_user.relationships.where(secondary: @membership.user.personality).first
  end

  def new
  end

  def create
    @project = Project.find(params[:project_id])
    @membership = @project.memberships.where(:user_id => current_user.id)
      if @membership.any?
        redirect_to project_url(@project), :notice => "The founder of this project has already been notified of your participation request!"
      else
        @membership = Membership.new
        @membership.user_id = current_user.id
        @membership.project_id = params[:project_id]
        if @membership.save
          flash[:success] = "Your join request was sent to the project founder!"
          redirect_to project_url(@project)
        else
          flash[:notice] = "Project participation request didn't go through, please try again!" + @membership.errors.full_messages.join(',')
          render "/projects/show"
        end
      end
  end

  def destroy
  end

  def update

    @membership = Membership.find(params[:id])

    if @membership.save
      @membership.approved = true
      @membership.save
          redirect_to user_url(current_user), :notice => "Project participant will receive your acceptance notification!"
        else
          render "/users/show",  :notice => "Project participant not accepted, please try again!" + @membership.errors.full_messages.join(',')
   end
  end

private
  def load_project
    @project = Project.find(params[:project_id])
  end

  def is_founder?
    @project.user == current_user
  end
end

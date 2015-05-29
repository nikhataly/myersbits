class MembershipsController < ApplicationController
  def new
  end

  def create
    @project=Project.find(params[:project_id])
    @membership = Membership.where(:user_id => current_user.id)
      if @membership.any?
        redirect_to project_url(@project), :notice => "The founder of this project has already been notified of your participation request!"
      else 
        @membership = Membership.new
        @membership.user_id = current_user.id
        @membership.project_id = params[:project_id]
        if @membership.save
          redirect_to project_url(@project), :notice => "Project founder has been notified of your participation request!"
        else 
          render "/projects/show",  :notice => "Project participation request didn't go through, please try again!" 
        end
      end
  end

  def destroy
  end
  
  def update
    @membership = Membership.find(params[:id])
    if @membership.save
      @membership.pending = false
      @membership.save  
          redirect_to user_url(current_user), :notice => "Project participant will receive your acceptance notification!"
        else 
          render "/users/show", :notice => "Project participant not accepted, please try again!" 
    end
  end
end

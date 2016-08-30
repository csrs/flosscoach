class ProjectAdminsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @project_admins = ProjectAdmin.all
  end

  def new
    @project_admin = ProjectAdmin.new
  end

  def create(@project)
    @project_admin = ProjectAdmin.new
    @project_admin.user = current_user
    @project_admin.project = @project

    if @project_admins.save
      redirect_to @project_admin, notice: 'Project admin was successfully added.'
    else
      render :new
    end
  end

end

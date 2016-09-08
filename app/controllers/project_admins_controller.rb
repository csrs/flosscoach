class ProjectAdminsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @project_admins = ProjectAdmin.all
  end

  def new
    @project_admin = ProjectAdmin.new
  end

end

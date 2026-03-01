class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  def index
    @projects = Project.all
    @new_project = Project.new
  end

  def show
    @project_conversations = @project.project_conversations.order(created_at: :desc)
  end

  def create
    @new_project = Project.new(project_params)
    if @new_project.save
      redirect_to @new_project, notice: "Project created!"
    else
      @projects = Project.all
      render :index
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :status)
  end
end
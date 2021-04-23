class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!



  # GET /projects or /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1 or /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new

  end

  # GET /projects/1/edit
  def edit; end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to interviews_path, notice: "Project was successfully created."
    else
    render :new
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update

    if @project.update(project_params)
      redirect_to interviews_path, notice: "Project was successfully updated."
    else
      render :edit
    end
  end


  
  def destroy

    @project.destroy
    redirect_to projects_path, notice: "Deleted"
  end


  private
   
  def set_project
    @project = Project.find(params[:id])
  end
   
  def project_params
    params.require(:project).permit(:name)
  end
end

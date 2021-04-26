
class Api::ProjectsController < ApiController

  protect_from_forgery with: :null_session

  def index
    render json: Project.all
  end

  def show
    project = Project.find_by(id: params[:id])
    if project
      render json: project
    else
      render json: {error: 'Project  not found'}, status: 404
    end
  end



  def search
    render json: Project.where('name LIKE?', "%#{params[:name]}")
  end

  def create

    project= Project.new(name: params[:name])
    if project.save
      render json: project
    else
      render json: {error: 'Cannot create project'}, status: 404
    end
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    if project.errors.any?
      render json: {
        status: :unprocessable_entity, # 422
        message: failed
      }
    else
      render json: {
        status: :ok, # 200
        message: Deleted
      }
    end

  end



end


class Api::InterviewsController < ApiController
  before_action :authenticate_user!

  def index
    render json: Interview.all
  end

  def show
    interview = Interview.find_by(id: params[:id])
    if interview
      render json: interview, include: :notes
    else
      render json: {error: 'Interview not found'}, status: 404
    end
  end

  def search
    render json: Interview.where('title LIKE?', "%#{params[:title]}")
  end

  def create
    user= User.find(params[:user_id])
    interview= user.interviews.new(title: params[:title], description: params[:description], 
                                   date: params[:date], project_id: Project.find(params[:project_id]))
    if interview.save
      render json: interview
    else 
      render json: {error: 'Cannot create interview'}, status: 404
    end
  end
  
end

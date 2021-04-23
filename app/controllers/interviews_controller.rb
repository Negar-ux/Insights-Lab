class InterviewsController < ApplicationController
  before_action :find_interview, only: [:show, :edit, :update, :destroy]


  def index
    @projects=Project.all

    cate= params[:cate]

    if !cate.nil?
      @interviews=current_user.interviews.where(:project_id => cate)
    else
      @interviews=current_user.interviews.all
    end

  end

  def show
  end

  def new
    @interview= current_user.interviews.build

  end

  def create
    @interview=current_user.interviews.build(interview_params)

    if @interview.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    if @interview.update(interview_params)
      redirect_to interview_path(@interview)
    else
      render 'edit'
    end
  end

  def destroy
    @interview.destroy
    redirect_to interviews_url
  end

  private
  def interview_params
    params.require(:interview).permit(:title, :date, :description, :project_id)
  end

  def find_interview
    @interview= Interview.find(params[:id])
  end

end


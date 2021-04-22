class NotesController < ApplicationController
  before_action :find_interview
  before_action :find_note, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @note = Note.new
  end

  def show
    @interview = Interview.find(params[:interview_id])
    @note = @interview.notes.find(params[:id])
    @note.destroy
    redirect_to interview_path(@interview)
  end

  def create
    @note = Note.new(note_params)
    @note.interview_id = @interview.id
    @note.user_id = current_user.id

    if @note.save
      redirect_to interview_path(@interview), notice: 'Saved'
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    if @note.update(note_params)
      redirect_to interview_path(@interview), notice: 'Updated'
    else
      render 'edit'
    end
  end

  def destroy
    @note.destroy
    redirect_to interview_path(@interview), notice: 'Deleted'
  end

  private

  def note_params
    params.require(:note).permit(:insight)
  end

  def find_interview
    @interview = Interview.find(params[:interview_id])
  end

  def find_note
    @note = Note.find(params[:id])
  end
end

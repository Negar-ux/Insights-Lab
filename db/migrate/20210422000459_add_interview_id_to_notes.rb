class AddInterviewIdToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :interview_id, :integer
  end
end

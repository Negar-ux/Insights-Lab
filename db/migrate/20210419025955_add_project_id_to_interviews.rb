class AddProjectIdToInterviews < ActiveRecord::Migration[6.1]
  def change
    add_column :interviews, :project_id, :integer
  end
end

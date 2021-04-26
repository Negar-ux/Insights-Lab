class RemoveUserIdFromInterviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :interviews, :user_id, :integer
  end
end

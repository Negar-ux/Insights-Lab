class AddUserIdToInterviews < ActiveRecord::Migration[6.1]
  def change
    add_column :interviews, :user_id, :string
  end
end

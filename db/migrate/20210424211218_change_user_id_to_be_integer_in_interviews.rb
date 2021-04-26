class ChangeUserIdToBeIntegerInInterviews < ActiveRecord::Migration[6.1]
  def up
    change_column :interviews, :user_id, :integer
  end

  def down
    change_column :interviews, :user_id, :string
  end

end


class ChangeDateToBeDateInInterviews < ActiveRecord::Migration[6.1]
  def up
    change_column :interviews, :date, :date
  end

  def down
    change_column :interviews, :date, :string
  end
end


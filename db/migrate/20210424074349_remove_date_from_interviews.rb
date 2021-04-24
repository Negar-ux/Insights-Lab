class RemoveDateFromInterviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :interviews, :date, :date
  end
end

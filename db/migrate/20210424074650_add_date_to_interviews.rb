class AddDateToInterviews < ActiveRecord::Migration[6.1]
  def change
    add_column :interviews, :date, :string

  end
end

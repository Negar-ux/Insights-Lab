class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.string :title
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end

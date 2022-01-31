class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.string :attrib
      t.string :team
      t.string :status

      t.timestamps
    end
  end
end

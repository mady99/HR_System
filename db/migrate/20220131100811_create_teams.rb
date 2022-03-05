class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.string :members
      t.string :team_lead

      t.timestamps
    end
  end
end

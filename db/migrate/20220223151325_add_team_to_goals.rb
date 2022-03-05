class AddTeamToGoals < ActiveRecord::Migration[7.0]
  def change
    add_reference :goals, :team, foreign_key: true
  end
end

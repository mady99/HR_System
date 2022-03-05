class AddTeamToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :team, foreign_key: true
  end
end

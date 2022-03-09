class ChangeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :divisions, :teams, :teams_id
  end
end

class ChangeToArray < ActiveRecord::Migration[7.0]
  def change
    change_column :divisions, :teams, :string, array: true
  end
end

class ChangeBigintsToInts < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :id, :integer
    change_column :relationships, :id, :integer
  end
end

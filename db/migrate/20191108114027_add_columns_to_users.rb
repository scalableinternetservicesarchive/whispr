class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :affiliated_providers, :text
    add_column :users, :affiliated_patients, :text
  end
end

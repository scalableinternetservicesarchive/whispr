class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :affiliated_providers, :text

    remove_column :users, :affiliated_patients, :string
  end
end

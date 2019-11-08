class AddAffiliatedProvidersToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :affiliated_providers, :string, array: true, default: []
  end
end

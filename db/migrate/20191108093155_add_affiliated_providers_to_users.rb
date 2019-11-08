class AddAffiliatedProvidersToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :affiliated_providers, :text
  end
end

class ChangeAffiliatedProvidersTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :affiliated_providers, :text
  end
end

class AddIsHealthcareProviderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_healthcare_provider, :boolean
  end
end

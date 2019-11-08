class AddAffiliatedPatientsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :affiliated_patients, :text
  end
end

class ChangeColumnsInTables < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :name, "char(20)", default: "Your Name Here", null: false
    change_column :users, :email, "char(20)", default: "", null: false
    change_column :users, :allergies, "char(20)", default: "N/A", null: false
    change_column :users, :vaccines, "char(20)", default: "N/A", null: false
    change_column :users, :medication, "char(20)", default: "N/A", null: false
    change_column :users, :diseases, "char(20)", default: "N/A", null: false
    change_column :users, :medical_history, "char(20)", default: "N/A", null: false
  end
end

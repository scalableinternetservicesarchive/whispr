class UpdateDb < ActiveRecord::Migration[6.0]
  def change
    drop_table :users
    create_table :users, force: :cascade do |t|
      t.string :name, default: "Your Name Here", null: false
      t.index [:name], name: "index_users_on_name"
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
  
      t.string :allergies, default: "N/A", null: false
      t.string :vaccines, default: "N/A", null: false
      t.string :medication, default: "N/A", null: false
      t.string :diseases, default: "N/A", null: false
      t.string :medical_history, default: "N/A", null: false
  
      t.string "test"
      t.string "uid"
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  end
end

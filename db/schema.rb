# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_191_001_161_649) do
  enable_extension "plpgsql"

  create_table 'users', force: :cascade do |t|
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

    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end

# ActiveRecord::Schema.define(version: 2019_10_10_225611) do

#   # These are extensions that must be enabled in order to support this database
#   enable_extension "plpgsql"

#   create_table :users, force: :cascade do |t|
#     t.string :name
#     t.string :email
#     t.index [:email], name: "index_users_on_email", unique: true
#     t.string :phone
#     t.index [:phone], name: "index_users_on_phone", unique: true

#     t.string :address

#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table :healthcare_providers, force: :cascade do |t|
#     t.string :name
#     t.string :email
#     t.index [:email], name: "index_healthcare_providers_on_email", unique: true
#     t.string :phone
#     t.index [:phone], name: "index_healthcare_providers_on_phone", unique: true

#     t.string :address
    
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table :allergies, force: cascade do |t|
#     t.text :allergy, array: true, default: []
#     t.text :reaction, array: true, default: []
#   end

#   create_table :medications, force: cascade do |t|
#     t.text :medication, array: true, default: []
#     t.text :dose, array: true, default: []
#     t.text :frequency, array: true, default: []
#   end

#   create_table :vacinations, force: cascade do |t|
#     t.text :vacination, array: true, default: []
#     t.datetime :date, array: true, default: []
#     t.text :facility, array: true, default: []
#   end

#   create_table :diseases, force: cascade do |t|
#     t.text :disease, array: true, default: []
#     t.boolean :current, array: true, default: []
#     t.boolean :past, array: true, default: []
#   end

#   create_table :surgeries, force: cascade do |t|
#     t.text :surgery, array: true, default: []
#     t.datetime :date, precision: 6, null: false, array: true, default: []
#     t.text :facility, array: true, default: []
#   end

#   create_table :family_history, force: cascade do |t|
#     t.text :family_member, array: true, default: []
#     t.text :coniditon, array: true, default: []
#   end

#   create_table :health_records, force: cascade do |t|
#     t.string :name
#     t.string :birthdate
#     t.table :allergies
#     t.table :medications
#     t.table :vacinations
#     t.table :diseases
#     t.table :surgeries
#     t.table :family_history
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end
# end

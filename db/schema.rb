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

ActiveRecord::Schema.define(version: 2019_12_05_080143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "health_records", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relationships", id: :serial, force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name", limit: 20, default: "Your Name Here", null: false
    t.string "email", limit: 20, default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "allergies", limit: 20, default: "N/A", null: false
    t.string "vaccines", limit: 20, default: "N/A", null: false
    t.string "medication", limit: 20, default: "N/A", null: false
    t.string "diseases", limit: 20, default: "N/A", null: false
    t.string "medical_history", limit: 20, default: "N/A", null: false
    t.string "test"
    t.string "uid"
    t.boolean "is_healthcare_provider"
    t.text "affiliated_providers"
    t.text "affiliated_patients"
  end

end

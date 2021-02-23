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

ActiveRecord::Schema.define(version: 2021_02_23_121124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pet_reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "pet_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_pet_reviews_on_pet_id"
    t.index ["user_id"], name: "index_pet_reviews_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.bigint "shelter_id", null: false
    t.string "animal_type"
    t.float "price_per_day"
    t.string "gender"
    t.string "breed"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shelter_id"], name: "index_pets_on_shelter_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pet_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_reservations_on_pet_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "shelter_reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "shelter_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shelter_id"], name: "index_shelter_reviews_on_shelter_id"
    t.index ["user_id"], name: "index_shelter_reviews_on_user_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shelters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "birth_date", null: false
    t.string "user_type", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "zip_code", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pet_reviews", "pets"
  add_foreign_key "pet_reviews", "users"
  add_foreign_key "pets", "shelters"
  add_foreign_key "reservations", "pets"
  add_foreign_key "reservations", "users"
  add_foreign_key "shelter_reviews", "shelters"
  add_foreign_key "shelter_reviews", "users"
  add_foreign_key "shelters", "users"
end

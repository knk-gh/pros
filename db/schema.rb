# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_19_192515) do

  create_table "favorite_prints", force: :cascade do |t|
    t.integer "user_id"
    t.integer "print_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_venues", force: :cascade do |t|
    t.integer "user_id"
    t.integer "venue_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graffitis", force: :cascade do |t|
    t.integer "user_id"
    t.string "graffiti_image_id"
    t.text "graffiti_text"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "progress_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prints", force: :cascade do |t|
    t.string "company"
    t.string "company_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer "user_id"
  end

  create_table "progresses", force: :cascade do |t|
    t.integer "user_id"
    t.date "dead_line"
    t.date "event"
    t.string "work_name"
    t.text "message"
    t.integer "page"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "private", default: 0
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "following_id"
    t.integer "follower_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_colors", force: :cascade do |t|
    t.integer "color"
    t.integer "progress_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "progress_id"
    t.string "step_name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "user_image_id"
    t.text "profile"
    t.string "twitter_url"
    t.string "pixiv_url"
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "venue_name"
    t.integer "postal_code"
    t.text "address"
    t.integer "tel"
    t.string "venue_url"
    t.float "latitude"
    t.float "longitude"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "worries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "progress_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 20180323182333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.integer "status"
    t.integer "relation"
    t.text "description"
    t.text "investors"
    t.text "product"
    t.text "problem"
    t.text "product_status"
    t.text "product_schedule"
    t.text "git"
    t.text "white_paper"
    t.text "comptetitors"
    t.text "website"
    t.text "telegram"
    t.text "twitter"
    t.text "reddit"
    t.text "bitcointalk"
    t.text "medium"
    t.text "slack"
    t.text "tokenomics"
    t.text "token_use"
    t.text "hype_summary"
    t.text "ico_drops"
    t.text "ico_bench"
    t.text "ico_rating"
    t.text "ico_tracker"
    t.text "ico_check"
    t.text "top_7_ico"
    t.text "very_high_ico"
    t.text "team_description"
    t.text "team_ativity"
    t.text "summary"
    t.text "pros"
    t.text "cons"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "role", default: 0
    t.string "first_name"
    t.string "second_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "project_id"
    t.integer "status", default: 0
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_votes_on_project_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "projects", "users"
  add_foreign_key "votes", "projects"
  add_foreign_key "votes", "users"
end

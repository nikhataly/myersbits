# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150608230348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compatibilities", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "approved",   default: false
  end

  create_table "personalities", force: :cascade do |t|
    t.string   "mbti"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "as_leader"
    t.text     "as_team"
    t.text     "at_work"
    t.text     "traits"
    t.text     "description"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "location"
    t.integer  "user_id"
    t.integer  "type_id"
    t.integer  "participants"
    t.string   "skills_required"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "address"
    t.decimal  "longitude",       precision: 9, scale: 6
    t.decimal  "latitude",        precision: 9, scale: 6
  end

  create_table "recommendations", force: :cascade do |t|
    t.string   "personality_id"
    t.string   "recommendation"
    t.string   "text"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "primary_id"
    t.integer  "compatibility_id"
    t.integer  "secondary_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "extraversion"
    t.integer  "openness"
    t.integer  "agreeableness"
    t.integer  "conscientiousness"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "answers"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "personality_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end

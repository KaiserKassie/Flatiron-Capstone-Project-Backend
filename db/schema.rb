# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_26_062217) do
  create_table "mat_favs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "mat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mat_id"], name: "index_mat_favs_on_mat_id"
    t.index ["user_id"], name: "index_mat_favs_on_user_id"
  end

  create_table "mats", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.float "weight"
    t.integer "length1"
    t.integer "length2"
    t.integer "length3"
    t.integer "width1"
    t.integer "width2"
    t.float "thickness"
    t.string "material"
    t.string "image"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pose_favs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "pose_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pose_id"], name: "index_pose_favs_on_pose_id"
    t.index ["user_id"], name: "index_pose_favs_on_user_id"
  end

  create_table "poses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.string "target_body_area"
    t.boolean "seated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "mat_favs", "mats"
  add_foreign_key "mat_favs", "users"
  add_foreign_key "pose_favs", "poses"
  add_foreign_key "pose_favs", "users"
end

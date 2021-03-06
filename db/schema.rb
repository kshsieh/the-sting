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

ActiveRecord::Schema.define(version: 20170115034508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issues", force: :cascade do |t|
    t.string   "title"
    t.boolean  "urgent",      default: false
    t.integer  "effort"
    t.datetime "expires_at"
    t.text     "description"
    t.text     "expectation"
    t.text     "image_url"
    t.text     "video_url"
    t.integer  "topic_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["topic_id"], name: "index_issues_on_topic_id", using: :btree
  end

  create_table "scripts", force: :cascade do |t|
    t.text    "script"
    t.string  "phone"
    t.integer "issue_id"
    t.index ["issue_id"], name: "index_scripts_on_issue_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_topics_on_name", using: :btree
  end

end

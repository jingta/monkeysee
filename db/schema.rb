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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110305221854) do

  create_table "commits", :force => true do |t|
    t.integer  "committer_id"
    t.string   "sha"
    t.string   "message"
    t.string   "modified"
    t.string   "added"
    t.string   "removed"
    t.datetime "timestamp"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committers", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pushes", :force => true do |t|
    t.string   "after_sha"
    t.string   "before_sha"
    t.string   "compare"
    t.boolean  "forced"
    t.integer  "committer_id"
    t.string   "ref"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repositories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "homepage"
    t.string   "language"
    t.string   "organization"
    t.string   "url"
    t.datetime "pushed_at"
    t.integer  "size"
    t.boolean  "private"
    t.boolean  "fork"
    t.integer  "forks"
    t.integer  "watchers"
    t.boolean  "has_issues"
    t.integer  "open_issues"
    t.boolean  "has_downloads"
    t.boolean  "has_wiki"
    t.integer  "committer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

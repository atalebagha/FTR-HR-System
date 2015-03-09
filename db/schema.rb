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

ActiveRecord::Schema.define(version: 20150309185747) do

  create_table "employees", force: :cascade do |t|
    t.string   "fname",      limit: 255
    t.string   "lastname",   limit: 255
    t.date     "startdate"
    t.integer  "salary",     limit: 4
    t.string   "hphone",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "requests", force: :cascade do |t|
    t.date     "start"
    t.integer  "days",           limit: 4
    t.date     "return"
    t.integer  "requesttype_id", limit: 4
    t.text     "notes",          limit: 65535
    t.integer  "employee_id",    limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "requesttypes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "deductpay",  limit: 1
    t.boolean  "deductdays", limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "code",         limit: 255
    t.boolean  "hourly",       limit: 1
    t.integer  "weekdays",     limit: 4
    t.integer  "employee_id",  limit: 4
    t.integer  "weeklyhourss", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "vacationbanks", force: :cascade do |t|
    t.integer  "allowed",    limit: 4
    t.boolean  "yearly",     limit: 1
    t.integer  "left",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end

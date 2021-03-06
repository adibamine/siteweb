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

ActiveRecord::Schema.define(version: 20160117114957) do

  create_table "annonces", force: :cascade do |t|
    t.string   "marque",        limit: 255
    t.string   "modele",        limit: 255
    t.string   "couleur",       limit: 255
    t.integer  "model_year",    limit: 4
    t.float    "price",         limit: 24
    t.text     "description",   limit: 65535
    t.string   "carburant",     limit: 255
    t.string   "boite_vitesse", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "imgs",          limit: 255
    t.integer  "user_id",       limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstName",       limit: 255
    t.string   "lastName",        limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

end

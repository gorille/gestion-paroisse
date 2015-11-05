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

ActiveRecord::Schema.define(version: 20151105191812) do

  create_table "clochers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "donnateurs", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse_1"
    t.string   "adresse_2"
    t.integer  "code_postal"
    t.string   "ville"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "morts", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.date     "date_de_deces"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "clocher_id"
    t.boolean  "planification_libre"
    t.string   "prenom2"
  end

  add_index "morts", ["clocher_id"], name: "index_morts_on_clocher_id"

  create_table "transactions", force: true do |t|
    t.integer  "montant"
    t.date     "date_effet"
    t.string   "numero_de_piece"
    t.text     "commentaire"
    t.integer  "mort_id"
    t.integer  "donnateur_id"
    t.integer  "clocher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["clocher_id"], name: "index_transactions_on_clocher_id"
  add_index "transactions", ["donnateur_id"], name: "index_transactions_on_donnateur_id"
  add_index "transactions", ["mort_id"], name: "index_transactions_on_mort_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

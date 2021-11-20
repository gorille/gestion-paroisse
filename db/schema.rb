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

ActiveRecord::Schema.define(version: 2015_11_05_191812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clochers", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "nom"
  end

  create_table "donnateurs", id: :serial, force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "adresse_1"
    t.string "adresse_2"
    t.integer "code_postal"
    t.string "ville"
    t.string "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "morts", id: :serial, force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.date "date_de_deces"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "clocher_id"
    t.boolean "planification_libre"
    t.string "prenom2"
    t.index ["clocher_id"], name: "index_morts_on_clocher_id"
  end

  create_table "transactions", id: :serial, force: :cascade do |t|
    t.integer "montant"
    t.date "date_effet"
    t.string "numero_de_piece"
    t.text "commentaire"
    t.integer "mort_id"
    t.integer "donnateur_id"
    t.integer "clocher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["clocher_id"], name: "index_transactions_on_clocher_id"
    t.index ["donnateur_id"], name: "index_transactions_on_donnateur_id"
    t.index ["mort_id"], name: "index_transactions_on_mort_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

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

ActiveRecord::Schema[7.1].define(version: 2024_01_12_174003) do
  create_table "conducteurs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "email"
    t.string "password_digest"
    t.string "type_permis"
    t.integer "age"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "trajet_conducteur_id", null: false
    t.bigint "trajet_utilisateur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trajet_conducteur_id"], name: "index_courses_on_trajet_conducteur_id"
    t.index ["trajet_utilisateur_id"], name: "index_courses_on_trajet_utilisateur_id"
  end

  create_table "trajet_conducteurs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.timestamp "heure_dep"
    t.timestamp "heure_arrivee"
    t.string "lieu_depart"
    t.string "lieu_arrivee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "conducteurs_id", null: false
    t.index ["conducteurs_id"], name: "index_trajet_conducteurs_on_conducteurs_id"
  end

  create_table "trajet_utilisateurs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.timestamp "heure_dep"
    t.timestamp "heure_arrivee"
    t.string "lieu_depart"
    t.string "lieu_arrivee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id", null: false
    t.index ["users_id"], name: "index_trajet_utilisateurs_on_users_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "prenom"
    t.integer "age"
    t.boolean "status"
  end

  create_table "vehicules", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nom_vehicule"
    t.integer "nombre_place"
    t.string "type_vehicule"
    t.float "pris_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "conducteur_id", null: false
    t.index ["conducteur_id"], name: "index_vehicules_on_conducteurs_id"
  end

  add_foreign_key "courses", "trajet_conducteurs"
  add_foreign_key "courses", "trajet_utilisateurs"
  add_foreign_key "trajet_conducteurs", "conducteurs", column: "conducteurs_id"
  add_foreign_key "trajet_utilisateurs", "users", column: "users_id"
  add_foreign_key "vehicules", "conducteurs"
end

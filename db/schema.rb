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

ActiveRecord::Schema.define(version: 2018_12_27_025145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chart_types", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "game_id"
    t.integer "display_order", null: false
    t.datetime "created_at", null: false
    t.index ["game_id"], name: "index_chart_types_on_game_id"
  end

  create_table "charts", force: :cascade do |t|
    t.float "difficulty", null: false
    t.bigint "music_id"
    t.bigint "chart_type_id"
    t.datetime "created_at", null: false
    t.index ["chart_type_id"], name: "index_charts_on_chart_type_id"
    t.index ["music_id"], name: "index_charts_on_music_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.index ["game_id"], name: "index_musics_on_game_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_players_on_email", unique: true
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true
  end

  create_table "ranking_participations", force: :cascade do |t|
    t.bigint "ranking_id"
    t.bigint "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_ranking_participations_on_player_id"
    t.index ["ranking_id"], name: "index_ranking_participations_on_ranking_id"
  end

  create_table "rankings", force: :cascade do |t|
    t.bigint "player_id"
    t.string "name", null: false
    t.datetime "started_at", null: false
    t.datetime "ended_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_rankings_on_player_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "point"
    t.bigint "ranking_participation_id"
    t.bigint "target_chart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ranking_participation_id"], name: "index_scores_on_ranking_participation_id"
    t.index ["target_chart_id"], name: "index_scores_on_target_chart_id"
  end

  create_table "target_charts", force: :cascade do |t|
    t.bigint "ranking_id"
    t.bigint "chart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chart_id"], name: "index_target_charts_on_chart_id"
    t.index ["ranking_id"], name: "index_target_charts_on_ranking_id"
  end

  add_foreign_key "chart_types", "games"
  add_foreign_key "charts", "chart_types"
  add_foreign_key "charts", "musics"
  add_foreign_key "musics", "games"
  add_foreign_key "ranking_participations", "players"
  add_foreign_key "ranking_participations", "rankings"
  add_foreign_key "rankings", "players"
  add_foreign_key "scores", "ranking_participations"
  add_foreign_key "scores", "target_charts"
  add_foreign_key "target_charts", "charts"
  add_foreign_key "target_charts", "rankings"
end

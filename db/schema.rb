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

ActiveRecord::Schema.define(version: 2019_03_06_233301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.date "date"
    t.string "url"
    t.boolean "is_private", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.string "ticket_category_sku"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "performances", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "musician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_performances_on_campaign_id"
    t.index ["musician_id"], name: "index_performances_on_musician_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image_url"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_photos_on_campaign_id"
  end

  create_table "ticket_categories", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.text "description"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "available_tickets"
    t.integer "price_cents", default: 0, null: false
    t.index ["campaign_id"], name: "index_ticket_categories_on_campaign_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "ticket_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_tickets_on_order_id"
    t.index ["ticket_category_id"], name: "index_tickets_on_ticket_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_picture_url", default: "default-profile-pic-png-8.jpg"
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.boolean "is_creator", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campaigns", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "performances", "campaigns"
  add_foreign_key "performances", "musicians"
  add_foreign_key "photos", "campaigns"
  add_foreign_key "ticket_categories", "campaigns"
  add_foreign_key "tickets", "orders"
  add_foreign_key "tickets", "ticket_categories"
end

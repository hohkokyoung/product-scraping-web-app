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

ActiveRecord::Schema[7.0].define(version: 2022_06_29_191736) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_attributes", force: :cascade do |t|
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "value"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", null: false
    t.bigint "product_categories_id"
    t.index ["product_categories_id"], name: "index_product_categories_on_product_categories_id"
  end

  create_table "product_categorizations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "product_categories_id"
    t.index ["product_categories_id"], name: "index_product_categorizations_on_product_categories_id"
    t.index ["products_id"], name: "index_product_categorizations_on_products_id"
  end

  create_table "product_images", force: :cascade do |t|
    t.text "url"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_product_images_on_products_id"
  end

  create_table "product_properties", force: :cascade do |t|
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "product_attributes_id"
    t.index ["product_attributes_id"], name: "index_product_properties_on_product_attributes_id"
    t.index ["products_id"], name: "index_product_properties_on_products_id"
  end

  create_table "product_sellers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "url"
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", null: false
    t.bigint "product_sellers_id"
    t.index ["product_sellers_id"], name: "index_products_on_product_sellers_id"
  end

end

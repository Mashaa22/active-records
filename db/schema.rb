
ActiveRecord::Schema.define(version: 2023_02_27_094700) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.integer "star_rating"
    t.string "comment"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end

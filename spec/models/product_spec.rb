require 'rails_helper'
#require 'product.rb'

#create_table "products", force: :cascade do |t|
#  t.string   "name"
#  t.text     "description"
#  t.string   "image"
#  t.integer  "price_cents"
#  t.integer  "quantity"
#  t.datetime "created_at",  null: false
#  t.datetime "updated_at",  null: false
#  t.integer  "category_id"
#end

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should have a product name' do
      category = Category.new(name: "Phones", id: 1)
      category.save
      product = Product.new(name: "Pixel 2" ,price: 900, quantity: 45, category_id: 1)
      product.save

      expect(product.name).to eq("Pixel 2")
      expect(product.price).to eq(900)
      expect(product.quantity).to eq(45)
      expect(product.category_id).to eq(1)
    end

    it 'should have a product name' do
      category = Category.new(name: "Phones", id: 1)
      category.save
      product = Product.new(name: "Pixel 2" ,price: 900, quantity: 45, category_id: 1)
      product.save
      expect(product.name).to be_nil
    end
    it 'should have a price' do
      category = Category.new(name: "Phones", id: 1)
      category.save
      product = Product.new(name: "Pixel 2" ,price: 900, quantity: 45, category_id: 1)
      product.save
      expect(product.price).to be_nil
    end

    it 'should be given a product quantity' do
      category = Category.new(name: "Phones", id: 1)
      category.save
      product = Product.new(name: "Pixel 2" ,price: 900, quantity: 45, category_id: 1)
      product.save
      expect(product.quantity).to be_nil
    end

    it 'should be assigned to a product category' do
      category = Category.new(name: "Phones", id: 1)
      category.save
      product = Product.new(name: "Pixel 2" ,price: 900, quantity: 45, category_id: 1)
      product.save
      expect(product.category_id).to be_nil
    end
  end
end

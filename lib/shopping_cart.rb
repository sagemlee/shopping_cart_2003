require './lib/product'
require'pry'

class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(new_product)
    @products << new_product
  end

  def total_number_of_products
    total = 0
      @products.each do |item|
      total += item.quantity
      end
      return total

    end

    def is_full?
     self.total_number_of_products >= @capacity
    end

    def products_by_category(searched_category)
      category_set = []
      @products.each do |item|
        if item.category == searched_category
          category_set << item
        end
      end
      return category_set
    end

    def details
      details_hash[:name] = @name
      details_hash[:capacity] = @capacity 
    end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'
require'pry'


class ShoppingCartTest < Minitest::Test

 def test_it_exists
   cart = ShoppingCart.new("King Soopers", "30items")
   assert_instance_of ShoppingCart, cart
 end

 def test_it_has_readable_attributes
   cart = ShoppingCart.new("King Soopers", "30items")

   assert_equal "King Soopers", cart.name
   assert_equal "30items", cart.capacity
 end

 def test_it_starts_with_no_products
   cart = ShoppingCart.new("King Soopers", "30items")
   assert_equal [], cart.products
 end

 def test_it_can_add_product
   cart = ShoppingCart.new("King Soopers", "30items")
   product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
   product2 = Product.new(:meat, 'chicken', 4.50, '2')

   cart.add_product(product1)
   cart.add_product(product2)

   assert_equal [product1, product2], cart.products
 end





end

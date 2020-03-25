class Product
    attr_reader :category, :name, :quantity
    attr_accessor :unit_price

  def initialize(category, name, unit_price = 3.70, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
  end

  def total_price
    @unit_price * @quantity
  end
end

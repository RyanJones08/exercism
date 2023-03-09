class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name] }.flatten.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30.0 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].count.zero? }
  end

  def stock_for_item(name)
    @items.select { |item| item[:name] == name }[0][:quantity_by_size]
  end

  def total_stock
    @items.sum { |item| item[:quantity_by_size].sum { |_, count| count } }
  end

  private
  attr_reader :items
end
